title @s actionbar {"text": "Hold on! Your shovel is about to break!", "bold":true, "color":"red"}
playsound minecraft:block.anvil.land master @s
advancement revoke @s only logical:shovel_warning
