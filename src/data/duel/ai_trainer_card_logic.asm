MACRO ai_trainer_card_logic
	db \1 ; AI_TRAINER_CARD_PHASE_* constant
	dw \2 ; ID of trainer card
	dw \3 ; function for AI decision to play card
	dw \4 ; function for AI playing the card
ENDM

AITrainerCardLogic:
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_03, ULTRA_BALL,        		AIDecide_UltraBall,                 	 AIPlay_UltraBall
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_02, NEST_BALL,              AIDecide_NestBall,                       AIPlay_NestBall
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_08, SUPER_ROD,              AIDecide_SuperRod,                       AIPlay_SuperRod
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_13, LILLIES_DETERMINATION,  AIDecide_LilliesDetermination,           AIPlay_LilliesDetermination
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_05, NIGHT_STRETCHER,        AIDecide_NightStretcher,                 AIPlay_NightStretcher
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_11, IONO,					AIDecide_Iono,           				 AIPlay_Iono
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_07, POTION,                 AIDecide_Potion_Phase07,                 AIPlay_Potion
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_10, POTION,                 AIDecide_Potion_Phase10,                 AIPlay_Potion
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_08, SUPER_POTION,           AIDecide_SuperPotion1,                   AIPlay_SuperPotion
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_11, SUPER_POTION,           AIDecide_SuperPotion2,                   AIPlay_SuperPotion
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_13, DEFENDER,               AIDecide_Defender1,                      AIPlay_Defender
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_14, DEFENDER,               AIDecide_Defender2,                      AIPlay_Defender
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_13, PLUSPOWER,              AIDecide_Pluspower1,                     AIPlay_Pluspower
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_14, PLUSPOWER,              AIDecide_Pluspower2,                     AIPlay_Pluspower
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_09, SWITCH,                 AIDecide_Switch,                         AIPlay_Switch
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_07, BOSSS_ORDERS,           AIDecide_BosssOrders,                    AIPlay_BosssOrders
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_10, BOSSS_ORDERS,           AIDecide_BosssOrders,                    AIPlay_BosssOrders
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_04, NEMONA,                 AIDecide_Nemona,                         AIPlay_Nemona
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_07, ENERGY_REMOVAL,         AIDecide_EnergyRemoval,                  AIPlay_EnergyRemoval
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_05, ENERGY_SWITCH,   		AIDecide_EnergySwitch,             		 AIPlay_EnergySwitch
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_06, RARE_CANDY,        		AIDecide_RareCandy,                 	 AIPlay_RareCandy
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_15, PROFESSORS_RESEARCH,    AIDecide_ProfessorsResearch,             AIPlay_ProfessorsResearch
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_10, ENERGY_RETRIEVAL,       AIDecide_EnergyRetrieval,                AIPlay_EnergyRetrieval
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_11, SUPERIOR_ENERGY_RETRIEVAL, AIDecide_SuperiorEnergyRetrieval,           AIPlay_SuperiorEnergyRetrieval
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_06, POKEMON_CENTER,         AIDecide_PokemonCenter,                  AIPlay_PokemonCenter
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_12, EARTHEN_VESSEL,          AIDecide_EarthenVessel,                   AIPlay_EarthenVessel
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_07, POKEDEX,                AIDecide_Pokedex,                        AIPlay_Pokedex
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_07, FULL_HEAL,              AIDecide_FullHeal,                       AIPlay_FullHeal
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_10, MR_FUJI,                AIDecide_MrFuji,                         AIPlay_MrFuji
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_10, SCOOP_UP,               AIDecide_ScoopUp,                        AIPlay_ScoopUp
	;ai_trainer_card_logic AI_TRAINER_CARD_PHASE_08, SUPER_ROD,              AIDecide_SuperRod,                       AIPlay_SuperRod
	;ai_trainer_card_logic AI_TRAINER_CARD_PHASE_05, NIGHT_STRETCHER,        AIDecide_NightStretcher,                 AIPlay_NightStretcher
	;ai_trainer_card_logic AI_TRAINER_CARD_PHASE_13, LILLIES_DETERMINATION,  AIDecide_LilliesDetermination,           AIPlay_LilliesDetermination
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_04, ITEM_FINDER,            AIDecide_ItemFinder,                     AIPlay_ItemFinder
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_01, CRISPIN,           AIDecide_Crispin,                        AIPlay_Crispin
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_01, GAMBLER,                AIDecide_Gambler,                        AIPlay_Gambler
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_05, REVIVE,                 AIDecide_Revive,                         AIPlay_Revive
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_13, POKEMON_FLUTE,          AIDecide_PokemonFlute,                   AIPlay_PokemonFlute
;	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_05, CLEFAIRY_DOLL,          AIDecide_ClefairyDollOrMysteriousFossil, AIPlay_ClefairyDollOrMysteriousFossil
	;ai_trainer_card_logic AI_TRAINER_CARD_PHASE_05, MYSTERIOUS_FOSSIL,      AIDecide_ClefairyDollOrMysteriousFossil, AIPlay_ClefairyDollOrMysteriousFossil
	;ai_trainer_card_logic AI_TRAINER_CARD_PHASE_02, NEST_BALL,              AIDecide_NestBall,                       AIPlay_NestBall
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_02, POKEMON_TRADER,         AIDecide_PokemonTrader,                  AIPlay_PokemonTrader
	db $ff
