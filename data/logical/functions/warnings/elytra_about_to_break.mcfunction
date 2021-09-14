title @s actionbar {"text": "Hold on! Your elytra is about to break!", "bold":true, "color":"red"}
playsound minecraft:block.anvil.land master @s
advancement revoke @s only logical:elytra_warning
