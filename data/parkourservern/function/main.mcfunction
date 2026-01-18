execute as @a if score @s speedrunCountdown matches ..0 at @s run function parkourservern:speedrun/initiate/_speedrun_countdown
execute if score raceCountdown raceVariables matches ..0 if score world raceVariables matches 1 run function parkourservern:race/initiate/world_1/_race_countdown_booth
execute if score raceCountdown raceVariables matches ..0 if score world raceVariables matches 2 run function parkourservern:race/initiate/world_2/_race_countdown_booth

scoreboard players enable @a[team=Speedrun] reset
execute as @a if score @s reset matches 1.. run function parkourservern:speedrun/reset/_triggered_reset

execute as @a if score @s speedrunCustomTrigger matches 1.. run function parkourservern:speedrun/initiate/custom/_get_input

execute as @a if score @s leftGame matches 1.. run function parkourservern:speedrun/_check_if_left_in_pod

#Voting system
execute if score active worldVote matches 1 run function parkourservern:voting/_calculate_meters
execute if score worldRoll worldVote matches 1 run function parkourservern:voting/_roll

#To keep collision off
execute as @a[team=] run team join Normal

#Fall damage fix
execute as @a run attribute @s fall_damage_multiplier base set 0.9999999

#Replace iron pressureplates in speedrun
execute if entity @e[type=armor_stand,tag=counterer] run function parkourservern:speedrun/initiate/_armorstand_counter