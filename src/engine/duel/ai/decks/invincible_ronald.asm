AIActionTable_InvincibleRonald:
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
	dw BLOODMOON_URSALUNA_EX
	dw HEARTHFLAME_MASK_OGERPON_EX
	dw CHANSEY
	dw ARON
	dw SCYTHER
	dw GULPIN
	dw NULL

.list_bench
	dw GULPIN
	dw SCYTHER
	dw ARON
	dw CHANSEY
	dw HEARTHFLAME_MASK_OGERPON_EX
	dw BLOODMOON_URSALUNA_EX
	dw NULL

.list_retreat
	ai_retreat GULPIN, -1
	dw NULL

.list_energy
	ai_energy GULPIN,         1, -1
	ai_energy SWALOT,            3, -1
	ai_energy SCYTHER,        4, +1
	ai_energy HEARTHFLAME_MASK_OGERPON_EX,    2, +0
	ai_energy ARON,        2, +0
	ai_energy LAIRON,       3, +0
	ai_energy CHANSEY,        4, +0
	ai_energy BLOODMOON_URSALUNA_EX,     4, -1
	dw NULL

.list_prize
	dw GAMBLER
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
