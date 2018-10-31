tellraw @s ["", {"text": "Hold on! Your axe is about to break!", "bold":true, "color":"red"}]
playsound minecraft:item.shield.break master @s
advancement revoke @s only logical:axe_warning
