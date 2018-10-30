tellraw @s ["", {"text": "Hold on! Your pickaxe is about to break!", "bold":true, "color":"red"}]
playsound minecraft:item.shield.break master @s
advancement revoke @s only logical:pickaxe_warning
