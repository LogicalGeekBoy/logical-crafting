scoreboard objectives add LogicalClock dummy

scoreboard players set day_time LogicalClock 0
scoreboard players set on LogicalClock 1

scoreboard players set idle1_start LogicalClock 10
scoreboard players set work_start LogicalClock 2000
scoreboard players set meet_start LogicalClock 9000
scoreboard players set idle2_start LogicalClock 11000
scoreboard players set sleep_start LogicalClock 12000

function logical:clock/off

# Base Villager:
#     0 - 23999 : IDLE

# Employed Villager:
#     10 - 1999: IDLE
#     2000 - 8999: WORK
#     9000 - 10999: MEET
#     11000 - 11999: IDLE
#     12000 - 9: REST

# Baby Villager:
#     10 - 2999 : IDLE
#     3000 - 5999 : PLAY
#     6000 - 9999 : IDLE
#     10000 - 11999 : PLAY
#     12000 - 9 : REST

# Normal Villager:
#     10 - 1999: IDLE
#     2000 - 8999: WORK
#     9000 - 10999: MEET
#     11000 - 11999: IDLE
#     12000 - 9: REST
