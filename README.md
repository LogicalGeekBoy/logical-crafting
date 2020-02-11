# Logical Crafting

Custom crafting recipes for Minecraft 1.15 that I wish were in the default game:

## Renewable Coral Blocks

1.13 adds the new coral blocks but they can't be crafted. We should be protecting our coral reefs not destroying them!
You can grow coral using bone meal and with these recipes you can now craft coral blocks and keep your coral reefs
untouched.

Use 9 coral to create a coral block:

![coral](https://raw.githubusercontent.com/logicalgeekboy/logical-crafting/master/screenshots/coral_blocks.png)

Use 9 dead coral to create a dead coral block:

![dead coral](https://raw.githubusercontent.com/logicalgeekboy/logical-crafting/master/screenshots/dead_coral_blocks.png)

## Consistent Wool Dyeing

Many blocks that can be dyed use 8 plain blocks and one dye which results in 8 dyed blocks. Wool is an exception to this
and so these recipes make wool dyeing more consistent. The original recipes remain just in case you need to dye that one
wool block.

![corrected wool](https://raw.githubusercontent.com/logicalgeekboy/logical-crafting/master/screenshots/wool.png)

## Other Quality of life recipes

This datapack has a number of QoL recipes to enhance the game over 100% vanilla but not in a way that breaks the game:

* Uncraft Quartz Block -> 4 Quartz
* Smelt Sandstone -> Smooth Sandstone (same as 1.14)

## Item about to break warning

When a diamond pickaxe, shovel, axe, hoe or elytra has only 25 durability remaining a warning message is posted in the chat and a
breaking sound is played.

For testing, you can give yourself these items just before the warning with:

```
/give @p minecraft:diamond_pickaxe{Damage:1535} 1
/give @p minecraft:diamond_shovel{Damage:1535} 1
/give @p minecraft:diamond_axe{Damage:1535} 1
/give @p minecraft:diamond_hoe{Damage:1535} 1
/give @p minecraft:elytra{Damage:406} 1
```

## Perimeter Clearing

This function was intended for use in creative mode only when designing mob farms before WorldEdit and other mods were
available in 1.14. Now they are, I'm removing this as those mods are a better solution.

## Spawn Sphere

Hostile mobs spawn within a sphere with a radius of 128 block around the player. It's important to know about this
when building a mob farm as you can improve the rates drastically by only allowing mobs to spawn inside your farm.
Depending on the farm, you can either remove block, light them up or cover them with a non-spawnable block. The problem
is knowing where this sphere really is.

This datapack contains a function that will summon a number of armour stands which mark this sphere. Just stand on your
AFK spot and run:

```
/function logical:spawn_sphere/show
```

You can then move around and condition the area within this sphere. Once you are done, you can remove the sphere again
with:

```
/function logical:spawn_sphere/hide
```

## Villager Clock

In 1.14, villagers now have a schedule where they perform different tasks at set times. It's not always easy to tell
what part of the schedule a villager is in especially in dimensions without the sun. You can show or hide the clock
with:

```
/function logical:clock/on
/function logical:clock/off
```

## Player Head Drop

Whenever a player dies in anyway, they will drop their head in amongst their gear. As I mainly play in single player
this isn't just when you are killed by another player but by anyway of dying.

## How to install

1. Download the [datapack zip file](https://github.com/LogicalGeekBoy/logical-crafting/raw/master/dist/logical-crafting.zip)
2. On the world selection screen, select your world and click "Edit".
3. Click "Open World Folder".
4. Place the datapack zip file in the `datapacks` folder.
5. Start your world. If it doesn't work, using the command `/reload`.

## Development Requirements

* Install Ruby 2.6+
* Install the Rubyzip gem with `gem install rubyzip`

## Building

To build the data pack, run the following that will update the `.zip` file in the `dist` folder. This file can then be
dropped into a worlds `datapacks` folder:

```
$ ruby build.rb
```
