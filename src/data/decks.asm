DeckPointers::
	table_width 2, DeckPointers
	dw UnnamedDeck
	dw UnnamedDeck2
	dw SamsPracticeDeck
	dw PracticePlayerDeck
	dw SamsPracticeDeck
	dw CharmanderAndFriendsDeck
	dw CharmanderExtraDeck
	dw SquirtleAndFriendsDeck
	dw SquirtleExtraDeck
	dw BulbasaurAndFriendsDeck
	dw BulbasaurExtraDeck
	dw LightningAndFireDeck
	dw WaterAndFightingDeck
	dw GrassAndPsychicDeck
	dw LegendaryMoltresDeck
	dw LegendaryZapdosDeck
	dw LegendaryArticunoDeck
	dw LegendaryDragoniteDeck
	dw FirstStrikeDeck
	dw RockCrusherDeck
	dw GoGoRainDanceDeck
	dw ZappingSelfdestructDeck
	dw FlowerPowerDeck
	dw StrangePsyshockDeck
	dw WondersofScienceDeck
	dw FireChargeDeck
	dw ImRonaldDeck
	dw PowerfulRonaldDeck
	dw InvincibleRonaldDeck
	dw LegendaryRonaldDeck
	dw MusclesforBrainsDeck ; NO AI FROM HERE ON
	dw HeatedBattleDeck
	dw LovetoBattleDeck
	dw ExcavationDeck
	dw BlisteringPokemonDeck
	dw HardPokemonDeck
	dw WaterfrontPokemonDeck
	dw LonelyFriendsDeck
	dw SoundoftheWavesDeck
	dw PikachuDeck
	dw BoomBoomSelfdestructDeck
	dw PowerGeneratorDeck
	dw EtceteraDeck
	dw FlowerGardenDeck
	dw KaleidoscopeDeck
	dw GhostDeck
	dw NapTimeDeck
	dw StrangePowerDeck
	dw FlyinPokemonDeck
	dw LovelyNidoranDeck
	dw PoisonDeck
	dw AngerDeck
	dw FlamethrowerDeck
	dw ReshuffleDeck
	dw ImakuniDeck
	dw NULL
	assert_table_length NUM_VALID_DECKS + 1

UnnamedDeck:
	deck_list_start
	card_item PSYCHIC_ENERGY,         20
	card_item BRUTE_BONNET,            4
	card_item CLEFFA,                4
	card_item MEW_LV8,                 4
	card_item PIDGEOT_EX,            2
	card_item PIDGEOTTO,               2
	card_item PIDGEY,                  4
	card_item CRISPIN,            2
	card_item GAMBLER,                 2
	card_item PROFESSORS_RESEARCH,           2
	card_item ENERGY_REMOVAL,          2
	card_item ENERGY_RETRIEVAL,        2
	card_item EARTHEN_VESSEL,           2
	card_item RARE_CANDY,         2
	card_item IONO,  2
	card_item SCOOP_UP,                1
	card_item DEVOLUTION_SPRAY,        1
	card_item POTION,                  1
	card_item SUPER_POTION,            1
	deck_list_end

UnnamedDeck2:
	deck_list_start
	card_item FIRE_ENERGY,              4
	card_item GRASS_ENERGY,            20
	card_item BLOODMOON_URSALUNA_EX,               4
	card_item BULBASAUR,                4
	card_item IVYSAUR,                  3
	card_item VENUSAUR_EX,            2
	card_item FUECOCO,               4
	card_item CROCALOR,               3
	card_item SKELEDIRGE_EX,                2
	card_item RARE_CANDY,          3
	card_item POKEMON_TRADER,           3
	card_item ENERGY_RETRIEVAL,         2
	card_item PROFESSORS_RESEARCH,            2
	card_item BOSSS_ORDERS,             2
	card_item DOUBLE_COLORLESS_ENERGY,  2
	deck_list_end

PracticePlayerDeck:
	deck_list_start
	card_item WATER_ENERGY,   2
	card_item PSYCHIC_ENERGY, 1
	card_item SEAKING,        1
	card_item VAROOM,         1
	card_item FULL_HEAL,      1
	card_item GOLDEEN,        1
	card_item WATER_ENERGY,   5
	card_item PUMPKABOO,        1
	card_item POTION,         1
	card_item SEAKING,        1
	card_item REVAVROOM,        1
	card_item WATER_ENERGY,   1
	card_item NEMONA,           1
	card_item PSYCHIC_ENERGY, 1
	card_item SCREAM_TAIL,           1
	card_item QUAXLY,       1
	card_item WATER_ENERGY,   1
	card_item QUAXLY,       1
	card_item WATER_ENERGY,   1
	card_item PSYCHIC_ENERGY, 1
	card_item QUAXWELL,      1
	card_item NEMONA,           1
	card_item WATER_ENERGY,   1
	card_item QUAQUAVAL_EX,      1
	card_item WATER_ENERGY,   1
	card_item PSYCHIC_ENERGY, 1
	card_item WATER_ENERGY,   1
	card_item PSYCHIC_ENERGY, 1
	card_item RATTATA,        1
	card_item ABRA,           1
	card_item PSYCHIC_ENERGY, 1
	card_item GOURGEIST_EX,          1
	card_item WATER_ENERGY,   1
	card_item PSYCHIC_ENERGY, 1
	card_item MELTAN,           1
	card_item PSYCHIC_ENERGY, 1
	card_item KADABRA,        1
	card_item POTION,         1
	card_item PSYCHIC_ENERGY, 1
	card_item PUMPKABOO,        1
	card_item PSYCHIC_ENERGY, 1
	card_item RATTATA,        1
	card_item GOLDEEN,        1
	card_item MELTAN,           1
	card_item MELMETAL_EX,        1
	card_item GOLDEEN,        1
	card_item VAROOM,         1
	card_item LAPRAS,         1
	card_item ABRA,           1
	card_item PUMPKABOO,        1
	card_item GOURGEIST_EX,          1
	card_item RATTATA,        1
	card_item RATICATE,       1
	card_item RATICATE,       1
	card_item ALAKAZAM,       1
	deck_list_end
	tx PracticePlayerDeckName

SamsPracticeDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY,        2
	card_item FIGHTING_ENERGY,         2
	card_item TIMBURR,                  1
	card_item RATICATE,                1
	card_item CONKELDURR,                 1
	card_item FIGHTING_ENERGY,         2
	card_item CONKELDURR,                 1
	card_item RATTATA,                 1
	card_item FIGHTING_ENERGY,         2
	card_item TIMBURR,                  1
	card_item FIGHTING_ENERGY,         1
	card_item RATICATE,                1
	card_item LIGHTNING_ENERGY,        1
	card_item TIMBURR,                  1
	card_item NEMONA,                    1
	card_item FIGHTING_ENERGY,         1
	card_item WIGLETT,                 1
	card_item WUGTRIO,                 1
	card_item FIGHTING_ENERGY,         1
	card_item GURDURR,                 1
	card_item LIGHTNING_ENERGY,        1
	card_item LIGHTNING_ENERGY,        1
	card_item BOSSS_ORDERS,            1
	card_item ESPEON_EX,            1
	card_item LIGHTNING_ENERGY,        1
	card_item IRON_HANDS_EX,         1
	card_item FIGHTING_ENERGY,         1
	card_item HITMONCHAN,              1
	card_item LIGHTNING_ENERGY,        1
	card_item PROFESSORS_RESEARCH,           1
	card_item FIGHTING_ENERGY,         1
	card_item EEVEE,                   1
	card_item FIGHTING_ENERGY,         1
	card_item DOUBLE_COLORLESS_ENERGY, 1
	card_item EMOLGA,            1
	card_item LIGHTNING_ENERGY,        1
	card_item EMOLGA,            1
	card_item LIGHTNING_ENERGY,        1
	card_item POTION,                  1
	card_item LIGHTNING_ENERGY,        1
	card_item POLTCHAGEIST,            1
	card_item LIGHTNING_ENERGY,        1
	card_item GALVANTULA_EX,             1
	card_item SINISTCHA,             1
	card_item LIGHTNING_ENERGY,        1
	card_item ESPEON_EX,            1
	card_item WIGLETT,                 1
	card_item TIMBURR,                  1
	card_item GURDURR,                 1
	card_item KLAWF,                    1
	card_item SOLROCK,                 1
	card_item SOLROCK,                 1
	card_item LUNATONE,                  1
	card_item RATTATA,                 1
	card_item EEVEE,                   1
	card_item EEVEE,                   1
	deck_list_end
	tx SamsPracticeDeckName

CharmanderAndFriendsDeck:
	deck_list_start
	card_item WATER_ENERGY,      10
	card_item DOUBLE_COLORLESS_ENERGY,  4
	;card_item GRASS_ENERGY,   	10
	;card_item FUECOCO,        	 2
	;card_item CROCALOR,        	 1
	;card_item SKELEDIRGE_EX,      1
	card_item DUNSPARCE,         	 3
	;card_item SIZZLIPEDE,            2
	card_item DUDUNSPARCE,       3
	card_item FROAKIE,      		 4
	card_item FROGADIER,      		 4
	card_item GRENINJA_EX,      		 4
	card_item EARTHEN_VESSEL,    4
	;card_item WATTREL,    		 2
	;card_item KILOWATTREL,     	 1
	card_item DEFENDER,	         4
	;card_item WUGTRIO,           1
	;card_item MEOWTH_LV14,       1
	card_item LILLIES_DETERMINATION,     4
	card_item NEMONA,            4
	;card_item SWITCH,            1
	card_item ULTRA_BALL,   4
	card_item RARE_CANDY,         4
	card_item NEST_BALL,			4
	;card_item POTION,            2
	;card_item FULL_HEAL,         2
	deck_list_end
	tx CharmanderAndFriendsDeckName

CharmanderExtraDeck:
	deck_list_start
	card_item GRASS_ENERGY,    4
	card_item WATER_ENERGY,    4
	card_item PSYCHIC_ENERGY,  3
	card_item BULBASAUR,       1
	card_item IVYSAUR,         1
	card_item SPRIGATITO,        2
	card_item WEEDLE,        2
	card_item KAKUNA,         1
	card_item APPLIN,        1
	card_item TEAL_MASK_OGERPON_EX,          1
	card_item MELTAN,            2
	card_item MELMETAL_EX,         1
	card_item GOLDEEN,         2
	card_item SEAKING,         1
	card_item ABRA,            2
	card_item KADABRA,         1
	card_item RALTS,      1
	card_item GRASS_ENERGY,   30 ; irrelevant
	deck_list_end
	tx CharmanderExtraDeckName

SquirtleAndFriendsDeck:
	deck_list_start
	card_item WATER_ENERGY,    11
	card_item FIGHTING_ENERGY,  6
	card_item PSYCHIC_ENERGY,   8
	card_item QUAXLY,         2
	card_item QUAXWELL,        1
	card_item QUAQUAVAL_EX,        1
	card_item MELTAN,             2
	card_item MELMETAL_EX,          1
	card_item VAROOM,           1
	card_item REVAVROOM,          1
	card_item GOLDEEN,          1
	card_item SEAKING,          1
	card_item LAPRAS,           1
	card_item ABRA,             2
	card_item KADABRA,          1
	card_item RALTS,       2
	card_item KIRLIA,     1
	card_item TIMBURR,           1
	card_item GURDURR,          1
	card_item ARON,          2
	card_item HITMONCHAN,       1
	card_item RATTATA,          2
	card_item RATICATE,         1
	card_item MEOWTH_LV14,      1
	card_item PROFESSORS_RESEARCH,    1
	card_item NEMONA,             1
	card_item SWITCH,           1
	card_item NEST_BALL,        1
	card_item SCOOP_UP,         1
	card_item ITEM_FINDER,      1
	card_item POTION,           1
	card_item FULL_HEAL,        1
	deck_list_end
	tx SquirtleAndFriendsDeckName

SquirtleExtraDeck:
	deck_list_start
	card_item GRASS_ENERGY,      3
	card_item FIRE_ENERGY,       4
	card_item LIGHTNING_ENERGY,  4
	card_item SPRIGATITO,          2
	card_item APPLIN,          1
	card_item WEEDLE,          1
	card_item KAKUNA,           1
	card_item HONEDGE,            1
	card_item DOUBLADE,            1
	card_item TEAL_MASK_OGERPON_EX,            1
	card_item FUECOCO,        2
	card_item CROCALOR,        1
	card_item MAGMAR_LV24,       1
	card_item CHARCADET,         1
	card_item CERULEDGE_EX,     1
	card_item EMOLGA,      2
	card_item WATTREL,    1
	card_item KILOWATTREL,     1
	card_item IRON_HANDS_EX,   1
	card_item GRASS_ENERGY,     30 ; irrelevant
	deck_list_end
	tx SquirtleExtraDeckName

BulbasaurAndFriendsDeck:
	deck_list_start
	card_item GRASS_ENERGY,    11
	card_item FIRE_ENERGY,      3
	card_item WATER_ENERGY,     9
	card_item BULBASAUR,        2
	card_item IVYSAUR,          1
	card_item VENUSAUR_EX,    1
	card_item WEEDLE,         2
	card_item KAKUNA,          1
	card_item SPRIGATITO,         2
	card_item APPLIN,         2
	card_item DIPPLIN,         1
	card_item SCIZOR,     1
	card_item FLAREON_EX,     1
	card_item MELTAN,             1
	card_item MELMETAL_EX,          1
	card_item DRILBUR,           2
	card_item EXCADRILL_EX,          1
	card_item GOLDEEN,          2
	card_item SEAKING,          1
	card_item FRIGIBAX,    1
	card_item VIGOROTH,  1
	card_item MEOWTH_LV14,      1
	card_item EEVEE,            2
	card_item BLOODMOON_URSALUNA_EX,       1
	card_item PROFESSORS_RESEARCH,    1
	card_item SWITCH,           1
	card_item NEST_BALL,        1
	card_item PLUSPOWER,        2
	card_item DEFENDER,         1
	card_item FULL_HEAL,        2
	card_item REVIVE,           1
	deck_list_end
	tx BulbasaurAndFriendsDeckName

BulbasaurExtraDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY,  4
	card_item PSYCHIC_ENERGY,    4
	card_item FIGHTING_ENERGY,   3
	card_item EMOLGA,      2
	card_item GALVANTULA_EX,       1
	card_item WATTREL,    1
	card_item IRON_HANDS_EX,   1
	card_item ABRA,              2
	card_item KADABRA,           1
	card_item SCREAM_TAIL,              1
	card_item RALTS,        2
	card_item KIRLIA,      1
	card_item WIGLETT,           1
	card_item WUGTRIO,           1
	card_item HITMONCHAN,        1
	card_item NEMONA,              1
	card_item POTION,            2
	card_item BOSSS_ORDERS,      1
	card_item GRASS_ENERGY,     30 ; irrelevant
	deck_list_end
	tx BulbasaurExtraDeckName

LightningAndFireDeck:
	deck_list_start
	card_item FIRE_ENERGY,             10
	card_item LIGHTNING_ENERGY,        10
	card_item DOUBLE_COLORLESS_ENERGY,  2
	card_item FUECOCO,               2
	card_item CROCALOR,               1
	card_item SKELEDIRGE_EX,                1
	card_item CHARCADET,                2
	card_item CERULEDGE_EX,            1
	card_item SIZZLIPEDE,                   2
	card_item CENTISKORCH,                 1
	card_item MAGMAR_LV24,              1
	card_item HEARTHFLAME_MASK_OGERPON_EX,              1
	card_item EMOLGA,             1
	card_item POLTCHAGEIST,             1
	card_item GALVANTULA_EX,              1
	card_item WATTREL,           2
	card_item KILOWATTREL,            1
	card_item SHINX,                  3
	card_item LUXIO,           1
	card_item LUXRAY_EX,           1
	card_item RATTATA,                  2
	card_item RATICATE,                 1
	card_item PROFESSORS_RESEARCH,            1
	card_item NEMONA,                     2
	card_item EARTHEN_VESSEL,            2
	card_item SWITCH,                   2
	card_item PLUSPOWER,                2
	card_item DEFENDER,                 2
	card_item POTION,                   1
	deck_list_end
	tx LightningAndFireDeckName

WaterAndFightingDeck:
	deck_list_start
	card_item WATER_ENERGY,            12
	card_item FIGHTING_ENERGY,         10
	card_item DOUBLE_COLORLESS_ENERGY,  2
	card_item FROAKIE,                  2
	card_item FROGADIER,                1
	card_item GRENINJA_EX,                1
	card_item MELTAN,                     2
	card_item MELMETAL_EX,                  1
	card_item GOLDEEN,                  2
	card_item SEAKING,                  1
	card_item VAROOM,                   2
	card_item REVAVROOM,                  1
	card_item SANDSHREW,                2
	card_item SANDSLASH,                1
	card_item TIMBURR,                   3
	card_item GURDURR,                  2
	card_item CONKELDURR,                  1
	card_item HITMONCHAN,               1
	card_item SOLROCK,                  2
	card_item LUNATONE,                   1
	card_item PROFESSORS_RESEARCH,            1
	card_item NEMONA,                     2
	card_item EARTHEN_VESSEL,            2
	card_item POTION,                   3
	card_item FULL_HEAL,                2
	deck_list_end
	tx WaterAndFightingDeckName

GrassAndPsychicDeck:
	deck_list_start
	card_item GRASS_ENERGY,   12
	card_item PSYCHIC_ENERGY, 12
	card_item HONEDGE,          2
	card_item DOUBLADE,          1
	card_item AEGISLASH_EX,        1
	card_item SPRIGATITO,        2
	card_item FLORAGATO,        1
	card_item TOXEL,           2
	card_item TOXTRICITY,        1
	card_item BINACLE,       2
	card_item BARBARACLE,       1
	card_item TEAL_MASK_OGERPON_EX,          1
	card_item ABRA,            3
	card_item KADABRA,         2
	card_item PUMPKABOO,         3
	card_item GOURGEIST_EX,           2
	card_item SCREAM_TAIL,            1
	card_item SQUAWKABILLY_EX,       1
	card_item TAUROS,          1
	card_item NEMONA,            2
	card_item EARTHEN_VESSEL,   2
	card_item BOSSS_ORDERS,    2
	card_item POTION,          2
	card_item FULL_HEAL,       2
	; this deck list has 61 cards
	;deck_list_end
	db 0 ; end
	tx GrassAndPsychicDeckName

LegendaryMoltresDeck:
	deck_list_start
	card_item FIRE_ENERGY,            25
	card_item LITWICK,                  4
	card_item CHANDELURE,          3
	card_item CHARCADET,               4
	card_item CERULEDGE_EX,           2
	card_item MAGMAR_LV24,             2
	card_item HEARTHFLAME_MASK_OGERPON_EX,             2
	card_item MOLTRES,            2
	card_item RESHIRAM_EX,            2
	card_item NEMONA,                    3
	card_item LILLIES_DETERMINATION,                    2
	card_item POKEMON_TRADER,          1
	card_item ENERGY_RETRIEVAL,        1
	card_item SUPERIOR_ENERGY_RETRIEVAL,  1
	card_item ENERGY_REMOVAL,          2
	card_item SWITCH,                  2
	card_item POTION,                  1
	card_item SUPER_POTION,            1
	deck_list_end
	tx LegendaryMoltresDeckName

LegendaryZapdosDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY, 25
	card_item SHINX,           4
	card_item LUXIO,    3
	card_item IRON_HANDS_EX,   4
	card_item ESPEON_EX,      2
	card_item ZAPDOS_LV40,       1
	card_item ZEKROM_EX,       1
	card_item ZAPDOS_LV68,       2
	card_item EEVEE,             3
	card_item NEMONA,              4
	card_item ENERGY_RETRIEVAL,  2
	card_item SWITCH,            2
	card_item PLUSPOWER,         3
	card_item POTION,            3
	card_item GAMBLER,           1
	deck_list_end
	tx LegendaryZapdosDeckName

LegendaryArticunoDeck:
	deck_list_start
	card_item WATER_ENERGY,     25
	card_item MELTAN,              4
	card_item MELMETAL_EX,           3
	card_item LAPRAS,            4
	card_item WELLSPRING_OGERPON_EX,     2
	card_item YVELTAL,     2
	card_item CHANSEY,           3
	card_item UXIE,             2
	card_item PROFESSORS_RESEARCH,     2
	card_item POKEMON_TRADER,    2
	card_item ENERGY_RETRIEVAL,  3
	card_item SWITCH,            3
	card_item SCOOP_UP,          4
	card_item GAMBLER,           1
	deck_list_end
	tx LegendaryArticunoDeckName

LegendaryDragoniteDeck:
	deck_list_start
	card_item WATER_ENERGY,            20
	card_item DOUBLE_COLORLESS_ENERGY,  4
	card_item FUECOCO,               3
	card_item CROCALOR,               2
	card_item SKELEDIRGE_EX,                2
	card_item WAILMER,                 3
	card_item WAILORD,                 2
	card_item LAPRAS,                   2
	card_item BLOODMOON_URSALUNA_EX,               2
	card_item BAGON,                  4
	card_item SHELGON,                3
	card_item DRAGONITE_LV41,           2
	card_item PROFESSORS_RESEARCH,            2
	card_item POKEMON_TRADER,           2
	card_item RARE_CANDY,          2
	card_item ENERGY_RETRIEVAL,         1
	card_item SUPERIOR_ENERGY_RETRIEVAL,   1
	card_item SWITCH,                   2
	card_item GAMBLER,                  1
	deck_list_end
	tx LegendaryDragoniteDeckName

FirstStrikeDeck:
	deck_list_start
	card_item FIGHTING_ENERGY, 25
	card_item TIMBURR,           4
	card_item GURDURR,          3
	card_item CONKELDURR,          2
	card_item HITMONCHAN,       2
	card_item PALDEAN_TAUROS,        4
	card_item MANKEY,           4
	card_item BLOODMOON_URSALUNA,         1
	card_item POTION,           2
	card_item DEFENDER,         2
	card_item PLUSPOWER,        2
	card_item SWITCH,           2
	card_item BOSSS_ORDERS,     3
	card_item NEMONA,             4
	deck_list_end
	tx FirstStrikeDeckName

RockCrusherDeck:
	deck_list_start
	card_item FIGHTING_ENERGY,         24
	card_item DOUBLE_COLORLESS_ENERGY,  2
	card_item WIGLETT,                  4
	card_item WUGTRIO,                  2
	card_item ARON,                  4
	card_item LAIRON,                 3
	card_item AGGRON,                    2
	card_item KLAWF,                     3
	card_item SOLROCK,                  3
	card_item PROFESSORS_RESEARCH,            2
	card_item RARE_CANDY,          1
	card_item ENERGY_REMOVAL,           2
	card_item SWITCH,                   2
	card_item ULTRA_BALL,          1
	card_item DEFENDER,                 2
	card_item SUPER_POTION,             1
	card_item POTION,                   2
	deck_list_end
	tx RockCrusherDeckName

GoGoRainDanceDeck:
	deck_list_start
	card_item WATER_ENERGY,           24
	card_item QUAXLY,                4
	card_item QUAXWELL,               3
	card_item QUAQUAVAL_EX,               2
	card_item GOLDEEN,                 4
	card_item SEAKING,                 3
	card_item HORSEA,                  3
	card_item SEADRA,                  2
	card_item LAPRAS,                  2
	card_item PROFESSORS_RESEARCH,           2
	card_item RARE_CANDY,         1
	card_item ENERGY_RETRIEVAL,        1
	card_item SUPERIOR_ENERGY_RETRIEVAL,  1
	card_item ENERGY_REMOVAL,          2
	card_item ENERGY_SWITCH,    1
	card_item SWITCH,                  2
	card_item POTION,                  2
	card_item GAMBLER,                 1
	deck_list_end
	tx GoGoRainDanceDeckName

ZappingSelfdestructDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY,        24
	card_item DOUBLE_COLORLESS_ENERGY,  2
	card_item WATTREL,           4
	card_item KILOWATTREL,            3
	card_item SHINX,                  4
	card_item LUXIO,           2
	card_item IRON_HANDS_EX,          4
	card_item BLOODMOON_URSALUNA_EX,               2
	card_item TAUROS,                   1
	card_item PROFESSORS_RESEARCH,            1
	card_item NEMONA,                     2
	card_item SWITCH,                   2
	card_item DEFENDER,                 4
	card_item BOSSS_ORDERS,             1
	card_item POTION,                   4
	deck_list_end
	tx ZappingSelfdestructDeckName

FlowerPowerDeck:
	deck_list_start
	card_item GRASS_ENERGY,        18
	card_item WEEDLE,         	   4
	card_item KAKUNA,         	   4
	card_item BEEDRILL_EX,         4
	card_item TEAL_MASK_OGERPON_EX,4
	card_item NEST_BALL,         4
	card_item ULTRA_BALL,         4
	card_item RARE_CANDY,         4
	card_item LILLIES_DETERMINATION,         4
	card_item NIGHT_STRETCHER,         4
	card_item SUPER_ROD,         2
	card_item NEMONA,         4

	; card_item GRASS_ENERGY,     18
	; card_item PSYCHIC_ENERGY,    4
	; card_item BULBASAUR,         4
	; card_item IVYSAUR,           3
	; card_item VENUSAUR_EX,     2
	; card_item DEINO,            4
	; card_item ZWEILOUS,             3
	; card_item HYDREIGON_EX,         2
	; card_item BINACLE,         4
	; card_item BARBARACLE,         3
	; card_item PROFESSORS_RESEARCH,     2
	; card_item NEMONA,              3
	; card_item RARE_CANDY,   2
	; card_item ENERGY_RETRIEVAL,  2
	; card_item SWITCH,            2
	; card_item POTION,            2
	deck_list_end
	tx FlowerPowerDeckName

; PSYCHIC CLUB LEADER
StrangePsyshockDeck:
	deck_list_start
	card_item PSYCHIC_ENERGY, 12
	card_item ABRA,            4
	card_item KADABRA,         4
	card_item ALAKAZAM,        4
	;card_item MR_MIME,         2
	card_item DUNSPARCE,         3
	card_item DUDUNSPARCE,      3
	;card_item SNORLAX,         2
	card_item LILLIES_DETERMINATION,   4
	card_item NEMONA,   4
	;card_item POKEMON_CENTER,  2
	card_item RARE_CANDY,        4
	card_item ENERGY_REMOVAL,  3
	card_item BOSSS_ORDERS,    3
	card_item NEST_BALL,        4
	card_item ULTRA_BALL,        4
	card_item SUPER_ROD,        4
	;card_item SWITCH,          4
	;card_item GAMBLER,         1
	deck_list_end
	tx StrangePsyshockDeckName

WondersofScienceDeck:
	deck_list_start
	card_item GRASS_ENERGY,           15
	card_item PSYCHIC_ENERGY,          8
	card_item GULPIN,                  4
	card_item SWALOT,                     3
	card_item TAROUNTULA,                 4
	card_item SPIDOPS_EX,                 3
	card_item MUNKIDORI,             2
	card_item LATIAS_EX,         1
	card_item DRIFLOON,             1
	card_item AZELF,                 2
	card_item IONO,  1
	card_item PROFESSORS_RESEARCH,           2
	card_item NEMONA,                    2
	card_item EARTHEN_VESSEL,           2
	card_item SWITCH,                  2
	card_item ULTRA_BALL,         2
	card_item POKEDEX,                 2
	card_item SUPER_ROD,             2
	card_item FULL_HEAL,               2
	deck_list_end
	tx WondersofScienceDeckName

; FIRE CLUB LEADER
FireChargeDeck:
	deck_list_start
	card_item FIRE_ENERGY,              10
	card_item FIGHTING_ENERGY,          10
	card_item CHARCADET,                4
	card_item CERULEDGE_EX,             4
	card_item SOLROCK,              	4
	card_item LUNATONE,          		4
	card_item PROFESSORS_RESEARCH,      4
	card_item NEMONA,                   4
	card_item NEST_BALL,                4
	card_item ULTRA_BALL,          		4
	card_item SUPER_ROD,                2
	card_item NIGHT_STRETCHER,          2
	card_item ENERGY_REMOVAL,             4
	deck_list_end
	tx FireChargeDeckName

ImRonaldDeck:
	deck_list_start
	card_item FIRE_ENERGY,       9
	card_item WATER_ENERGY,     10
	card_item FIGHTING_ENERGY,   8
	card_item FUECOCO,        3
	card_item CROCALOR,        2
	card_item CHARCADET,         3
	card_item CERULEDGE_EX,     1
	card_item QUAXLY,          3
	card_item QUAXWELL,         2
	card_item MELTAN,              2
	card_item MELMETAL_EX,           1
	card_item LAPRAS,            2
	card_item GIMMIGHOUL,            3
	card_item MAROWAK_LV26,      2
	card_item PROFESSORS_RESEARCH,     1
	card_item ENERGY_RETRIEVAL,  1
	card_item EARTHEN_VESSEL,     2
	card_item SWITCH,            1
	card_item PLUSPOWER,         1
	card_item DEFENDER,          1
	card_item BOSSS_ORDERS,      2
	deck_list_end
	tx ImRonaldDeckName

PowerfulRonaldDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY,        7
	card_item FIGHTING_ENERGY,         9
	card_item PSYCHIC_ENERGY,          7
	card_item DOUBLE_COLORLESS_ENERGY, 3
	card_item IRON_HANDS_EX,         3
	card_item PALDEAN_TAUROS,               2
	card_item HITMONCHAN,              2
	card_item MR_MIME,                 1
	card_item SCREAM_TAIL,                    2
	card_item MUNKIDORI,             1
	card_item DODUO,                   2
	card_item DODRIO,                  1
	card_item ORTHWORM_EX,               2
	card_item BLOODMOON_URSALUNA_EX,              2
	card_item TAUROS,                  3
	card_item ENERGY_RETRIEVAL,        2
	card_item SUPERIOR_ENERGY_RETRIEVAL,  1
	card_item EARTHEN_VESSEL,           1
	card_item ENERGY_REMOVAL,          2
	card_item SWITCH,                  1
	card_item PLUSPOWER,               2
	card_item BOSSS_ORDERS,            2
	card_item FULL_HEAL,               1
	card_item GAMBLER,                 1
	deck_list_end
	tx PowerfulRonaldDeckName

InvincibleRonaldDeck:
	deck_list_start
	card_item GRASS_ENERGY,            7
	card_item FIRE_ENERGY,             6
	card_item FIGHTING_ENERGY,         7
	card_item DOUBLE_COLORLESS_ENERGY, 4
	card_item GULPIN,                  3
	card_item SWALOT,                     2
	card_item SCYTHER,                 4
	card_item HEARTHFLAME_MASK_OGERPON_EX,             3
	card_item ARON,                 3
	card_item LAIRON,                2
	card_item CHANSEY,                 2
	card_item BLOODMOON_URSALUNA_EX,              2
	card_item PROFESSORS_RESEARCH,           2
	card_item NEMONA,                    2
	card_item ENERGY_RETRIEVAL,        2
	card_item ENERGY_REMOVAL,          2
	card_item SCOOP_UP,                2
	card_item BOSSS_ORDERS,            2
	card_item PLUSPOWER,               2
	card_item GAMBLER,                 1
	deck_list_end
	tx InvincibleRonaldDeckName

LegendaryRonaldDeck:
	deck_list_start
	card_item FIRE_ENERGY,             20
	card_item DOUBLE_COLORLESS_ENERGY,  4
	card_item FLAREON_LV22,             1
	card_item RESHIRAM_EX,             2
	card_item VAPOREON_LV29,            1
	card_item WELLSPRING_OGERPON_EX,            1
	card_item JOLTEON_LV24,             1
	card_item ZAPDOS_LV68,              1
	card_item BLOODMOON_URSALUNA_EX,               2
	card_item EEVEE,                    4
	card_item BAGON,                  4
	card_item SHELGON,                3
	card_item DRAGONITE_LV41,           2
	card_item PROFESSORS_RESEARCH,            1
	card_item NEMONA,                     3
	card_item POKEMON_TRADER,           1
	card_item RARE_CANDY,          2
	card_item ENERGY_REMOVAL,           3
	card_item SCOOP_UP,                 3
	card_item GAMBLER,                  1
	deck_list_end
	tx LegendaryRonaldDeckName

; FIGHTING CLUB
MusclesforBrainsDeck:
	deck_list_start
	card_item DOUBLE_COLORLESS_ENERGY,  4
	card_item KLAWF,                    4
	card_item TIMBURR,                  4
	card_item GURDURR,                  4
	card_item CONKELDURR,               4
	card_item BRUTE_BONNET,             4
	card_item NEMONA,                   4
	card_item LILLIES_DETERMINATION,    4
	card_item IONO,                     4
	card_item NEST_BALL,                4
	card_item ULTRA_BALL,               4
	card_item DEFENDER,                 4
	card_item SWITCH,         			4
	card_item RARE_CANDY,               4
	card_item NIGHT_STRETCHER,          4

	; card_item FIGHTING_ENERGY,         26
	; card_item DOUBLE_COLORLESS_ENERGY,  2
	; card_item MANKEY,                   1
	; card_item BLOODMOON_URSALUNA,                 1
	; card_item TIMBURR,                   3
	; card_item GURDURR,                  2
	; card_item CONKELDURR,                  2
	; card_item PALDEAN_TAUROS,                2
	; card_item HITMONCHAN,               2
	; card_item DUNSPARCE,              3
	; card_item DUDUNSPARCE,                  2
	; card_item ORTHWORM_EX,                1
	; card_item BLOODMOON_URSALUNA_EX,               1
	; card_item TAUROS,                   2
	; card_item NEMONA,                     1
	; card_item ENERGY_REMOVAL,           1
	; card_item PLUSPOWER,                2
	; card_item BOSSS_ORDERS,             2
	; card_item POTION,                   1
	; card_item SUPER_POTION,             1
	; card_item FULL_HEAL,                1
	; card_item REVIVE,                   1
	deck_list_end
	tx MusclesforBrainsDeckName

HeatedBattleDeck:
	deck_list_start
	card_item FIRE_ENERGY,       8
	card_item LIGHTNING_ENERGY,  4
	card_item FIGHTING_ENERGY,  15
	card_item MAGMAR_LV24,       4
	card_item IRON_HANDS_EX,   2
	card_item MANKEY,            3
	card_item BLOODMOON_URSALUNA,          2
	card_item PALDEAN_TAUROS,         3
	card_item HITMONCHAN,        3
	card_item BLOODMOON_URSALUNA_EX,        2
	card_item EARTHEN_VESSEL,     2
	card_item SCOOP_UP,          2
	card_item PLUSPOWER,         3
	card_item DEFENDER,          2
	card_item POTION,            3
	card_item FULL_HEAL,         2
	deck_list_end
	tx HeatedBattleDeckName

LovetoBattleDeck:
	deck_list_start
	card_item FIGHTING_ENERGY, 26
	card_item MANKEY,           2
	card_item BLOODMOON_URSALUNA,         1
	card_item TIMBURR,           4
	card_item GURDURR,          3
	card_item CONKELDURR,          2
	card_item RATTATA,          3
	card_item RATICATE,         2
	card_item DODUO,            2
	card_item DODRIO,           1
	card_item TAUROS,           1
	card_item PLUSPOWER,        4
	card_item DEFENDER,         4
	card_item POTION,           3
	card_item FULL_HEAL,        2
	deck_list_end
	tx LovetoBattleDeckName

; METAL CLUB
ExcavationDeck:
	deck_list_start
	card_item METAL_ENERGY,       19
	card_item ORTHWORM_EX,	      4
	; card_item DUNSPARCE,	      3
	; card_item DUDUNSPARCE,	      3
	card_item BELDUM,		      3
	card_item METANG,		      3
	card_item NEST_BALL,	      4
	card_item ULTRA_BALL,	      4
	card_item NEMONA,		      4
	card_item LILLIES_DETERMINATION,	      4
	card_item BOSSS_ORDERS,	      4
	card_item SWITCH,		      4
	card_item DEFENDER,		      4
	card_item SUPER_ROD,		  3
	

	; card_item FIGHTING_ENERGY,    15
	; card_item WATER_ENERGY,        8
	; card_item WIMPOD,            3
	; card_item GOLISOPOD_EX,            1
	; card_item ARCTIBAX,             3
	; card_item BAXCALIBUR,             2
	; card_item SANDSHREW,           4
	; card_item SANDSLASH,           2
	; card_item GIMMIGHOUL,              3
	; card_item GHOLDENGO_EX,        1
	; card_item HITMONCHAN,          3
	; card_item PILOSWINE,              2
	; card_item MAMOSWINE_EX,            1
	; card_item AERODACTYL,          2
	; card_item PROFESSORS_RESEARCH,       2
	; card_item NEMONA,                2
	; card_item RARE_CANDY,     2
	; card_item SWINUB,   4
	deck_list_end
	tx ExcavationDeckName

BlisteringPokemonDeck:
	deck_list_start
	card_item FIRE_ENERGY,             4
	card_item FIGHTING_ENERGY,         8
	card_item PSYCHIC_ENERGY,          5
	card_item DOUBLE_COLORLESS_ENERGY, 2
	card_item SIZZLIPEDE,                  3
	card_item CENTISKORCH,                2
	card_item KLAWF,                    4
	card_item GIMMIGHOUL,                  4
	card_item MAROWAK_LV26,            2
	card_item SOLROCK,                 4
	card_item LUNATONE,                  2
	card_item SCREAM_TAIL,                    2
	card_item PROFESSORS_RESEARCH,           2
	card_item NEMONA,                    3
	card_item POKEMON_TRADER,          2
	card_item ENERGY_RETRIEVAL,        1
	card_item MR_FUJI,                 2
	card_item SWITCH,                  3
	card_item DEFENDER,                3
	card_item BOSSS_ORDERS,            2
	deck_list_end
	tx BlisteringPokemonDeckName

HardPokemonDeck:
	deck_list_start
	card_item FIGHTING_ENERGY, 25
	card_item ARON,          4
	card_item LAIRON,         3
	card_item AGGRON,            2
	card_item KLAWF,             3
	card_item GIMMIGHOUL,           3
	card_item MAROWAK_LV26,     2
	card_item SOLROCK,          2
	card_item LUNATONE,           1
	card_item SNORLAX,          1
	card_item NEMONA,             3
	card_item NEST_BALL,        2
	card_item DEFENDER,         4
	card_item BOSSS_ORDERS,     3
	card_item POTION,           2
	deck_list_end
	tx HardPokemonDeckName

WaterfrontPokemonDeck:
	deck_list_start
	card_item WATER_ENERGY,     17
	card_item GOLDEEN,          4
	card_item SEAKING,          4
	card_item FINNEON,          3
	card_item DUNSPARCE,        4
	card_item DUDUNSPARCE,      4
	card_item NEST_BALL,        4
	card_item ULTRA_BALL,       4
	card_item NEMONA,           4
	card_item LILLIES_DETERMINATION,           4
	card_item NIGHT_STRETCHER,           4
	card_item SUPERIOR_ENERGY_RETRIEVAL,           4

	; card_item WATER_ENERGY,     18
	; card_item PSYCHIC_ENERGY,    7
	; card_item QUAXLY,          2
	; card_item QUAXWELL,         1
	; card_item QUAQUAVAL_EX,         1
	; card_item SNORUNT,           2
	; card_item FROSLASS,           1
	; card_item FROAKIE,           2
	; card_item FROGADIER,         1
	; card_item GRENINJA_EX,         1
	; card_item GOLDEEN,           2
	; card_item SEAKING,           1
	; card_item VAROOM,            2
	; card_item REVAVROOM,           1
	; card_item SLOWPOKE_LV18,     2
	; card_item SLOWBRO,           1
	; card_item SQUAWKABILLY_EX,         1
	; card_item BAGON,           2
	; card_item SHELGON,         1
	; card_item NEMONA,              2
	; card_item ENERGY_RETRIEVAL,  2
	; card_item SWITCH,            2
	; card_item POKEDEX,           1
	; card_item BOSSS_ORDERS,      1
	; card_item POTION,            2
	; card_item SUPER_POTION,      1
	deck_list_end
	tx WaterfrontPokemonDeckName

LonelyFriendsDeck:
	deck_list_start
	card_item WATER_ENERGY,            10
	card_item DOUBLE_COLORLESS_ENERGY, 4
	card_item WIGLETT,                 4
	card_item WUGTRIO,                 4
	card_item DUNSPARCE,               4
	card_item DUDUNSPARCE,             4
	card_item ULTRA_BALL,              4
	card_item NEST_BALL,               4
	card_item SUPER_ROD,               3
	card_item NIGHT_STRETCHER,         3
	card_item BOSSS_ORDERS,            4
	card_item ENERGY_REMOVAL,          4
	card_item LILLIES_DETERMINATION,   4
	card_item NEMONA,                  4


	; card_item GRASS_ENERGY,            8
	; card_item WATER_ENERGY,            9
	; card_item DOUBLE_COLORLESS_ENERGY, 4
	; card_item SCYTHER,                 4
	; card_item FROAKIE,                 4
	; card_item ARCTIBAX,                 2
	; card_item BAXCALIBUR,                 1
	; card_item AERODACTYL,              1
	; card_item SNEASEL,         2
	; card_item VIGOROTH,         2
	; card_item SLAKING_EX,              4
	; card_item PROFESSORS_RESEARCH,           2
	; card_item NEMONA,                    2
	; card_item CLEFFA,           4
	; card_item SWINUB,       4
	; card_item SCOOP_UP,                2
	; card_item POTION,                  4
	; card_item SUPER_POTION,            1
	deck_list_end
	tx LonelyFriendsDeckName

SoundoftheWavesDeck:
	deck_list_start
	card_item WATER_ENERGY,   24
	card_item FINNEON,       2
	card_item LUMINEON,      1
	card_item MELTAN,            3
	card_item MELMETAL_EX,         2
	card_item WIMPOD,        3
	card_item GOLISOPOD_EX,        2
	card_item DRILBUR,          3
	card_item EXCADRILL_EX,         2
	card_item HORSEA,          2
	card_item SEADRA,          1
	card_item LAPRAS,          3
	card_item NEMONA,            3
	card_item POKEMON_TRADER,  2
	card_item ENERGY_REMOVAL,  2
	card_item PLUSPOWER,       3
	card_item FULL_HEAL,       2
	deck_list_end
	tx SoundoftheWavesDeckName

PikachuDeck:
	deck_list_start
	card_item WATER_ENERGY,             6
	card_item LIGHTNING_ENERGY,        16
	card_item EMOLGA,             1
	card_item POLTCHAGEIST,             1
	card_item JOLTIK,             1
	card_item PIKACHU_ALT_LV16,         1
	card_item PIKACHU_EX,           4
	card_item ZERAORA,     2
	card_item SURFING_PIKACHU_ALT_LV13,	2
	card_item GALVANTULA_EX,              2
	card_item SINISTCHA,              2
	card_item NEMONA,                     4
	card_item SWITCH,                   4
	card_item NEST_BALL,                4
	card_item POTION,                   4
	card_item SUPER_POTION,             2
	card_item FULL_HEAL,                4
	deck_list_end
	tx PikachuDeckName

BoomBoomSelfdestructDeck:
	deck_list_start
	card_item GRASS_ENERGY,      8
	card_item LIGHTNING_ENERGY, 14
	card_item FIGHTING_ENERGY,   8
	card_item TAROUNTULA,           4
	card_item SPIDOPS_EX,           3
	card_item TYNAMO,    4
	card_item KILOWATTREL,     2
	card_item EELEKTRIK,     2
	card_item ARON,           4
	card_item LAIRON,          3
	card_item AGGRON,             2
	card_item PROFESSORS_RESEARCH,     2
	card_item EARTHEN_VESSEL,     2
	card_item DEFENDER,          2
	deck_list_end
	tx BoomBoomSelfdestructDeckName

PowerGeneratorDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY, 26
	card_item EMOLGA,      2
	card_item POLTCHAGEIST,      1
	card_item GALVANTULA_EX,       1
	card_item WATTREL,    1
	card_item TYNAMO,    1
	card_item KILOWATTREL,     1
	card_item EELEKTRIK,     1
	card_item SHINX,           3
	card_item LUXIO,    1
	card_item LUXRAY_EX,    1
	card_item ELECTABUZZ_LV20,   1
	card_item IRON_HANDS_EX,   1
	card_item ESPEON_EX,      3
	card_item ZEKROM_EX,       2
	card_item EEVEE,             4
	card_item NEMONA,              2
	card_item POKEMON_TRADER,    2
	card_item SWITCH,            2
	card_item DEFENDER,          4
	deck_list_end
	tx PowerGeneratorDeckName

EtceteraDeck:
	deck_list_start
	card_item GRASS_ENERGY,             12
	card_item TAROUNTULA,               4
	card_item SPIDOPS_EX,               4
	card_item SPINARAK,                 4
	card_item ARIADOS,                  4
	card_item DUNSPARCE,                3
	card_item DUDUNSPARCE,              3
	card_item NEMONA,                   4
	card_item LILLIES_DETERMINATION,    4
	card_item NEST_BALL,                4
	card_item ULTRA_BALL,               4
	card_item BOSSS_ORDERS,             4
	card_item NIGHT_STRETCHER,          4
	card_item SUPER_ROD,                2

	; card_item GRASS_ENERGY,     8
	; card_item FIRE_ENERGY,      4
	; card_item LIGHTNING_ENERGY, 4
	; card_item FIGHTING_ENERGY,  4
	; card_item PSYCHIC_ENERGY,   4
	; card_item WEEDLE,         1
	; card_item HONEDGE,           1
	; card_item SPRIGATITO,         2
	; card_item DEINO,           2
	; card_item SCIZOR,     2
	; card_item FUECOCO,       2
	; card_item HEARTHFLAME_MASK_OGERPON_EX,      1
	; card_item EMOLGA,     2
	; card_item WATTREL,   1
	; card_item WIGLETT,          1
	; card_item TIMBURR,           2
	; card_item RALTS,       2
	; card_item SCREAM_TAIL,             1
	; card_item NEMONA,             3
	; card_item ENERGY_RETRIEVAL, 2
	; card_item EARTHEN_VESSEL,    3
	; card_item NEST_BALL,        3
	; card_item PLUSPOWER,        3
	; card_item DEFENDER,         2
	deck_list_end
	tx EtceteraDeckName

FlowerGardenDeck:
	deck_list_start
	card_item GRASS_ENERGY,            24
	card_item DOUBLE_COLORLESS_ENERGY,  2
	card_item BULBASAUR,                3
	card_item IVYSAUR,                  2
	card_item VENUSAUR_EX,            2
	card_item DEINO,                   3
	card_item ZWEILOUS,                    2
	card_item HYDREIGON_EX,                2
	card_item BELDUM,               2
	card_item METANG,               1
	card_item METAGROSS,               1
	card_item SEVIPER,              2
	card_item SCIZOR,             1
	card_item ORTHWORM_EX,                2
	card_item POKEMON_TRADER,           2
	card_item RARE_CANDY,          3
	card_item EARTHEN_VESSEL,            1
	card_item SWITCH,                   2
	card_item POTION,                   2
	card_item FULL_HEAL,                1
	deck_list_end
	tx FlowerGardenDeckName

KaleidoscopeDeck:
	deck_list_start
	card_item GRASS_ENERGY,            10
	card_item DARKNESS_ENERGY,         4
	card_item VENONAT,                 4
	card_item VENOMOTH,                4
	card_item SNORUNT,                 3
	card_item FROSLASS,                3
	card_item MUNKIDORI,               4
	card_item NEST_BALL,               4
	card_item ULTRA_BALL,              4
	card_item LILLIES_DETERMINATION,   4
	card_item IONO,                    4
	card_item CRISPIN,                 2
	card_item NIGHT_STRETCHER,         4
	card_item SUPER_ROD,               2
	card_item SWITCH,                  4


	; card_item GRASS_ENERGY,            10
	; card_item FIRE_ENERGY,              4
	; card_item WATER_ENERGY,             4
	; card_item LIGHTNING_ENERGY,         4
	; card_item DOUBLE_COLORLESS_ENERGY,  3
	; card_item VENONAT,                  3
	; card_item VENOMOTH,                 2
	; card_item FLAREON_LV22,             1
	; card_item FLAREON_EX,             1
	; card_item VAPOREON_LV29,            1
	; card_item FRIGIBAX,            1
	; card_item JOLTEON_LV24,             1
	; card_item ESPEON_EX,             1
	; card_item UXIE,                    4
	; card_item EEVEE,                    4
	; card_item AZELF,                  4
	; card_item NEMONA,                     2
	; card_item MR_FUJI,                  2
	; card_item EARTHEN_VESSEL,            2
	; card_item SWITCH,                   4
	; card_item BOSSS_ORDERS,             2
	deck_list_end
	tx KaleidoscopeDeckName

GhostDeck:
	deck_list_start
	card_item PSYCHIC_ENERGY,           12
	card_item PUMPKABOO,                4
	card_item GOURGEIST_EX,             4
	card_item DODUO,      	            4
	card_item DODRIO,	                4
	card_item EMOLGA,	                4
	card_item NEMONA,                   4
	card_item LILLIES_DETERMINATION,    4
	card_item NEST_BALL,                4
	card_item ULTRA_BALL,               4
	card_item BOSSS_ORDERS,             4
	card_item NIGHT_STRETCHER,          4
	card_item ENERGY_REMOVAL,           4

	; card_item PSYCHIC_ENERGY,          15
	; card_item GRASS_ENERGY,             6
	; card_item DOUBLE_COLORLESS_ENERGY,  3
	; card_item MURKROW,                    4
	; card_item PECHARUNT_EX,                   3
	; card_item RALTS,               2
	; card_item SHUPPET,              2
	; card_item BANETTE_EX,             2
	; card_item KIRLIA,             2
	; card_item GARDEVOIR_EX,                   4
	; card_item DUNSPARCE,              3
	; card_item UXIE,                    3
	; card_item PROFESSORS_RESEARCH,            2
	; card_item NEMONA,                     1
	; card_item RARE_CANDY,          2
	; card_item BOSSS_ORDERS,             1
	; card_item POTION,                   2
	; card_item FULL_HEAL,                1
	; card_item NIGHT_STRETCHER,                  2
	deck_list_end
	tx GhostDeckName

NapTimeDeck:
	deck_list_start
	card_item PSYCHIC_ENERGY,  14
	card_item DARKNESS_ENERGY,  4
	card_item UXIE,  		   4
	card_item AZELF,  		   4
	card_item SNORUNT,  	   4
	card_item FROSLASS,  	   4
	card_item MUNKIDORI,   	   2 ; ?
	card_item NEMONA,  	       4
	card_item NEST_BALL,  	   4
	card_item ULTRA_BALL,  	   4
	card_item LILLIES_DETERMINATION,  	   4
	card_item DEFENDER,  	   4 ; CRISPIN
	card_item NIGHT_STRETCHER,  2
	card_item ENERGY_REMOVAL,  2

	; card_item GRASS_ENERGY,     8
	; card_item PSYCHIC_ENERGY,  18
	; card_item TOXEL,            4
	; card_item BINACLE,        4
	; card_item RALTS,       4
	; card_item BANETTE_EX,     2
	; card_item KIRLIA,     2
	; card_item VIGOROTH,  4
	; card_item SLAKING_EX,       3
	; card_item NEMONA,             2
	; card_item SWITCH,           2
	; card_item PLUSPOWER,        3
	; card_item BOSSS_ORDERS,     2
	; card_item POTION,           2
	deck_list_end
	tx NapTimeDeckName

StrangePowerDeck:
	deck_list_start
	card_item PSYCHIC_ENERGY,          25
	card_item DOUBLE_COLORLESS_ENERGY,  1
	card_item BRUTE_BONNET,             3
	card_item SLOWBRO,                  2
	card_item PUMPKABOO,                  4
	card_item GOURGEIST_EX,                    3
	card_item MR_MIME,                  2
	card_item SCREAM_TAIL,                     2
	card_item MEW_LV8,                  1
	card_item MEW_LV23,                 2
	card_item ORTHWORM_EX,                2
	card_item SNORLAX,                  1
	card_item POKEMON_TRADER,           2
	card_item ENERGY_RETRIEVAL,         2
	card_item ENERGY_REMOVAL,           2
	card_item ENERGY_SWITCH,     1
	card_item PLUSPOWER,                2
	card_item ITEM_FINDER,              1
	card_item BOSSS_ORDERS,             1
	card_item FULL_HEAL,                1
	deck_list_end
	tx StrangePowerDeckName

FlyinPokemonDeck:
	deck_list_start
	card_item DARKNESS_ENERGY,          8
	card_item DOUBLE_COLORLESS_ENERGY,  4
	card_item MURKROW,                  4
	card_item FLAMIGO,                  4
	card_item WATTREL,                  4
	card_item DUNSPARCE,                4
	card_item DUDUNSPARCE,              4
	card_item PROFESSORS_RESEARCH,      4
	card_item NEMONA,                   4
	card_item NEST_BALL,                4
	card_item ULTRA_BALL,               4
	card_item BOSSS_ORDERS,             3
	card_item IONO,                  	3
	card_item NIGHT_STRETCHER,          4
	card_item ENERGY_REMOVAL,		    2

	; card_item GRASS_ENERGY,            13
	; card_item LIGHTNING_ENERGY,        10
	; card_item DOUBLE_COLORLESS_ENERGY,  2
	; card_item MURKROW,                    4
	; card_item PECHARUNT_EX,                   3
	; card_item PIKACHU_EX,           2
	; card_item PIDGEY,                   4
	; card_item PIDGEOTTO,                3
	; card_item PIDGEOT_LV38,             1
	; card_item PIDGEOT_EX,             1
	; card_item FLAMIGO,                  4
	; card_item FEAROW,                   3
	; card_item IONO,   2
	; card_item LILLIES_DETERMINATION,                     2
	; card_item NEMONA,                     2
	; card_item POTION,                   4
	deck_list_end
	tx FlyinPokemonDeckName

LovelyNidoranDeck:
	deck_list_start
	card_item GRASS_ENERGY,    24
	card_item SPRIGATITO,         4
	card_item FLORAGATO,         2
	card_item MEOWSCARADA_EX,        2
	card_item APPLIN,         3
	card_item DIPPLIN,         2
	card_item HYDRAPPLE_EX,         1
	card_item GULPIN,           2
	card_item SWALOT,              1
	card_item TAROUNTULA,          2
	card_item SPIDOPS_EX,          1
	card_item TEAL_MASK_OGERPON_EX,           1
	card_item DUNSPARCE,      2
	card_item SQUAWKABILLY_EX,        2
	card_item DODUO,            2
	card_item PROFESSORS_RESEARCH,    1
	card_item NEMONA,             2
	card_item RARE_CANDY,  2
	card_item SWITCH,           1
	card_item NEST_BALL,        2
	card_item GAMBLER,          1
	deck_list_end
	tx LovelyNidoranDeckName

PoisonDeck:
	deck_list_start
	card_item GRASS_ENERGY,           24
	card_item HONEDGE,                  3
	card_item DOUBLADE,                  2
	card_item AEGISLASH_EX,                1
	card_item EKANS,                   4
	card_item ARBOK_EX,                   3
	card_item APPLIN,                4
	card_item DIPPLIN,                3
	card_item HYDRAPPLE_EX,                2
	card_item TAROUNTULA,                 3
	card_item SPIDOPS_EX,                 2
	card_item PROFESSORS_RESEARCH,           1
	card_item IONO,  2
	card_item RARE_CANDY,         1
	card_item POTION,                  2
	card_item FULL_HEAL,               2
	card_item GAMBLER,                 1
	deck_list_end
	tx PoisonDeckName

; FIRE CLUB
AngerDeck:
	deck_list_start
	card_item FIRE_ENERGY,             12
	card_item DODUO,                    4
	card_item DODRIO,                   4
	card_item SIZZLIPEDE,               4
	card_item CENTISKORCH,              4
	card_item NEMONA,                   4
	card_item LILLIES_DETERMINATION,    4
	card_item NEST_BALL,                4
	card_item ULTRA_BALL,               4
	card_item BOSSS_ORDERS,             4
	card_item SWITCH,         		    4
	card_item NIGHT_STRETCHER,          4
	card_item ENERGY_REMOVAL,           4

	; card_item FIRE_ENERGY,             10
	; card_item FIGHTING_ENERGY,          8
	; card_item DOUBLE_COLORLESS_ENERGY,  4
	; card_item CHARCADET,                3
	; card_item ARCANINE_LV34,            2
	; card_item GIMMIGHOUL,                   3
	; card_item RATTATA,                  3
	; card_item RATICATE,                 2
	; card_item DODUO,                    3
	; card_item DODRIO,                   2
	; card_item TAUROS,                   3
	; card_item PROFESSORS_RESEARCH,            2
	; card_item NEMONA,                     3
	; card_item ENERGY_RETRIEVAL,         2
	; card_item ULTRA_BALL,          2
	; card_item PLUSPOWER,                4
	; card_item DEFENDER,                 2
	; card_item BOSSS_ORDERS,             2
	deck_list_end
	tx AngerDeckName

FlamethrowerDeck:
	deck_list_start
	card_item FIRE_ENERGY,             22
	card_item DOUBLE_COLORLESS_ENERGY,  4
	card_item FUECOCO,               2
	card_item CROCALOR,               2
	card_item SKELEDIRGE_EX,                1
	card_item LITWICK,                   2
	card_item LAMPENT,           1
	card_item CHARCADET,                2
	card_item CERULEDGE_EX,            1
	card_item MAGMAR_LV24,              3
	card_item FLAREON_EX,             2
	card_item EEVEE,                    3
	card_item NEMONA,                     3
	card_item POKEMON_TRADER,           1
	card_item ENERGY_RETRIEVAL,         3
	card_item SUPERIOR_ENERGY_RETRIEVAL,   1
	card_item SWITCH,                   2
	card_item PLUSPOWER,                2
	card_item BOSSS_ORDERS,             3
	deck_list_end
	tx FlamethrowerDeckName

ReshuffleDeck:
	deck_list_start
	card_item FIRE_ENERGY,              12
	card_item LITWICK,                  4
	card_item LAMPENT,                  4
	card_item CHANDELURE,           	4
	card_item DUNSPARCE,                4
	card_item DUDUNSPARCE,           	4
	card_item NEMONA,                   4
	card_item LILLIES_DETERMINATION,    4
	card_item NEST_BALL,                4
	card_item ULTRA_BALL,               4
	card_item SUPER_ROD,                2
	card_item IONO,         		    4
	card_item NIGHT_STRETCHER,          2
	card_item ENERGY_REMOVAL,           4


	; card_item FIRE_ENERGY,             23
	; card_item DOUBLE_COLORLESS_ENERGY,  2
	; card_item LITWICK,                   4
	; card_item CHANDELURE,           3
	; card_item CHARCADET,                2
	; card_item CERULEDGE_EX,            1
	; card_item SIZZLIPEDE,                   2
	; card_item PIDGEY,                   4
	; card_item PIDGEOTTO,                3
	; card_item PIDGEOT_LV38,             2
	; card_item SNEASEL,          1
	; card_item SLAKING_EX,               1
	; card_item ORTHWORM_EX,                2
	; card_item BLOODMOON_URSALUNA_EX,               1
	; card_item TAUROS,                   1
	; card_item NEMONA,                     2
	; card_item ENERGY_RETRIEVAL,         2
	; card_item ENERGY_REMOVAL,           1
	; card_item ENERGY_SWITCH,     1
	; card_item SWITCH,                   2
	; card_item POKEMON_CENTER,           1
	; card_item POTION,                   2
	deck_list_end
	;db 0
	tx ReshuffleDeckName

ImakuniDeck:
	deck_list_start
	card_item WATER_ENERGY,   10
	card_item PSYCHIC_ENERGY, 16
	card_item SNORUNT,         4
	card_item FROSLASS,         3
	card_item BRUTE_BONNET,    2
	card_item SLOWPOKE_LV18,   2
	card_item SLOWBRO,         3
	card_item PUMPKABOO,         4
	card_item GOURGEIST_EX,           3
	card_item SQUAWKABILLY_EX,       4
	card_item CRISPIN,    4
	card_item SUPER_ROD,     2
	card_item POKEMON_FLUTE,   2
	card_item GAMBLER,         1
	deck_list_end
	tx ImakuniDeckName
