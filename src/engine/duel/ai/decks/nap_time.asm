AIActionTable_NapTime:
	dw .do_turn ; unused
	dw .do_turn
	dw .start_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	jp AIDoTurn_NapTime

.start_duel
	call InitAIDuelVars
	call .store_list_pointers
	call SetUpBossStartingHandAndDeck
	call TrySetUpBossStartingPlayArea
	ret nc
	jp AIPlayInitialBasicCards

.forced_switch
	jp AIDecideBenchPokemonToSwitchTo

.ko_switch
	jp AIDecideBenchPokemonToSwitchTo

.take_prize
	jp AIPickPrizeCards

.list_arena
	dw UXIE
	dw AZELF
	dw SNORUNT
    dw MUNKIDORI
	dw NULL

.list_bench
	dw SNORUNT
	dw AZELF
	dw UXIE
    dw MUNKIDORI
	dw NULL

.list_retreat
    ai_retreat MUNKIDORI, 		-3
	ai_retreat SNORUNT, 		-3
	ai_retreat AZELF,         +0
	ai_retreat UXIE,       +3
	dw NULL

.list_energy
	ai_energy UXIE,       1, +5
	ai_energy AZELF,        2, +4
	ai_energy SNORUNT,	       0, +0
	ai_energy MUNKIDORI,        0, +0
	dw NULL

.list_prize
	dw MUNKIDORI
	dw UXIE
    dw AZELF
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret

AIDoTurn_NapTime:
	call InitAITurnVars

.start
	farcall UnsetAIModifiedHandFlag

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

	ld a, AI_TRAINER_CARD_PHASE_07 ; ENERGY_REMOVAL
	call AIProcessHandTrainerCards

	call AIProcessRetreat ; where to put this?

	; play Energy card if possible
	ld a, [wAlreadyPlayedEnergy]
	or a
	call z, AIProcessAndTryToPlayEnergy

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
