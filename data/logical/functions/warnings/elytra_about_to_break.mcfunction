tellraw @s ["", {"text": "Hold on! Your elytra is about to break!", "bold":true, "color":"red"}]
playsound minecraft:item.shield.break master @s
advancement revoke @s only logical:elytra_warning
