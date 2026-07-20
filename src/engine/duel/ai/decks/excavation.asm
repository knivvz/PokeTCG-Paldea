AIActionTable_Excavation:
	dw .do_turn ; unused
	dw .do_turn
	dw .start_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	jp AIDoTurn_Excavation

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
	dw ORTHWORM_EX
	;dw DUNSPARCE
	dw BELDUM
	dw NULL

.list_bench
	dw BELDUM
	;dw DUNSPARCE
	dw ORTHWORM_EX
	dw NULL

.list_retreat
	ai_retreat METANG,	 		-3
	ai_retreat BELDUM,          +0
	ai_retreat ORTHWORM_EX,     +3
	dw NULL

.list_energy
	ai_energy ORTHWORM_EX,     4, +5
	ai_energy METANG,	       1, +0
	; ai_energy DUNSPARCE,       0, +0
	dw NULL

.list_prize
	dw ORTHWORM_EX
	dw METANG
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret

AIDoTurn_Excavation:
	farcall InitAITurnVars

.start
	farcall UnsetAIModifiedHandFlag

	; play and evolve pokemon
	farcall AIDecidePlayPokemonCard

	ld a, AI_TRAINER_CARD_PHASE_02 ; NEST_BALL
	farcall AIProcessHandTrainerCards

	; use lunatone if possible
	farcall HandleAIPkmnPowers
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand
	
	ld a, AI_TRAINER_CARD_PHASE_04 ; NEMONA
	farcall AIProcessHandTrainerCards
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

	ld a, AI_TRAINER_CARD_PHASE_05 ; NIGHT_STRETCHER
	farcall AIProcessHandTrainerCards
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

	ld a, AI_TRAINER_CARD_PHASE_08 ; SUPER_ROD
	farcall AIProcessHandTrainerCards

	ld a, AI_TRAINER_CARD_PHASE_03 ; ULTRA_BALL
	farcall AIProcessHandTrainerCards
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

	ld a, AI_TRAINER_CARD_PHASE_07 ; ENERGY_REMOVAL
	farcall AIProcessHandTrainerCards

	farcall AIProcessRetreat ; where to put this?

	; play Energy card if possible
	ld a, [wAlreadyPlayedEnergy]
	or a
	jr nz, .next
	farcall AIProcessAndTryToPlayEnergy

.next
	ld a, AI_TRAINER_CARD_PHASE_15 ; PROFESSORS_RESEARCH
	farcall AIProcessHandTrainerCards
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

.try_attack
; attack if possible, if not,
; finish turn without attacking.
	farcall AIProcessAndTryToUseAttack
	ret c ; return if turn ended
	ld a, OPPACTION_FINISH_NO_ATTACK
	bank1call AIMakeDecision
	ret

AIDecide_NestBall_Excavation:
	ld a, ORTHWORM_EX
	call CountPokemonIDInPlayArea
	cp 2
	jr nc, .check_beldum
	
	ld de, ORTHWORM_EX
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation_Bank8 ; carry set if found
	jr c, .choose

.check_beldum
	ld de, BELDUM
	ld b, PLAY_AREA_ARENA
	call LookForCardIDInPlayArea_Bank8 ; carry set if found
	jr c, .check_dunsparce
	ld de, BELDUM
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation_Bank8 ; carry set if found
	jr c, .choose

.check_dunsparce
	ld de, DUNSPARCE
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation_Bank8 ; carry set if found
	jr c, .choose

	or a ; no targets, dont use
	ret

.choose
	ldh [hTemp_ffa0], a
	scf
	ret

AIDecide_UltraBall_Excavation:
	or a
    ret