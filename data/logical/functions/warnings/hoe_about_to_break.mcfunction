tellraw @s ["", {"text": "Hold on! Your hoe is about to break!", "bold":true, "color":"red"}]
playsound minecraft:item.shield.break master @s
advancement revoke @s only logical:hoe_warning
