AIActionTable_MusclesForBrains:
	dw .do_turn ; unused
	dw .do_turn
	dw .start_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	jp AIDoTurn_MusclesForBrains

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
	dw KLAWF
	dw TIMBURR
	dw BRUTE_BONNET
	dw NULL

.list_bench
	dw BRUTE_BONNET
	dw TIMBURR
	dw KLAWF
	dw NULL

.list_retreat
	ai_retreat BRUTE_BONNET,    -3
	ai_retreat GURDURR,         -1
	ai_retreat TIMBURR,         +0
	ai_retreat CONKELDURR,      +2
	ai_retreat KLAWF,           +3
	dw NULL

.list_energy
	ai_energy KLAWF,           2, +5
	ai_energy CONKELDURR,      0, +0
	ai_energy TIMBURR,         0, +0
	ai_energy GURDURR,         0, +0
	ai_energy BRUTE_BONNET,    0, +0
	dw NULL

.list_prize
	dw BRUTE_BONNET
	dw CONKELDURR
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret

AIDoTurn_MusclesForBrains:
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

	ld a, AI_TRAINER_CARD_PHASE_13 ; DEFENDER1
	call AIProcessHandTrainerCards

	call AIProcessRetreat ; where to put this?

	; play Energy card if possible
	ld a, [wAlreadyPlayedEnergy]
	or a
	call z, AIProcessAndTryToPlayEnergy

	; use toxic powder
	farcall HandleAIToxicPowder

	ld a, AI_TRAINER_CARD_PHASE_13 ; LILLIES_DETERMINATION
	call AIProcessHandTrainerCards
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

	ld a, AI_TRAINER_CARD_PHASE_11 ; IONO
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
