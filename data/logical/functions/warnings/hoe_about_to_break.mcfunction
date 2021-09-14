title @s actionbar {"text": "Hold on! Your hoe is about to break!", "bold":true, "color":"red"}
playsound minecraft:block.anvil.land master @s
advancement revoke @s only logical:hoe_warning
