AIActionTable_FlyinPokemon:
	dw .do_turn ; unused
	dw .do_turn
	dw .start_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	jp AIDoTurn_FlyinPokemon

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
	dw MURKROW
	dw DUNSPARCE
	dw WATTREL
    dw FLAMIGO
	dw NULL

.list_bench
	dw MURKROW
	dw DUNSPARCE
	dw WATTREL
	dw NULL

.list_retreat
	ai_retreat DUNSPARCE, 		+0
	ai_retreat WATTREL,         +0
	ai_retreat FLAMIGO,         +0
    ai_retreat MURKROW,         +3
	dw NULL

.list_energy
	ai_energy VENONAT,         0, +5
	ai_energy VENOMOTH,        1, +5
	ai_energy MUNKIDORI,       1, +6
	ai_energy SNORUNT,         0, +0
    ai_energy FROSLASS,        0, +0
	dw NULL

.list_prize
	dw FLAMIGO
	dw MURKROW
    dw WATTREL
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret

AIDecide_NestBall_FlyinPokemon:
	ld a, VENONAT
	call CountPokemonIDInPlayArea
	ld b, a
	ld a, VENOMOTH
	call CountPokemonIDInPlayArea
	add b
	cp 2
	jr c, .search_venonat
	ld a, MUNKIDORI
	call CountPokemonIDInPlayArea
	cp 2
	jr c, .search_munkidori
	ld a, SNORUNT
	call CountPokemonIDInPlayArea
	ld b, a
	ld a, FROSLASS
	call CountPokemonIDInPlayArea
	add b
	cp 2
	jr c, .search_snorunt
.search_venonat
	ld de, VENONAT
	ld a, CARD_LOCATION_DECK
	farcall LookForCardIDInLocation_Bank8
	jr c, .choose
.search_munkidori
	ld de, MUNKIDORI
	ld a, CARD_LOCATION_DECK
	farcall LookForCardIDInLocation_Bank8
	jr c, .choose
.search_snorunt
	ld de, SNORUNT
	ld a, CARD_LOCATION_DECK
	farcall LookForCardIDInLocation_Bank8
	jr c, .choose
	or a ; dont use, no targets
	ret
.choose
	ldh [hTemp_ffa0], a
	scf
	ret
	call CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	call LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Stage]
	or a ; BASIC
	jr nz, .loop_deck
	scf 
	ret

; ; carry set if energy played
AIAttachEnergy_FlyinPokemon:
	ld de, DARKNESS_ENERGY
	call LookForCardIDInHandList_Bank5
	jr nc, .check_grass ; not found
	ldh [hTemp_ffa0], a ; energy
	ld de, MUNKIDORI
	ld b, PLAY_AREA_ARENA
	call LookForCardIDInPlayAreaWithNoEnergyAttached_Bank5
	jr nc, .check_grass ; not found, dont use
	ldh [hTempPlayAreaLocation_ff9d], a
	jr .play_energy_card
.check_grass
	ld de, GRASS_ENERGY
	call LookForCardIDInHandList_Bank5
	ret nc ; no energy found
	ldh [hTemp_ffa0], a ; energy
	ld de, VENOMOTH
	ld b, PLAY_AREA_ARENA
	call LookForCardIDInPlayAreaWithNoEnergyAttached_Bank5
	jr nc, .check_venonat ; not found, dont use
	ldh [hTempPlayAreaLocation_ff9d], a
	jr .play_energy_card
.check_venonat
	ld de, VENONAT
	ld b, PLAY_AREA_ARENA
	call LookForCardIDInPlayAreaWithNoEnergyAttached_Bank5
	ret nc ; not found, dont use
	ldh [hTempPlayAreaLocation_ff9d], a
; plays energy card loaded in hTemp_ffa0 and sets carry flag.
; TODO set wAlreadyPlayedEnergy?
.play_energy_card
	ldh a, [hTempPlayAreaLocation_ff9d]
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, OPPACTION_PLAY_ENERGY
	bank1call AIMakeDecision
	scf
	ret

AIDoTurn_FlyinPokemon:
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

	; play Energy card if possible
	ld a, [wAlreadyPlayedEnergy]
	or a
	call z, AIAttachEnergy_Kaleidoscope

	;call AIProcessRetreat ; where to put this?
	ld a, AI_TRAINER_CARD_PHASE_09 ; SWITCH
	call AIProcessHandTrainerCards

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
