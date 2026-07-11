BulbasaurCard:
	db TYPE_PKMN_GRASS ; type
	gfx BulbasaurCardGfx ; gfx
	tx BulbasaurName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw BULBASAUR
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx LeechSeedName ; name
	tx BulbasaursLeechSeedDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw BulbasaurLeechSeedEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1 ; used to calculate the HEAL_USER attack score bonus
	db ATK_ANIM_DRAIN ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx SeedName ; category
	db 1 ; Pokedex number
	db 13 ; level
	db 2, 4 ; length
	dw 15 * 10 ; weight
	tx BulbasaurDescription ; description
	db HAS_EVOLUTION ; AI info

IvysaurCard:
	db TYPE_PKMN_GRASS ; type
	gfx IvysaurCardGfx ; gfx
	tx IvysaurName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw IVYSAUR
	db 50 ; hp
	db STAGE1 ; stage
	tx BulbasaurName ; pre-evo name

	; attack 1
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx LeechSeedName ; name
	tx BulbasaursLeechSeedDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw BulbasaurLeechSeedEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1 ; used to calculate the HEAL_USER attack score bonus
	db ATK_ANIM_DRAIN ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx VineWhipName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIP ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx SeedName ; category
	db 2 ; Pokedex number
	db 20 ; level
	db 3, 3 ; length
	dw 29 * 10 ; weight
	tx IvysaurDescription ; description
	db HAS_EVOLUTION ; AI info

FezandipityExCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx VenusaurLv64CardGfx ; gfx
	tx FezandipityExName ; name
	db STAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw FEZANDIPITY_EX
	db 110 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx FlipTheScriptName ; name
	tx FlipTheScriptDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw FezandipityExFlipTheScriptEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx CruelArrowName ; name
	tx CruelArrowDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw FezandipityExCruelArrowEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_STRETCH_KICK ; animation

	; attack 1
	; energy 0 ; energies
	; tx SolarPowerName ; name
	; tx SolarPowerDescription ; description
	; tx SolarPowerDescriptionCont ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw VenusaurSolarPowerEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SOLAR_POWER ; animation

	; attack 2
	; energy GRASS, 4 ; energies
	; tx MegaDrainName ; name
	; tx VenusaursMegaDrainDescription ; description
	; tx VenusaursMegaDrainDescriptionCont ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw VenusaurMegaDrainEffectCommands ; effect commands
	; db NONE ; flags 1
	; db HEAL_USER ; flags 2
	; db NONE ; flags 3
	; db 2
	; db ATK_ANIM_DRAIN ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx SeedName ; category
	db 3 ; Pokedex number
	db 50 ; level
	db 6, 7 ; length
	dw 221 * 10 ; weight
	tx VenusaurLv64Description ; description
	db 0 ; AI info

VenusaurExCard:
	db TYPE_PKMN_GRASS ; type
	gfx VenusaurLv67CardGfx ; gfx
	tx VenusaurExName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw VENUSAUR_EX
	db 170 ; hp
	db STAGE2 ; stage
	tx IvysaurName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx TranquilFlowerName ; name
	tx TranquilFlowerDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw VenusaurTranquilFlowerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx DangerousToxwhipName ; name
	tx DangerousToxwhipDescription ; description
	dw NONE ; description (cont)
	db 80 ; damage
	db DAMAGE_NORMAL ; category
	dw VenusaurDangerousToxwhipEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BEAM ; animation

	; attack 1
	; energy 0 ; energies
	; tx EnergyTransName ; name
	; tx EnergyTransDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw VenusaurEnergyTransEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy GRASS, 4 ; energies
	; tx SolarBeamName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 60 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_BEAM ; animation

	db 4 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx SeedName ; category
	db 3 ; Pokedex number
	db 67 ; level
	db 6, 7 ; length
	dw 221 * 10 ; weight
	tx VenusaurLv67Description ; description
	db 0 ; AI info

; WurmpleCard:
; 	db TYPE_PKMN_GRASS ; type
; 	gfx CaterpieCardGfx ; gfx
; 	tx WurmpleName ; name
; 	db CIRCLE ; rarity
; 	db EVOLUTION | NONE ; sets
; 	dw WEEDLE
; 	db 30 ; hp
; 	db BASIC ; stage
; 	dw NONE ; pre-evo name

; 	; attack 1
; 	energy GRASS, 1 ; energies
; 	tx BugBiteName ; name
; 	dw NONE ; description
; 	dw NONE ; description (cont)
; 	db 10 ; damage
; 	db DAMAGE_NORMAL ; category
; 	dw NONE ; effect commands
; 	db NONE ; flags 1
; 	db NONE ; flags 2
; 	db NONE ; flags 3
; 	db 0
; 	db ATK_ANIM_HIT ; animation

; 	; attack 1
; 	; energy GRASS, 1 ; energies
; 	; tx StringShotName ; name
; 	; tx MayInflictParalysisDescription ; description
; 	; dw NONE ; description (cont)
; 	; db 10 ; damage
; 	; db DAMAGE_NORMAL ; category
; 	; dw CaterpieStringShotEffectCommands ; effect commands
; 	; db INFLICT_PARALYSIS ; flags 1
; 	; db NONE ; flags 2
; 	; db NONE ; flags 3
; 	; db 0
; 	; db ATK_ANIM_STRING_SHOT ; animation

; 	; attack 2
; 	energy 0 ; energies
; 	dw NONE ; name
; 	dw NONE ; description
; 	dw NONE ; description (cont)
; 	db 0 ; damage
; 	db DAMAGE_NORMAL ; category
; 	dw NONE ; effect commands
; 	db NONE ; flags 1
; 	db NONE ; flags 2
; 	db NONE ; flags 3
; 	db 0
; 	db ATK_ANIM_NONE ; animation

; 	db 1 ; retreat cost
; 	db WR_FIRE ; weakness
; 	db NONE ; resistance
; 	tx WormName ; category
; 	db 10 ; Pokedex number
; 	db 13 ; level
; 	db 1, 0 ; length
; 	dw 6 * 10 ; weight
; 	tx CaterpieDescription ; description
; 	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

; SilcoonCard:
; 	db TYPE_PKMN_GRASS ; type
; 	gfx MetapodCardGfx ; gfx
; 	tx SilcoonName ; name
; 	db CIRCLE ; rarity
; 	db EVOLUTION | NONE ; sets
; 	dw KAKUNA
; 	db 40 ; hp
; 	db STAGE1 ; stage
; 	tx WurmpleName ; pre-evo name

; 	; attack 1
; 	energy GRASS, 1 ; energies
; 	tx EntanglingStringName ; name
; 	tx EntanglingStringDescription ; description
; 	dw NONE ; description (cont)
; 	db 0 ; damage
; 	db RESIDUAL ; category
; 	dw SilcoonEntanglingStringEffectCommands ; effect commands
; 	db NONE ; flags 1
; 	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
; 	db NONE ; flags 3
; 	db 0
; 	db ATK_ANIM_BONEMERANG ; animation

; 	; attack 1
; 	energy GRASS, 1, COLORLESS, 1 ; energies
; 	tx RamName ; name
; 	dw NONE ; description
; 	dw NONE ; description (cont)
; 	db 20 ; damage
; 	db DAMAGE_NORMAL ; category
; 	dw NONE ; effect commands
; 	db NONE ; flags 1
; 	db NONE ; flags 2
; 	db NONE ; flags 3
; 	db 0
; 	db ATK_ANIM_HIT ; animation

; 	; attack 1
; 	; energy COLORLESS, 2 ; energies
; 	; tx StiffenName ; name
; 	; tx MetapodsStiffenDescription ; description
; 	; dw NONE ; description (cont)
; 	; db 0 ; damage
; 	; db RESIDUAL ; category
; 	; dw MetapodStiffenEffectCommands ; effect commands
; 	; db NONE ; flags 1
; 	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
; 	; db NONE ; flags 3
; 	; db 0
; 	; db ATK_ANIM_NONE ; animation

; 	; ; attack 2
; 	; energy GRASS, 2 ; energies
; 	; tx StunSporeName ; name
; 	; tx MayInflictParalysisDescription ; description
; 	; dw NONE ; description (cont)
; 	; db 20 ; damage
; 	; db DAMAGE_NORMAL ; category
; 	; dw MetapodStunSporeEffectCommands ; effect commands
; 	; db INFLICT_PARALYSIS ; flags 1
; 	; db NONE ; flags 2
; 	; db NONE ; flags 3
; 	; db 0
; 	; db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

; 	db 3 ; retreat cost
; 	db WR_FIRE ; weakness
; 	db NONE ; resistance
; 	tx CocoonName ; category
; 	db 11 ; Pokedex number
; 	db 21 ; level
; 	db 2, 4 ; length
; 	dw 22 * 10 ; weight
; 	tx MetapodDescription ; description
; 	db HAS_EVOLUTION ; AI info

; BeautiflyCard:
; 	db TYPE_PKMN_GRASS ; type
; 	gfx ButterfreeCardGfx ; gfx
; 	tx BeautiflyName ; name
; 	db DIAMOND ; rarity
; 	db EVOLUTION | JUNGLE ; sets
; 	dw BEEDRILL_EX
; 	db 70 ; hp
; 	db STAGE2 ; stage
; 	tx SilcoonName ; pre-evo name

; 	; attack 1
; 	energy 0 ; energies
; 	tx StokedStrawName ; name
; 	tx StokedStrawDescription ; description
; 	dw NONE ; description (cont)
; 	db 0 ; damage
; 	db POKEMON_POWER ; category
; 	dw BeautiflyStokedStrawEffectCommands ; effect commands
; 	db NONE ; flags 1
; 	db NONE ; flags 2
; 	db NONE ; flags 3
; 	db 0
; 	db ATK_ANIM_PKMN_POWER_1 ; animation

; 	; attack 2
; 	energy GRASS, 1, COLORLESS, 1 ; energies
; 	tx MegaDrainName ; name
; 	tx ButterfreesMegaDrainDescription ; description
; 	tx ButterfreesMegaDrainDescriptionCont ; description (cont)
; 	db 40 ; damage
; 	db DAMAGE_NORMAL ; category
; 	dw ButterfreeMegaDrainEffectCommands ; effect commands
; 	db NONE ; flags 1
; 	db HEAL_USER ; flags 2
; 	db NONE ; flags 3
; 	db 2
; 	db ATK_ANIM_DRAIN ; animation

; 	; attack 1
; 	; energy COLORLESS, 2 ; energies
; 	; tx WhirlwindName ; name
; 	; tx WhirlwindDescription ; description
; 	; dw NONE ; description (cont)
; 	; db 20 ; damage
; 	; db DAMAGE_NORMAL ; category
; 	; dw ButterfreeWhirlwindEffectCommands ; effect commands
; 	; db NONE ; flags 1
; 	; db SWITCH_OPPONENT_POKEMON ; flags 2
; 	; db NONE ; flags 3
; 	; db 0
; 	; db ATK_ANIM_WHIRLWIND ; animation

; 	; ; attack 2
; 	; energy GRASS, 4 ; energies
; 	; tx MegaDrainName ; name
; 	; tx ButterfreesMegaDrainDescription ; description
; 	; tx ButterfreesMegaDrainDescriptionCont ; description (cont)
; 	; db 40 ; damage
; 	; db DAMAGE_NORMAL ; category
; 	; dw ButterfreeMegaDrainEffectCommands ; effect commands
; 	; db NONE ; flags 1
; 	; db HEAL_USER ; flags 2
; 	; db NONE ; flags 3
; 	; db 2
; 	; db ATK_ANIM_DRAIN ; animation

; 	db 1 ; retreat cost
; 	db WR_FIRE ; weakness
; 	db NONE ; resistance
; 	tx ButterflyName ; category
; 	db 12 ; Pokedex number
; 	db 28 ; level
; 	db 3, 7 ; length
; 	dw 71 * 10 ; weight
; 	tx ButterfreeDescription ; description
; 	db 0 ; AI info

WeedleCard:
	db TYPE_PKMN_GRASS ; type
	gfx WeedleCardGfx ; gfx
	tx WeedleName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw WEEDLE
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx SurpriseAttackName ; name
	tx MayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw JoltikSurpriseAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx PoisonStingName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw WeedlePoisonStingEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NEEDLES ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx HairyBugName ; category
	db 13 ; Pokedex number
	db 12 ; level
	db 1, 0 ; length
	dw 7 * 10 ; weight
	tx WeedleDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

KakunaCard:
	db TYPE_PKMN_GRASS ; type
	gfx KakunaCardGfx ; gfx
	tx KakunaName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw KAKUNA
	db 50 ; hp
	db STAGE1 ; stage
	tx WeedleName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx HangDownName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; ; attack 1
	; energy COLORLESS, 2 ; energies
	; tx StiffenName ; name
	; tx KakunasStiffenDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw KakunaStiffenEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	; ; attack 2
	; energy GRASS, 2 ; energies
	; tx PoisonPowderName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw KakunaPoisonPowderEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx CocoonName ; category
	db 14 ; Pokedex number
	db 23 ; level
	db 2, 0 ; length
	dw 22 * 10 ; weight
	tx KakunaDescription ; description
	db HAS_EVOLUTION ; AI info

BeedrillExCard:
	db TYPE_PKMN_GRASS ; type
	gfx BeedrillCardGfx ; gfx
	tx BeedrillExName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw BEEDRILL_EX
	db 160 ; hp
	db STAGE2 ; stage
	tx KakunaName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx RumblingBeesName ; name
	tx RumblingBeesDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_X ; category
	dw BeedrillExRumblingBeesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy COLORLESS, 3 ; energies
	; tx TwineedleName ; name
	; tx DoubleAttackX30Description ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_X ; category
	; dw BeedrillTwineedleEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NEEDLES ; animation

	; ; attack 2
	; energy GRASS, 3 ; energies
	; tx PoisonStingName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw BeedrillPoisonStingEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NEEDLES ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx PoisonBeeName ; category
	db 15 ; Pokedex number
	db 50 ; level
	db 3, 3 ; length
	dw 65 * 10 ; weight
	tx BeedrillDescription ; description
	db 0 ; AI info

HonedgeCard:
	db TYPE_PKMN_METAL ; type
	gfx WeedleCardGfx ; gfx
	tx HonedgeName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw HONEDGE
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx CutUpName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx PoisonStingName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw WeedlePoisonStingEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NEEDLES ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx HairyBugName ; category
	db 13 ; Pokedex number
	db 12 ; level
	db 1, 0 ; length
	dw 7 * 10 ; weight
	tx WeedleDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

DoubladeCard:
	db TYPE_PKMN_METAL ; type
	gfx KakunaCardGfx ; gfx
	tx DoubladeName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw DOUBLADE
	db 50 ; hp
	db STAGE1 ; stage
	tx HonedgeName ; pre-evo name

	; attack 1 ; TODO Update to increase dmg by 40
	energy METAL, 1 ; energies
	tx SwordsDanceName ; name
	tx SwordsDanceDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ScytherSwordsDanceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy METAL, 1 ; energies
	tx SlicingBladeName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; ; attack 1
	; energy COLORLESS, 2 ; energies
	; tx StiffenName ; name
	; tx KakunasStiffenDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw KakunaStiffenEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	; ; attack 2
	; energy GRASS, 2 ; energies
	; tx PoisonPowderName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw KakunaPoisonPowderEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx CocoonName ; category
	db 14 ; Pokedex number
	db 23 ; level
	db 2, 0 ; length
	dw 22 * 10 ; weight
	tx KakunaDescription ; description
	db HAS_EVOLUTION ; AI info

AegislashExCard:
	db TYPE_PKMN_METAL ; type
	gfx BeedrillCardGfx ; gfx
	tx AegislashExName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw AEGISLASH_EX
	db 170 ; hp
	db STAGE2 ; stage
	tx DoubladeName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx PeerlessEdgeName ; name
	tx PeerlessEdgeDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_X ; category
	dw AegislashExPeerlessEdgeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	; attack 2
	energy METAL, 2 ; energies
	tx DoubleEdgedSlashName ; name
	tx TwentyRecoilDescription ; description
	dw NONE ; description (cont)
	db 110 ; damage
	db DAMAGE_NORMAL ; category
	dw AegislashExDoubleEdgedslashEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_HIT_RECOIL ; animation

	; attack 1
	; energy COLORLESS, 3 ; energies
	; tx TwineedleName ; name
	; tx DoubleAttackX30Description ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_X ; category
	; dw BeedrillTwineedleEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NEEDLES ; animation

	; ; attack 2
	; energy GRASS, 3 ; energies
	; tx PoisonStingName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw BeedrillPoisonStingEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NEEDLES ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx PoisonBeeName ; category
	db 15 ; Pokedex number
	db 50 ; level
	db 3, 3 ; length
	dw 65 * 10 ; weight
	tx BeedrillDescription ; description
	db 0 ; AI info

EkansCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx EkansCardGfx ; gfx
	tx EkansName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw EKANS
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx PoisonBlendName ; name
	tx PoisonBlendDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw EkansPoisonBlendEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SPIT_POISON ; animation

	; attack 2
	energy DARKNESS, 1 ; energies
	tx BiteName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx SpitPoisonName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw EkansSpitPoisonEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SPIT_POISON ; animation

	; attack 2
	; energy GRASS, 1, COLORLESS, 1 ; energies
	; tx WrapName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw EkansWrapEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx SnakeName ; category
	db 23 ; Pokedex number
	db 10 ; level
	db 6, 7 ; length
	dw 15 * 10 ; weight
	tx EkansDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

ArbokExCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ArbokCardGfx ; gfx
	tx ArbokExName ; name
	db DIAMOND ; rarity
	db LABORATORY | FOSSIL ; sets
	dw ARBOK_EX
	db 140 ; hp
	db STAGE1 ; stage
	tx EkansName ; pre-evo name

	; attack 1
	energy DARKNESS, 2 ; energies
	tx BindDownName ; name
	tx NoRetreatDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokExBindDownEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_GOO ; animation

	; attack 2
	energy DARKNESS, 3 ; energies
	tx MenacingFangsName ; name
	tx MenacingFangsDescription ; description
	dw NONE ; description (cont)
	db 80 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokExMenacingFangsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POISON_FANG ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx TerrorStrikeName ; name
	; tx TerrorStrikeDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ArbokTerrorStrikeEffectCommands ; effect commands
	; db NONE ; flags 1
	; db SWITCH_OPPONENT_POKEMON ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy GRASS, 2, COLORLESS, 1 ; energies
	; tx PoisonFangName ; name
	; tx InflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ArbokPoisonFangEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_POISON_FANG ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx CobraName ; category
	db 24 ; Pokedex number
	db 50 ; level
	db 11, 6 ; length
	dw 143 * 10 ; weight
	tx ArbokDescription ; description
	db 0 ; AI info

SprigatitoCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidoranFCardGfx ; gfx
	tx SprigatitoName ; name
	db CIRCLE ; rarity
	db MYSTERY | JUNGLE ; sets
	dw SPRIGATITO
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx MiniDrainName ; name
	tx BulbasaursLeechSeedDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw BulbasaurLeechSeedEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1 ; used to calculate the HEAL_USER attack score bonus
	db ATK_ANIM_DRAIN ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx FurySwipesName ; name
	; tx TripleAttackX10Description ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_X ; category
	; dw NidoranFFurySwipesEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_MULTIPLE_SLASH ; animation

	; ; attack 2
	; energy GRASS, 2 ; energies
	; tx CallForFamilyName ; name
	; tx NidoranFsCallForFamilyDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw NidoranFCallForFamilyEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx PoisonPinName ; category
	db 29 ; Pokedex number
	db 13 ; level
	db 1, 4 ; length
	dw 15 * 10 ; weight
	tx NidoranFDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

FloragatoCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidorinaCardGfx ; gfx
	tx FloragatoName ; name
	db DIAMOND ; rarity
	db MYSTERY | JUNGLE ; sets
	dw FLORAGATO
	db 50 ; hp
	db STAGE1 ; stage
	tx SprigatitoName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx SlashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx LeafStepName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; ; attack 1
	; energy GRASS, 1 ; energies
	; tx SupersonicName ; name
	; tx MayInflictConfusionDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NidorinaSupersonicEffectCommands ; effect commands
	; db INFLICT_CONFUSION ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SUPERSONIC ; animation

	; ; attack 2
	; energy GRASS, 1, COLORLESS, 2 ; energies
	; tx DoubleKickName ; name
	; tx DoubleAttackX30Description ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_X ; category
	; dw NidorinaDoubleKickEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx PoisonPinName ; category
	db 30 ; Pokedex number
	db 24 ; level
	db 2, 7 ; length
	dw 44 * 10 ; weight
	tx NidorinaDescription ; description
	db HAS_EVOLUTION ; AI info

MeowscaradaExCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidoqueenCardGfx ; gfx
	tx MeowscaradaExName ; name
	db STAR ; rarity
	db MYSTERY | JUNGLE ; sets
	dw MEOWSCARADA_EX
	db 160 ; hp
	db STAGE2 ; stage
	tx FloragatoName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx BouquetMagicName ; name
	tx BouquetMagicDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw BouquetMagicEffectCommands;PhantomStarEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx ScratchingNailsName ; name
	tx ScratchingNailsDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw ScratchingNailsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy GRASS, 1, COLORLESS, 1 ; energies
	; tx BoyfriendsName ; name
	; tx BoyfriendsDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_PLUS ; category
	; dw NidoqueenBoyfriendsEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_BOYFRIENDS ; animation

	; ; attack 2
	; energy GRASS, 2, COLORLESS, 2 ; energies
	; tx MegaPunchName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx DrillName ; category
	db 51 ; Pokedex number
	db 43 ; level
	db 4, 3 ; length
	dw 132 * 10 ; weight
	tx NidoqueenDescription ; description
	db 0 ; AI info

ApplinCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidoranMCardGfx ; gfx
	tx ApplinName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw APPLIN
	db 20 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx SprayFluidName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; ; attack 1
	; energy GRASS, 1 ; energies
	; tx HornHazardName ; name
	; tx MayDoNothingDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NidoranMHornHazardEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx PoisonPinName ; category
	db 32 ; Pokedex number
	db 20 ; level
	db 1, 4 ; length
	dw 15 * 10 ; weight
	tx NidoranMDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

DipplinCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidorinoCardGfx ; gfx
	tx DipplinName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw DIPPLIN
	db 50 ; hp
	db STAGE1 ; stage
	tx ApplinName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx EnergyLoopName ; name
	tx EnergyLoopDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MagmarFlamethrowerEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_POISON_WHIP ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy GRASS, 1, COLORLESS, 2 ; energies
	; tx DoubleKickName ; name
	; tx DoubleAttackX30Description ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_X ; category
	; dw NidorinoDoubleKickEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy GRASS, 2, COLORLESS, 2 ; energies
	; tx HornDrillName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_DRILL ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx PoisonPinName ; category
	db 33 ; Pokedex number
	db 25 ; level
	db 2, 11 ; length
	dw 43 * 10 ; weight
	tx NidorinoDescription ; description
	db HAS_EVOLUTION ; AI info

HydrappleExCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidokingCardGfx ; gfx
	tx HydrappleExName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw HYDRAPPLE_EX
	db 170 ; hp
	db STAGE2 ; stage
	tx DipplinName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx RipeningChargeName ; name
	tx RipeningChargeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw RipeningChargeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx SyrupStormName ; name
	tx SyrupStormDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw SyrupStormEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy GRASS, 1, COLORLESS, 2 ; energies
	; tx ThrashName ; name
	; tx ThrashDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_PLUS ; category
	; dw NidokingThrashEffectCommands ; effect commands
	; db LOW_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_MULTIPLE_SLASH ; animation

	; ; attack 2
	; energy GRASS, 3 ; energies
	; tx ToxicName ; name
	; tx ToxicDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NidokingToxicEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 2
	; db ATK_ANIM_TOXIC ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx DrillName ; category
	db 34 ; Pokedex number
	db 50 ; level
	db 4, 7 ; length
	dw 137 * 10 ; weight
	tx NidokingDescription ; description
	db 0 ; AI info

MurkrowCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ZubatCardGfx ; gfx
	tx MurkrowName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw MURKROW
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx SpinTurnName ; name
	tx SpinTurnDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MurkrowSpinTurnEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	energy DARKNESS, 1 ; energies
	tx UnitedWingsName ; name
	tx UnitedWingsDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw UnitedWingsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx SupersonicName ; name
	; tx MayInflictConfusionDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ZubatSupersonicEffectCommands ; effect commands
	; db INFLICT_CONFUSION ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SUPERSONIC ; animation

	; ; attack 2
	; energy GRASS, 1, COLORLESS, 1 ; energies
	; tx LeechLifeName ; name
	; tx ZubatsLeechLifeDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ZubatLeechLifeEffectCommands ; effect commands
	; db NONE ; flags 1
	; db HEAL_USER ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_DRAIN ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx BatName ; category
	db 41 ; Pokedex number
	db 10 ; level
	db 2, 7 ; length
	dw 17 * 10 ; weight
	tx ZubatDescription ; description
	db HAS_EVOLUTION ; AI info

PecharuntExCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx GolbatCardGfx ; gfx
	tx PecharuntExName ; name
	db DIAMOND ; rarity
	db LABORATORY | FOSSIL ; sets
	dw PECHARUNT_EX
	db 100 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SubjugatingChainsName ; name
	tx SubjugatingChainsDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw PecharuntExSubjugatingChainsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy DARKNESS, 2 ; energies
	tx IrritatedOutburstName ; name
	tx IrritatedOutburstDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw PecharuntExIrritatedOutburstEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	; attack 1
	; energy COLORLESS, 3 ; energies
	; tx WingAttackName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy GRASS, 2, COLORLESS, 1 ; energies
	; tx LeechLifeName ; name
	; tx GolbatsLeechLifeDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw GolbatLeechLifeEffectCommands ; effect commands
	; db NONE ; flags 1
	; db HEAL_USER ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_DRAIN ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx BatName ; category
	db 42 ; Pokedex number
	db 50 ; level
	db 5, 3 ; length
	dw 121 * 10 ; weight
	tx GolbatDescription ; description
	db 0 ; AI info

DeinoCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx OddishCardGfx ; gfx
	tx DeinoName ; name
	db CIRCLE ; rarity
	db MYSTERY | JUNGLE ; sets
	dw DEINO
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx BodySlamName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SnorlaxBodySlamEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	energy DARKNESS, 1, COLORLESS, 2 ; energies
	tx DarknessFangName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; ; attack 1
	; energy GRASS, 1 ; energies
	; tx StunSporeName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw OddishStunSporeEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	; ; attack 2
	; energy GRASS, 2 ; energies
	; tx SproutName ; name
	; tx SproutDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw OddishSproutEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx WeedName ; category
	db 43 ; Pokedex number
	db 8 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx OddishDescription ; description
	db HAS_EVOLUTION ; AI info

ZweilousCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx GloomCardGfx ; gfx
	tx ZweilousName ; name
	db DIAMOND ; rarity
	db MYSTERY | JUNGLE ; sets
	dw ZWEILOUS
	db 60 ; hp
	db STAGE1 ; stage
	tx DeinoName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx DoubleHitName ; name
	tx DoubleAttackX10Description ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw SandshrewDoubleScratchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	energy DARKNESS, 2, COLORLESS, 2 ; energies
	tx PitchBlackFangsName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx PoisonPowderName ; name
	; tx InflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw GloomPoisonPowderEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_POISON_POWDER ; animation

	; ; attack 2
	; energy GRASS, 2 ; energies
	; tx FoulOdorName ; name
	; tx FoulOdorDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw GloomFoulOdorEffectCommands ; effect commands
	; db INFLICT_CONFUSION ; flags 1
	; db FLAG_2_BIT_7 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_FOUL_ODOR ; animation

	db 3 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx WeedName ; category
	db 44 ; Pokedex number
	db 22 ; level
	db 2, 7 ; length
	dw 19 * 10 ; weight
	tx GloomDescription ; description
	db HAS_EVOLUTION ; AI info

HydreigonExCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx VileplumeCardGfx ; gfx
	tx HydreigonExName ; name
	db STAR ; rarity
	db MYSTERY | JUNGLE ; sets
	dw HYDREIGON_EX
	db 170 ; hp
	db STAGE2 ; stage
	tx ZweilousName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx GreedyEaterName ; name
	tx GreedyEaterDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw HydreigonExGreedyEaterEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy DARKNESS, 3, COLORLESS, 2 ; energies
	tx DarkBiteName ; name
	tx NoRetreatDescription ; description
	dw NONE ; description (cont)
	db 100 ; damage
	db DAMAGE_NORMAL ; category
	dw HydreigonExDarkBiteEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy 0 ; energies
	; tx HealName ; name
	; tx HealDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw VileplumeHealEffectCommands ; effect commands
	; db NONE ; flags 1
	; db HEAL_USER ; flags 2
	; db NONE ; flags 3
	; db 1
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy GRASS, 3 ; energies
	; tx PetalDanceName ; name
	; tx PetalDanceDescription ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_X ; category
	; dw VileplumePetalDanceEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PETAL_DANCE ; animation

	db 3 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx FlowerName ; category
	db 45 ; Pokedex number
	db 50 ; level
	db 3, 11 ; length
	dw 41 * 10 ; weight
	tx VileplumeDescription ; description
	db 0 ; AI info

ToxelCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ParasCardGfx ; gfx
	tx ToxelName ; name
	db CIRCLE ; rarity
	db MYSTERY | JUNGLE ; sets
	dw TOXEL
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx CallForFamilyName ; name
	tx GatherTheCrewDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw TaurosGatherTheCrewEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy DARKNESS, 1, COLORLESS, 1 ; energies
	tx PlayfulKickName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx ScratchName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SLASH ; animation

	; ; attack 2
	; energy GRASS, 2 ; energies
	; tx SporeName ; name
	; tx InflictSleepDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ParasSporeEffectCommands ; effect commands
	; db INFLICT_SLEEP ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SPORE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MushroomName ; category
	db 46 ; Pokedex number
	db 8 ; level
	db 1, 0 ; length
	dw 12 * 10 ; weight
	tx ParasDescription ; description
	db HAS_EVOLUTION ; AI info

ToxtricityCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ParasectCardGfx ; gfx
	tx ToxtricityName ; name
	db DIAMOND ; rarity
	db MYSTERY | JUNGLE ; sets
	dw TOXTRICITY
	db 70 ; hp
	db STAGE1 ; stage
	tx ToxelName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SinisterSurgeName ; name
	tx SinisterSurgeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw ToxtricitySinisterSurgeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy DARKNESS, 2, COLORLESS, 1 ; energies
	tx GentleSlapName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy GRASS, 2 ; energies
	; tx SporeName ; name
	; tx InflictSleepDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ParasectSporeEffectCommands ; effect commands
	; db INFLICT_SLEEP ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SPORE ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx SlashName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SLASH ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MushroomName ; category
	db 47 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 65 * 10 ; weight
	tx ParasectDescription ; description
	db 0 ; AI info

VenonatCard:
	db TYPE_PKMN_GRASS ; type
	gfx VenonatCardGfx ; gfx
	tx VenonatName ; name
	db CIRCLE ; rarity
	db LABORATORY | JUNGLE ; sets
	dw VENONAT
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1;COLORLESS, 1 ; energies
	tx GnawName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 2 ; energies
	tx BeamName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx StunSporeName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw VenonatStunSporeEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	; ; attack 2
	; energy GRASS, 1, COLORLESS, 1 ; energies
	; tx LeechLifeName ; name
	; tx VenonatLeechLifeDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw VenonatLeechLifeEffectCommands ; effect commands
	; db NONE ; flags 1
	; db HEAL_USER ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_DRAIN ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx InsectName ; category
	db 48 ; Pokedex number
	db 12 ; level
	db 3, 3 ; length
	dw 66 * 10 ; weight
	tx VenonatDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

VenomothCard:
	db TYPE_PKMN_GRASS ; type
	gfx VenomothCardGfx ; gfx
	tx VenomothName ; name
	db STAR ; rarity
	db LABORATORY | JUNGLE ; sets
	dw VENOMOTH
	db 50 ; hp
	db STAGE1 ; stage
	tx VenonatName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx PerplexingPowderName ; name
	tx PerplexingPowderDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw VenomothPerplexingPowderEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_POWDER_HIT_POISON ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx SpeedWingName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy 0 ; energies
	; tx ShiftName ; name
	; tx ShiftDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw VenomothShiftEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy GRASS, 2 ; energies
	; tx VenomPowderName ; name
	; tx VenomPowderDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw VenomothVenomPowderEffectCommands ; effect commands
	; db INFLICT_POISON | INFLICT_CONFUSION ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx PoisonmothName ; category
	db 49 ; Pokedex number
	db 28 ; level
	db 4, 11 ; length
	dw 28 * 10 ; weight
	tx VenomothDescription ; description
	db 0 ; AI info

BeldumCard:
	db TYPE_PKMN_METAL ; type
	gfx BellsproutCardGfx ; gfx
	tx BeldumName ; name
	db CIRCLE ; rarity
	db EVOLUTION | JUNGLE ; sets
	dw BELDUM
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx DigClawsName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	energy METAL, 1, COLORLESS, 2 ; energies
	tx IronTackleName ; name
	tx TenRecoilDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw TenRecoilEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx VineWhipName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_WHIP ; animation

	; ; attack 2
	; energy GRASS, 1 ; energies
	; tx CallForFamilyName ; name
	; tx BellsproutsCallForFamilyDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw BellsproutCallForFamilyEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx FlowerName ; category
	db 69 ; Pokedex number
	db 11 ; level
	db 2, 4 ; length
	dw 9 * 10 ; weight
	tx BellsproutDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

MetangCard:
	db TYPE_PKMN_METAL ; type
	gfx WeepinbellCardGfx ; gfx
	tx MetangName ; name
	db DIAMOND ; rarity
	db EVOLUTION | JUNGLE ; sets
	dw METANG
	db 50 ; hp
	db STAGE1 ; stage
	tx BeldumName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx MetalMakerName ; name
	tx MetalMakerDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MetangMetalMakerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 1
	energy METAL, 1, COLORLESS, 2 ; energies
	tx BeamName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx PoisonPowderName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw WeepinbellPoisonPowderEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	; ; attack 2
	; energy GRASS, 2 ; energies
	; tx RazorLeafName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_WHIP ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx FlycatcherName ; category
	db 70 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 14 * 10 ; weight
	tx WeepinbellDescription ; description
	db HAS_EVOLUTION ; AI info

MetagrossCard:
	db TYPE_PKMN_METAL ; type
	gfx VictreebelCardGfx ; gfx
	tx MetagrossName ; name
	db STAR ; rarity
	db EVOLUTION | JUNGLE ; sets
	dw METAGROSS
	db 90 ; hp
	db STAGE2 ; stage
	tx MetangName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx BounceBackName ; name
	tx BounceBackDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MetagrossBounceBackEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	; attack 2
	energy METAL, 3, COLORLESS, 1 ; energies
	tx MetallicHammerName ; name
	tx MetallicHammerDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_PLUS ; category
	dw MetagrossMetallicHammerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx LureName ; name
	; tx VictreebelsLureDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw VictreebelLureEffectCommands ; effect commands
	; db NONE ; flags 1
	; db SWITCH_OPPONENT_POKEMON ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_LURE ; animation

	; ; attack 2
	; energy GRASS, 2 ; energies
	; tx AcidName ; name
	; tx VictreebelsAcidDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw VictreebelAcidEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 1
	; db ATK_ANIM_GOO ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx FlycatcherName ; category
	db 71 ; Pokedex number
	db 42 ; level
	db 5, 7 ; length
	dw 34 * 10 ; weight
	tx VictreebelDescription ; description
	db 0 ; AI info

GulpinCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx GrimerCardGfx ; gfx
	tx GulpinName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw GULPIN
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx DroolName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy DARKNESS, 2, COLORLESS, 1 ; energies
	tx SuperPoisonBreathName ; name
	tx InflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SeviperSpitPoisonEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POWDER_HIT_POISON ; animation


	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx NastyGooName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw GrimerNastyGooEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_GOO ; animation

	; ; attack 2
	; energy GRASS, 1 ; energies
	; tx MinimizeName ; name
	; tx GrimersMinimizeDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw GrimerMinimizeEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PROTECT ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx SludgeName ; category
	db 88 ; Pokedex number
	db 17 ; level
	db 2, 11 ; length
	dw 66 * 10 ; weight
	tx GrimerDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

SwalotCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx MukCardGfx ; gfx
	tx SwalotName ; name
	db STAR ; rarity
	db LABORATORY | FOSSIL ; sets
	dw SWALOT
	db 70 ; hp
	db STAGE1 ; stage
	tx GulpinName ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx DevouringMouthName ; name
	tx DevouringMouthDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw DevouringMouthEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POISON_FANG ; animation

	; attack 2
	energy DARKNESS, 2, COLORLESS, 1 ; energies
	tx VenomousHitName ; name
	tx InflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw SeviperSpitPoisonEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POWDER_HIT_POISON ; animation

	; attack 1
	; energy 0 ; energies
	; tx ToxicGasName ; name
	; tx ToxicGasDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw MukToxicGasEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy GRASS, 3 ; energies
	; tx SludgeName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MukSludgeEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_GOO ; animation

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx SludgeName ; category
	db 89 ; Pokedex number
	db 34 ; level
	db 3, 11 ; length
	dw 66 * 10 ; weight
	tx MukDescription ; description
	db 0 ; AI info

BinacleCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx ExeggcuteCardGfx ; gfx
	tx BinacleName ; name
	db CIRCLE ; rarity
	db MYSTERY | JUNGLE ; sets
	dw BINACLE
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx DoubleDrawName ; name
	tx DoubleDrawDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw BinacleDoubleDrawEffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIGHTING, 2 ; energies
	tx ScratchName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx HypnosisName ; name
	; tx InflictSleepDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ExeggcuteHypnosisEffectCommands ; effect commands
	; db INFLICT_SLEEP ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HYPNOSIS ; animation

	; ; attack 2
	; energy GRASS, 2 ; energies
	; tx LeechSeedName ; name
	; tx ExeggcutesLeechSeedDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ExeggcuteLeechSeedEffectCommands ; effect commands
	; db NONE ; flags 1
	; db HEAL_USER ; flags 2
	; db NONE ; flags 3
	; db 1
	; db ATK_ANIM_DRAIN ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx EggName ; category
	db 102 ; Pokedex number
	db 14 ; level
	db 1, 4 ; length
	dw 6 * 10 ; weight
	tx ExeggcuteDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

BarbaracleCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx ExeggutorCardGfx ; gfx
	tx BarbaracleName ; name
	db DIAMOND ; rarity
	db MYSTERY | JUNGLE ; sets
	dw BARBARACLE
	db 70 ; hp
	db STAGE1 ; stage
	tx BinacleName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StoneArmsName ; name
	tx StoneArmsDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw BarbaracleStoneArmsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx HammerInName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx TeleportName ; name
	; tx TeleportDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw ExeggutorTeleportEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy COLORLESS, 1 ; energies
	; tx BigEggsplosionName ; name
	; tx BigEggsplosionDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_X ; category
	; dw ExeggutorBigEggsplosionEffectCommands ; effect commands
	; db NONE ; flags 1
	; db ATTACHED_ENERGY_BOOST ; flags 2
	; db NONE ; flags 3
	; db MAX_ENERGY_BOOST_IS_NOT_LIMITED
	; db ATK_ANIM_BIG_HIT ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx CoconutName ; category
	db 103 ; Pokedex number
	db 35 ; level
	db 6, 7 ; length
	dw 265 * 10 ; weight
	tx ExeggutorDescription ; description
	db 0 ; AI info

TarountulaCard:
	db TYPE_PKMN_GRASS ; type
	gfx KoffingCardGfx ; gfx
	tx TarountulaName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw TAROUNTULA
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx AlluringLightName ; name
	tx AlluringLightDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw BruteBonnetToxicPowderEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 1
	energy GRASS, 1 ; energies
	tx BindDownName ; name
	tx NoRetreatDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokExBindDownEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_GOO ; animation

	; attack 1
	; energy GRASS, 2 ; energies
	; tx FoulGasName ; name
	; tx FoulGasDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw KoffingFoulGasEffectCommands ; effect commands
	; db INFLICT_POISON | INFLICT_CONFUSION ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_FOUL_GAS ; animation

	; attack 2
	; energy 0 ; energies
	; dw NONE ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx PoisonGasName ; category
	db 109 ; Pokedex number
	db 13 ; level
	db 2, 0 ; length
	dw 2 * 10 ; weight
	tx KoffingDescription ; description
	db HAS_EVOLUTION ; AI info

SpidopsExCard:
	db TYPE_PKMN_GRASS ; type
	gfx WeezingCardGfx ; gfx
	tx SpidopsExName ; name
	db DIAMOND ; rarity
	db LABORATORY | FOSSIL ; sets
	dw SPIDOPS_EX
	db 130 ; hp
	db STAGE1 ; stage
	tx TarountulaName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx TrapTerritoryName ; name
	tx TrapTerritoryDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SpidopsExTrapTerritoryEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx WireHangName ; name
	tx WireHangDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw SpidopsExWireHangEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_STRING_SHOT ; animation

	; attack 1
	; energy GRASS, 2 ; energies
	; tx SmogName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw WeezingSmogEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SMOG ; animation

	; ; attack 2
	; energy GRASS, 2, COLORLESS, 1 ; energies
	; tx SelfdestructName ; name
	; tx WeezingsSelfdestructDescription ; description
	; dw NONE ; description (cont)
	; db 60 ; damage
	; db DAMAGE_NORMAL ; category
	; dw WeezingSelfdestructEffectCommands ; effect commands
	; db HIGH_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 60
	; db ATK_ANIM_SELFDESTRUCT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx PoisonGasName ; category
	db 110 ; Pokedex number
	db 50 ; level
	db 3, 11 ; length
	dw 21 * 10 ; weight
	tx WeezingDescription ; description
	db 0 ; AI info

SpinarakCard:
	db TYPE_PKMN_GRASS ; type
	gfx KoffingCardGfx ; gfx
	tx SpinarakName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw SPINARAK
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name
	
	; attack 1
	energy GRASS, 1 ; energies
	tx BugBiteName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy GRASS, 2 ; energies
	; tx FoulGasName ; name
	; tx FoulGasDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw KoffingFoulGasEffectCommands ; effect commands
	; db INFLICT_POISON | INFLICT_CONFUSION ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_FOUL_GAS ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx PoisonGasName ; category
	db 109 ; Pokedex number
	db 13 ; level
	db 2, 0 ; length
	dw 2 * 10 ; weight
	tx KoffingDescription ; description
	db HAS_EVOLUTION ; AI info

AriadosCard:
	db TYPE_PKMN_GRASS ; type
	gfx WeezingCardGfx ; gfx
	tx AriadosName ; name
	db DIAMOND ; rarity
	db LABORATORY | FOSSIL ; sets
	dw ARIADOS
	db 50 ; hp
	db STAGE1 ; stage
	tx SpinarakName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx BigNetName ; name
	tx BigNetDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SpidopsExTrapTerritoryEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy GRASS, 1 ; energies
	tx StringBindName ; name
	tx StringBindDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw AriadosStringBindEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_STRING_SHOT ; animation

	; attack 1
	; energy GRASS, 2 ; energies
	; tx SmogName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw WeezingSmogEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SMOG ; animation

	; ; attack 2
	; energy GRASS, 2, COLORLESS, 1 ; energies
	; tx SelfdestructName ; name
	; tx WeezingsSelfdestructDescription ; description
	; dw NONE ; description (cont)
	; db 60 ; damage
	; db DAMAGE_NORMAL ; category
	; dw WeezingSelfdestructEffectCommands ; effect commands
	; db HIGH_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 60
	; db ATK_ANIM_SELFDESTRUCT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx PoisonGasName ; category
	db 110 ; Pokedex number
	db 34 ; level
	db 3, 11 ; length
	dw 21 * 10 ; weight
	tx WeezingDescription ; description
	db 0 ; AI info

SeviperCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx TangelaLv8CardGfx ; gfx
	tx SeviperName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw SEVIPER
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx SpitPoisonName ; name
	tx InflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SeviperSpitPoisonEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POISON_FANG ; animation

	; attack 2
	energy DARKNESS, 3 ; energies
	tx VenoshockName ; name
	tx VenoshockDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw SeviperVenoshockEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POISON_FANG ; animation

	; attack 1
	; energy GRASS, 1, COLORLESS, 1 ; energies
	; tx BindName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw TangelaBindEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy GRASS, 3 ; energies
	; tx PoisonPowderName ; name
	; tx InflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw TangelaPoisonPowderEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_POWDER_HIT_POISON ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx VineName ; category
	db 114 ; Pokedex number
	db 8 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx TangelaLv8Description ; description
	db 0 ; AI info

ScizorCard:
	db TYPE_PKMN_METAL ; type
	gfx TangelaLv12CardGfx ; gfx
	tx ScizorName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | GB ; sets
	dw SCIZOR
	db 70 ; hp
	db STAGE1 ; stage
	tx ScytherName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx PunishingScissorsName ; name
	tx PunishingScissorsDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw ScizorPunishingScissorsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy METAL, 2 ; energies
	tx CutName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx StunSporeName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw TangelaStunSporeEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	; ; attack 2
	; energy GRASS, 2, COLORLESS, 1 ; energies
	; tx PoisonWhipName ; name
	; tx InflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw TangelaPoisonWhipEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_POISON_WHIP ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx VineName ; category
	db 114 ; Pokedex number
	db 12 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx TangelaLv12Description ; description
	db 0 ; AI info

ScytherCard:
	db TYPE_PKMN_GRASS ; type
	gfx ScytherCardGfx ; gfx
	tx ScytherName ; name
	db STAR ; rarity
	db COLOSSEUM | JUNGLE ; sets
	dw SCYTHER
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1; energies
	tx AgilityName ; name
	tx SwimFreelyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SwimFreelyEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx CutName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy GRASS, 1 ; energies
	; tx SwordsDanceName ; name
	; tx SwordsDanceDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw ScytherSwordsDanceEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx SlashName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SLASH ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx MantisName ; category
	db 123 ; Pokedex number
	db 25 ; level
	db 4, 11 ; length
	dw 123 * 10 ; weight
	tx ScytherDescription ; description
	db 0 ; AI info

TealMaskOgerponExCard:
	db TYPE_PKMN_GRASS ; type
	gfx PinsirCardGfx ; gfx
	tx TealMaskOgerponExName ; name
	db STAR ; rarity
	db COLOSSEUM | JUNGLE ; sets
	dw TEAL_MASK_OGERPON_EX
	db 110 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx TealDanceName ; name
	tx TealDanceDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw TealOgerponTealDanceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy GRASS, 3 ; energies
	tx MyriadLeafShowerName ; name
	tx MyriadLeafShowerDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw TealOgerponMyriadLeafShowerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 1
	; energy GRASS, 2 ; energies
	; tx IronGripName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PinsirIronGripEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT_EFFECT ; animation

	; ; attack 2
	; energy GRASS, 2, COLORLESS, 2 ; energies
	; tx GuillotineName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SONICBOOM ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx StagbeetleName ; category
	db 127 ; Pokedex number
	db 50 ; level
	db 4, 11 ; length
	dw 121 * 10 ; weight
	tx PinsirDescription ; description
	db 0 ; AI info

FuecocoCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharmanderCardGfx ; gfx
	tx FuecocoName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw FUECOCO
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx LiveCoalName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy FIRE, 2 ; energies
	tx RamName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx ScratchName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SLASH ; animation

	; ; attack 2
	; energy FIRE, 1, COLORLESS, 1 ; energies
	; tx EmberName ; name
	; tx EmberDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw CharmanderEmberEffectCommands ; effect commands
	; db NONE ; flags 1
	; db DISCARD_ENERGY ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_SMALL_FLAME ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx LizardName ; category
	db 4 ; Pokedex number
	db 10 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx CharmanderDescription ; description
	db AI_INFO_UNK_05 | HAS_EVOLUTION ; AI info

CrocalorCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharmeleonCardGfx ; gfx
	tx CrocalorName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw CROCALOR
	db 60 ; hp
	db STAGE1 ; stage
	tx FuecocoName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx SteadyFirebreathingName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	energy FIRE, 2 ; energies
	tx HyperVoiceName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SING ; animation

	; ; attack 1
	; energy COLORLESS, 3 ; energies
	; tx SlashName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SLASH ; animation

	; ; attack 2
	; energy FIRE, 2, COLORLESS, 1 ; energies
	; tx FlamethrowerName ; name
	; tx CharmeleonsFlamethrowerDescription ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw CharmeleonFlamethrowerEffectCommands ; effect commands
	; db NONE ; flags 1
	; db DISCARD_ENERGY ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_BIG_FLAME ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FlameName ; category
	db 5 ; Pokedex number
	db 32 ; level
	db 3, 7 ; length
	dw 42 * 10 ; weight
	tx CharmeleonDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

SkeledirgeExCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharizardCardGfx ; gfx
	tx SkeledirgeExName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw SKELEDIRGE_EX
	db 170 ; hp
	db STAGE2 ; stage
	tx CharmeleonName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx VitalitySongName ; name
	tx VitalitySongDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw SkeledirgeVitalitySongEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1 ; used to calculate the HEAL_USER attack score bonus
	db ATK_ANIM_SING ; animation

	; attack 1
	energy FIRE, 2 ; energies
	tx BurningVoiceName ; name
	tx BurningVoiceDescription ; description
	dw NONE ; description (cont)
	db 140 ; damage
	db DAMAGE_MINUS ; category
	dw SkeledirgeBurningVoiceEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIRE_SPIN ; animation

	; attack 1
	; energy 0 ; energies
	; tx EnergyBurnName ; name
	; tx EnergyBurnDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw CharizardEnergyBurnEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy FIRE, 4 ; energies
	; tx FireSpinName ; name
	; tx FireSpinDescription ; description
	; dw NONE ; description (cont)
	; db 100 ; damage
	; db DAMAGE_NORMAL ; category
	; dw CharizardFireSpinEffectCommands ; effect commands
	; db NONE ; flags 1
	; db DISCARD_ENERGY ; flags 2
	; db NONE ; flags 3
	; db 6
	; db ATK_ANIM_FIRE_SPIN ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FlameName ; category
	db 6 ; Pokedex number
	db 76 ; level
	db 5, 7 ; length
	dw 200 * 10 ; weight
	tx CharizardDescription ; description
	db 0 ; AI info

FennekinCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharmanderCardGfx ; gfx
	tx FennekinName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw FENNEKIN
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx CallForFamilyName ; name
	tx GatherTheCrewDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw TaurosGatherTheCrewEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIRE, 1 ; energies
	tx SteadyFirebreathingName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMALL_FLAME ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx LizardName ; category
	db 4 ; Pokedex number
	db 10 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx CharmanderDescription ; description
	db AI_INFO_UNK_05 | HAS_EVOLUTION ; AI info

BraixenCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharmeleonCardGfx ; gfx
	tx BraixenName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw BRAIXEN
	db 50 ; hp
	db STAGE1 ; stage
	tx FennekinName ; pre-evo name

	; attack 2
	energy FIRE, 2 ; energies
	tx FlamethrowerName ; name
	tx DiscardAnEnergyDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw FlareonFlamethrowerEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_SMALL_FLAME ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FlameName ; category
	db 5 ; Pokedex number
	db 32 ; level
	db 3, 7 ; length
	dw 42 * 10 ; weight
	tx CharmeleonDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

DelphoxCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharizardCardGfx ; gfx
	tx DelphoxName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw DELPHOX
	db 80 ; hp
	db STAGE2 ; stage
	tx BraixenName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx FlaringMagicName ; name
	tx FlaringMagicDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DelphoxFlaringMagicEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIRE, 2 ; energies
	tx EnergizedStormName ; name
	tx EnergizedStormDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw DelphoxEnergizedStormEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIRE_SPIN ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FlameName ; category
	db 6 ; Pokedex number
	db 35 ; level
	db 5, 7 ; length
	dw 200 * 10 ; weight
	tx CharizardDescription ; description
	db 0 ; AI info

TepigCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharmanderCardGfx ; gfx
	tx TepigName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw TEPIG
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx TackleName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMALL_FLAME ; animation

	; attack 2
	energy FIRE, 2 ; energies
	tx RolloutName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx LizardName ; category
	db 4 ; Pokedex number
	db 10 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx CharmanderDescription ; description
	db AI_INFO_UNK_05 | HAS_EVOLUTION ; AI info

PigniteCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharmeleonCardGfx ; gfx
	tx PigniteName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw PIGNITE
	db 60 ; hp
	db STAGE1 ; stage
	tx TepigName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx CombustionName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMALL_FLAME ; animation

	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx HeatCrashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FlameName ; category
	db 5 ; Pokedex number
	db 32 ; level
	db 3, 7 ; length
	dw 42 * 10 ; weight
	tx CharmeleonDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

EmboarCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharizardCardGfx ; gfx
	tx EmboarName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw EMBOAR
	db 90 ; hp
	db STAGE2 ; stage
	tx PigniteName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx InfernoFandangoName ; name
	tx InfernoFandangoDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw EmboarInfernoFandangoEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIRE, 3, COLORLESS, 1 ; energies
	tx HeatCrashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 4 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FlameName ; category
	db 6 ; Pokedex number
	db 35 ; level
	db 5, 7 ; length
	dw 200 * 10 ; weight
	tx CharizardDescription ; description
	db 0 ; AI info

LitwickCard:
	db TYPE_PKMN_FIRE ; type
	gfx VulpixCardGfx ; gfx
	tx LitwickName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw LITWICK
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx CallForFamilyName ; name
	tx GatherTheCrewDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw TaurosGatherTheCrewEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx LiveCoalName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIRE_PUNCH ; animation

	; attack 1
	; energy FIRE, 2 ; energies
	; tx ConfuseRayName ; name
	; tx MayInflictConfusionDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw VulpixConfuseRayEffectCommands ; effect commands
	; db INFLICT_CONFUSION ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_CONFUSE_RAY ; animation

	; ; attack 2
	; energy 0 ; energies
	; dw NONE ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FoxName ; category
	db 37 ; Pokedex number
	db 11 ; level
	db 2, 0 ; length
	dw 22 * 10 ; weight
	tx VulpixDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

LampentCard:
	db TYPE_PKMN_FIRE ; type
	gfx NinetalesLv32CardGfx ; gfx
	tx LampentName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw LAMPENT
	db 40 ; hp
	db STAGE1 ; stage
	tx LitwickName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx LiveCoalName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIRE_PUNCH ; animation

	; attack 2
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx BurnItAllUpName ; name
	tx DiscardAllEnergyDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw CeruledgeExRagingAmethystEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx LureName ; name
	; tx NinetalesLureDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw NinetalesLureEffectCommands ; effect commands
	; db NONE ; flags 1
	; db SWITCH_OPPONENT_POKEMON ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_LURE ; animation

	; ; attack 2
	; energy FIRE, 4 ; energies
	; tx FireBlastName ; name
	; tx FireBlastDescription ; description
	; dw NONE ; description (cont)
	; db 80 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NinetalesFireBlastEffectCommands ; effect commands
	; db NONE ; flags 1
	; db DISCARD_ENERGY ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_FIRE_SPIN ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FoxName ; category
	db 38 ; Pokedex number
	db 32 ; level
	db 3, 7 ; length
	dw 44 * 10 ; weight
	tx NinetalesLv32Description ; description
	db 0 ; AI info

ChandelureCard:
	db TYPE_PKMN_FIRE ; type
	gfx NinetalesLv35CardGfx ; gfx
	tx ChandelureName ; name
	db STAR ; rarity
	db LABORATORY | GB ; sets
	dw CHANDELURE
	db 70 ; hp
	db STAGE2 ; stage
	tx LampentName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx AlluringLightName ; name
	tx AlluringLightDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw ChandelureAlluringLightEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIRE, 1 ; energies
	tx MindRulerName ; name
	tx MindRulerDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw ChandelureMindRulerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIRE_SPIN ; animation

	; attack 1
	; energy FIRE, 2 ; energies
	; tx MixUpName ; name
	; tx MixUpDescription ; description
	; tx MixUpDescriptionCont ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw NinetalesMixUpEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy FIRE, 3 ; energies
	; tx DancingEmbersName ; name
	; tx DancingEmbersDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_X ; category
	; dw NinetalesDancingEmbersEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_FIRE_SPIN ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FoxName ; category
	db 38 ; Pokedex number
	db 35 ; level
	db 3, 7 ; length
	dw 44 * 10 ; weight
	tx NinetalesLv35Description ; description
	db 0 ; AI info

CharcadetCard:
	db TYPE_PKMN_FIRE ; type
	gfx GrowlitheCardGfx ; gfx
	tx CharcadetName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw CHARCADET
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx WillOWispName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMALL_FLAME ; animation

	; attack 1
	; energy FIRE, 1, COLORLESS, 1 ; energies
	; tx FlareName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SMALL_FLAME ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx PuppyName ; category
	db 58 ; Pokedex number
	db 18 ; level
	db 2, 4 ; length
	dw 42 * 10 ; weight
	tx GrowlitheDescription ; description
	db HAS_EVOLUTION ; AI info

ArcanineLv34Card:
	db TYPE_PKMN_FIRE ; type
	gfx ArcanineLv34CardGfx ; gfx
	tx ArcanineName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw ARCANINE_LV34
	db 70 ; hp
	db STAGE1 ; stage
	tx CharcadetName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx QuickAttackName ; name
	tx QuickAttackDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw ArcanineQuickAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy FIRE, 2 ; energies
	tx FlamesOfRageName ; name
	tx FlamesOfRageDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw ArcanineFlamesOfRageEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 6
	db ATK_ANIM_FIRE_SPIN ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx LegendaryName ; category
	db 59 ; Pokedex number
	db 34 ; level
	db 6, 3 ; length
	dw 342 * 10 ; weight
	tx ArcanineLv34Description ; description
	db 0 ; AI info

CeruledgeExCard:
	db TYPE_PKMN_FIRE ; type
	gfx ArcanineLv45CardGfx ; gfx
	tx CeruledgeExName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw CERULEDGE_EX
	db 140 ; hp
	db STAGE1 ; stage
	tx CharcadetName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx AbyssalFlamesName ; name
	tx AbyssalFlamesDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw CeruledgeExAbyssalFlamesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_FLAME ; animation

	; attack 2
	energy FIRE, 1, PSYCHIC, 1, METAL, 1 ; energies
	tx RagingAmethystName ; name
	tx DiscardAllEnergyDescription ; description
	dw NONE ; description (cont)
	db 140 ; damage
	db DAMAGE_NORMAL ; category
	dw CeruledgeExRagingAmethystEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	; ; attack 1
	; energy FIRE, 2, COLORLESS, 1 ; energies
	; tx FlamethrowerName ; name
	; tx ArcaninesFlamethrowerDescription ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ArcanineFlamethrowerEffectCommands ; effect commands
	; db NONE ; flags 1
	; db DISCARD_ENERGY ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_BIG_FLAME ; animation

	; ; attack 2
	; energy FIRE, 2, COLORLESS, 2 ; energies
	; tx TakeDownName ; name
	; tx TakeDownDescription ; description
	; dw NONE ; description (cont)
	; db 80 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ArcanineTakeDownEffectCommands ; effect commands
	; db LOW_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 30
	; db ATK_ANIM_HIT_RECOIL ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx LegendaryName ; category
	db 59 ; Pokedex number
	db 50 ; level
	db 6, 3 ; length
	dw 342 * 10 ; weight
	tx ArcanineLv45Description ; description
	db 0 ; AI info

SizzlipedeCard:
	db TYPE_PKMN_FIRE ; type
	gfx PonytaCardGfx ; gfx
	tx SizzlipedeName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SIZZLIPEDE
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx LiveCoalName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	energy COLORLESS, 3 ; energies
	tx HookName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx SmashKickName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy FIRE, 2 ; energies
	; tx FlameTailName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_BIG_FLAME ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FireHorseName ; category
	db 77 ; Pokedex number
	db 10 ; level
	db 3, 3 ; length
	dw 66 * 10 ; weight
	tx PonytaDescription ; description
	db HAS_EVOLUTION ; AI info

CentiskorchCard:
	db TYPE_PKMN_FIRE ; type
	gfx RapidashCardGfx ; gfx
	tx CentiskorchName ; name
	db DIAMOND ; rarity
	db EVOLUTION | JUNGLE ; sets
	dw CENTISKORCH
	db 70 ; hp
	db STAGE1 ; stage
	tx SizzlipedeName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx BillowingHeatWaveName ; name
	tx BillowingHeatWaveDescription; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_PLUS ; category
	dw CentiskorchBillowingHeatWaveEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_FLAME ; animation

	; attack 1
	energy FIRE, 1 ; energies
	tx HeatBlastName ; name
	dw NONE; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_PLUS ; category
	dw CentiskorchBillowingHeatWaveEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_FLAME ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx StompName ; name
	; tx StompDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_PLUS ; category
	; dw RapidashStompEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy FIRE, 2, COLORLESS, 1 ; energies
	; tx AgilityName ; name
	; tx RapidashsAgilityDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw RapidashAgilityEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK | FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_QUICK_ATTACK ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FireHorseName ; category
	db 78 ; Pokedex number
	db 33 ; level
	db 5, 7 ; length
	dw 209 * 10 ; weight
	tx RapidashDescription ; description
	db 0 ; AI info

MagmarLv24Card:
	db TYPE_PKMN_FIRE ; type
	gfx MagmarLv24CardGfx ; gfx
	tx MagmarName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw MAGMAR_LV24
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 2 ; energies
	tx FirePunchName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIRE_PUNCH ; animation

	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx FlamethrowerName ; name
	tx FirePunchDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw MagmarFlamethrowerEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx SpitfireName ; category
	db 126 ; Pokedex number
	db 24 ; level
	db 4, 3 ; length
	dw 98 * 10 ; weight
	tx MagmarLv24Description ; description
	db 0 ; AI info

HearthflameMaskOgerponExCard:
	db TYPE_PKMN_FIRE ; type
	gfx MagmarLv31CardGfx ; gfx
	tx HearthflameMaskOgerponExName ; name
	db DIAMOND ; rarity
	db LABORATORY | FOSSIL ; sets
	dw HEARTHFLAME_MASK_OGERPON_EX
	db 110 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1, COLORLESS, 2 ; energies
	tx WrathfulHearthName ; name
	tx WrathfulHearthDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw WrathfulHearthEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIRE, 3 ; energies
	tx DynamicBlazeName ; name
	tx DynamicBlazeDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_PLUS ; category
	dw DynamicBlazeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 6
	db ATK_ANIM_FIRE_SPIN ; animation

	; attack 1
	; energy FIRE, 1 ; energies
	; tx SmokescreenName ; name
	; tx MagmarsSmokescreenDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MagmarSmokescreenEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_DARK_GAS ; animation

	; ; attack 2
	; energy FIRE, 2 ; energies
	; tx SmogName ; name
	; tx MayInflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MagmarSmogEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SMOG ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx SpitfireName ; category
	db 126 ; Pokedex number
	db 50 ; level
	db 4, 3 ; length
	dw 98 * 10 ; weight
	tx MagmarLv31Description ; description
	db AI_INFO_UNK_03 ; AI info

FlareonLv22Card:
	db TYPE_PKMN_FIRE ; type
	gfx FlareonLv22CardGfx ; gfx
	tx FlareonName ; name
	db DIAMOND ; rarity
	db MYSTERY | GB ; sets
	dw FLAREON_LV22
	db 60 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy COLORLESS, 3 ; energies
	tx BiteName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx RageName ; name
	tx FlareonsRageDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw FlareonRageEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FlameName ; category
	db 136 ; Pokedex number
	db 22 ; level
	db 2, 11 ; length
	dw 55 * 10 ; weight
	tx FlareonLv22Description ; description
	db 0 ; AI info

FlareonExCard:
	db TYPE_PKMN_FIRE ; type
	gfx FlareonLv28CardGfx ; gfx
	tx FlareonExName ; name
	db STAR ; rarity
	db EVOLUTION | JUNGLE ; sets
	dw FLAREON_EX
	db 140 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy FIRE, 1, COLORLESS, 2 ; energies
	tx BurningChargeName ; name
	tx BurningChargeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw FlareonExBurningChargeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMALL_FLAME ; animation

	; attack 2
	energy FIRE, 1, WATER, 1, LIGHTNING, 1 ; energies
	tx CarnelianName ; name
	tx NextTurnCantAttackDescription ; description
	dw NONE ; description (cont)
	db 140 ; damage
	db DAMAGE_NORMAL ; category
	dw FlareonQuickAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_FLAME ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx QuickAttackName ; name
	; tx QuickAttackDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_PLUS ; category
	; dw FlareonQuickAttackEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_QUICK_ATTACK ; animation

	; ; attack 2
	; energy FIRE, 2, COLORLESS, 2 ; energies
	; tx FlamethrowerName ; name
	; tx FlareonsFlamethrowerDescription ; description
	; dw NONE ; description (cont)
	; db 60 ; damage
	; db DAMAGE_NORMAL ; category
	; dw FlareonFlamethrowerEffectCommands ; effect commands
	; db NONE ; flags 1
	; db DISCARD_ENERGY ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_BIG_FLAME ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FlameName ; category
	db 136 ; Pokedex number
	db 50 ; level
	db 2, 11 ; length
	dw 55 * 10 ; weight
	tx FlareonLv28Description ; description
	db 0 ; AI info

MoltresCard:
	db TYPE_PKMN_FIRE ; type
	gfx MoltresLv35CardGfx ; gfx
	tx MoltresName ; name
	db STAR ; rarity
	db MYSTERY | FOSSIL ; sets
	dw MOLTRES
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx FightingWingsName ; name
	tx FightingWingsDescription; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw MoltresFightingWingsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_FLAME ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy FIRE, 1 ; energies
	; tx WildfireName ; name
	; tx WildfireDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw MoltresWildfireEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_5 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy FIRE, 4 ; energies
	; tx DiveBombName ; name
	; tx MayDoNothingDescription ; description
	; dw NONE ; description (cont)
	; db 80 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MoltresLv35DiveBombEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FlameName ; category
	db 146 ; Pokedex number
	db 35 ; level
	db 6, 7 ; length
	dw 132 * 10 ; weight
	tx MoltresLv35Description ; description
	db 0 ; AI info

ReshiramExCard:
	db TYPE_PKMN_FIRE ; type
	gfx MoltresLv37CardGfx ; gfx
	tx ReshiramExName ; name
	db STAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw RESHIRAM_EX
	db 120 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx SlashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx BlazingBurstName ; name
	tx BlazingBurstDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_PLUS ; category
	dw ReshiramExBlazingBurstEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	; attack 1
	; energy 0 ; energies
	; tx FiregiverName ; name
	; tx FiregiverDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw MoltresFiregiverEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_FIREGIVER ; animation

	; ; attack 2
	; energy FIRE, 3 ; energies
	; tx DiveBombName ; name
	; tx MayDoNothingDescription ; description
	; dw NONE ; description (cont)
	; db 70 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MoltresLv37DiveBombEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx FlameName ; category
	db 146 ; Pokedex number
	db 50 ; level
	db 6, 7 ; length
	dw 132 * 10 ; weight
	tx MoltresLv37Description ; description
	db 0 ; AI info

QuaxlyCard:
	db TYPE_PKMN_WATER ; type
	gfx SquirtleCardGfx ; gfx
	tx QuaxlyName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw QUAXLY
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx RecklessChargeName ; name
	tx TenRecoilDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw TenRecoilEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy WATER, 1 ; energies
	; tx BubbleName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw SquirtleBubbleEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_BUBBLES ; animation

	; ; attack 2
	; energy WATER, 1, COLORLESS, 1 ; energies
	; tx WithdrawName ; name
	; tx SquirtlesWithdrawDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw SquirtleWithdrawEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx TinyTurtleName ; category
	db 7 ; Pokedex number
	db 8 ; level
	db 1, 8 ; length
	dw 20 * 10 ; weight
	tx SquirtleDescription ; description
	db AI_INFO_UNK_05 | HAS_EVOLUTION ; AI info

QuaxwellCard:
	db TYPE_PKMN_WATER ; type
	gfx WartortleCardGfx ; gfx
	tx QuaxwellName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw QUAXWELL
	db 50 ; hp
	db STAGE1 ; stage
	tx QuaxlyName ; pre-evo name

	; attack 2
	energy WATER, 1 ; energies
	tx WaterGunName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx WaveSplashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; ; attack 1
	; energy WATER, 1, COLORLESS, 1 ; energies
	; tx WithdrawName ; name
	; tx WartortlesWithdrawDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw WartortleWithdrawEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	; ; attack 2
	; energy WATER, 1, COLORLESS, 2 ; energies
	; tx BiteName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx TurtleName ; category
	db 8 ; Pokedex number
	db 22 ; level
	db 3, 3 ; length
	dw 50 * 10 ; weight
	tx WartortleDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

QuaquavalExCard:
	db TYPE_PKMN_WATER ; type
	gfx BlastoiseCardGfx ; gfx
	tx QuaquavalExName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw QUAQUAVAL_EX
	db 160 ; hp
	db STAGE2 ; stage
	tx QuaxwellName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx ExcitingDanceName ; name
	tx ExcitingDanceDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw QuaquavalExcitingDanceEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx SpiralShotName ; name
	tx SpiralShotDescription ; description
	dw NONE ; description (cont)
	db 120 ; damage
	db DAMAGE_NORMAL ; category
	dw QuaquavalSpiralShotEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_HYDRO_PUMP ; animation

	; ; attack 1
	; energy 0 ; energies
	; tx RainDanceName ; name
	; tx RainDanceDescription ; description
	; tx RainDanceDescriptionCont ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw BlastoiseRainDanceEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy WATER, 3 ; energies
	; tx HydroPumpName ; name
	; tx HydroPumpDescription ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_PLUS ; category
	; dw BlastoiseHydroPumpEffectCommands ; effect commands
	; db NONE ; flags 1
	; db ATTACHED_ENERGY_BOOST ; flags 2
	; db NONE ; flags 3
	; db MAX_ENERGY_BOOST_IS_LIMITED
	; db ATK_ANIM_HYDRO_PUMP ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx ShellfishName ; category
	db 9 ; Pokedex number
	db 52 ; level
	db 5, 3 ; length
	dw 189 * 10 ; weight
	tx BlastoiseDescription ; description
	db 0 ; AI info

SnoruntCard:
	db TYPE_PKMN_WATER ; type
	gfx PsyduckCardGfx ; gfx
	tx SnoruntName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw SNORUNT
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1; energies
	tx ChillyName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx HeadacheName ; name
	; tx HeadacheDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw PsyduckHeadacheEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 2
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy WATER, 1 ; energies
	; tx FurySwipesName ; name
	; tx TripleAttackX10Description ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_X ; category
	; dw PsyduckFurySwipesEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_MULTIPLE_SLASH ; animation

	db 1 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx DuckName ; category
	db 54 ; Pokedex number
	db 15 ; level
	db 2, 7 ; length
	dw 43 * 10 ; weight
	tx PsyduckDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

FroslassCard:
	db TYPE_PKMN_WATER ; type
	gfx GolduckCardGfx ; gfx
	tx FroslassName ; name
	db DIAMOND ; rarity
	db LABORATORY | FOSSIL ; sets
	dw FROSLASS
	db 50 ; hp
	db STAGE1 ; stage
	tx SnoruntName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx FreezingShroudName ; name
	tx FreezingShroudDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw FroslassFreezingShroudEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx FrostSmashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx PsyshockName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw GolduckPsyshockEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PSYCHIC_HIT ; animation

	; ; attack 2
	; energy WATER, 2, COLORLESS, 1 ; energies
	; tx HyperBeamName ; name
	; tx Discard1EnergyFromTargetDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw GolduckHyperBeamEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_HYPER_BEAM ; animation

	db 1 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx DuckName ; category
	db 55 ; Pokedex number
	db 27 ; level
	db 5, 7 ; length
	dw 169 * 10 ; weight
	tx GolduckDescription ; description
	db AI_INFO_UNK_03 ; AI info

FroakieCard:
	db TYPE_PKMN_WATER ; type
	gfx PoliwagCardGfx ; gfx
	tx FroakieName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw FROAKIE
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx RainSplashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy WATER, 1 ; energies
	; tx WaterGunName ; name
	; tx PoliwagsWaterGunDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_PLUS ; category
	; dw PoliwagWaterGunEffectCommands ; effect commands
	; db NONE ; flags 1
	; db ATTACHED_ENERGY_BOOST ; flags 2
	; db NONE ; flags 3
	; db MAX_ENERGY_BOOST_IS_LIMITED
	; db ATK_ANIM_WATER_GUN ; animation

	; ; attack 2
	; energy 0 ; energies
	; dw NONE ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx TadpoleName ; category
	db 60 ; Pokedex number
	db 13 ; level
	db 2, 0 ; length
	dw 27 * 10 ; weight
	tx PoliwagDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

FrogadierCard:
	db TYPE_PKMN_WATER ; type
	gfx PoliwhirlCardGfx ; gfx
	tx FrogadierName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw FROGADIER
	db 50 ; hp
	db STAGE1 ; stage
	tx FroakieName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx WaveSplashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SinistchaCursedDropEffectCommands;NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy WATER, 2 ; energies
	; tx AmnesiaName ; name
	; tx PoliwhirlsAmnesiaDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PoliwhirlAmnesiaEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_AMNESIA ; animation

	; ; attack 2
	; energy WATER, 2, COLORLESS, 1 ; energies
	; tx DoubleslapName ; name
	; tx DoubleAttackX30Description ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_X ; category
	; dw PoliwhirlDoubleslapEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx TadpoleName ; category
	db 61 ; Pokedex number
	db 28 ; level
	db 3, 4 ; length
	dw 44 * 10 ; weight
	tx PoliwhirlsDescription ; description
	db HAS_EVOLUTION ; AI info

GreninjaExCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx PoliwrathCardGfx ; gfx
	tx GreninjaExName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw GRENINJA_EX
	db 160 ; hp
	db STAGE2 ; stage
	tx FrogadierName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx ShinobiBladeName ; name
	tx ShinobiBladeDescription ; description
	dw NONE ; description (cont)
	db 90 ; damage
	db DAMAGE_NORMAL ; category
	dw GreninjaExShinobiBladeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 2 ; energies
	tx MirageBarrageName ; name
	tx MirageBarrageDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw GreninjaExMirageBarrageEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 6
	db NONE;ATK_ANIM_WATER_GUN ; animation

	; attack 1
	; energy WATER, 2, COLORLESS, 1 ; energies
	; tx WaterGunName ; name
	; tx PoliwrathsWaterGunDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_PLUS ; category
	; dw PoliwrathWaterGunEffectCommands ; effect commands
	; db NONE ; flags 1
	; db ATTACHED_ENERGY_BOOST ; flags 2
	; db NONE ; flags 3
	; db MAX_ENERGY_BOOST_IS_LIMITED
	; db ATK_ANIM_WATER_GUN ; animation

	; ; attack 2
	; energy WATER, 2, COLORLESS, 2 ; energies
	; tx WhirlpoolName ; name
	; tx Discard1EnergyFromTargetDescription ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PoliwrathWhirlpoolEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_WHIRLPOOL ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx TadpoleName ; category
	db 62 ; Pokedex number
	db 50 ; level
	db 4, 3 ; length
	dw 119 * 10 ; weight
	tx PoliwrathDescription ; description
	db 0 ; AI info

FinneonCard:
	db TYPE_PKMN_WATER ; type
	gfx TentacoolCardGfx ; gfx
	tx FinneonName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw FINNEON
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx OceanicAccompanimentName ; name
	tx OceanicAccompanimentDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw FinneonOceanicAccompanimentEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy WATER, 1 ; energies
	tx WaterGunName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WATER_JETS ; animation

	; attack 1
	; energy 0 ; energies
	; tx CowardiceName ; name
	; tx CowardiceDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw TentacoolCowardiceEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy WATER, 1 ; energies
	; tx AcidName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_GOO ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx JellyfishName ; category
	db 72 ; Pokedex number
	db 10 ; level
	db 2, 11 ; length
	dw 100 * 10 ; weight
	tx TentacoolDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

LumineonCard:
	db TYPE_PKMN_WATER ; type
	gfx TentacruelCardGfx ; gfx
	tx LumineonName ; name
	db DIAMOND ; rarity
	db LABORATORY | FOSSIL ; sets
	dw LUMINEON
	db 40 ; hp
	db STAGE1 ; stage
	tx FinneonName ; pre-evo name

	; attack 1
	energy WATER, 2 ; energies
	tx AquaLinerName ; name
	tx AquaLinerDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw LumineonAquaLinerEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_THUNDER_WHOLE_SCREEN ; animation TODO change animation to ??

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy WATER, 1 ; energies
	; tx SupersonicName ; name
	; tx MayInflictConfusionDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw TentacruelSupersonicEffectCommands ; effect commands
	; db INFLICT_CONFUSION ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SUPERSONIC ; animation

	; ; attack 2
	; energy WATER, 2 ; energies
	; tx JellyfishStingName ; name
	; tx InflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw TentacruelJellyfishStingEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_MULTIPLE_SLASH ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx JellyfishName ; category
	db 73 ; Pokedex number
	db 21 ; level
	db 5, 3 ; length
	dw 121 * 10 ; weight
	tx TentacruelDescription ; description
	db 0 ; AI info

MeltanCard:
	db TYPE_PKMN_METAL ; type
	gfx SeelCardGfx ; gfx
	tx MeltanName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw MELTAN
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy METAL, 2 ; energies
	tx HeadbuttName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; ; attack 1
	; energy WATER, 1 ; energies
	; tx HeadbuttName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx SeaLionName ; category
	db 86 ; Pokedex number
	db 12 ; level
	db 3, 7 ; length
	dw 198 * 10 ; weight
	tx SeelDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

MelmetalExCard:
	db TYPE_PKMN_METAL ; type
	gfx DewgongCardGfx ; gfx
	tx MelmetalExName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw MELMETAL_EX
	db 150 ; hp
	db STAGE1 ; stage
	tx MeltanName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx MetalBolizeName ; name
	tx MetalBolizeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MelmetalExMetalBolizeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx FullMetalKnuckleName ; name
	tx FullMetalKnuckleDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw MelmetalExFullMetalKnuckleEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_NOT_LIMITED
	db ATK_ANIM_WATER_GUN ; animation

	; attack 1
	; energy WATER, 2, COLORLESS, 1 ; energies
	; tx AuroraBeamName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_BEAM ; animation

	; ; attack 2
	; energy WATER, 2, COLORLESS, 2 ; energies
	; tx IceBeamName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw DewgongIceBeamEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_BEAM ; animation

	db 4 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx SeaLionName ; category
	db 87 ; Pokedex number
	db 50 ; level
	db 5, 7 ; length
	dw 265 * 10 ; weight
	tx DewgongDescription ; description
	db 0 ; AI info

WimpodCard:
	db TYPE_PKMN_WATER ; type
	gfx ShellderCardGfx ; gfx
	tx WimpodName ; name
	db CIRCLE ; rarity
	db MYSTERY | FOSSIL ; sets
	dw WIMPOD
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1; energies
	tx HideName ; name
	tx SwimFreelyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SwimFreelyEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx GnawName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; ; attack 1
	; energy WATER, 1 ; energies
	; tx SupersonicName ; name
	; tx MayInflictConfusionDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ShellderSupersonicEffectCommands ; effect commands
	; db INFLICT_CONFUSION ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SUPERSONIC ; animation

	; ; attack 2
	; energy WATER, 1 ; energies
	; tx HideInShellName ; name
	; tx HideInShellDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw ShellderHideInShellEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx BivalveName ; category
	db 90 ; Pokedex number
	db 8 ; level
	db 1, 0 ; length
	dw 9 * 10 ; weight
	tx ShellderDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

GolisopodExCard:
	db TYPE_PKMN_WATER ; type
	gfx CloysterCardGfx ; gfx
	tx GolisopodExName ; name
	db DIAMOND ; rarity
	db MYSTERY | FOSSIL ; sets
	dw GOLISOPOD_EX
	db 140 ; hp
	db STAGE1 ; stage
	tx WimpodName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx AquaBladeName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 2 ; energies
	tx SwingAndSkedaddleName ; name
	tx SwingAndSkedaddleDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw GolisopodExSwingAndSkedaddleEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	; attack 1
	; energy WATER, 2 ; energies
	; tx ClampName ; name
	; tx ClampDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw CloysterClampEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	; ; attack 2
	; energy WATER, 2 ; energies
	; tx SpikeCannonName ; name
	; tx DoubleAttackX30Description ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_X ; category
	; dw CloysterSpikeCannonEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NEEDLES ; animation

	db 3 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx BivalveName ; category
	db 91 ; Pokedex number
	db 50 ; level
	db 4, 11 ; length
	dw 292 * 10 ; weight
	tx CloysterDescription ; description
	db 0 ; AI info

DrilburCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx KrabbyCardGfx ; gfx
	tx DrilburName ; name
	db CIRCLE ; rarity
	db EVOLUTION | FOSSIL ; sets
	dw DRILBUR
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx MudSlapName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy FIGHTING, 2 ; energies
	tx CorkscrewPunchName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy WATER, 1 ; energies
	; tx CallForFamilyName ; name
	; tx KrabbysCallForFamilyDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw KrabbyCallForFamilyEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy WATER, 1, COLORLESS, 1 ; energies
	; tx IronGripName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx RiverCrabName ; category
	db 98 ; Pokedex number
	db 20 ; level
	db 1, 4 ; length
	dw 14 * 10 ; weight
	tx KrabbyDescription ; description
	db HAS_EVOLUTION ; AI info

ExcadrillExCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx KinglerCardGfx ; gfx
	tx ExcadrillExName ; name
	db DIAMOND ; rarity
	db EVOLUTION | FOSSIL ; sets
	dw EXCADRILL_EX
	db 140 ; hp
	db STAGE1 ; stage
	tx DrilburName ; pre-evo name

	; attack 1
	energy FIGHTING, 2 ; energies
	tx PiercingDrillName ; name
	tx PiercingDrillDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw ExcadrillExPiercingDrillEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_THUNDER_WHOLE_SCREEN ; animation

	; attack 1
	energy FIGHTING, 3 ; energies
	tx RockTumbleName ; name
	tx SonicboomDescription ; description
	dw NONE ; description (cont)
	db 100 ; damage
	db DAMAGE_NORMAL ; category
	dw MagnetonSonicboomEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SONICBOOM ; animation

	; attack 1
	; energy WATER, 1 ; energies
	; tx FlailName ; name
	; tx KinglersFlailDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_X ; category
	; dw KinglerFlailEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db BOOST_IF_TAKEN_DAMAGE ; flags 3
	; db 0
	; db ATK_ANIM_BIG_HIT ; animation

	; ; attack 2
	; energy WATER, 2, COLORLESS, 1 ; energies
	; tx CrabhammerName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 3 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx PincerName ; category
	db 99 ; Pokedex number
	db 50 ; level
	db 4, 3 ; length
	dw 132 * 10 ; weight
	tx KinglerDescription ; description
	db 0 ; AI info

HorseaCard:
	db TYPE_PKMN_WATER ; type
	gfx HorseaCardGfx ; gfx
	tx HorseaName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw HORSEA
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx SmokescreenName ; name
	tx OpponentAttackMayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw HorseaSmokescreenEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_GAS ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx DragonName ; category
	db 116 ; Pokedex number
	db 19 ; level
	db 1, 4 ; length
	dw 18 * 10 ; weight
	tx HorseaDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

SeadraCard:
	db TYPE_PKMN_WATER ; type
	gfx SeadraCardGfx ; gfx
	tx SeadraName ; name
	db DIAMOND ; rarity
	db LABORATORY | FOSSIL ; sets
	dw SEADRA
	db 40 ; hp
	db STAGE1 ; stage
	tx HorseaName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx SwimFreelyName ; name
	tx SwimFreelyDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SwimFreelyEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WATER_GUN ; animation

	; attack 2
	energy WATER, 1 ; energies
	tx HydroJetName ; name
	tx HydroJetDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SeadraHydroJetEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_NOT_LIMITED
	db ATK_ANIM_STRETCH_KICK ; animation

	; attack 1
	; energy WATER, 1, COLORLESS, 1 ; energies
	; tx WaterGunName ; name
	; tx SeadrasWaterGunDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_PLUS ; category
	; dw SeadraWaterGunEffectCommands ; effect commands
	; db NONE ; flags 1
	; db ATTACHED_ENERGY_BOOST ; flags 2
	; db NONE ; flags 3
	; db MAX_ENERGY_BOOST_IS_LIMITED
	; db ATK_ANIM_WATER_GUN ; animation

	; ; attack 2
	; energy WATER, 1, COLORLESS, 2 ; energies
	; tx AgilityName ; name
	; tx SeadrasAgilityDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw SeadraAgilityEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_QUICK_ATTACK ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx DragonName ; category
	db 117 ; Pokedex number
	db 23 ; level
	db 3, 1 ; length
	dw 55 * 10 ; weight
	tx SeadraDescription ; description
	db 0 ; AI info

GoldeenCard:
	db TYPE_PKMN_WATER ; type
	gfx GoldeenCardGfx ; gfx
	tx GoldeenName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | JUNGLE ; sets
	dw GOLDEEN
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx CollectName ; name
	tx CollectDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw GoldeenCollectEffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx WaterfallName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; ; attack 1
	; energy WATER, 1 ; energies
	; tx HornAttackName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy 0 ; energies
	; dw NONE ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx GoldfishName ; category
	db 118 ; Pokedex number
	db 12 ; level
	db 2, 0 ; length
	dw 33 * 10 ; weight
	tx GoldeenDescription ; description
	db AI_INFO_UNK_05 | HAS_EVOLUTION ; AI info

SeakingCard:
	db TYPE_PKMN_WATER ; type
	gfx SeakingCardGfx ; gfx
	tx SeakingName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | JUNGLE ; sets
	dw SEAKING
	db 60 ; hp
	db STAGE1 ; stage
	tx GoldeenName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx SwimFreelyName ; name
	tx SwimFreelyDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SwimFreelyEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WATER_GUN ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx AquaHornName ; name
	tx AquaHornDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw SeakingAquaHornEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_NOT_LIMITED
	db ATK_ANIM_WATER_GUN ; animation

	; attack 1
	; energy WATER, 1 ; energies
	; tx HornAttackName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy WATER, 1, COLORLESS, 1 ; energies
	; tx WaterfallName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_WATER_JETS ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx GoldfishName ; category
	db 119 ; Pokedex number
	db 28 ; level
	db 4, 3 ; length
	dw 86 * 10 ; weight
	tx SeakingDescription ; description
	db 0 ; AI info

VaroomCard:
	db TYPE_PKMN_METAL ; type
	gfx StaryuCardGfx ; gfx
	tx VaroomName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw VAROOM
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx SpinningDrawName ; name
	tx CollectDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw GoldeenCollectEffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; ; attack 1
	; energy WATER, 1 ; energies
	; tx SlapName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx StarshapeName ; category
	db 120 ; Pokedex number
	db 15 ; level
	db 2, 7 ; length
	dw 76 * 10 ; weight
	tx StaryuDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

RevavroomCard:
	db TYPE_PKMN_METAL ; type
	gfx StarmieCardGfx ; gfx
	tx RevavroomName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw REVAVROOM
	db 70 ; hp
	db STAGE1 ; stage
	tx VaroomName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx RumblingEngineName ; name
	tx RumblingEngineDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw RevavroomRumblingEngineEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy METAL, 1, COLORLESS, 3 ; energies
	tx KnockAwayName ; name
	tx KnockAwayDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw RevavroomKnockAwayEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 1
	; energy WATER, 2 ; energies
	; tx RecoverName ; name
	; tx StarmiesRecoverDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw StarmieRecoverEffectCommands ; effect commands
	; db NONE ; flags 1
	; db DISCARD_ENERGY ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_RECOVER ; animation

	; ; attack 2
	; energy WATER, 1, COLORLESS, 2 ; energies
	; tx StarFreezeName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw StarmieStarFreezeEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_BEAM ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx MysteriousName ; category
	db 121 ; Pokedex number
	db 28 ; level
	db 3, 7 ; length
	dw 176 * 10 ; weight
	tx StarmieDescription ; description
	db 0 ; AI info

WailmerCard:
	db TYPE_PKMN_WATER ; type
	gfx MagikarpCardGfx ; gfx
	tx WailmerName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw WAILMER
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 3 ; energies
	tx SurfName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WATER_JETS ; animation


	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; ; attack 1
	; energy COLORLESS, 1 ; energies
	; tx TackleName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy WATER, 1 ; energies
	; tx FlailName ; name
	; tx MagikarpsFlailDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_X ; category
	; dw MagikarpFlailEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db BOOST_IF_TAKEN_DAMAGE ; flags 3
	; db 0
	; db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx FishName ; category
	db 129 ; Pokedex number
	db 8 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx MagikarpDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

WailordCard:
	db TYPE_PKMN_WATER ; type
	gfx GyaradosCardGfx ; gfx
	tx WailordName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw WAILORD
	db 120 ; hp
	db STAGE1 ; stage
	tx WailmerName ; pre-evo name

	; attack 1
	energy COLORLESS, 4 ; energies
	tx HydroPumpName ; name
	tx HydroPumpDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw WailordHydroPumpEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_NOT_LIMITED
	db ATK_ANIM_WATER_GUN ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy WATER, 3 ; energies
	; tx DragonRageName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_DRAGON_RAGE ; animation

	; ; attack 2
	; energy WATER, 4 ; energies
	; tx BubblebeamName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw GyaradosBubblebeamEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_BUBBLES ; animation

	db 4 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx AtrociousName ; category
	db 130 ; Pokedex number
	db 41 ; level
	db 21, 4 ; length
	dw 518 * 10 ; weight
	tx GyaradosDescription ; description
	db 0 ; AI info

LaprasCard:
	db TYPE_PKMN_WATER ; type
	gfx LaprasCardGfx ; gfx
	tx LaprasName ; name
	db STAR ; rarity
	db MYSTERY | FOSSIL ; sets
	dw LAPRAS
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx WaterGunName ; name
	tx LaprasWaterGunDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw LaprasWaterGunEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_LIMITED
	db ATK_ANIM_WATER_GUN ; animation

	; attack 2
	energy WATER, 2 ; energies
	tx ConfuseRayName ; name
	tx MayInflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw LaprasConfuseRayEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_CONFUSE_RAY ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx TransportName ; category
	db 131 ; Pokedex number
	db 31 ; level
	db 8, 2 ; length
	dw 485 * 10 ; weight
	tx LaprasDescription ; description
	db 0 ; AI info

VaporeonLv29Card:
	db TYPE_PKMN_WATER ; type
	gfx VaporeonLv29CardGfx ; gfx
	tx VaporeonName ; name
	db DIAMOND ; rarity
	db MYSTERY | GB ; sets
	dw VAPOREON_LV29
	db 60 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx FocusEnergyName ; name
	tx FocusEnergyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw VaporeonFocusEnergyEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx BiteName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx BubbleJetName ; category
	db 134 ; Pokedex number
	db 29 ; level
	db 3, 3 ; length
	dw 64 * 10 ; weight
	tx VaporeonLv29Description ; description
	db 0 ; AI info

FrigibaxCard:
	db TYPE_PKMN_WATER ; type
	gfx VaporeonLv42CardGfx ; gfx
	tx FrigibaxName ; name
	db STAR ; rarity
	db EVOLUTION | JUNGLE ; sets
	dw FRIGIBAX
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx TackleName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx QuickAttackName ; name
	; tx QuickAttackDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_PLUS ; category
	; dw VaporeonQuickAttackEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_QUICK_ATTACK ; animation

	; ; attack 2
	; energy WATER, 2, COLORLESS, 1 ; energies
	; tx WaterGunName ; name
	; tx VaporeonsWaterGunDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_PLUS ; category
	; dw VaporeonWaterGunEffectCommands ; effect commands
	; db NONE ; flags 1
	; db ATTACHED_ENERGY_BOOST ; flags 2
	; db NONE ; flags 3
	; db MAX_ENERGY_BOOST_IS_LIMITED
	; db ATK_ANIM_WATER_GUN ; animation

	db 1 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx BubbleJetName ; category
	db 134 ; Pokedex number
	db 42 ; level
	db 3, 3 ; length
	dw 64 * 10 ; weight
	tx VaporeonLv42Description ; description
	db HAS_EVOLUTION ; AI info

ArctibaxCard:
	db TYPE_PKMN_WATER ; type
	gfx OmanyteCardGfx ; gfx
	tx ArctibaxName ; name
	db CIRCLE ; rarity
	db MYSTERY | FOSSIL ; sets
	dw ARCTIBAX
	db 50 ; hp
	db STAGE1 ; stage
	tx FrigibaxName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx SharpFinName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 1 ; energies
	tx FrostSmashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy 0 ; energies
	; tx ClairvoyanceName ; name
	; tx ClairvoyanceDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw OmanyteClairvoyanceEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy WATER, 1 ; energies
	; tx WaterGunName ; name
	; tx OmanytesWaterGunDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_PLUS ; category
	; dw OmanyteWaterGunEffectCommands ; effect commands
	; db NONE ; flags 1
	; db ATTACHED_ENERGY_BOOST ; flags 2
	; db NONE ; flags 3
	; db MAX_ENERGY_BOOST_IS_LIMITED
	; db ATK_ANIM_WATER_GUN ; animation

	db 2 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx SpiralName ; category
	db 138 ; Pokedex number
	db 19 ; level
	db 1, 4 ; length
	dw 17 * 10 ; weight
	tx OmanyteDescription ; description
	db AI_INFO_BENCH_UTILITY | HAS_EVOLUTION ; AI info

BaxcaliburCard:
	db TYPE_PKMN_WATER ; type
	gfx OmastarCardGfx ; gfx
	tx BaxcaliburName ; name
	db DIAMOND ; rarity
	db MYSTERY | FOSSIL ; sets
	dw BAXCALIBUR
	db 80 ; hp
	db STAGE2 ; stage
	tx ArctibaxName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SuperColdName ; name
	tx RainDanceDescription ; description
	tx RainDanceDescriptionCont ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw BaxcaliburSuperColdEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 1 ; energies
	tx BusterTailName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy WATER, 1, COLORLESS, 1 ; energies
	; tx WaterGunName ; name
	; tx OmastarsWaterGunDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_PLUS ; category
	; dw OmastarWaterGunEffectCommands ; effect commands
	; db NONE ; flags 1
	; db ATTACHED_ENERGY_BOOST ; flags 2
	; db NONE ; flags 3
	; db MAX_ENERGY_BOOST_IS_LIMITED
	; db ATK_ANIM_WATER_GUN ; animation

	; ; attack 2
	; energy WATER, 2 ; energies
	; tx SpikeCannonName ; name
	; tx DoubleAttackX30Description ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_X ; category
	; dw OmastarSpikeCannonEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NEEDLES ; animation

	db 2 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx SpiralName ; category
	db 139 ; Pokedex number
	db 32 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx OmastarDescription ; description
	db 0 ; AI info

YveltalCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ArticunoLv35CardGfx ; gfx
	tx YveltalName ; name
	db STAR ; rarity
	db MYSTERY | FOSSIL ; sets
	dw YVELTAL
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx ClutchName ; name
	tx NoRetreatDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokExBindDownEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_GOO ; animation

	; attack 1
	energy DARKNESS, 2, COLORLESS, 1 ; energies
	tx DarkFeatherName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy WATER, 3 ; energies
	; tx FreezeDryName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ArticunoFreezeDryEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_BEAM ; animation

	; ; attack 2
	; energy WATER, 4 ; energies
	; tx BlizzardName ; name
	; tx BlizzardDescription ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ArticunoBlizzardEffectCommands ; effect commands
	; db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 10
	; db ATK_ANIM_BLIZZARD ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx FreezeName ; category
	db 144 ; Pokedex number
	db 35 ; level
	db 5, 7 ; length
	dw 122 * 10 ; weight
	tx ArticunoLv35Description ; description
	db 0 ; AI info

WellspringOgerponExCard:
	db TYPE_PKMN_WATER ; type
	gfx ArticunoLv37CardGfx ; gfx
	tx WellspringOgerponExName ; name
	db STAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw WELLSPRING_OGERPON_EX
	db 110 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx SobName ; name
	tx NoRetreatDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokExBindDownEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_THUNDERPUNCH ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 2 ; energies
	tx TorrentialPumpName ; name
	tx TorrentialPumpDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw WellspringMaskOgerponExTorrentialPumpEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 6
	db ATK_ANIM_WATER_GUN ; animation

	; attack 1
	; energy 0 ; energies
	; tx QuickfreezeName ; name
	; tx QuickfreezeDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw ArticunoQuickfreezeEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_QUICKFREEZE ; animation

	; ; attack 2
	; energy WATER, 3 ; energies
	; tx IceBreathName ; name
	; tx IceBreathDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw ArticunoIceBreathEffectCommands ; effect commands
	; db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_WHIRLWIND_ZIGZAG ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx FreezeName ; category
	db 144 ; Pokedex number
	db 50 ; level
	db 5, 7 ; length
	dw 122 * 10 ; weight
	tx ArticunoLv37Description ; description
	db 0 ; AI info

EmolgaCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx PikachuLv12CardGfx ; gfx
	tx EmolgaName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw EMOLGA
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx SkyWaveName ; name
	tx SkyWaveDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw EmolgaSkyWaveEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; ; attack 1
	; energy COLORLESS, 1 ; energies
	; tx GnawName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy LIGHTNING, 1, COLORLESS, 1 ; energies
	; tx ThunderJoltName ; name
	; tx ThunderJoltDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PikachuThunderJoltEffectCommands ; effect commands
	; db LOW_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_THUNDERSHOCK ; animation

	db 0 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 25 ; Pokedex number
	db 12 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx PikachuLv12Description ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

PoltchageistCard:
	db TYPE_PKMN_GRASS ; type
	gfx PikachuLv14CardGfx ; gfx
	tx PoltchageistName ; name
	db CIRCLE ; rarity
	db MYSTERY | JUNGLE ; sets
	dw SINISTCHA
	db 20 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx SurpriseAttackName ; name
	tx MayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw JoltikSurpriseAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation
	
	; attack 1
	; energy LIGHTNING, 2 ; energies
	; tx SparkName ; name
	; tx SparkDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PikachuSparkEffectCommands ; effect commands
	; db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 10
	; db ATK_ANIM_THUNDER_WHOLE_SCREEN ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 25 ; Pokedex number
	db 14 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx PikachuLv14Description ; description
	db HAS_EVOLUTION ; AI info

JoltikCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx PikachuLv16CardGfx ; gfx
	tx JoltikName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw JOLTIK
	db 20 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx SurpriseAttackName ; name
	tx MayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw JoltikSurpriseAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation	

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx GrowlName ; name
	; tx GrowlDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PikachuLv16GrowlEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 10
	; db ATK_ANIM_SUPERSONIC ; animation

	; ; attack 2
	; energy LIGHTNING, 2 ; energies
	; tx ThundershockName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PikachuLv16ThundershockEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_THUNDERSHOCK ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 25 ; Pokedex number
	db 16 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx PikachuLv16Description ; description
	db HAS_EVOLUTION ; AI info

PikachuAltLv16Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx PikachuAltLv16CardGfx ; gfx
	tx PikachuName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw PIKACHU_ALT_LV16
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx GrowlName ; name
	tx GrowlDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw PikachuAltLv16GrowlEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_SUPERSONIC ; animation

	; attack 2
	energy LIGHTNING, 2 ; energies
	tx ThundershockName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PikachuAltLv16ThundershockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSHOCK ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 25 ; Pokedex number
	db 16 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx PikachuLv16Description ; description
	db HAS_EVOLUTION ; AI info

PikachuExCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx FlyingPikachuCardGfx ; gfx
	tx PikachuExName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw PIKACHU_EX
	db 100 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ResoluteHeartName ; name
	tx ResoluteHeartDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw PikachuExResoluteHeartEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy GRASS, 1, LIGHTNING, 1, FIGHTING, 1 ; energies
	tx TopazBoltName ; name
	tx DiscardAllEnergyDescription ; description
	dw NONE ; description (cont)
	db 150 ; damage
	dw DAMAGE_NORMAL ; category
	dw ZapdosThunderBoltEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_THUNDER ; animation

	; attack 1
	; energy LIGHTNING, 1 ; energies
	; tx ThundershockName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw FlyingPikachuThundershockEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_THUNDERSHOCK ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx FlyName ; name
	; tx FlyDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw FlyingPikachuFlyEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_QUICK_ATTACK ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 25 ; Pokedex number
	db 50 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx FlyingPikachuDescription ; description
	db 0;AI_INFO_UNK_03 ; AI info

ZeraoraCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx SurfingPikachuLv13CardGfx ; gfx
	tx ZeraoraName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw ZERAORA
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 2
	energy COLORLESS, 1 ; energies
	tx ScratchName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	energy LIGHTNING, 3 ; energies
	tx ThunderRaidName ; name
	tx ThunderRaidDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ZeraoraThunderRaidEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_CAT_PUNCH ; animation

	; attack 1
	; energy WATER, 2 ; energies
	; tx SurfName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_WATER_JETS ; animation

	; ; attack 2
	; energy 0 ; energies
	; dw NONE ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 25 ; Pokedex number
	db 13 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx SurfingPikachuDescription ; description
	db 0 ; AI info

SurfingPikachuAltLv13Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx SurfingPikachuAltLv13CardGfx ; gfx
	tx SurfingPikachuName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw SURFING_PIKACHU_ALT_LV13
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 2 ; energies
	tx SurfName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WATER_JETS ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 25 ; Pokedex number
	db 13 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx SurfingPikachuDescription ; description
	db 0 ; AI info

GalvantulaExCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx RaichuLv40CardGfx ; gfx
	tx GalvantulaExName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw GALVANTULA_EX
	db 130 ; hp
	db STAGE1 ; stage
	tx JoltikName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx ChargedWebName ; name
	tx ChargedWebDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw GalvantulaExChargedWebEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy GRASS, 1, LIGHTNING, 1, FIGHTING, 1 ; energies
	tx FulguriteName ; name
	tx FulguriteDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy LIGHTNING, 1, COLORLESS, 2 ; energies
	; tx AgilityName ; name
	; tx RaichusAgilityDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw RaichuAgilityEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_QUICK_ATTACK ; animation

	; ; attack 2
	; energy LIGHTNING, 3, COLORLESS, 1 ; energies
	; tx ThunderName ; name
	; tx RaichusThunderDescription ; description
	; dw NONE ; description (cont)
	; db 60 ; damage
	; db DAMAGE_NORMAL ; category
	; dw RaichuThunderEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_THUNDER ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 26 ; Pokedex number
	db 50 ; level
	db 2, 7 ; length
	dw 66 * 10 ; weight
	tx RaichuLv40Description ; description
	db 0 ; AI info

SinistchaCard:
	db TYPE_PKMN_GRASS ; type
	gfx RaichuLv45CardGfx ; gfx
	tx SinistchaName ; name
	db STAR ; rarity
	db MYSTERY | FOSSIL ; sets
	dw SINISTCHA
	db 40 ; hp
	db STAGE1 ; stage
	tx PoltchageistName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx CursedDropName ; name
	tx CursedDropDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SinistchaCursedDropEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy GRASS, 1 ; energies
	tx SpillTheTeaName ; name
	tx SpillTheTeaDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_X ; category
	dw SinistchaSpillTheTeaEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_POISON_WHIP ; animation

	; attack 1
	; energy LIGHTNING, 4 ; energies
	; tx GigashockName ; name
	; tx GigashockDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw RaichuGigashockEffectCommands ; effect commands
	; db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 10
	; db ATK_ANIM_THUNDER_WHOLE_SCREEN ; animation

	; ; attack 2
	; energy 0 ; energies
	; dw NONE ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 26 ; Pokedex number
	db 45 ; level
	db 2, 7 ; length
	dw 66 * 10 ; weight
	tx RaichuLv45Description ; description
	db 0 ; AI info

WattrelCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx MagnemiteLv13CardGfx ; gfx
	tx WattrelName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw WATTREL
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx PeckName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	energy COLORLESS, 2 ; energies
	tx UnitedWingsName ; name
	tx UnitedWingsDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw UnitedWingsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy LIGHTNING, 1 ; energies
	; tx ThunderWaveName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MagnemiteThunderWaveEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_THUNDER_WAVE ; animation

	; ; attack 2
	; energy LIGHTNING, 1, COLORLESS, 1 ; energies
	; tx SelfdestructName ; name
	; tx MagnemitesSelfdestructDescription ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MagnemiteSelfdestructEffectCommands ; effect commands
	; db HIGH_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 40
	; db ATK_ANIM_SELFDESTRUCT ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx MagnetName ; category
	db 81 ; Pokedex number
	db 13 ; level
	db 1, 0 ; length
	dw 13 * 10 ; weight
	tx MagnemiteLv13Description ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

TynamoCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx MagnemiteLv15CardGfx ; gfx
	tx TynamoName ; name
	db CIRCLE ; rarity
	db LABORATORY | GB ; sets
	dw TYNAMO
	db 20 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx HoldStillName ; name
	tx BulbasaursLeechSeedDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation	

	; attack 2
	; energy LIGHTNING, 1, COLORLESS, 1 ; energies
	; tx MagneticStormName ; name
	; tx MagneticStormDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw MagnemiteMagneticStormEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_5 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_MAGNETIC_STORM ; animation

	db 0 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MagnetName ; category
	db 81 ; Pokedex number
	db 15 ; level
	db 1, 0 ; length
	dw 13 * 10 ; weight
	tx MagnemiteLv15Description ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

KilowattrelCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx MagnetonLv28CardGfx ; gfx
	tx KilowattrelName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw KILOWATTREL
	db 60 ; hp
	db STAGE1 ; stage
	tx WattrelName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx UnitedThunderName ; name
	tx UnitedThunderDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw KilowattrelUnitedThunderEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PEAL_OF_THUNDER ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 2 ; energies
	tx SpeedWingName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSHOCK ; animation

	; attack 1
	; energy LIGHTNING, 2, COLORLESS, 1 ; energies
	; tx ThunderWaveName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MagnetonThunderWaveEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_THUNDER_WAVE ; animation

	; ; attack 2
	; energy LIGHTNING, 2, COLORLESS, 2 ; energies
	; tx SelfdestructName ; name
	; tx MagnetonLv28sSelfdestructDescription ; description
	; dw NONE ; description (cont)
	; db 80 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MagnetonLv28SelfdestructEffectCommands ; effect commands
	; db HIGH_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 80
	; db ATK_ANIM_BIG_SELFDESTRUCTION ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx MagnetName ; category
	db 82 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 132 * 10 ; weight
	tx MagnetonLv28Description ; description
	db 0 ; AI info

EelektrikCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx MagnetonLv35CardGfx ; gfx
	tx EelektrikName ; name
	db STAR ; rarity
	db LABORATORY | FOSSIL ; sets
	dw EELEKTRIK
	db 50 ; hp
	db STAGE1 ; stage
	tx TynamoName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DynamotorName ; name
	tx DynamotorDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw EelektrikDynamotorEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
	tx ElectricBallName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSHOCK ; animation

	; attack 1
	; energy LIGHTNING, 1, COLORLESS, 1 ; energies
	; tx SonicboomName ; name
	; tx SonicboomDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MagnetonSonicboomEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SONICBOOM ; animation

	; ; attack 2
	; energy LIGHTNING, 4 ; energies
	; tx SelfdestructName ; name
	; tx MagnetonLv35sSelfdestructDescription ; description
	; dw NONE ; description (cont)
	; db 100 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MagnetonLv35SelfdestructEffectCommands ; effect commands
	; db HIGH_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 100
	; db ATK_ANIM_BIG_SELFDESTRUCTION ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MagnetName ; category
	db 82 ; Pokedex number
	db 35 ; level
	db 3, 3 ; length
	dw 132 * 10 ; weight
	tx MagnetonLv35Description ; description
	db 0 ; AI info

ShinxCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx VoltorbCardGfx ; gfx
	tx ShinxName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw SHINX
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx DoubleScratchName ; name
	tx DoubleAttackX10Description ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw SandshrewDoubleScratchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx TackleName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx BallName ; category
	db 100 ; Pokedex number
	db 10 ; level
	db 1, 8 ; length
	dw 23 * 10 ; weight
	tx VoltorbDescription ; description
	db AI_INFO_UNK_05 | HAS_EVOLUTION ; AI info

LuxioCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectrodeLv35CardGfx ; gfx
	tx LuxioName ; name
	db STAR ; rarity
	db LABORATORY | GB ; sets
	dw LUXIO
	db 50 ; hp
	db STAGE1 ; stage
	tx ShinxName ; pre-evo name

	; attack 1
	energy LIGHTNING, 2 ; energies
	tx BigBiteName ; name
	tx NoRetreatDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokExBindDownEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_THUNDERPUNCH ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy LIGHTNING, 2 ; energies
	; tx SonicboomName ; name
	; tx SonicboomDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ElectrodeSonicboomEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SONICBOOM ; animation

	; ; attack 2
	; energy LIGHTNING, 3 ; energies
	; tx EnergySpikeName ; name
	; tx EnergySpikeDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw ElectrodeEnergySpikeEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx BallName ; category
	db 101 ; Pokedex number
	db 35 ; level
	db 3, 11 ; length
	dw 147 * 10 ; weight
	tx ElectrodeLv35Description ; description
	db 0 ; AI info

LuxrayExCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectrodeLv42CardGfx ; gfx
	tx LuxrayExName ; name
	db STAR ; rarity
	db MYSTERY | JUNGLE ; sets
	dw LUXRAY_EX
	db 160 ; hp
	db STAGE2 ; stage
	tx LuxioName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx PiercingGazeName ; name
	tx PiercingGazeDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw LuxrayExPiercingGazeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy LIGHTNING, 2 ; energies
	tx VoltStrikeName ; name
	tx DiscardAllEnergyDescription ; description
	dw NONE ; description (cont)
	db 130 ; damage
	db DAMAGE_NORMAL ; category
	dw LuxrayExVoltStrikeEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_THUNDERPUNCH ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx TackleName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy LIGHTNING, 3 ; energies
	; tx ChainLightningName ; name
	; tx ChainLightningDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ElectrodeChainLightningEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_CHAIN_LIGHTNING ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx BallName ; category
	db 101 ; Pokedex number
	db 50 ; level
	db 3, 11 ; length
	dw 147 * 10 ; weight
	tx ElectrodeLv42Description ; description
	db 0 ; AI info

ElectabuzzLv20Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectabuzzLv20CardGfx ; gfx
	tx ElectabuzzName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw ELECTABUZZ_LV20
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx LightScreenName ; name
	tx LightScreenDescription ; description
	tx LightScreenDescriptionCont ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ElectabuzzLightScreenEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BARRIER ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx QuickAttackName ; name
	tx ElectabuzzsQuickAttackDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw ElectabuzzQuickAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ElectricName ; category
	db 125 ; Pokedex number
	db 20 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx ElectabuzzLv20Description ; description
	db 0 ; AI info

IronHandsExCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectabuzzLv35CardGfx ; gfx
	tx IronHandsExName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw IRON_HANDS_EX
	db 120 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
	tx ArmPressName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 80 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERPUNCH ; animation

	; attack 1
	energy LIGHTNING, 1, COLORLESS, 3 ; energies
	tx AmpYouVeryMuchName ; name
	tx AmpYouVeryMuchDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw IronHandsExAmpYouVeryMuchEffectCommands;NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERPUNCH ; animation


	; attack 1
	; energy LIGHTNING, 1 ; energies
	; tx ThundershockName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ElectabuzzThundershockEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_THUNDERSHOCK ; animation

	; ; attack 2
	; energy LIGHTNING, 1, COLORLESS, 1 ; energies
	; tx ThunderpunchName ; name
	; tx ThunderpunchDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_PLUS ; category
	; dw ElectabuzzThunderpunchEffectCommands ; effect commands
	; db LOW_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_THUNDERPUNCH ; animation

	db 4 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ElectricName ; category
	db 125 ; Pokedex number
	db 50 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx ElectabuzzLv35Description ; description
	db 0 ; AI info

JolteonLv24Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx JolteonLv24CardGfx ; gfx
	tx JolteonName ; name
	db DIAMOND ; rarity
	db MYSTERY | GB ; sets
	dw JOLTEON_LV24
	db 60 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx DoubleKickName ; name
	tx DoubleAttackX20Description ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw JolteonDoubleKickEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx StunNeedleName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw JolteonStunNeedleEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx LightningName ; category
	db 135 ; Pokedex number
	db 24 ; level
	db 2, 7 ; length
	dw 54 * 10 ; weight
	tx JolteonLv24Description ; description
	db 0 ; AI info

EspeonExCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx JolteonLv29CardGfx ; gfx
	tx EspeonExName ; name
	db STAR ; rarity
	db EVOLUTION | JUNGLE ; sets
	dw ESPEON_EX
	db 140 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1, COLORLESS, 2 ; energies
	tx PsychOutName ; name
	tx PsychOutDescription ; description
	dw NONE ; description (cont)
	db 80 ; damage
	db DAMAGE_NORMAL ; category
	dw EspeonExPsychOutEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 1
	energy GRASS, 1, PSYCHIC, 1, DARKNESS, 1 ; energies
	tx AmazezName ; name
	tx AmazezDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw EspeonExAmazezEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx QuickAttackName ; name
	; tx QuickAttackDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_PLUS ; category
	; dw JolteonQuickAttackEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_QUICK_ATTACK ; animation

	; ; attack 2
	; energy LIGHTNING, 2, COLORLESS, 1 ; energies
	; tx PinMissileName ; name
	; tx QuadrupleAttackX20Description ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_X ; category
	; dw JolteonPinMissileEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NEEDLES ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx LightningName ; category
	db 135 ; Pokedex number
	db 50 ; level
	db 2, 7 ; length
	dw 54 * 10 ; weight
	tx JolteonLv29Description ; description
	db 0 ; AI info

ZapdosLv40Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ZapdosLv40CardGfx ; gfx
	tx ZapdosName ; name
	db STAR ; rarity
	db MYSTERY | FOSSIL ; sets
	dw ZAPDOS_LV40
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx ThunderWaveName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ZapdosThunderWaveEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
	tx ThunderboltName ; name
	tx DiscardAllEnergyDescription ; description
	dw NONE ; description (cont)
	db 100 ; damage
	db DAMAGE_NORMAL ; category
	dw ZapdosThunderBoltEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_THUNDERSTORM ; animation

	; ; attack 1
	; energy LIGHTNING, 4 ; energies
	; tx ThunderstormName ; name
	; tx ThunderstormDescription ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ZapdosThunderstormEffectCommands ; effect commands
	; db LOW_RECOIL | DAMAGE_TO_OPPONENT_BENCH ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_THUNDERSTORM ; animation

	; ; attack 2
	; energy 0 ; energies
	; dw NONE ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx ElectricName ; category
	db 145 ; Pokedex number
	db 40 ; level
	db 5, 3 ; length
	dw 116 * 10 ; weight
	tx ZapdosLv40Description ; description
	db 0 ; AI info

ZekromExCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ZapdosLv64CardGfx ; gfx
	tx ZekromExName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw ZEKROM_EX
	db 120 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx SlashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
	tx VoltageBurstName ; name
	tx VoltageBurstDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_PLUS ; category
	dw ZekromExVoltageBurstEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERPUNCH ; animation

	; attack 1
	; energy LIGHTNING, 3, COLORLESS, 1 ; energies
	; tx ThunderName ; name
	; tx ZapdosThunderDescription ; description
	; dw NONE ; description (cont)
	; db 60 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ZapdosThunderEffectCommands ; effect commands
	; db LOW_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_THUNDER ; animation

	; ; attack 2
	; energy LIGHTNING, 4 ; energies
	; tx ThunderboltName ; name
	; tx ThunderboltDescription ; description
	; dw NONE ; description (cont)
	; db 100 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ZapdosThunderboltEffectCommands ; effect commands
	; db NONE ; flags 1
	; db DISCARD_ENERGY ; flags 2
	; db NONE ; flags 3
	; db 9
	; db ATK_ANIM_THUNDERBOLT ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ElectricName ; category
	db 145 ; Pokedex number
	db 50 ; level
	db 5, 3 ; length
	dw 116 * 10 ; weight
	tx ZapdosLv64Description ; description
	db 0 ; AI info

ZapdosLv68Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ZapdosLv68CardGfx ; gfx
	tx ZapdosName ; name
	db STAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw ZAPDOS_LV68
	db 100 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PealOfThunderName ; name
	tx PealOfThunderDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw ZapdosPealOfThunderEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PEAL_OF_THUNDER ; animation

	; attack 2
	energy LIGHTNING, 3 ; energies
	tx BigThunderName ; name
	tx BigThunderDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ZapdosBigThunderEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_BIG_THUNDER ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db WR_FIGHTING ; resistance
	tx ElectricName ; category
	db 145 ; Pokedex number
	db 68 ; level
	db 5, 3 ; length
	dw 116 * 10 ; weight
	tx ZapdosLv68Description ; description
	db 0 ; AI info

SandshrewCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx SandshrewCardGfx ; gfx
	tx SandshrewName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw SANDSHREW
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx RolloutName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx DoubleScratchName ; name
	tx DoubleAttackX10Description ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw SandshrewDoubleScratchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy FIGHTING, 1 ; energies
	; tx SandAttackName ; name
	; tx OpponentAttackMayDoNothingDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw SandshrewSandAttackEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_DARK_GAS ; animation

	; ; attack 2
	; energy 0 ; energies
	; dw NONE ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 27 ; Pokedex number
	db 12 ; level
	db 2, 0 ; length
	dw 26 * 10 ; weight
	tx SandshrewDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

SandslashCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx SandslashCardGfx ; gfx
	tx SandslashName ; name
	db DIAMOND ; rarity
	db EVOLUTION | FOSSIL ; sets
	dw SANDSLASH
	db 60 ; hp
	db STAGE1 ; stage
	tx SandshrewName ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx RumbleName ; name
	tx NoRetreatDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SandslashRumbleEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_GOO ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 2 ; energies
	tx SpikeRendName ; name
	tx SpikeRendDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw SandslashSpikeRendEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx SlashName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SLASH ; animation

	; ; attack 2
	; energy FIGHTING, 2 ; energies
	; tx FurySwipesName ; name
	; tx TripleAttackX20Description ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_X ; category
	; dw SandslashFurySwipesEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_MULTIPLE_SLASH ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 28 ; Pokedex number
	db 33 ; level
	db 3, 3 ; length
	dw 65 * 10 ; weight
	tx SandslashDescription ; description
	db 0 ; AI info

WiglettCard:
	db TYPE_PKMN_WATER ; type
	gfx DiglettCardGfx ; gfx
	tx WiglettName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw WIGLETT
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx DigALittleName ; name
	tx DigALittleDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw WiglettDigALittleEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy FIGHTING, 1 ; energies
	; tx DigName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy FIGHTING, 2 ; energies
	; tx MudSlapName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx MoleName ; category
	db 50 ; Pokedex number
	db 8 ; level
	db 0, 8 ; length
	dw 2 * 10 ; weight
	tx WiglettDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

WugtrioCard:
	db TYPE_PKMN_WATER ; type
	gfx DugtrioCardGfx ; gfx
	tx WugtrioName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw WUGTRIO
	db 50 ; hp
	db STAGE1 ; stage
	tx WiglettName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx HeadbuttName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx UnderseaTunnelName ; name
	tx UnderseaTunnelDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw WugtrioUnderseaTunnelEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation
	
	; attack 2
;	energy FIGHTING, 4 ; energies
;	tx EarthquakeName ; name
;	tx EarthquakeDescription ; description
;	dw NONE ; description (cont)
;	db 70 ; damage
;	db DAMAGE_NORMAL ; category
;	dw DugtrioEarthquakeEffectCommands ; effect commands
;	db NONE ; flags 1
;	db NONE ; flags 2
;	db SPECIAL_AI_HANDLING ; flags 3
;	db 0
;	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx MoleName ; category
	db 51 ; Pokedex number
	db 36 ; level
	db 2, 4 ; length
	dw 73 * 10 ; weight
	tx WugtrioDescription ; description
	db 0 ; AI info

MankeyCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx MankeyCardGfx ; gfx
	tx MankeyName ; name
	db CIRCLE ; rarity
	db MYSTERY | JUNGLE ; sets
	dw MANKEY
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PeekName ; name
	tx PeekDescription ; description
	tx PeekDescriptionCont ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MankeyPeekEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx ScratchName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx PigMonkeyName ; category
	db 56 ; Pokedex number
	db 7 ; level
	db 1, 8 ; length
	dw 62 * 10 ; weight
	tx MankeyDescription ; description
	db AI_INFO_BENCH_UTILITY | HAS_EVOLUTION ; AI info

BloodmoonUrsalunaCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx PrimeapeCardGfx ; gfx
	tx BloodmoonUrsalunaName ; name
	db DIAMOND ; rarity
	db MYSTERY | JUNGLE ; sets
	dw BLOODMOON_URSALUNA
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx BattleHardenedName ; name
	tx BattleHardenedDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw BloodmoonUrsalunaBattleHardenedEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx MadBiteName ; name
	tx MadBiteDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw BloodmoonUrsalunaMadBiteEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; ; attack 1
	; energy FIGHTING, 2 ; energies
	; tx FurySwipesName ; name
	; tx TripleAttackX20Description ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_X ; category
	; dw PrimeapeFurySwipesEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_MULTIPLE_SLASH ; animation

	; ; attack 2
	; energy FIGHTING, 2, COLORLESS, 1 ; energies
	; tx TantrumName ; name
	; tx TantrumDescription ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PrimeapeTantrumEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_7 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_RAMPAGE ; animation

	db 4 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx PigMonkeyName ; category
	db 57 ; Pokedex number
	db 35 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx PrimeapeDescription ; description
	db 0 ; AI info

TimburrCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx MachopCardGfx ; gfx
	tx TimburrName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw TIMBURR
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx BestPunchName ; name
	tx MayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw TimburrBestPunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy FIGHTING, 1 ; energies
	; tx LowKickName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx SuperpowerName ; category
	db 66 ; Pokedex number
	db 20 ; level
	db 2, 7 ; length
	dw 43 * 10 ; weight
	tx MachopDescription ; description
	db AI_INFO_UNK_05 | HAS_EVOLUTION ; AI info

GurdurrCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx MachokeCardGfx ; gfx
	tx GurdurrName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw GURDURR
	db 50 ; hp
	db STAGE1 ; stage
	tx TimburrName ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx LowKickName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	energy FIGHTING, 1, COLORLESS, 2 ; energies
	tx HammerArmName ; name
	tx HammerArmDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw GurdurrHammerArmEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy FIGHTING, 2, COLORLESS, 1 ; energies
	; tx KarateChopName ; name
	; tx KarateChopDescription ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_MINUS ; category
	; dw MachokeKarateChopEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_7 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy FIGHTING, 2, COLORLESS, 2 ; energies
	; tx SubmissionName ; name
	; tx SubmissionDescription ; description
	; dw NONE ; description (cont)
	; db 60 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MachokeSubmissionEffectCommands ; effect commands
	; db LOW_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 20
	; db ATK_ANIM_HIT_RECOIL ; animation

	db 3 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx SuperpowerName ; category
	db 67 ; Pokedex number
	db 25 ; level
	db 4, 11 ; length
	dw 155 * 10 ; weight
	tx MachokeDescription ; description
	db HAS_EVOLUTION ; AI info

ConkeldurrCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx MachampCardGfx ; gfx
	tx ConkeldurrName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw CONKELDURR
	db 90 ; hp
	db STAGE2 ; stage
	tx GurdurrName ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx TantrumName ; name
	tx TantrumDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw ConkeldurrTantrumEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy FIGHTING, 3, COLORLESS, 1 ; energies
	tx GutsySwingName ; name
	tx GutsySwingDescription ; description
	dw NONE ; description (cont)
	db 130 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	; attack 1
	; energy 0 ; energies
	; tx StrikesBackName ; name
	; tx StrikesBackDescription ; description
	; tx StrikesBackDescriptionCont ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw MachampStrikesBackEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy FIGHTING, 3, COLORLESS, 1 ; energies
	; tx SeismicTossName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 60 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SEISMIC_TOSS ; animation

	db 3 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx SuperpowerName ; category
	db 68 ; Pokedex number
	db 37 ; level
	db 5, 3 ; length
	dw 287 * 10 ; weight
	tx MachampDescription ; description
	db 0 ; AI info

AronCard:
	db TYPE_PKMN_METAL ; type
	gfx GeodudeCardGfx ; gfx
	tx AronName ; name
	db CIRCLE ; rarity
	db EVOLUTION | FOSSIL ; sets
	dw ARON
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx DoubleEdgeName ; name
	tx TenRecoilDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw TenRecoilEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; ; attack 1
	; energy FIGHTING, 1, COLORLESS, 1 ; energies
	; tx StoneBarrageName ; name
	; tx StoneBarrageDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_X ; category
	; dw GeodudeStoneBarrageEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_STONE_BARRAGE ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx RockName ; category
	db 74 ; Pokedex number
	db 16 ; level
	db 1, 4 ; length
	dw 44 * 10 ; weight
	tx GeodudeDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

LaironCard:
	db TYPE_PKMN_METAL ; type
	gfx GravelerCardGfx ; gfx
	tx LaironName ; name
	db DIAMOND ; rarity
	db EVOLUTION | FOSSIL ; sets
	dw LAIRON
	db 60 ; hp
	db STAGE1 ; stage
	tx AronName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx SteelTackleName ; name
	tx TenRecoilDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw TenRecoilEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy METAL, 1, COLORLESS, 2 ; energies
	tx MetalClawName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	; ; attack 1
	; energy FIGHTING, 2 ; energies
	; tx HardenName ; name
	; tx GravelersHardenDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw GravelerHardenEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PROTECT ; animation

	; ; attack 2
	; energy FIGHTING, 2, COLORLESS, 1 ; energies
	; tx RockThrowName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_ROCK_THROW ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx RockName ; category
	db 75 ; Pokedex number
	db 29 ; level
	db 3, 3 ; length
	dw 232 * 10 ; weight
	tx GravelerDescription ; description
	db HAS_EVOLUTION ; AI info

AggronCard:
	db TYPE_PKMN_METAL ; type
	gfx GolemCardGfx ; gfx
	tx AggronName ; name
	db DIAMOND ; rarity
	db EVOLUTION | FOSSIL ; sets
	dw AGGRON
	db 90 ; hp
	db STAGE2 ; stage
	tx LaironName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx AngrySlamName ; name
	tx AngrySlamDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw AggronAngrySlamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_RAMPAGE ; animation

	; attack 2
	energy METAL, 1, COLORLESS, 2 ; energies
	tx GuardClawName ; name
	tx GuardClawDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw AggronGuardClawEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_PROTECT ; animation

	; attack 1
	; energy FIGHTING, 3, COLORLESS, 1 ; energies
	; tx AvalancheName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 60 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_ROCK_THROW ; animation

	; ; attack 2
	; energy FIGHTING, 4 ; energies
	; tx SelfdestructName ; name
	; tx GolemsSelfdestructDescription ; description
	; dw NONE ; description (cont)
	; db 100 ; damage
	; db DAMAGE_NORMAL ; category
	; dw GolemSelfdestructEffectCommands ; effect commands
	; db HIGH_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 100
	; db ATK_ANIM_BIG_SELFDESTRUCTION ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx MegatonName ; category
	db 76 ; Pokedex number
	db 36 ; level
	db 4, 7 ; length
	dw 662 * 10 ; weight
	tx GolemDescription ; description
	db 0 ; AI info

KlawfCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx OnixCardGfx ; gfx
	tx KlawfName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw KLAWF
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx UnhingedScissorsName ; name
	tx UnhingedScissorsDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw KlawfUnhingedScissorsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation
	
	; attack 2
	energy FIGHTING, 2 ; energies
	tx BoiledPressName ; name
	tx BoiledPressDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw KlawfBoiledPressEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy FIGHTING, 1 ; energies
	; tx RockThrowName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_ROCK_THROW ; animation

	; ; attack 2
	; energy FIGHTING, 2 ; energies
	; tx HardenName ; name
	; tx OnixsHardenDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw OnixHardenEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PROTECT ; animation

	db 3 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx RockSnakeName ; category
	db 95 ; Pokedex number
	db 12 ; level
	db 28, 10 ; length
	dw 463 * 10 ; weight
	tx OnixDescription ; description
	db 0 ; AI info

GimmighoulCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx CuboneCardGfx ; gfx
	tx GimmighoulName ; name
	db CIRCLE ; rarity
	db EVOLUTION | JUNGLE ; sets
	dw GIMMIGHOUL
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx ContinuousCoinTossName ; name
	tx ContinuousCoinTossDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw GimmighoulContinuousCoinTossEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_STONE_BARRAGE ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx SnivelName ; name
	; tx SnivelDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw CuboneSnivelEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 10
	; db ATK_ANIM_CRY ; animation

	; ; attack 2
	; energy FIGHTING, 2 ; energies
	; tx RageName ; name
	; tx CubonesRageDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_PLUS ; category
	; dw CuboneRageEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db BOOST_IF_TAKEN_DAMAGE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx LonelyName ; category
	db 104 ; Pokedex number
	db 13 ; level
	db 1, 4 ; length
	dw 14 * 10 ; weight
	tx CuboneDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

MarowakLv26Card:
	db TYPE_PKMN_FIGHTING ; type
	gfx MarowakLv26CardGfx ; gfx
	tx MarowakName ; name
	db DIAMOND ; rarity
	db LABORATORY | JUNGLE ; sets
	dw MAROWAK_LV26
	db 60 ; hp
	db STAGE1 ; stage
	tx GimmighoulName ; pre-evo name

	; attack 1
	energy FIGHTING, 2 ; energies
	tx BonemerangName ; name
	tx DoubleAttackX30Description ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw NONE;MarowakBonemerangEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BONEMERANG ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx CallforFriendName ; name
	tx CallforFriendDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw NONE;MarowakCallforFriendEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_LIGHTNING ; resistance
	tx BonekeeperName ; category
	db 105 ; Pokedex number
	db 26 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx MarowakLv26Description ; description
	db 0 ; AI info

GholdengoExCard:
	db TYPE_PKMN_METAL ; type
	gfx MarowakLv32CardGfx ; gfx
	tx GholdengoExName ; name
	db DIAMOND ; rarity
	db EVOLUTION | GB ; sets
	dw GHOLDENGO_EX
	db 130 ; hp
	db STAGE1 ; stage
	tx GimmighoulName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx CoinBonusName ; name
	tx CoinBonusDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw GholdengoExCoinBonusEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 1
	energy METAL, 1 ; energies
	tx MakeItRainName ; name
	tx MakeItRainDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw GholdengoExMakeItRainEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BONEMERANG ; animation

	; attack 1
	; energy FIGHTING, 1, COLORLESS, 1 ; energies
	; tx BoneAttackName ; name
	; tx BoneAttackDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MarowakBoneAttackEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_BONEMERANG ; animation

	; ; attack 2
	; energy FIGHTING, 3 ; energies
	; tx WailName ; name
	; tx WailDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw MarowakWailEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_CRY ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx BonekeeperName ; category
	db 105 ; Pokedex number
	db 52 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx MarowakLv32Description ; description
	db 0 ; AI info

PaldeanTaurosCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx HitmonleeCardGfx ; gfx
	tx PaldeanTaurosName ; name
	db STAR ; rarity
	db LABORATORY | FOSSIL ; sets
	dw PALDEAN_TAUROS
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx RagingChargeName ; name
	tx RagingChargeDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw PaldeanTaurosRagingChargeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_RAMPAGE ; animation

	; attack 2
	energy FIGHTING, 2 ; energies
	tx DoubleEdgeName ; name
	tx TenRecoilDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw TenRecoilEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy FIGHTING, 2 ; energies
	; tx StretchKickName ; name
	; tx StretchKickDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw HitmonleeStretchKickEffectCommands ; effect commands
	; db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_STRETCH_KICK ; animation

	; ; attack 2
	; energy FIGHTING, 3 ; energies
	; tx HighJumpKickName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PUNCH ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx KickingName ; category
	db 106 ; Pokedex number
	db 30 ; level
	db 4, 11 ; length
	dw 110 * 10 ; weight
	tx HitmonleeDescription ; description
	db 0 ; AI info

HitmonchanCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx HitmonchanCardGfx ; gfx
	tx HitmonchanName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw HITMONCHAN
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx JabName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx SpecialPunch ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx PunchingName ; category
	db 107 ; Pokedex number
	db 33 ; level
	db 4, 7 ; length
	dw 111 * 10 ; weight
	tx HitmonchanDescription ; description
	db 0 ; AI info

SolrockCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx RhyhornCardGfx ; gfx
	tx SolrockName ; name
	db CIRCLE ; rarity
	db MYSTERY | JUNGLE ; sets
	dw SOLROCK
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx CosmicBeamName ; name
	tx CosmicBeamDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw SolrockCosmicBeamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx LeerName ; name
	; tx LeerDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw RhyhornLeerEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	; ; attack 2
	; energy FIGHTING, 1, COLORLESS, 2 ; energies
	; tx HornAttackName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx SpikeName ; category
	db 111 ; Pokedex number
	db 18 ; level
	db 3, 3 ; length
	dw 254 * 10 ; weight
	tx RhyhornDescription ; description
	db HAS_EVOLUTION ; AI info

LunatoneCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx RhydonCardGfx ; gfx
	tx LunatoneName ; name
	db DIAMOND ; rarity
	db MYSTERY | JUNGLE ; sets
	dw LUNATONE
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx LunarCycleName ; name
	tx LunarCycleDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw LunatoneLunarCycleEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIGHTING, 2 ; energies
	tx PowerGemName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy FIGHTING, 1, COLORLESS, 2 ; energies
	; tx HornAttackName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy FIGHTING, 4 ; energies
	; tx RamName ; name
	; tx RamDescription ; description
	; tx RamDescriptionCont ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw RhydonRamEffectCommands ; effect commands
	; db LOW_RECOIL ; flags 1
	; db SWITCH_OPPONENT_POKEMON ; flags 2
	; db NONE ; flags 3
	; db 20
	; db ATK_ANIM_HIT_RECOIL ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx DrillName ; category
	db 112 ; Pokedex number
	db 48 ; level
	db 6, 3 ; length
	dw 265 * 10 ; weight
	tx RhydonDescription ; description
	db 0 ; AI info

SwinubCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx KabutoCardGfx ; gfx
	tx SwinubName ; name
	db CIRCLE ; rarity
	db MYSTERY | FOSSIL ; sets
	dw SWINUB
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx CallForFamilyName ; name
	tx GatherTheCrewDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw TaurosGatherTheCrewEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIGHTING, 1 ; energies
	tx LungeOutName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; ; attack 1
	; energy 0 ; energies
	; tx KabutoArmorName ; name
	; tx KabutoArmorDescription ; description
	; tx KabutoArmorDescriptionCont ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw KabutoKabutoArmorEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy COLORLESS, 1 ; energies
	; tx ScratchName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SLASH ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx ShellfishName ; category
	db 140 ; Pokedex number
	db 9 ; level
	db 1, 8 ; length
	dw 25 * 10 ; weight
	tx KabutoDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

PiloswineCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx KabutoCardGfx ; gfx
	tx PiloswineName ; name
	db CIRCLE ; rarity
	db MYSTERY | FOSSIL ; sets
	dw PILOSWINE
	db 50 ; hp
	db STAGE1 ; stage
	tx SwinubName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx StrengthName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy FIGHTING, 2 ; energies
	tx ImpalingTuskName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; ; attack 1
	; energy 0 ; energies
	; tx KabutoArmorName ; name
	; tx KabutoArmorDescription ; description
	; tx KabutoArmorDescriptionCont ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw KabutoKabutoArmorEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy COLORLESS, 1 ; energies
	; tx ScratchName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SLASH ; animation

	db 3 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx ShellfishName ; category
	db 140 ; Pokedex number
	db 9 ; level
	db 1, 8 ; length
	dw 25 * 10 ; weight
	tx KabutoDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

MamoswineExCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx KabutopsCardGfx ; gfx
	tx MamoswineExName ; name
	db STAR ; rarity
	db MYSTERY | FOSSIL ; sets
	dw MAMOSWINE_EX
	db 170 ; hp
	db STAGE2 ; stage
	tx PiloswineName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx MammothHaulerName ; name
	tx MammothHaulerDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MamoswineExMammothHaulerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIGHTING, 2 ; energies
	tx RumblingMarchName ; name
	tx RumblingMarchDescription ; description
	dw NONE ; description (cont)
	db 90 ; damage
	db DAMAGE_PLUS ; category
	dw MamoswineExRumblingMarchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	; attack 1
	; energy FIGHTING, 2 ; energies
	; tx SharpSickleName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SONICBOOM ; animation

	; ; attack 2
	; energy FIGHTING, 4 ; energies
	; tx AbsorbName ; name
	; tx AbsorbDescription ; description
	; tx AbsorbDescriptionCont ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw KabutopsAbsorbEffectCommands ; effect commands
	; db NONE ; flags 1
	; db HEAL_USER ; flags 2
	; db NONE ; flags 3
	; db 2
	; db ATK_ANIM_DRAIN ; animation

	db 4 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx ShellfishName ; category
	db 141 ; Pokedex number
	db 50 ; level
	db 4, 3 ; length
	dw 89 * 10 ; weight
	tx KabutopsDescription ; description
	db 0 ; AI info

AerodactylCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx AerodactylCardGfx ; gfx
	tx AerodactylName ; name
	db STAR ; rarity
	db MYSTERY | FOSSIL ; sets
	dw AERODACTYL
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PrehistoricPowerName ; name
	tx PrehistoricPowerDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw AerodactylPrehistoricPowerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx WingAttackName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIGHTING ; resistance
	tx FossilName ; category
	db 142 ; Pokedex number
	db 28 ; level
	db 5, 11 ; length
	dw 130 * 10 ; weight
	tx AerodactylDescription ; description
	db AI_INFO_BENCH_UTILITY ; AI info

AbraCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx AbraCardGfx ; gfx
	tx AbraName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw ABRA
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx PsyshotName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx PsyshockName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw AbraPsyshockEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING; resistance
	tx PsiName ; category
	db 63 ; Pokedex number
	db 10 ; level
	db 2, 11 ; length
	dw 43 * 10 ; weight
	tx AbraDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

KadabraCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx KadabraCardGfx ; gfx
	tx KadabraName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw KADABRA
	db 40 ; hp
	db STAGE1 ; stage
	tx AbraName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PsychicDrawName ; name
	tx KadabraPsychicDrawDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw KadabraPsychicDrawEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 1 ; energies
	tx SuperPsyBoltName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; ; attack 1
	; energy PSYCHIC, 2 ; energies
	; tx RecoverName ; name
	; tx KadabrasRecoverDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw KadabraRecoverEffectCommands ; effect commands
	; db NONE ; flags 1
	; db DISCARD_ENERGY ; flags 2
	; db NONE ; flags 3
	; db 3 ; attack score penalty for DISCARD_ENERGY
	; db ATK_ANIM_RECOVER ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx PsiName ; category
	db 64 ; Pokedex number
	db 38 ; level
	db 4, 3 ; length
	dw 125 * 10 ; weight
	tx KadabraDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

AlakazamCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx AlakazamCardGfx ; gfx
	tx AlakazamName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw ALAKAZAM
	db 70 ; hp
	db STAGE2 ; stage
	tx KadabraName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PsychicDrawName ; name
	tx AlakazamPsychicDrawDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw AlakazamPsychicDrawEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 1 ; energies
	tx PowerfulHandName ; name
	tx PowerfulHandDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw AlakazamPowerfulHandEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 1
	; energy 0 ; energies
	; tx DamageSwapName ; name
	; tx DamageSwapDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw AlakazamDamageSwapEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy PSYCHIC, 3 ; energies
	; tx ConfuseRayName ; name
	; tx MayInflictConfusionDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw AlakazamConfuseRayEffectCommands ; effect commands
	; db INFLICT_CONFUSION ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_CONFUSE_RAY ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx PsiName ; category
	db 65 ; Pokedex number
	db 42 ; level
	db 4, 11 ; length
	dw 106 * 10 ; weight
	tx AlakazamDescription ; description
	db 0 ; AI info

BruteBonnetCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx SlowpokeLv9CardGfx ; gfx
	tx BruteBonnetName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw BRUTE_BONNET
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ToxicPowderName ; name
	tx ToxicPowderDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw BruteBonnetToxicPowderEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy DARKNESS, 2, COLORLESS, 1 ; energies
	tx RampagingHammerName ; name
	tx NextTurnCantAttackDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw BloodmoonUrsalunaExBloodMoonEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	; attack 1
	; energy DARKNESS, 1 ; energies
	; tx PoisonSprayName ; name
	; tx InflictPoisonDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw GloomPoisonPowderEffectCommands ; effect commands
	; db INFLICT_POISON ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_POISON_POWDER ; animation

	; ; attack 2
	; energy DARKNESS, 3 ; energies
	; tx RelentlessPunchesName ; name
	; tx RelentlessPunchesDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_PLUS ; category
	; dw BruteBonnetRelentlessPunchesEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx HeadbuttName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy PSYCHIC, 2 ; energies
	; tx AmnesiaName ; name
	; tx SlowpokesAmnesiaDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw SlowpokeAmnesiaEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 2
	; db ATK_ANIM_AMNESIA ; animation

	db 3 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx DopeyName ; category
	db 79 ; Pokedex number
	db 9 ; level
	db 3, 11 ; length
	dw 79 * 10 ; weight
	tx SlowpokeLv9Description ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

SlowpokeLv18Card:
	db TYPE_PKMN_PSYCHIC ; type
	gfx SlowpokeLv18CardGfx ; gfx
	tx SlowpokeName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw SLOWPOKE_LV18
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx SpacingOutName ; name
	tx SpacingOutDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SlowpokeSpacingOutEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
	tx ScavengeName ; name
	tx ScavengeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SlowpokeScavengeEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx DopeyName ; category
	db 79 ; Pokedex number
	db 18 ; level
	db 3, 11 ; length
	dw 79 * 10 ; weight
	tx SlowpokeLv9Description ; description
	db HAS_EVOLUTION ; AI info

SlowbroCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx SlowbroCardGfx ; gfx
	tx SlowbroName ; name
	db DIAMOND ; rarity
	db LABORATORY | FOSSIL ; sets
	dw SLOWBRO
	db 60 ; hp
	db STAGE1 ; stage
	tx SlowpokeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StrangeBehaviorName ; name
	tx StrangeBehaviorDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SlowbroStrangeBehaviorEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
	tx PsyshockName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SlowbroPsyshockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx HermitcrabName ; category
	db 80 ; Pokedex number
	db 26 ; level
	db 5, 3 ; length
	dw 173 * 10 ; weight
	tx SlowbroDescription ; description
	db AI_INFO_BENCH_UTILITY ; AI info

RaltsCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GastlyLv8CardGfx ; gfx
	tx RaltsName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw RALTS
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx CollectName ; name
	tx CollectDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw GoldeenCollectEffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 1 ; energies
	tx HeadbuttName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; ; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx SleepingGasName ; name
	; tx MayInflictSleepDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw GastlySleepingGasEffectCommands ; effect commands
	; db INFLICT_SLEEP ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SLEEPING_GAS ; animation

	; ; attack 2
	; energy PSYCHIC, 1, COLORLESS, 1 ; energies
	; tx DestinyBondName ; name
	; tx DestinyBondDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw GastlyDestinyBondEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 3
	; db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx GasName ; category
	db 92 ; Pokedex number
	db 8 ; level
	db 4, 3 ; length
	dw 2 ; weight
	tx GastlyLv8Description ; description
	db HAS_EVOLUTION ; AI info

ShuppetCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GastlyLv17CardGfx ; gfx
	tx ShuppetName ; name
	db DIAMOND ; rarity
	db LABORATORY | FOSSIL ; sets
	dw SHUPPET
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx EnvelopingShadowName ; name
	tx EnvelopingShadowDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ShuppetEnvelopingShadowEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NIGHTMARE ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx LickName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw GastlyLickEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_GOO ; animation

	; ; attack 2
	; energy PSYCHIC, 2 ; energies
	; tx EnergyConversionName ; name
	; tx EnergyConversionDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw GastlyEnergyConversionEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 10
	; db ATK_ANIM_ENERGY_CONVERSION ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx GasName ; category
	db 92 ; Pokedex number
	db 17 ; level
	db 4, 3 ; length
	dw 2 ; weight
	tx GastlyLv17Description ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

BanetteExCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx HaunterLv17CardGfx ; gfx
	tx BanetteExName ; name
	db STAR ; rarity
	db LABORATORY | FOSSIL ; sets
	dw BANETTE_EX
	db 130 ; hp
	db STAGE1 ; stage
	tx ShuppetName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx EverlastingDarknessName ; name
	tx EverlastingDarknessDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw BanetteExEverlastingDarknessEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NIGHTMARE ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx PoltergeistName ; name
	tx PoltergeistDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw BanetteExPoltergeistEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NIGHTMARE ; animation

	; attack 1
	; energy 0 ; energies
	; tx SmoothCoatName ; name
	; tx SmoothCoatDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw HaunterTransparencyEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy PSYCHIC, 1, COLORLESS, 1 ; energies
	; tx NightmareName ; name
	; tx InflictSleepDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw HaunterNightmareEffectCommands ; effect commands
	; db INFLICT_SLEEP ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NIGHTMARE ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx GasName ; category
	db 93 ; Pokedex number
	db 50 ; level
	db 5, 3 ; length
	dw 2 ; weight
	tx HaunterDescription ; description
	db HAS_EVOLUTION ; AI info

KirliaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx HaunterLv22CardGfx ; gfx
	tx KirliaName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw KIRLIA
	db 50 ; hp
	db STAGE1 ; stage
	tx RaltsName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx MagicalShotName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx PsychicName ; name
	tx PsychicDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw KirliaPsychicEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx HypnosisName ; name
	; tx InflictSleepDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw HaunterHypnosisEffectCommands ; effect commands
	; db INFLICT_SLEEP ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HYPNOSIS ; animation

	; ; attack 2
	; energy PSYCHIC, 2 ; energies
	; tx DreamEaterName ; name
	; tx DreamEaterDescription ; description
	; dw NONE ; description (cont)
	; db 50 ; damage
	; db DAMAGE_NORMAL ; category
	; dw HaunterDreamEaterEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx GasName ; category
	db 93 ; Pokedex number
	db 22 ; level
	db 5, 3 ; length
	dw 2 ; weight
	tx HaunterDescription ; description
	db HAS_EVOLUTION ; AI info

GardevoirExCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GengarCardGfx ; gfx
	tx GardevoirExName ; name
	db STAR ; rarity
	db EVOLUTION | FOSSIL ; sets
	dw GARDEVOIR_EX
	db 160 ; hp
	db STAGE2 ; stage
	tx KirliaName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PsychicEmbraceName ; name
	tx PsychicEmbraceDescription ; description
	tx PsychicEmbraceDescriptionCont ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw GardevoirExPsychicEmbraceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx MiracleForceName ; name
	tx MiracleForceDescription ; description
	dw NONE ; description (cont)
	db 100 ; damage
	db DAMAGE_NORMAL ; category
	dw GardevoirExMiracleForceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	; attack 1
	; energy 0 ; energies
	; tx CurseName ; name
	; tx CurseDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw GengarCurseEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; ; attack 2
	; energy PSYCHIC, 3 ; energies
	; tx DarkMindName ; name
	; tx DarkMindDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw GengarDarkMindEffectCommands ; effect commands
	; db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 10
	; db ATK_ANIM_DARK_MIND ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx ShadowName ; category
	db 94 ; Pokedex number
	db 50 ; level
	db 4, 11 ; length
	dw 89 * 10 ; weight
	tx GengarDescription ; description
	db AI_INFO_BENCH_UTILITY ; AI info

PumpkabooCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DrowzeeCardGfx ; gfx
	tx PumpkabooName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw PUMPKABOO
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx StampedeName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	; energy PSYCHIC, 2 ; energies
	; tx ConfuseRayName ; name
	; tx MayInflictConfusionDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw DrowzeeConfuseRayEffectCommands ; effect commands
	; db INFLICT_CONFUSION ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_CONFUSE_RAY ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx HypnosisName ; category
	db 96 ; Pokedex number
	db 12 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx DrowzeeDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

GourgeistExCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx HypnoCardGfx ; gfx
	tx GourgeistExName ; name
	db STAR ; rarity
	db LABORATORY | FOSSIL ; sets
	dw GOURGEIST_EX
	db 140 ; hp
	db STAGE1 ; stage
	tx PumpkabooName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx HorrifyingRondoName ; name
	tx HorrifyingRondoDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw GourgeistExHorrifyingRondoEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_RAMPAGE ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
	tx GhostlyTouchName ; name
	tx GhostlyTouchDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_NORMAL ; category
	dw GourgeistExGhostlyTouchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx ProphecyName ; name
	; tx ProphecyDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw HypnoProphecyEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_5 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy PSYCHIC, 3 ; energies
	; tx DarkMindName ; name
	; tx DarkMindDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw HypnoDarkMindEffectCommands ; effect commands
	; db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 10
	; db ATK_ANIM_DARK_MIND ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx HypnosisName ; category
	db 97 ; Pokedex number
	db 50 ; level
	db 5, 3 ; length
	dw 167 * 10 ; weight
	tx HypnoDescription ; description
	db 0 ; AI info

MrMimeCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MrMimeCardGfx ; gfx
	tx MrMimeName ; name
	db STAR ; rarity
	db LABORATORY | JUNGLE ; sets
	dw MR_MIME
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx InvisibleWallName ; name
	tx InvisibleWallDescription ; description
	tx InvisibleWallDescriptionCont ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MrMimeInvisibleWallEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx MeditateName ; name
	tx MrMimesMeditateDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw MrMimeMeditateEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx BarrierName ; category
	db 122 ; Pokedex number
	db 28 ; level
	db 4, 3 ; length
	dw 120 * 10 ; weight
	tx MrMimeDescription ; description
	db AI_INFO_UNK_03 ; AI info

ScreamTailCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx ScreamTailCardGfx ; gfx
	tx ScreamTailName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw SCREAM_TAIL
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx SlapName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx RoaringScreamName ; name
	tx RoaringScreamDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ScreamTailRoaringScreamEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_STRETCH_KICK ; animation

	; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx DoubleslapName ; name
	; tx DoubleAttackX10Description ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_X ; category
	; dw JynxDoubleslapEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy PSYCHIC, 2, COLORLESS, 1 ; energies
	; tx MeditateName ; name
	; tx JynxsMeditateDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_PLUS ; category
	; dw JynxMeditateEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx HumanShapeName ; category
	db 124 ; Pokedex number
	db 23 ; level
	db 4, 7 ; length
	dw 90 * 10 ; weight
	tx ScreamTailDescription ; description
	db 0 ; AI info

MunkidoriCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewtwoLv53CardGfx ; gfx
	tx MunkidoriName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw MUNKIDORI
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx AdrenaBrainName ; name
	tx AdrenaBrainDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MunkidoriAdrenaBrainEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 1, DARKNESS, 1 ; energies
	tx MindBendName ; name
	tx InflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MunkidoriMindBendEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FOUL_ODOR ; animation

	; attack 1
	; energy PSYCHIC, 1, COLORLESS, 1 ; energies
	; tx PsychicName ; name
	; tx PsychicDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_PLUS ; category
	; dw MewtwoPsychicEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PSYCHIC_HIT ; animation

	; ; attack 2
	; energy PSYCHIC, 2 ; energies
	; tx BarrierName ; name
	; tx BarrierDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw MewtwoBarrierEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK | DISCARD_ENERGY ; flags 2
	; db NONE ; flags 3
	; db 2
	; db ATK_ANIM_BARRIER ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx GeneticName ; category
	db 150 ; Pokedex number
	db 33 ; level
	db 6, 7 ; length
	dw 269 * 10 ; weight
	tx MewtwoLv53Description ; description
	db 0 ; AI info

DrifloonCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewtwoLv60CardGfx ; gfx
	tx DrifloonName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw DRIFLOON
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx GustName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
	tx BalloonBlastName ; name
	tx BalloonBlastDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw DrifloonBalloonBlastEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_RAMPAGE ; animation

	; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx EnergyAbsorptionName ; name
	; tx EnergyAbsorptionDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw MewtwoLv60EnergyAbsorptionEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy PSYCHIC, 2, COLORLESS, 1 ; energies
	; tx PsyburnName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx GeneticName ; category
	db 150 ; Pokedex number
	db 20 ; level
	db 6, 7 ; length
	dw 269 * 10 ; weight
	tx MewtwoLv60Description ; description
	db 0 ; AI info

LatiasExCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewtwoAltLV60CardGfx ; gfx
	tx LatiasExName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw LATIAS_EX
	db 110 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SkylinerName ; name
	tx SkylinerDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw BloodmoonUrsalunaExSeasonedSkillEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx EonBladeName ; name
	tx NextTurnCantAttackDescription ; description
	dw NONE ; description (cont)
	db 100 ; damage
	db DAMAGE_NORMAL ; category
	dw BloodmoonUrsalunaExBloodMoonEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	; attack 1
	; energy PSYCHIC, 1 ; energies
	; tx EnergyAbsorptionName ; name
	; tx EnergyAbsorptionDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw MewtwoAltLV60EnergyAbsorptionEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy PSYCHIC, 2, COLORLESS, 1 ; energies
	; tx PsyburnName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PSYCHIC_HIT ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx GeneticName ; category
	db 150 ; Pokedex number
	db 50 ; level
	db 6, 7 ; length
	dw 269 * 10 ; weight
	tx MewtwoLv60Description ; description
	db 0 ; AI info

MewLv8Card:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewLv8CardGfx ; gfx
	tx MewName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw MEW_LV8
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx NeutralizingShieldName ; name
	tx NeutralizingShieldDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MewNeutralizingShieldEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 1 ; energies
	tx PsyshockName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MewPsyshockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx NewSpeciesName ; category
	db 151 ; Pokedex number
	db 8 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db AI_INFO_UNK_03 ; AI info

MewExCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewLv15CardGfx ; gfx
	tx MewExName ; name
	db STAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw MEW_EX
	db 90 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx RestartName ; name
	tx RestartDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MewExRestartEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx GenomeHackingName ; name
	tx GenomeHackingDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MewExGenomeHackingEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy PSYCHIC, 1, COLORLESS, 1 ; energies
	; tx MysteryAttackName ; name
	; tx MysteryAttackDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MewMysteryAttackEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT_EFFECT ; animation

	; ; attack 2
	; energy 0 ; energies
	; dw NONE ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 0 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx NewSpeciesName ; category
	db 151 ; Pokedex number
	db 50 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv15Description ; description
	db 0 ; AI info

MewLv23Card:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewLv23CardGfx ; gfx
	tx MewName ; name
	db STAR ; rarity
	db MYSTERY | FOSSIL ; sets
	dw MEW_LV23
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx PsywaveName ; name
	tx PsywaveDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw MewPsywaveEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
	tx DevolutionBeamName ; name
	tx DevolutionBeamDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw NONE;MewDevolutionBeamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx NewSpeciesName ; category
	db 151 ; Pokedex number
	db 23 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db AI_INFO_UNK_08 ; AI info

PidgeyCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx PidgeyCardGfx ; gfx
	tx PidgeyName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw PIDGEY
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx GustName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx WhirlwindName ; name
	; tx WhirlwindDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PidgeyWhirlwindEffectCommands ; effect commands
	; db NONE ; flags 1
	; db SWITCH_OPPONENT_POKEMON ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_WHIRLWIND ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx TinyBirdName ; category
	db 16 ; Pokedex number
	db 8 ; level
	db 1, 0 ; length
	dw 4 * 10 ; weight
	tx PidgeyDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

PidgeottoCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx PidgeottoCardGfx ; gfx
	tx PidgeottoName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw PIDGEOTTO
	db 50 ; hp
	db STAGE1 ; stage
	tx PidgeyName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx WingAttackName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx WhirlwindName ; name
	; tx WhirlwindDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PidgeottoWhirlwindEffectCommands ; effect commands
	; db NONE ; flags 1
	; db SWITCH_OPPONENT_POKEMON ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_WHIRLWIND ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx MirrorMoveName ; name
	; tx PidgeottosMirrorMoveDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PidgeottoMirrorMoveEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_MIRROR_MOVE ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx BirdName ; category
	db 17 ; Pokedex number
	db 36 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx PidgeottoDescription ; description
	db HAS_EVOLUTION ; AI info

PidgeotLv38Card:
	db TYPE_PKMN_COLORLESS ; type
	gfx PidgeotLv38CardGfx ; gfx
	tx PidgeotName ; name
	db STAR ; rarity
	db LABORATORY | GB ; sets
	dw PIDGEOT_LV38
	db 80 ; hp
	db STAGE2 ; stage
	tx PidgeottoName ; pre-evo name

	; attack 1
	energy COLORLESS, 3 ; energies
	tx SlicingWindName ; name
	tx SlicingWildDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw PidgeotSlicingWindEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_WHIRLWIND_ZIGZAG ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx GaleName ; name
	tx GaleDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PidgeotGaleEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON | FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx BirdName ; category
	db 18 ; Pokedex number
	db 38 ; level
	db 4, 11 ; length
	dw 87 * 10 ; weight
	tx PidgeotLv38Description ; description
	db 0 ; AI info

PidgeotExCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx PidgeotLv40CardGfx ; gfx
	tx PidgeotExName ; name
	db STAR ; rarity
	db EVOLUTION | JUNGLE ; sets
	dw PIDGEOT_EX
	db 140 ; hp
	db STAGE2 ; stage
	tx PidgeottoName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx QuickSearchName ; name
	tx QuickSearchDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw PidgeotExQuickSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx BlusteryWindName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx WingAttackName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx HurricaneName ; name
	; tx HurricaneDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PidgeotHurricaneEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_7 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_WHIRLWIND ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx BirdName ; category
	db 18 ; Pokedex number
	db 50 ; level
	db 4, 11 ; length
	dw 87 * 10 ; weight
	tx PidgeotLv40Description ; description
	db 0 ; AI info

RattataCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx RattataCardGfx ; gfx
	tx RattataName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw RATTATA
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx BiteName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 0 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx RatName ; category
	db 19 ; Pokedex number
	db 9 ; level
	db 1, 0 ; length
	dw 8 * 10 ; weight
	tx RattataDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

RaticateCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx RaticateCardGfx ; gfx
	tx RaticateName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw RATICATE
	db 60 ; hp
	db STAGE1 ; stage
	tx RattataName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx BiteName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx SuperFangName ; name
	tx SuperFangDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw RaticateSuperFangEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx RatName ; category
	db 20 ; Pokedex number
	db 41 ; level
	db 2, 4 ; length
	dw 41 * 10 ; weight
	tx RaticateDescription ; description
	db AI_INFO_UNK_03 ; AI info

FlamigoCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx SpearowCardGfx ; gfx
	tx FlamigoName ; name
	db CIRCLE ; rarity
	db LABORATORY | JUNGLE ; sets
	dw FLAMIGO
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx InstaFlockName ; name
	tx InstaFlockDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw FlamigoInstaFlockEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx UnitedWingsName ; name
	tx UnitedWingsDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw UnitedWingsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx PeckName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx MirrorMoveName ; name
	; tx SpearowsMirrorMoveDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw SpearowMirrorMoveEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_MIRROR_MOVE ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx TinyBirdName ; category
	db 21 ; Pokedex number
	db 13 ; level
	db 1, 0 ; length
	dw 4 * 10 ; weight
	tx SpearowDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

FearowCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx FearowCardGfx ; gfx
	tx FearowName ; name
	db DIAMOND ; rarity
	db LABORATORY | JUNGLE ; sets
	dw FEAROW
	db 70 ; hp
	db STAGE1 ; stage
	tx FlamigoName ; pre-evo name

	; attack 1
	energy COLORLESS, 3 ; energies
	tx AgilityName ; name
	tx FearowsAgilityDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw FearowAgilityEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx DrillPeckName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DRILL ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx BeakName ; category
	db 22 ; Pokedex number
	db 27 ; level
	db 3, 11 ; length
	dw 84 * 10 ; weight
	tx FearowDescription ; description
	db 0 ; AI info

MinccinoCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx ClefairyCardGfx ; gfx
	tx MinccinoName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw MINCCINO
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx TakeDownName ; name
	tx TenRecoilDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw TenRecoilEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx SingName ; name
	; tx MayInflictSleepDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ClefairySingEffectCommands ; effect commands
	; db INFLICT_SLEEP ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SING ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx MetronomeName ; name
	; tx ClefairysMetronomeDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw ClefairyMetronomeEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx FairyName ; category
	db 35 ; Pokedex number
	db 14 ; level
	db 2, 0 ; length
	dw 17 * 10 ; weight
	tx ClefairyDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

CinccinoExCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx ClefableCardGfx ; gfx
	tx CinccinoExName ; name
	db STAR ; rarity
	db LABORATORY | JUNGLE ; sets
	dw CINCCINO_EX
	db 120 ; hp
	db STAGE1 ; stage
	tx MinccinoName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SmoothCoatName ; name
	tx SmoothCoatDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw HaunterTransparencyEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx EnergizedSlapName ; name
	tx EnergizedSlapDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw CinccinoExEnergizedSlapEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx MetronomeName ; name
	; tx ClefablesMetronomeDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw ClefableMetronomeEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	; ; attack 2
	; energy COLORLESS, 2 ; energies
	; tx MinimizeName ; name
	; tx ClefablesMinimizeDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw ClefableMinimizeEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 20
	; db ATK_ANIM_PROTECT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx FairyName ; category
	db 36 ; Pokedex number
	db 50 ; level
	db 4, 3 ; length
	dw 88 * 10 ; weight
	tx ClefableDescription ; description
	db 0 ; AI info

SlakothCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx JigglypuffLv12CardGfx ; gfx
	tx SlakothName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw SLAKOTH
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx YawnName ; name
	tx InflictSleepDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw JigglypuffLullabyEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_LULLABY ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx FirstAidName ; name
	; tx FirstAidDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw JigglypuffFirstAidEffectCommands ; effect commands
	; db NONE ; flags 1
	; db HEAL_USER ; flags 2
	; db NONE ; flags 3
	; db 1
	; db ATK_ANIM_RECOVER ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx DoubleEdgeName ; name
	; tx JigglypuffsDoubleEdgeDescription ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_NORMAL ; category
	; dw JigglypuffDoubleEdgeEffectCommands ; effect commands
	; db LOW_RECOIL ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 20
	; db ATK_ANIM_HIT_RECOIL ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx BalloonName ; category
	db 39 ; Pokedex number
	db 12 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx JigglypuffLv12Description ; description
	db HAS_EVOLUTION ; AI info

SneaselCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx JigglypuffLv13CardGfx ; gfx
	tx SneaselName ; name
	db CIRCLE ; rarity
	db EVOLUTION | GB ; sets
	dw SNEASEL
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 2
	energy DARKNESS, 1 ; energies
	tx ScratchName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	energy DARKNESS, 2 ; energies
	tx StrikeTheSleeperName ; name
	tx StrikeTheSleeperDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SneaselStrikeTheSleeperEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_CAT_PUNCH ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx FriendshipSongName ; name
	; tx FriendshipSongDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; categoryVigorothName
	; dw JigglypuffFriendshipSongEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	; ; attack 2
	; energy COLORLESS, 2 ; energies
	; tx ExpandName ; name
	; tx ExpandDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw JigglypuffExpandEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 10
	; db ATK_ANIM_EXPAND ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx BalloonName ; category
	db 39 ; Pokedex number
	db 13 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx JigglypuffLv13Description ; description
	db HAS_EVOLUTION ; AI info

VigorothCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx JigglypuffLv14CardGfx ; gfx
	tx VigorothName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | JUNGLE ; sets
	dw VIGOROTH
	db 50 ; hp
	db STAGE1 ; stage
	tx SlakothName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx ConfrontName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx SharpClawsName ; name
	tx SharpClawsDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx LullabyName ; name
	; tx InflictSleepDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw JigglypuffLullabyEffectCommands ; effect commands
	; db INFLICT_SLEEP ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_LULLABY ; animation

	; ; attack 2
	; energy COLORLESS, 2 ; energies
	; tx PoundName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx BalloonName ; category
	db 39 ; Pokedex number
	db 14 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx JigglypuffLv14Description ; description
	db HAS_EVOLUTION ; AI info

SlakingExCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx WigglytuffCardGfx ; gfx
	tx SlakingExName ; name
	db STAR ; rarity
	db COLOSSEUM | JUNGLE ; sets
	dw SLAKING_EX
	db 170 ; hp
	db STAGE2 ; stage
	tx VigorothName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx BornToSlackName ; name
	tx BornToSlackDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw BaxcaliburSuperColdEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx GreatSwingName ; name
	tx DiscardAnEnergyDescription ; description
	dw NONE ; description (cont)
	db 140 ; damage
	db DAMAGE_NORMAL ; category
	dw FlareonFlamethrowerEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_HIT ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx LullabyName ; name
	; tx InflictSleepDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw WigglytuffLullabyEffectCommands ; effect commands
	; db INFLICT_SLEEP ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_LULLABY ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx DoTheWaveName ; name
	; tx DoTheWaveDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_PLUS ; category
	; dw WigglytuffDoTheWaveEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 4 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx BalloonName ; category
	db 40 ; Pokedex number
	db 50 ; level
	db 3, 3 ; length
	dw 26 * 10 ; weight
	tx WigglytuffDescription ; description
	db 0 ; AI info

MeowthLv14Card:
	db TYPE_PKMN_COLORLESS ; type
	gfx MeowthLv14CardGfx ; gfx
	tx MeowthName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | GB ; sets
	dw MEOWTH_LV14
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx CatPunchName ; name
	tx CatPunchDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MeowthCatPunchEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_CAT_PUNCH ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx ScratchCatName ; category
	db 52 ; Pokedex number
	db 14 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MeowthLv14Description ; description
	db HAS_EVOLUTION ; AI info

DunsparceCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx MeowthLv15CardGfx ; gfx
	tx DunsparceName ; name
	db CIRCLE ; rarity
	db MYSTERY | JUNGLE ; sets
	dw DUNSPARCE
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx GnawName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx PayDayName ; name
	; tx PayDayDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw MeowthPayDayEffectCommands ; effect commands
	; db DRAW_CARD ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx DigName ; name
	tx SwimFreelyDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SwimFreelyEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 0 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ScratchCatName ; category
	db 52 ; Pokedex number
	db 15 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MeowthLv15Description ; description
	db AI_INFO_BENCH_UTILITY | AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

DudunsparceCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx PersianCardGfx ; gfx
	tx DudunsparceName ; name
	db DIAMOND ; rarity
	db MYSTERY | JUNGLE ; sets
	dw DUDUNSPARCE
	db 70 ; hp
	db STAGE1 ; stage
	tx DunsparceName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx RunAwayDrawName ; name
	tx RunAwayDrawDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DudunsparceRunAwayDrawEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 1
	energy COLORLESS, 3 ; energies
	tx LandCrushName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	; energy COLORLESS, 3 ; energies
	; tx PounceName ; name
	; tx PounceDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PersianPounceEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 10
	; db ATK_ANIM_HIT ; animation

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ClassyCatName ; category
	db 53 ; Pokedex number
	db 25 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx PersianDescription ; description
	db 0 ; AI info

SquawkabillyExCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx FarfetchdCardGfx ; gfx
	tx SquawkabillyExName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw SQUAWKABILLY_EX
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SquawkAndSeizeName ; name
	tx SquawkAndSeizeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SquawkabillyExSquawkAndSeizeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2 TODO replace this
	energy COLORLESS, 1 ; energies
	tx TackleName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx LeekSlapName ; name
	; tx LeekSlapDescription ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw FarfetchdLeekSlapEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_WHIP ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx PotSmashName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_POT_SMASH ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx WildDuckName ; category
	db 83 ; Pokedex number
	db 50 ; level
	db 2, 7 ; length
	dw 33 * 10 ; weight
	tx FarfetchdDescription ; description
	db AI_INFO_UNK_03 ; AI info

DoduoCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx DoduoCardGfx ; gfx
	tx DoduoName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw DODUO
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx RecklessChargeName ; name
	tx TenRecoilDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw TenRecoilEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx FuryAttackName ; name
	; tx DoubleAttackX10Description ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_X ; category
	; dw DoduoFuryAttackEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_MULTIPLE_SLASH ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx TwinBirdName ; category
	db 84 ; Pokedex number
	db 10 ; level
	db 4, 7 ; length
	dw 86 * 10 ; weight
	tx DoduoDescription ; description
	db AI_INFO_UNK_03 | HAS_EVOLUTION ; AI info

DodrioCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx DodrioCardGfx ; gfx
	tx DodrioName ; name
	db DIAMOND ; rarity
	db LABORATORY | JUNGLE ; sets
	dw DODRIO
	db 60 ; hp
	db STAGE1 ; stage
	tx DoduoName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ZoomingDrawName ; name
	tx ZoomingDrawDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw ZoomingDrawEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx BallisticBeakName ; name
	tx BallisticBeakDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw BallisticBeakEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	; attack 1
	; energy 0 ; energies
	; tx RetreatAidName ; name
	; tx RetreatAidDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw DodrioRetreatAidEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	; energy COLORLESS, 3 ; energies
	; tx RageName ; name
	; tx DodriosRageDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_PLUS ; category
	; dw DodrioRageEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db BOOST_IF_TAKEN_DAMAGE ; flags 3
	; db 0
	; db ATK_ANIM_BIG_HIT ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx TriplebirdName ; category
	db 85 ; Pokedex number
	db 28 ; level
	db 5, 11 ; length
	dw 188 * 10 ; weight
	tx DodrioDescription ; description
	db AI_INFO_BENCH_UTILITY ; AI info

OrthwormExCard:
	db TYPE_PKMN_METAL ; type
	gfx LickitungCardGfx ; gfx
	tx OrthwormExName ; name
	db DIAMOND ; rarity
	db MYSTERY | JUNGLE ; sets
	dw ORTHWORM_EX
	db 110 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PummelingPaybackName ; name
	tx PummelingPaybackDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MachampStrikesBackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy COLORLESS, 4 ; energies
	tx RockTombName ; name
	tx NoRetreatDescription ; description
	dw NONE ; description (cont)
	db 80 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokExBindDownEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_GOO ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx TongueWrapName ; name
	; tx MayInflictParalysisDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw LickitungTongueWrapEffectCommands ; effect commands
	; db INFLICT_PARALYSIS ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_GOO ; animation

	; ; attack 2
	; energy COLORLESS, 2 ; energies
	; tx SupersonicName ; name
	; tx MayInflictConfusionDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw LickitungSupersonicEffectCommands ; effect commands
	; db INFLICT_CONFUSION ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SUPERSONIC ; animation

	db 4 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx LickingName ; category
	db 108 ; Pokedex number
	db 50 ; level
	db 3, 11 ; length
	dw 144 * 10 ; weight
	tx LickitungDescription ; description
	db 0 ; AI info

ChanseyCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx ChanseyCardGfx ; gfx
	tx ChanseyName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw CHANSEY
	db 120 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx ScrunchName ; name
	tx ScrunchDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ChanseyScrunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx DoubleEdgeName ; name
	tx ChanseysDoubleEdgeDescription ; description
	dw NONE ; description (cont)
	db 80 ; damage
	db DAMAGE_NORMAL ; category
	dw ChanseyDoubleEdgeEffectCommands ; effect commands
	db HIGH_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 80
	db ATK_ANIM_HIT_RECOIL ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx EggName ; category
	db 113 ; Pokedex number
	db 55 ; level
	db 3, 7 ; length
	dw 76 * 10 ; weight
	tx ChanseyDescription ; description
	db AI_INFO_UNK_08 ; AI info

BloodmoonUrsalunaExCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx KangaskhanCardGfx ; gfx
	tx BloodmoonUrsalunaExName ; name
	db STAR ; rarity
	db COLOSSEUM | JUNGLE ; sets
	dw BLOODMOON_URSALUNA_EX
	db 130 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SeasonedSkillName ; name
	tx SeasonedSkillDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw BloodmoonUrsalunaExSeasonedSkillEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 5 ; energies
	tx BloodMoonName ; name
	tx NextTurnCantAttackDescription ; description
	dw NONE ; description (cont)
	db 120 ; damage
	db DAMAGE_NORMAL ; category
	dw BloodmoonUrsalunaExBloodMoonEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx FetchName ; name
	; tx FetchDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw KangaskhanFetchEffectCommands ; effect commands
	; db DRAW_CARD ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy COLORLESS, 4 ; energies
	; tx CometPunchName ; name
	; tx QuadrupleAttackX20Description ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_X ; category
	; dw KangaskhanCometPunchEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_PUNCH ; animation

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ParentName ; category
	db 115 ; Pokedex number
	db 50 ; level
	db 7, 3 ; length
	dw 176 * 10 ; weight
	tx KangaskhanDescription ; description
	db 0 ; AI info

TaurosCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx TaurosCardGfx ; gfx
	tx TaurosName ; name
	db DIAMOND ; rarity
	db MYSTERY | JUNGLE ; sets
	dw TAUROS
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx GatherTheCrewName ; name
	tx GatherTheCrewDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw TaurosGatherTheCrewEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx RageName ; name
	tx RageDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw TaurosRageEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_RAMPAGE ; animation

	; attack 1
	; energy COLORLESS, 2 ; energies
	; tx StompName ; name
	; tx StompDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_PLUS ; category
	; dw TaurosStompEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 1
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx RampageName ; name
	; tx RampageDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_PLUS ; category
	; dw TaurosRampageEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db BOOST_IF_TAKEN_DAMAGE ; flags 3
	; db 0
	; db ATK_ANIM_RAMPAGE ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx WildBullName ; category
	db 128 ; Pokedex number
	db 32 ; level
	db 4, 7 ; length
	dw 195 * 10 ; weight
	tx TaurosDescription ; description
	db 0 ; AI info

AzelfCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx PorygonCardGfx ; gfx
	tx AzelfName ; name
	db STAR ; rarity
	db LABORATORY | GB ; sets
	dw AZELF
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx NeurokinesisName ; name
	tx NeurokinesisDescription; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw AzelfNeuroKinesisEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation	

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; ; attack 1
	; energy COLORLESS, 1 ; energies
	; tx PoundName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx MorphName ; name
	; tx MorphDescription ; description
	; tx MorphDescriptionCont ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw DittoMorphEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 3
	; db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx TransformName ; category
	db 132 ; Pokedex number
	db 19 ; level
	db 1, 0 ; length
	dw 9 * 10 ; weight
	tx DittoDescription ; description
	db 0 ; AI info

EeveeCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx EeveeCardGfx ; gfx
	tx EeveeName ; name
	db CIRCLE ; rarity
	db EVOLUTION | JUNGLE ; sets
	dw EEVEE
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx CallForFamilyName ; name
	tx GatherTheCrewDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw TaurosGatherTheCrewEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy COLORLESS, 2 ; energies
	tx GnawName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx TailWagName ; name
	; tx TailWagDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw EeveeTailWagEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	; ; attack 2
	; energy COLORLESS, 2 ; energies
	; tx QuickAttackName ; name
	; tx QuickAttackDescription ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_PLUS ; category
	; dw EeveeQuickAttackEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_QUICK_ATTACK ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx EvolutionName ; category
	db 133 ; Pokedex number
	db 12 ; level
	db 1, 0 ; length
	dw 14 * 10 ; weight
	tx EeveeDescription ; description
	db AI_INFO_BENCH_UTILITY | HAS_EVOLUTION ; AI info

UxieCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DittoCardGfx ; gfx
	tx UxieName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw UXIE
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx PainfulMemoriesName ; name
	tx PainfulMemoriesDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw UxiePainfulMemoriesEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	; attack 2 EMPTY ATTACK
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx Conversion1Name ; name
	; tx Conversion1Description ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw PorygonConversion1EffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy COLORLESS, 2 ; energies
	; tx Conversion2Name ; name
	; tx Conversion2Description ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw PorygonConversion2EffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx VirtualName ; category
	db 137 ; Pokedex number
	db 12 ; level
	db 2, 7 ; length
	dw 80 * 10 ; weight
	tx PorygonDescription ; description
	db 0 ; AI info

SnorlaxCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx SnorlaxCardGfx ; gfx
	tx SnorlaxName ; name
	db STAR ; rarity
	db COLOSSEUM | JUNGLE ; sets
	dw SNORLAX
	db 90 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ThickSkinnedName ; name
	tx ThickSkinnedDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SnorlaxThickSkinnedEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx BodySlamName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw SnorlaxBodySlamEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 4 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx SleepingName ; category
	db 143 ; Pokedex number
	db 20 ; level
	db 6, 11 ; length
	dw 1014 * 10 ; weight
	tx SnorlaxDescription ; description
	db 0 ; AI info

BagonCard:
	db TYPE_PKMN_DRAGON ; type
	gfx DratiniCardGfx ; gfx
	tx BagonName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw BAGON
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx BiteName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIRE, 1, WATER, 1 ; energies
	tx RecklessChargeName ; name
	tx TenRecoilDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw TenRecoilEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx PoundName ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 10 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy 0 ; energies
	; dw NONE ; name
	; dw NONE ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw NONE ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx DragonName ; category
	db 147 ; Pokedex number
	db 10 ; level
	db 5, 11 ; length
	dw 7 * 10 ; weight
	tx DratiniDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info

ShelgonCard:
	db TYPE_PKMN_DRAGON ; type
	gfx DragonairCardGfx ; gfx
	tx ShelgonName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw SHELGON
	db 50 ; hp
	db STAGE1 ; stage
	tx BagonName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx GuardPressName ; name
	tx GuardPressDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw JigglypuffExpandEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_EXPAND ; animation

	; attack 2
	energy FIRE, 1, WATER, 1, COLORLESS, 1 ; energies
	tx HeavyImpactName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	; energy COLORLESS, 3 ; energies
	; tx SlamName ; name
	; tx DoubleAttackX30Description ; description
	; dw NONE ; description (cont)
	; db 30 ; damage
	; db DAMAGE_X ; category
	; dw DragonairSlamEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	; ; attack 2
	; energy COLORLESS, 4 ; energies
	; tx HyperBeamName ; name
	; tx Discard1EnergyFromTargetDescription ; description
	; dw NONE ; description (cont)
	; db 20 ; damage
	; db DAMAGE_NORMAL ; category
	; dw DragonairHyperBeamEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db SPECIAL_AI_HANDLING ; flags 3
	; db 0
	; db ATK_ANIM_HYPER_BEAM ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx DragonName ; category
	db 148 ; Pokedex number
	db 33 ; level
	db 13, 1 ; length
	dw 36 * 10 ; weight
	tx DragonairDescription ; description
	db HAS_EVOLUTION ; AI info

DragoniteLv41Card:
	db TYPE_PKMN_COLORLESS ; type
	gfx DragoniteLv41CardGfx ; gfx
	tx DragoniteName ; name
	db STAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw DRAGONITE_LV41
	db 100 ; hp
	db STAGE2 ; stage
	tx ShelgonName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx HealingWindName ; name
	tx HealingWindDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DragoniteHealingWindEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HEALING_WIND ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx SlamName ; name
	tx DoubleAttackX30Description ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw DragoniteLv41SlamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db WR_FIGHTING ; resistance
	tx DragonName ; category
	db 149 ; Pokedex number
	db 41 ; level
	db 7, 3 ; length
	dw 463 * 10 ; weight
	tx DragoniteLv41Description ; description
	db 0 ; AI info

SalamenceExCard:
	db TYPE_PKMN_DRAGON ; type
	gfx DragoniteLv45CardGfx ; gfx
	tx SalamenceExName ; name
	db STAR ; rarity
	db MYSTERY | FOSSIL ; sets
	dw SALAMENCE_EX
	db 160 ; hp
	db STAGE2 ; stage
	tx ShelgonName ; pre-evo name

	; attack 1
	energy FIRE, 1, COLORLESS, 2 ; energies
	tx WideBlastName ; name
	tx WideBlastDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SalamenceExWideBlastEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	; attack 2
	energy FIRE, 1, WATER, 1, COLORLESS, 2 ; energies
	tx DragonImpactName ; name
	tx DragonImpactDescription ; description
	dw NONE ; description (cont)
	db 150 ; damage
	db DAMAGE_NORMAL ; category
	dw SalamenceExDragonImpactEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 6
	db ATK_ANIM_FIRE_SPIN ; animation

	; attack 1
	; energy 0 ; energies
	; tx StepInName ; name
	; tx StepInDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db POKEMON_POWER ; category
	; dw DragoniteStepInEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_GLOW_EFFECT ; animation

	; ; attack 2
	; energy COLORLESS, 4 ; energies
	; tx SlamName ; name
	; tx DoubleAttackX40Description ; description
	; dw NONE ; description (cont)
	; db 40 ; damage
	; db DAMAGE_X ; category
	; dw DragoniteLv45SlamEffectCommands ; effect commands
	; db NONE ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx DragonName ; category
	db 149 ; Pokedex number
	db 50 ; level
	db 7, 3 ; length
	dw 463 * 10 ; weight
	tx DragoniteDescription ; description
	db 0 ; AI info

GrassEnergyCard:
	db TYPE_ENERGY_GRASS ; type
	gfx GrassEnergyCardGfx ; gfx
	tx GrassEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw GRASS_ENERGY
	dw GrassEnergyEffectCommands ; effect commands
	tx GrassEnergyDescription ; description
	dw NONE ; description (cont)

FireEnergyCard:
	db TYPE_ENERGY_FIRE ; type
	gfx FireEnergyCardGfx ; gfx
	tx FireEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw FIRE_ENERGY
	dw FireEnergyEffectCommands ; effect commands
	tx FireEnergyDescription ; description
	dw NONE ; description (cont)

WaterEnergyCard:
	db TYPE_ENERGY_WATER ; type
	gfx WaterEnergyCardGfx ; gfx
	tx WaterEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw WATER_ENERGY
	dw WaterEnergyEffectCommands ; effect commands
	tx WaterEnergyDescription ; description
	dw NONE ; description (cont)

LightningEnergyCard:
	db TYPE_ENERGY_LIGHTNING ; type
	gfx LightningEnergyCardGfx ; gfx
	tx LightningEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw LIGHTNING_ENERGY
	dw LightningEnergyEffectCommands ; effect commands
	tx LightningEnergyDescription ; description
	dw NONE ; description (cont)

FightingEnergyCard:
	db TYPE_ENERGY_FIGHTING ; type
	gfx FightingEnergyCardGfx ; gfx
	tx FightingEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw FIGHTING_ENERGY
	dw FightingEnergyEffectCommands ; effect commands
	tx FightingEnergyDescription ; description
	dw NONE ; description (cont)

PsychicEnergyCard:
	db TYPE_ENERGY_PSYCHIC ; type
	gfx PsychicEnergyCardGfx ; gfx
	tx PsychicEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw PSYCHIC_ENERGY
	dw PsychicEnergyEffectCommands ; effect commands
	tx PsychicEnergyDescription ; description
	dw NONE ; description (cont)

DarknessEnergyCard:
	db TYPE_ENERGY_DARKNESS ; type
	gfx DarknessEnergyCardGfx ; gfx
	tx DarknessEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw DARKNESS_ENERGY
	dw DarknessEnergyEffectCommands ; effect commands
	tx DarknessEnergyDescription ; description
	dw NONE ; description (cont)

MetalEnergyCard:
	db TYPE_ENERGY_METAL ; type
	gfx MetalEnergyCardGfx ; gfx
	tx MetalEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw METAL_ENERGY
	dw MetalEnergyEffectCommands ; effect commands
	tx MetalEnergyDescription ; description
	dw NONE ; description (cont)

FairyEnergyCard:
	db TYPE_ENERGY_FAIRY ; type
	gfx FairyEnergyCardGfx ; gfx
	tx FairyEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw FAIRY_ENERGY
	dw FairyEnergyEffectCommands ; effect commands
	tx FairyEnergyDescription ; description
	dw NONE ; description (cont)

DoubleColorlessEnergyCard:
	db TYPE_ENERGY_DOUBLE_COLORLESS ; type
	gfx DoubleColorlessEnergyCardGfx ; gfx
	tx DoubleColorlessEnergyName ; name
	db DIAMOND ; rarity
	db ENERGY | NONE ; sets
	dw DOUBLE_COLORLESS_ENERGY
	dw DoubleColorlessEnergyEffectCommands ; effect commands
	tx DoubleColorlessEnergyDescription ; description
	dw NONE ; description (cont)

ProfessorsResearchCard:
	db TYPE_TRAINER;_SUPPORTER ; type
	gfx ProfessorOakCardGfx ; gfx
	tx ProfessorsResearchName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw PROFESSORS_RESEARCH
	dw ProfessorsResearchEffectCommands ; effect commands
	tx ProfessorsResearchDescription ; description
	dw NONE ; description (cont)

IonoCard:
	db TYPE_TRAINER ; type
	gfx ImposterProfessorOakCardGfx ; gfx
	tx IonoName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw IONO
	dw IonoEffectCommands ; effect commands
	tx IonoDescription ; description
	dw NONE ; description (cont)

NemonaCard:
	db TYPE_TRAINER;_SUPPORTER ; type
	gfx BillCardGfx ; gfx
	tx NemonaName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw NEMONA
	dw NemonaEffectCommands ; effect commands
	tx NemonaDescription ; description
	tx NemonaDescriptionCont ; description (cont)

MrFujiCard:
	db TYPE_TRAINER ; type
	gfx MrFujiCardGfx ; gfx
	tx MrFujiName ; name
	db DIAMOND ; rarity
	db MYSTERY | FOSSIL ; sets
	dw MR_FUJI
	dw MrFujiEffectCommands ; effect commands
	tx MrFujiDescription ; description
	dw NONE ; description (cont)

LilliesDeterminationCard:
	db TYPE_TRAINER ; type
	gfx LassCardGfx ; gfx
	tx LilliesDeterminationName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw LILLIES_DETERMINATION
	dw LilliesDeterminationEffectCommands ; effect commands
	tx LilliesDeterminationDescription ; description
	dw NONE ; description (cont)

CrispinCard:
	db TYPE_TRAINER ; type
	gfx ImakuniCardGfx ; gfx
	tx CrispinName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw CRISPIN
	dw CrispinEffectCommands ; effect commands
	tx CrispinDescription ; description
	dw NONE ; description (cont)

PokemonTraderCard:
	db TYPE_TRAINER ; type
	gfx PokemonTraderCardGfx ; gfx
	tx PokemonTraderName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw POKEMON_TRADER
	dw PokemonTraderEffectCommands ; effect commands
	tx PokemonTraderDescription ; description
	dw NONE ; description (cont)

RareCandyCard:
	db TYPE_TRAINER ; type
	gfx PokemonBreederCardGfx ; gfx
	tx RareCandyName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw RARE_CANDY
	dw RareCandyEffectCommands ; effect commands
	tx RareCandyDescription ; description
	dw NONE ; description (cont)

; ClefairyDollCard:
; 	db TYPE_TRAINER ; type
; 	gfx ClefairyDollCardGfx ; gfx
; 	tx ClefairyDollName ; name
; 	db STAR ; rarity
; 	db EVOLUTION | NONE ; sets
; 	dw CLEFAIRY_DOLL
; 	dw ClefairyDollEffectCommands ; effect commands
; 	tx ClefairyDollDescription ; description
; 	tx ClefairyDollDescriptionCont ; description (cont)

CleffaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx ClefairyCardGfx ; gfx
	tx CleffaName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw CLEFFA
	db 20 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	energy 0 ; energies
	tx GraspingDrawName ; name
	tx GraspingDrawDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw CleffaGraspingDrawEffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 1
	; energy COLORLESS, 1 ; energies
	; tx SingName ; name
	; tx MayInflictSleepDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db DAMAGE_NORMAL ; category
	; dw ClefairySingEffectCommands ; effect commands
	; db INFLICT_SLEEP ; flags 1
	; db NONE ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_SING ; animation

	; ; attack 2
	; energy COLORLESS, 3 ; energies
	; tx MetronomeName ; name
	; tx ClefairysMetronomeDescription ; description
	; dw NONE ; description (cont)
	; db 0 ; damage
	; db RESIDUAL ; category
	; dw ClefairyMetronomeEffectCommands ; effect commands
	; db NONE ; flags 1
	; db FLAG_2_BIT_6 ; flags 2
	; db NONE ; flags 3
	; db 0
	; db ATK_ANIM_NONE ; animation

	db 0 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx FairyName ; category
	db 35 ; Pokedex number
	db 14 ; level
	db 2, 0 ; length
	dw 17 * 10 ; weight
	tx ClefairyDescription ; description
	db AI_INFO_ENCOURAGE_EVO | HAS_EVOLUTION ; AI info


EnergyRetrievalCard:
	db TYPE_TRAINER ; type
	gfx EnergyRetrievalCardGfx ; gfx
	tx EnergyRetrievalName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw ENERGY_RETRIEVAL
	dw EnergyRetrievalEffectCommands ; effect commands
	tx EnergyRetrievalDescription ; description
	dw NONE ; description (cont)

SuperiorEnergyRetrievalCard:
	db TYPE_TRAINER ; type
	gfx SuperEnergyRetrievalCardGfx ; gfx
	tx SuperiorEnergyRetrievalName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw SUPERIOR_ENERGY_RETRIEVAL
	dw SuperiorEnergyRetrievalEffectCommands ; effect commands
	tx SuperiorEnergyRetrievalDescription ; description
	dw NONE ; description (cont)

EarthenVesselCard:
	db TYPE_TRAINER ; type
	gfx EarthenVesselCardGfx ; gfx
	tx EarthenVesselName ; name
	db CIRCLE ; rarity
	db EVOLUTION | FOSSIL ; sets
	dw EARTHEN_VESSEL
	dw EarthenVesselEffectCommands ; effect commands
	tx EarthenVesselDescription ; description
	tx EarthenVesselDescriptionCont ; description (cont)

EnergyRemovalCard:
	db TYPE_TRAINER ; type
	gfx EnergyRemovalCardGfx ; gfx
	tx EnergyRemovalName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw ENERGY_REMOVAL
	dw EnergyRemovalEffectCommands ; effect commands
	tx EnergyRemovalDescription ; description
	dw NONE ; description (cont)

EnergySwitchCard:
	db TYPE_TRAINER ; type
	gfx SuperEnergyRemovalCardGfx ; gfx
	tx EnergySwitchName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw ENERGY_SWITCH
	dw EnergySwitchEffectCommands ; effect commands
	tx EnergySwitchDescription ; description
	dw NONE ; description (cont)

SwitchCard:
	db TYPE_TRAINER ; type
	gfx SwitchCardGfx ; gfx
	tx SwitchName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SWITCH
	dw SwitchEffectCommands ; effect commands
	tx SwitchDescription ; description
	dw NONE ; description (cont)

PokemonCenterCard:
	db TYPE_TRAINER ; type
	gfx PokemonCenterCardGfx ; gfx
	tx PokemonCenterName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw POKEMON_CENTER
	dw PokemonCenterEffectCommands ; effect commands
	tx PokemonCenterDescription ; description
	dw NONE ; description (cont)

NestBallCard:
	db TYPE_TRAINER ; type
	gfx PokeBallCardGfx ; gfx
	tx NestBallName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | JUNGLE ; sets
	dw NEST_BALL
	dw NestBallEffectCommands ; effect commands
	tx NestBallDescription ; description
	dw NONE ; description (cont)

ScoopUpCard:
	db TYPE_TRAINER ; type
	gfx ScoopUpCardGfx ; gfx
	tx ScoopUpName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw SCOOP_UP
	dw ScoopUpEffectCommands ; effect commands
	tx ScoopUpDescription ; description
	dw NONE ; description (cont)

UltraBallCard:
	db TYPE_TRAINER ; type
	gfx ComputerSearchCardGfx ; gfx
	tx UltraBallName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw ULTRA_BALL
	dw UltraBallEffectCommands;ComputerSearchEffectCommands ; effect commands
	tx UltraBallDescription ; description
	dw NONE ; description (cont)

PokedexCard:
	db TYPE_TRAINER ; type
	gfx PokedexCardGfx ; gfx
	tx PokedexName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw POKEDEX
	dw PokedexEffectCommands ; effect commands
	tx PokedexDescription ; description
	dw NONE ; description (cont)

PlusPowerCard:
	db TYPE_TRAINER ; type
	gfx PlusPowerCardGfx ; gfx
	tx PlusPowerName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw PLUSPOWER
	dw PlusPowerEffectCommands ; effect commands
	tx PlusPowerDescription ; description
	dw NONE ; description (cont)

DefenderCard:
	db TYPE_TRAINER ; type
	gfx DefenderCardGfx ; gfx
	tx DefenderName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw DEFENDER
	dw BraveryCharmEffectCommands;DefenderEffectCommands ; effect commands
	tx DefenderDescription ; description
	dw NONE ; description (cont)

ItemFinderCard:
	db TYPE_TRAINER ; type
	gfx ItemFinderCardGfx ; gfx
	tx ItemFinderName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw ITEM_FINDER
	dw ItemFinderEffectCommands ; effect commands
	tx ItemFinderDescription ; description
	dw NONE ; description (cont)

BosssOrdersCard:
	db TYPE_TRAINER ; type
	gfx GustOfWindCardGfx ; gfx
	tx BosssOrdersName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw BOSSS_ORDERS
	dw BosssOrdersEffectCommands ; effect commands
	tx BosssOrdersDescription ; description
	dw NONE ; description (cont)

DevolutionSprayCard:
	db TYPE_TRAINER ; type
	gfx DevolutionSprayCardGfx ; gfx
	tx DevolutionSprayName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw DEVOLUTION_SPRAY
	dw DevolutionSprayEffectCommands ; effect commands
	tx DevolutionSprayDescription ; description
	tx DevolutionSprayDescriptionCont ; description (cont)

PotionCard:
	db TYPE_TRAINER ; type
	gfx PotionCardGfx ; gfx
	tx PotionName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw POTION
	dw PotionEffectCommands ; effect commands
	tx PotionDescription ; description
	dw NONE ; description (cont)

SuperPotionCard:
	db TYPE_TRAINER ; type
	gfx SuperPotionCardGfx ; gfx
	tx SuperPotionName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw SUPER_POTION
	dw SuperPotionEffectCommands ; effect commands
	tx SuperPotionDescription ; description
	dw NONE ; description (cont)

FullHealCard:
	db TYPE_TRAINER ; type
	gfx FullHealCardGfx ; gfx
	tx FullHealName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw FULL_HEAL
	dw DefenderEffectCommands;FullHealEffectCommands ; effect commands
	tx FullHealDescription ; description
	dw NONE ; description (cont)

ReviveCard:
	db TYPE_TRAINER ; type
	gfx ReviveCardGfx ; gfx
	tx ReviveName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw REVIVE
	dw ReviveEffectCommands ; effect commands
	tx ReviveDescription ; description
	dw NONE ; description (cont)

SuperRodCard:
	db TYPE_TRAINER ; type
	gfx MaintenanceCardGfx ; gfx
	tx SuperRodName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw SUPER_ROD
	dw SuperRodEffectCommands ; effect commands
	tx SuperRodDescription ; description
	dw NONE ; description (cont)

PokemonFluteCard:
	db TYPE_TRAINER ; type
	gfx PokemonFluteCardGfx ; gfx
	tx PokemonFluteName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw POKEMON_FLUTE
	dw PokemonFluteEffectCommands ; effect commands
	tx PokemonFluteDescription ; description
	dw NONE ; description (cont)

GamblerCard:
	db TYPE_TRAINER ; type
	gfx GamblerCardGfx ; gfx
	tx GamblerName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw GAMBLER
	dw GamblerEffectCommands ; effect commands
	tx GamblerDescription ; description
	dw NONE ; description (cont)

NightStretcherCard:
	db TYPE_TRAINER ; type
	gfx RecycleCardGfx ; gfx
	tx NightStretcherName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw NIGHT_STRETCHER
	dw NightStretcherEffectCommands ; effect commands
	tx NightStretcherDescription ; description
	dw NONE ; description (cont)
