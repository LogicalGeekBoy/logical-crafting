title @s actionbar {"text": "Hold on! Your pickaxe is about to break!", "bold":true, "color":"red"}
playsound minecraft:block.anvil.land master @s
advancement revoke @s only logical:pickaxe_warning
