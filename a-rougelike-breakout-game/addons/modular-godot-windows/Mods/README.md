# Mods!
### This folder contains all built in mods for this game. You can add your own mods if you want. The mods are created in the form of a .pck file (made in Godot) and follow a few simple rules:
<br/><br/>

## 1. Each folder represents a different mod.
Each folder will be loaded and parsed automatically. Each mod folder will contain a flag file as well as one or more Godot package files to be loaded.

A typical mod folder might look like the following:

	./Mods/
		AwesomeMod/
			ModType_AutoLoad
			AwesomeModByMatt.pck
		
		TexturePacks/
			ModType_SelectOne
			BadTexturesByMatt.pck
			BetterTexturesByJessica.pck
	
		AdditionalAis/
			ModType_SelectAny
			SuperEasyAi.pck
			ExtraHardAi.pck
			ActuallySkynet.pck

		... etc ...
<br/><br/>

## 2. Each folder contains a flag file to define how its contents should be loaded.
There are three possible flag files that can be included with your mod. These flag files are empty files with particular names that the game will recognize and act upon. (Make sure that you don't leave an extension on, it's `ModType_Autoload`, not `ModType_Autoload.txt`)

These flag files enable the game to deal with the `.pck` files in the folder without having to open all of them up and inspect their contents. Plus, Godot already uses empty files as flags (`.gdignore`), so it seems like a natural thing to do.

### ModType_AutoLoad
An autoload mod MUST contain a scene that matches the mod folder name. So /Example/Example1.pck must contain a scene named Example.tscn. This scene will be loaded automatically when the game starts, and will exist as an always-available singleton. It will never be unloaded during normal gameplay.

You can create multiple versions of the same mod, as long as they all contain this same scene. The user will be able to select one and only one variation of the mod to be active at a time.

So, for the following

		Example/
			ModType_AutoLoad
			ExampleModV1.pck
			ExampleModV2.pck

each mod file will contain a scene titled `Example.tscn.` If `ExampleModV1` is active when `ExampleModV2` is selected, then `ExampleModV1` will be unloaded and `ExampleModV2` will be loaded instead. `ExampleModV1://Example.tscn` will be freed and `ExampleModV2://Example.tscn` will be instanced instead.

The main point of this mod type is to add unique functionality through a singleton and its dependencies. When re-writing existing game resources, `ModType_SelectOne` should be used instead.
<br/><br/>

### ModType_SelectOne
A "select one" mod uses a Radio button style select, where only one mod pack will be loaded at a time. This is functionally the same as `ModType_Autoload`, although no scenes will be loaded automatically. This is used to add assets to the game. If any resources in the mod pack share a name with a resource that exists in-game, then the game's resources will be overwritten by the mod's resources. (So you can use this for texture packs, sound packs, etc.)

So, for the following:

		PlayerTexture/
			ModType_SelectOne
			TexturePack1.pck
			TexturePack2.pck

Each texture pack might overwrite the same resource in the game data, say `res://Textures/Player.png`. The game will overwrite its own player texture resource in this example with the mod's resource.

Only one mod will be loaded at a time, but no mod scenes will be instanced by default. If a different mod modifies the same resource later, it will be overwritten again. So be careful! Try to put your mod in a shared folder with similar mods (texture packs, sound packs, etc.) wherever possible in order to prevent conflicts.
<br/><br/>

### ModType_SelectAny
A "select any" mod allows for any and all mod packs in the folder to be enabled simultaneously. If two mods contain resources with the same name, the latter mod will overwrite the resources created by the prior mod. So be careful (and creative) with your naming!

Select any mods are primarily used for things like AI difficulty or character skins where the player will select one variant at a time and change their selection multiple times during a play session. So for example:

		AdditionalAis/
			ModType_SelectAny
			SmallBrain.pck
			BigBrain.pck
			GalaxyBrain.pck

Here, each mod will contain its own scripts and resources. If the game searches for AI scripts in `res://Ais`, then each mod can add its own AI script to this folder. So now, the default AI difficulties of Easy, Medium, and Hard will exist alongside any of the additional AIs that the player has enabled through the mods menu. All three can be enabled at the same time with no conflict. This is possible because the AIs all exist as uniquely named scripts: `Easy.gd` and `Hard.gd`, not just `Ai.gd`
<br/><br/>

## 3. All resource packs will mirror the game's original file structure, to some extent.
Autoload mods may contain a single scene and nothing else, but every other mod type will be replicating, overwriting, or extending some part of the base game. Example mods of each type are provided with the [SDG Common Library](https://gitlab.com/sdggames/godot-common-library), and each game I make will probably contain at least a few mods by default. If you want to use my mod implementation in your own game, but you chose to go closed-source, you may want to include some documents for modders to look at.
