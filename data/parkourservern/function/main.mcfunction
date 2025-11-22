execute as @a if score @s speedrunCountdown matches ..0 at @s run function parkourservern:speedrun/initiate/_speedrun_countdown
execute if score raceCountdown raceVariables matches ..0 run function parkourservern:race/initiate/world_1/_race_countdown_booth
scoreboard players enable @a[team=Speedrun] reset
execute as @a if score @s reset matches 1.. run function parkourservern:speedrun/reset/_triggered_reset

execute as @a if score @s leftGame matches 1.. run function parkourservern:speedrun/_check_if_left_in_pod


#To keep collision off
execute as @a[team=] run team join Normal

function parkourservern:custom_test with storage minecraft:custom