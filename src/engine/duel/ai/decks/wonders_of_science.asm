AIActionTable_WondersOfScience:
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
	dw MUNKIDORI
	dw LATIAS_EX
	dw DRIFLOON
	dw GULPIN
	dw TAROUNTULA
	dw AZELF
	dw NULL

.list_bench
	dw GULPIN
	dw TAROUNTULA
	dw LATIAS_EX
	dw DRIFLOON
	dw MUNKIDORI
	dw AZELF
	dw NULL

.list_retreat
	dw NULL

.list_energy
	ai_energy GULPIN,          3, +0
	ai_energy SWALOT,             4, +0
	ai_energy TAROUNTULA,         2, +0
	ai_energy SPIDOPS_EX,         3, +0
	ai_energy MUNKIDORI,     2, -1
	ai_energy LATIAS_EX, 2, -1
	ai_energy DRIFLOON,     2, -1
	ai_energy AZELF,         2, -1
	dw NULL

.list_prize
	dw SWALOT
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
