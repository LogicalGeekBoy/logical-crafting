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

## Uncraft Quartz Block

Other ore style blocks such as redstone, diamond, iron, gold, etc can all be crafted into block form and then back again to
item form. The one missing is quartz! It can be useful as a storage block but also as quartz is precious, sometimes you over
make quartz blocks and need the quartz back for crafting other items.

![quartz block](https://raw.githubusercontent.com/logicalgeekboy/logical-crafting/master/screenshots/quartz.png)

## Easier Dispenser

Dispensers are a pain to craft! This is because they require a bow which is a non-stackable item. When we craft lots of dispensers
we need to click for each one which is just boring. To fix this, I've added the following recipe which requires the same materials
but instead of using a bow, we use 3 sticks and 3 string, plus a dropper which covers the cobblestone and redstone required. Credit to
[u/NickNackGus](https://www.reddit.com/r/minecraftsuggestions/comments/7coesq/alternate_dispenser_recipe_suggestion/) for this one.

![quartz block](https://raw.githubusercontent.com/logicalgeekboy/logical-crafting/master/screenshots/dispenser.png)

## Item about to break warning

When a diamond or netherite pickaxe, shovel, axe, hoe or elytra has only 25 durability remaining a warning message is shown and a
notification sound is played.

For testing, you can give yourself these items just before the warning with:

```
/give @p minecraft:diamond_pickaxe{Damage:1535} 1
/give @p minecraft:diamond_shovel{Damage:1535} 1
/give @p minecraft:diamond_axe{Damage:1535} 1
/give @p minecraft:diamond_hoe{Damage:1535} 1
/give @p minecraft:elytra{Damage:406} 1
/give @p minecraft:netherite_pickaxe{Damage:2005} 1
/give @p minecraft:netherite_shovel{Damage:2005} 1
/give @p minecraft:netherite_axe{Damage:2005} 1
/give @p minecraft:netherite_hoe{Damage:2005} 1
```

![item breaking](https://raw.githubusercontent.com/logicalgeekboy/logical-crafting/master/screenshots/breaking.png)

## Villager Clock

In 1.14+, villagers now have a schedule where they perform different tasks at set times. It's not always easy to tell
what part of the schedule a villager is in especially in dimensions without the sun. You can show or hide the clock
with:

```
/function logical:clock/on
/function logical:clock/off
```

![item breaking](https://raw.githubusercontent.com/logicalgeekboy/logical-crafting/master/screenshots/clock.png)

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
