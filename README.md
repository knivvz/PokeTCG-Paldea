
# Pokemon TCG Rainbow Engine
Expansion of the Pokemon TCG decomp project that takes the classic Game Boy game and adds in a bunch of new features for ROM hackers to make use of. Openly available for you to make use of, so long as you credit me and anyone in the Credits section.
**NOTE:** This is not a game in of itself - while you can download and compile it, all it will currently produce is a near-copy of the original game with some different menu options. It's designed to be used as a base for people to create their own hacks of the game with.

Based off of [ElectroDeoxys' Pokemon TCG Extended repo](https://github.com/ElectroDeoxys/Pokemon-TCG-Extended) which is based off their [tinytcg repo](https://github.com/ElectroDeoxys/poketcg/tree/tinytcg) which is based off the original [poketcg decomp](https://github.com/pret/poketcg). *[deep breath]*
## Features:
 - Fully functional Darkness type, including the accompanying icons, Energy card, and filter for the deck construction menu.
	 - Partial data for Metal, Fairy and Dragon types is in place but these are not ready to be used as of yet.
 - Support for up to 511 cards as opposed to the 254 limit of the original ROM (thanks to ElectroDeoxys' extended engine)
## Removed content
 -   GameBoy tilemaps and compatibility functionality;
 -   Unused content (Japanese title screen, unreferenced routines, unused text, debug menus)
 -   Printer functions
 -   Card Pop!
 -   Gift Center
 -   Link duels
## Planned content
 - Metal, Fairy and Dragon types
 - Updated deck construction screen that
 - Backporting graphic systems from Pokemon TCG 2 that allows for more colourful card sprites
 - Backporting the new cards from Pokemon TCG 2 (up to Team Rocket series, with a few outlier cards)
 - Adding in cards from expansions even further than Team Rocket
	 - I'm mostly concerned with the Neo sets, and am not likely to go further than the e-series (if I get that far)
	 - Even with the extended ROM base there's still limitations on how many cards can be added so these will most likely be separated into different branches
 - Seeing if there's a way to work in something similar to [pokecrystal16](https://github.com/vulcandth/pokecrystal16)'s indirection tables to boost the card count even further. A version with every card from the Base Set to Skyridge is the dream.
	 - Essentially these are a very clever system set up by people much smarter than me that allows Pokemon Crystal to have way more Pokemon, moves, and items than usual.
	 - The game uses 8-bit indexes for this content, which limits how much you can add. Indirection tables allow you touse 16-bit indexes for Pokemon, moves etc. while the game only loads in the data that it needs to
 - Adding multiplayer functionality back in LOL (even if just as an optional extra in a separate branch)
## Branches:
 - [main](https://github.com/MarioBones/PokeTCG-Rainbow-Engine/tree/main)
	 - Current, stable branch. **You want this branch in 99% of circumstances**
 - [develop](https://github.com/MarioBones/PokeTCG-Rainbow-Engine/tree/develop)
	 - Development branch for testing new features. More up-to-date than main, but also very likely unstable and full of in-progress, not-fully-tested code.
## Credits:
### Graphics:
 - Me (Mario_Bones):
	 - Type symbols for Darkness, Metal, Fairy and Dragon types
	 - Card icons for Darkness, Metal, Fairy and Dragon types
 - PaperFire88
	 - [Darkness Energy card graphic](https://www.deviantart.com/paperfire88/art/Fairy-Metal-Darkness-Energy-GB1-and-2-Shiny-956324645)
### Code:
 - [ElectroDeoxys](https://github.com/ElectroDeoxys/) - Pokemon TCG Extended engine that allows for adding of more cards
### Special Thanks:
 - Everyone who's submitted any code or improvements to the [poketcg decomp](https://github.com/pret/poketcg) project
 - Imakuni for those dance moves
 - My girlfriend for listening to me talk about VRAM banks and why they're exciting