AIActionTable_LegendaryZapdos:
	dw .do_turn ; unused
	dw .do_turn
	dw .start_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	jp AIDoTurn_LegendaryZapdos

.start_duel
	call InitAIDuelVars
	call .store_list_pointers
	call SetUpBossStartingHandAndDeck
	call TrySetUpBossStartingPlayArea
	ret nc
	jp AIPlayInitialBasicCards

.forced_switch
	farcall AIDecideBenchPokemonToSwitchTo
	ret

.ko_switch
	farcall AIDecideBenchPokemonToSwitchTo
	ret

.take_prize
	farcall AIPickPrizeCards
	ret

.list_arena
	dw IRON_HANDS_EX
	dw SHINX
	dw EEVEE
	dw ZAPDOS_LV40
	dw ZEKROM_EX
	dw ZAPDOS_LV68
	dw NULL

.list_bench
	dw ZEKROM_EX
	dw ZAPDOS_LV40
	dw EEVEE
	dw SHINX
	dw IRON_HANDS_EX
	dw NULL

.list_retreat
	ai_retreat EEVEE,           -5
	ai_retreat SHINX,         -5
	ai_retreat IRON_HANDS_EX, -5
	dw NULL

.list_energy
	ai_energy SHINX,         1, -1
	ai_energy LUXIO,  3, +0
	ai_energy IRON_HANDS_EX, 2, -1
	ai_energy ESPEON_EX,    3, +1
	ai_energy ZAPDOS_LV40,     4, +2
	ai_energy ZEKROM_EX,     4, +2
	ai_energy ZAPDOS_LV68,     3, +1
	ai_energy EEVEE,           3, +0
	dw NULL

.list_prize
	dw GAMBLER
	dw ZAPDOS_LV68
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret

AIDoTurn_LegendaryZapdos:
; initialize variables
	call InitAITurnVars
	farcall HandleAIAntiMewtwoDeckStrategy
	jp nc, .try_attack
; process Trainer cards
	ld a, AI_TRAINER_CARD_PHASE_01
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_04
	call AIProcessHandTrainerCards
; play Pokemon from hand
	call AIDecidePlayPokemonCard
	ret c ; return if turn ended
	ld a, AI_TRAINER_CARD_PHASE_07
	call AIProcessHandTrainerCards
	call AIProcessRetreat
	ld a, AI_TRAINER_CARD_PHASE_10
	call AIProcessHandTrainerCards
; play Energy card if possible.
	ld a, [wAlreadyPlayedEnergy]
	or a
	jr nz, .skip_energy_attach

; if Arena card is SHINX and there's ElectrodeLv35 in hand,
; or if it's Electabuzz, try attaching Energy card
; to the Arena card if it doesn't have any energy attached.
; Otherwise if Energy card is not needed,
; go through normal AI energy attach routine.
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	cp16 SHINX
	jr nz, .check_electabuzz
	ld de, LUXIO
	call LookForCardIDInHandList_Bank5
	jr nc, .attach_normally
	jr .SHINX_or_electabuzz
.check_electabuzz
	cp16 IRON_HANDS_EX
	jr nz, .attach_normally

.SHINX_or_electabuzz
	call CreateEnergyCardListFromHand
	jr c, .skip_energy_attach
	ld e, PLAY_AREA_ARENA
	call CountNumberOfEnergyCardsAttached
	or a
	jr nz, .attach_normally
	xor a ; PLAY_AREA_ARENA
	ldh [hTempPlayAreaLocation_ff9d], a
	call AITryToPlayEnergyCard
	jr c, .skip_energy_attach

.attach_normally
	call AIProcessAndTryToPlayEnergy

.skip_energy_attach
; play Pokemon from hand again
	call AIDecidePlayPokemonCard
	ret c ; return if turn ended
	ld a, AI_TRAINER_CARD_PHASE_13
	call AIProcessHandTrainerCards
.try_attack
; attack if possible, if not,
; finish turn without attacking.
	call AIProcessAndTryToUseAttack
	ret c ; return if turn ended
	ld a, OPPACTION_FINISH_NO_ATTACK
	bank1call AIMakeDecision
	ret
