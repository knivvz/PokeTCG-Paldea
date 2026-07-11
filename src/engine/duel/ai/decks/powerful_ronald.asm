AIActionTable_PowerfulRonald:
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
	dw BLOODMOON_URSALUNA_EX
	dw IRON_HANDS_EX
	dw HITMONCHAN
	dw MR_MIME
	dw ORTHWORM_EX
	dw PALDEAN_TAUROS
	dw TAUROS
	dw SCREAM_TAIL
	dw MUNKIDORI
	dw DODUO
	dw NULL

.list_bench
	dw BLOODMOON_URSALUNA_EX
	dw PALDEAN_TAUROS
	dw HITMONCHAN
	dw TAUROS
	dw DODUO
	dw SCREAM_TAIL
	dw MUNKIDORI
	dw IRON_HANDS_EX
	dw MR_MIME
	dw ORTHWORM_EX
	dw NULL

.list_retreat
	ai_retreat BLOODMOON_URSALUNA_EX, -1
	ai_retreat DODUO,      -1
	ai_retreat DODRIO,     -1
	dw NULL

.list_energy
	ai_energy IRON_HANDS_EX, 2, +1
	ai_energy PALDEAN_TAUROS,       3, +1
	ai_energy HITMONCHAN,      3, +1
	ai_energy MR_MIME,         2, +0
	ai_energy SCREAM_TAIL,            3, +0
	ai_energy MUNKIDORI,     2, +0
	ai_energy DODUO,           3, -1
	ai_energy DODRIO,          3, -1
	ai_energy ORTHWORM_EX,       2, +0
	ai_energy BLOODMOON_URSALUNA_EX,      4, -1
	ai_energy TAUROS,          3, +0
	dw NULL

.list_prize
	dw GAMBLER
	dw ENERGY_REMOVAL
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
