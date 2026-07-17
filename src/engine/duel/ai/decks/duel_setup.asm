InitAIDuelVars:
	ld a, wAIDuelVarsEnd - wAIDuelVars
	ld hl, wAIDuelVars
	farcall ClearMemory_Bank5
	ld a, 5
	ld [wAIPokedexCounter], a
	ld a, $ff
	ld [wAIPeekedPrizes], a
	ret

; sets up the initial hand of boss deck.
; always draws at least 2 Basic Pokemon cards and 2 Energy cards.
; also sets up so that the next cards to be drawn have
; some minimum number of Basic Pokemon and Energy cards.
SetUpBossStartingHandAndDeck:
; shuffle all hand cards in deck
	ld a, DUELVARS_HAND
	call GetTurnDuelistVariable
	ld b, STARTING_HAND_SIZE
.loop_hand
	ld a, [hl]
	call RemoveCardFromHand
	call ReturnCardToDeck
	dec b
	jr nz, .loop_hand
	jr .count_energy_basic

.shuffle_deck
	call ShuffleDeck

; count number of Energy and basic Pokemon cards
; in the first STARTING_HAND_SIZE in deck.
.count_energy_basic
	xor a
	ld [wAISetupBasicPokemonCount], a
	ld [wAISetupEnergyCount], a

	ld a, DUELVARS_DECK_CARDS
	call GetTurnDuelistVariable
	ld b, STARTING_HAND_SIZE
.loop_deck_1
	ld a, [hli]
	push bc
	call LoadCardDataToBuffer1_FromDeckIndex
	pop bc
	ld a, [wLoadedCard1Type]
	cp TYPE_ENERGY
	jr c, .pokemon_card_1
	cp TYPE_TRAINER
	jr z, .next_card_deck_1

; energy card
	ld a, [wAISetupEnergyCount]
	inc a
	ld [wAISetupEnergyCount], a
	jr .next_card_deck_1

.pokemon_card_1
	ld a, [wLoadedCard1Stage]
	or a
	jr nz, .next_card_deck_1 ; not basic
	ld a, [wAISetupBasicPokemonCount]
	inc a
	ld [wAISetupBasicPokemonCount], a

.next_card_deck_1
	dec b
	jr nz, .loop_deck_1

; tally the number of Energy and basic Pokemon cards
; and if any of them is smaller than 2, re-shuffle deck.
	ld a, [wAISetupBasicPokemonCount]
	cp 2
	jr c, .shuffle_deck
	ld a, [wAISetupEnergyCount]
	cp 2
	jr c, .shuffle_deck

; now check the following 6 cards (prize cards).
; re-shuffle deck if any of these cards is listed in wAICardListAvoidPrize.
	ld b, 6
.check_card_ids
	ld a, [hli]
	push bc
	call .CheckIfIDIsInList
	pop bc
	jr c, .shuffle_deck
	dec b
	jr nz, .check_card_ids

; finally, check 6 cards after that.
; if Energy or Basic Pokemon counter is below 4
; (counting with the ones found in the initial hand)
; then re-shuffle deck.
	ld b, 6
.loop_deck_2
	ld a, [hli]
	push bc
	call LoadCardDataToBuffer1_FromDeckIndex
	pop bc
	ld a, [wLoadedCard1Type]
	cp TYPE_ENERGY
	jr c, .pokemon_card_2
	cp TYPE_TRAINER
	jr z, .next_card_deck_2

; energy card
	ld a, [wAISetupEnergyCount]
	inc a
	ld [wAISetupEnergyCount], a
	jr .next_card_deck_2

.pokemon_card_2
	ld a, [wLoadedCard1Stage]
	or a
	jr nz, .next_card_deck_2
	ld a, [wAISetupBasicPokemonCount]
	inc a
	ld [wAISetupBasicPokemonCount], a

.next_card_deck_2
	dec b
	jr nz, .loop_deck_2

	ld a, [wAISetupBasicPokemonCount]
	cp 4
	jp c, .shuffle_deck
	ld a, [wAISetupEnergyCount]
	cp 4
	jp c, .shuffle_deck

; draw new set of hand cards
	ld a, DUELVARS_DECK_CARDS
	call GetTurnDuelistVariable
	ld b, STARTING_HAND_SIZE
.draw_loop
	ld a, [hli]
	call SearchCardInDeckAndAddToHand
	call AddCardToHand
	dec b
	jr nz, .draw_loop
	ret

; return carry if card ID corresponding
; to the input deck index is listed in wAICardListAvoidPrize;
; input:
;	- a = deck index of card to check
.CheckIfIDIsInList
	ld b, a
	ld a, [wAICardListAvoidPrize + 1]
	or a
	ret z ; null
	push hl
	ld h, a
	ld a, [wAICardListAvoidPrize]
	ld l, a

	ld a, b
	call GetCardIDFromDeckIndex
.loop_id_list
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	or c
	jr z, .false
	call CompareDEtoBC
	jr nz, .loop_id_list
	pop hl
	scf
	ret

.false
	pop hl
	or a
	ret

; play Pokemon cards from the hand to set the starting
; Play Area of Boss decks.
; each Boss deck has two ID lists in order of preference.
; one list is for the Arena card is the other is for the Bench cards.
; if Arena card could not be set (due to hand not having any card in its list)
; or if list is null, return carry and do not play any cards.
TrySetUpBossStartingPlayArea:
	ld de, wAICardListArenaPriority
	ld a, d
	or a
	jr z, .set_carry ; return if null

; pick Arena card
	call CreateHandCardList
	ld hl, wDuelTempList
	ld de, wAICardListArenaPriority
	call .PlayPokemonCardInOrder
	ret c

; play Pokemon cards to Bench until there are
; a maximum of 3 cards in Play Area.
.loop
	ld de, wAICardListBenchPriority
	call .PlayPokemonCardInOrder
	jr c, .done
	cp 3
	jr c, .loop

.done
	or a
	ret
.set_carry
	scf
	ret

; runs through input card ID list in de.
; plays to Play Area first card that is found in hand.
; returns carry if none of the cards in the list are found.
; returns number of Pokemon in Play Area in a.
.PlayPokemonCardInOrder
	ld a, [de]
	ld c, a
	inc de
	ld a, [de]
	ld d, a
	ld e, c

; go in order of the list in de and
; add first card that matches ID.
; returns carry if hand doesn't have any card in list.
.loop_id_list
	ld a, [de]
	inc de
	ld c, a
	ld a, [de]
	or c
	jr z, .not_found
	push de
	ld a, [de]
	ld e, c
	ld d, a
	farcall RemoveCardIDInList
	pop de
	inc de
	jr nc, .loop_id_list

	; play this card to Play Area and return
	push hl
	call PutHandPokemonCardInPlayArea
	pop hl
	or a
	ret

.not_found
	scf
	ret

; routine for AI to play all Basic cards from its hand
; in the beginning of the Duel.
AIPlayInitialBasicCards:
	call CreateHandCardList
	ld hl, wDuelTempList
.check_for_next_card
	ld a, [hli]
	ldh [hTempCardIndex_ff98], a
	cp $ff
	ret z ; return when done

	call LoadCardDataToBuffer1_FromDeckIndex
	ld a, [wLoadedCard1Type]
	cp TYPE_ENERGY
	jr nc, .check_for_next_card ; skip if not Pokemon card
	ld a, [wLoadedCard1Stage]
	or a
	jr nz, .check_for_next_card ; skip if not Basic Stage

; play Basic card from hand
	push hl
	ldh a, [hTempCardIndex_ff98]
	call PutHandPokemonCardInPlayArea
	pop hl
	jr .check_for_next_card