AIActionTable_RockCrusher:
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
	jp AIDecideBenchPokemonToSwitchTo

.ko_switch
	jp AIDecideBenchPokemonToSwitchTo

.take_prize
	jp AIPickPrizeCards

.list_arena
	dw RHYHORN
	dw KLAWF
	dw GEODUDE
	dw WIGLETT
	dw NULL

.list_bench
	dw WIGLETT
	dw GEODUDE
	dw RHYHORN
	dw KLAWF
	dw NULL

.list_retreat
	ai_retreat WIGLETT, -1
	dw NULL

.list_energy
	ai_energy WIGLETT,  3, +1
	ai_energy WUGTRIO,  4, +0
	ai_energy GEODUDE,  2, +1
	ai_energy GRAVELER, 3, +0
	ai_energy GOLEM,    4, +0
	ai_energy KLAWF,     2, -1
	ai_energy RHYHORN,  3, +0
	dw NULL

.list_prize
	dw ENERGY_REMOVAL
	dw RHYHORN
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
