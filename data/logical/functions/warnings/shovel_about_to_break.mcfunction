tellraw @s ["", {"text": "Hold on! Your shovel is about to break!", "bold":true, "color":"red"}]
playsound minecraft:item.shield.break master @s
advancement revoke @s only logical:shovel_warning
