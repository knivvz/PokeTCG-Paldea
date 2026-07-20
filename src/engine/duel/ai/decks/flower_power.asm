AIActionTable_FlowerPower:
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
	dw DEINO
	dw BINACLE
	dw BULBASAUR
	dw NULL

.list_bench
	dw BULBASAUR
	dw BINACLE
	dw DEINO
	dw NULL

.list_retreat
	ai_retreat ZWEILOUS,     -2
	ai_retreat HYDREIGON_EX, -2
	ai_retreat BULBASAUR, -2
	ai_retreat IVYSAUR,   -2
	dw NULL

.list_energy
	ai_energy BULBASAUR,      3, +0
	ai_energy IVYSAUR,        4, +0
	ai_energy VENUSAUR_EX,  4, +0
	ai_energy DEINO,         2, +0
	ai_energy ZWEILOUS,          3, -1
	ai_energy HYDREIGON_EX,      3, -1
	ai_energy BINACLE,      3, +0
	ai_energy BARBARACLE,     22, +0
	dw NULL

.list_prize
	dw VENUSAUR_EX
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
