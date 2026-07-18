; AI logic used by general decks
AIActionTable_GeneralDecks:
	dw .do_turn ; unused
	dw .do_turn
	dw .start_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	jp AIMainTurnLogic

.start_duel
	call InitAIDuelVars
	jp AIPlayInitialBasicCards

.forced_switch
	jp AIDecideBenchPokemonToSwitchTo

.ko_switch
	jp AIDecideBenchPokemonToSwitchTo

.take_prize:
	jp AIPickPrizeCards

AIMainTurnLogic:
	call InitAITurnVars

.start
	farcall UnsetAIModifiedHandFlag

	ld a, AI_TRAINER_CARD_PHASE_06 ; RARE_CANDY
	call AIProcessHandTrainerCards

	; play and evolve pokemon
	call AIDecidePlayPokemonCard

	ld a, AI_TRAINER_CARD_PHASE_02 ; NEST_BALL
	call AIProcessHandTrainerCards

	; use lunatone if possible
	farcall HandleAIPkmnPowers
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand
	
	ld a, AI_TRAINER_CARD_PHASE_04 ; NEMONA
	call AIProcessHandTrainerCards
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

	ld a, AI_TRAINER_CARD_PHASE_05 ; NIGHT_STRETCHER
	call AIProcessHandTrainerCards
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

	ld a, AI_TRAINER_CARD_PHASE_08 ; SUPER_ROD
	call AIProcessHandTrainerCards

	ld a, AI_TRAINER_CARD_PHASE_03 ; ULTRA_BALL
	call AIProcessHandTrainerCards
	
	ld a, AI_TRAINER_CARD_PHASE_06 ; RARE_CANDY
	call AIProcessHandTrainerCards

	ld a, AI_TRAINER_CARD_PHASE_07 ; ENERGY_REMOVAL
	call AIProcessHandTrainerCards

	call AIProcessRetreat ; where to put this?

	; play Energy card if possible
	ld a, [wAlreadyPlayedEnergy]
	or a
	call z, AIProcessAndTryToPlayEnergy

	ld a, AI_TRAINER_CARD_PHASE_13 ; LILLIES_DETERMINATION
	call AIProcessHandTrainerCards
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

	ld a, AI_TRAINER_CARD_PHASE_15 ; PROFESSORS_RESEARCH
	call AIProcessHandTrainerCards
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

.try_attack
; attack if possible, if not,
; finish turn without attacking.
	call AIProcessAndTryToUseAttack
	ret c ; return if turn ended
	ld a, OPPACTION_FINISH_NO_ATTACK
	bank1call AIMakeDecision
	ret

; handle AI routines for a whole turn
AIMainTurnLogic_Old:
; initialize variables
	call InitAITurnVars
	ld a, AI_TRAINER_CARD_PHASE_01
	call AIProcessHandTrainerCards
	farcall HandleAIAntiMewtwoDeckStrategy
	jp nc, .try_attack
; handle Pkmn Powers
	farcall HandleAIGoGoRainDanceEnergy
	farcall HandleAIDamageSwap
	farcall HandleAIPkmnPowers
	ret c ; return if turn ended
	;farcall HandleAICowardice
; process Trainer cards
; phase 2 through 4.
	ld a, AI_TRAINER_CARD_PHASE_02
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_03
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_04
	call AIProcessHandTrainerCards
; play Pokemon from hand
	call AIDecidePlayPokemonCard
	ret c ; return if turn ended
; process Trainer cards
; phase 5 through 12.
	ld a, AI_TRAINER_CARD_PHASE_05
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_06
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_07
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_08
	call AIProcessHandTrainerCards
	call AIProcessRetreat
	ld a, AI_TRAINER_CARD_PHASE_10
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_11
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_12
	call AIProcessHandTrainerCards
; play Energy card if possible
	ld a, [wAlreadyPlayedEnergy]
	or a
	call z, AIProcessAndTryToPlayEnergy
.skip_energy_attach_1
; play Pokemon from hand again
	call AIDecidePlayPokemonCard
; handle Pkmn Powers again
	farcall HandleAIDamageSwap
	farcall HandleAIPkmnPowers
	ret c ; return if turn ended
	farcall HandleAIGoGoRainDanceEnergy
	ld a, AI_ENERGY_TRANS_ATTACK
	;farcall HandleAIEnergyTrans
; process Trainer cards phases 13 and 15
	ld a, AI_TRAINER_CARD_PHASE_13
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_15
	call AIProcessHandTrainerCards
; if used Professor Oak, process new hand
; if not, then proceed to attack.
	ld a, [wPreviousAIFlags]
	and AI_FLAG_USED_PROFESSORS_RESEARCH
	jr z, .try_attack
	ld a, AI_TRAINER_CARD_PHASE_01
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_02
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_03
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_04
	call AIProcessHandTrainerCards
	call AIDecidePlayPokemonCard
	ret c ; return if turn ended
	ld a, AI_TRAINER_CARD_PHASE_05
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_06
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_07
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_08
	call AIProcessHandTrainerCards
	call AIProcessRetreat
	ld a, AI_TRAINER_CARD_PHASE_10
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_11
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_12
	call AIProcessHandTrainerCards
	ld a, [wAlreadyPlayedEnergy]
	or a
	call z, AIProcessAndTryToPlayEnergy
.skip_energy_attach_2
	call AIDecidePlayPokemonCard
	farcall HandleAIDamageSwap
	farcall HandleAIPkmnPowers
	ret c ; return if turn ended
	farcall HandleAIGoGoRainDanceEnergy
	ld a, AI_ENERGY_TRANS_ATTACK
	;farcall HandleAIEnergyTrans
	ld a, AI_TRAINER_CARD_PHASE_13
	call AIProcessHandTrainerCards
	; skip AI_TRAINER_CARD_PHASE_15
.try_attack
	ld a, AI_ENERGY_TRANS_TO_BENCH
	;farcall HandleAIEnergyTrans
; attack if possible, if not,
; finish turn without attacking.
	call AIProcessAndTryToUseAttack
	ret c ; return if AI attacked
	ld a, OPPACTION_FINISH_NO_ATTACK
	bank1call AIMakeDecision
	ret

; handles AI retreating logic
; AIProcessRetreat:
; 	call AIDecideWhetherToRetreat
; 	ret nc ; return if not retreating

; 	call AIDecideBenchPokemonToSwitchTo
; 	ret c ; return if no Bench Pokemon

; ; store Play Area to retreat to and
; ; set flag to prevent retreating again this turn
; 	ld [wAIPlayAreaCardToSwitch], a
; 	ld hl, wOncePerTurnFlags
; 	set UNABLE_TO_RETREAT_THIS_TURN_F, [hl]

; ; if AI can use Switch from hand, use it instead...
; 	ld a, AI_TRAINER_CARD_PHASE_09
; 	call AIProcessHandTrainerCards
; 	ld a, [wPreviousAIFlags]
; 	and AI_FLAG_USED_SWITCH
; 	jr nz, .used_switch
; ; ... else try retreating normally.
; 	ld a, [wAIPlayAreaCardToSwitch]
; 	jp AITryToRetreat

; .used_switch
; ; if AI used switch, unset its AI flag
; 	ld a, [wPreviousAIFlags]
; 	and ~AI_FLAG_USED_SWITCH ; clear Switch flag
; 	ld [wPreviousAIFlags], a

; 	;ld a, AI_ENERGY_TRANS_RETREAT
; 	;farcall HandleAIEnergyTrans
; 	ret
