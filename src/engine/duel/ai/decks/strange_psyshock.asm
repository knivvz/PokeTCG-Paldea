AIActionTable_StrangePsyshock:
	dw .do_turn ; unused
	dw .do_turn
	dw .start_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	jp AIDoTurn_StrangePsyshock

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
	dw ABRA
	dw DUNSPARCE
	dw NULL

.list_bench
	dw DUNSPARCE
	dw ABRA
	dw NULL

.list_retreat
	ai_retreat ABRA,       +8
	ai_retreat DUNSPARCE,    -8
	dw NULL

.list_energy
	ai_energy ABRA,       1, +8
	ai_energy KADABRA,    1, +8
	ai_energy ALAKAZAM,   1, +8
	ai_energy DUNSPARCE,    0, +0
	ai_energy DUDUNSPARCE,    0, -8
	dw NULL

.list_prize
	dw ALAKAZAM
	dw SWITCH
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing 
	store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret

; where to put call AIProcessRetreat ?
AIDoTurn_StrangePsyshock:
	farcall InitAITurnVars

.start
	farcall UnsetAIModifiedHandFlag

	ld a, AI_TRAINER_CARD_PHASE_06 ; RARE_CANDY
	farcall AIProcessHandTrainerCards

	; play and evolve pokemon
	farcall AIDecidePlayPokemonCard
	; if hand was changed through evolving into kadabra or alakazam, start over to re-evaluate hand
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

	; use dudunsparce if possible
	farcall HandleAIPkmnPowers
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

	ld a, AI_TRAINER_CARD_PHASE_02 ; NEST_BALL
	farcall AIProcessHandTrainerCards
	
	ld a, AI_TRAINER_CARD_PHASE_04 ; NEMONA
	farcall AIProcessHandTrainerCards
	farcall CheckAIModifiedHandFlag
	jr nz, .start ; if hand was modified, start over to re-evaluate hand

	ld a, AI_TRAINER_CARD_PHASE_08 ; SUPER_ROD
	farcall AIProcessHandTrainerCards

	ld a, AI_TRAINER_CARD_PHASE_03 ; ULTRA_BALL
	farcall AIProcessHandTrainerCards

	ld a, AI_TRAINER_CARD_PHASE_06 ; RARE_CANDY
	farcall AIProcessHandTrainerCards

	ld a, AI_TRAINER_CARD_PHASE_07 ; ENERGY_REMOVAL
	farcall AIProcessHandTrainerCards

	farcall AIProcessRetreat ; where to put this?

; play Energy card if possible
	ld a, [wAlreadyPlayedEnergy]
	or a
	jr nz, .next
	farcall AIProcessAndTryToPlayEnergy

.next
	ld a, AI_TRAINER_CARD_PHASE_13 ; LILLIES_DETERMINATION
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
