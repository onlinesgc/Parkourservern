#Resets everything related to speedrun countdown
execute at @a[team=Race] positioned ~ ~1 ~-1 if block ~ ~ ~ glass run setblock ~ ~ ~ air
scoreboard players reset raceCountdown raceVariables
scoreboard players reset raceCountdownInit raceVariables
scoreboard players reset globalCountdown raceVariables
scoreboard objectives setdisplay sidebar raceSlantar

execute as @a[team=Race] run attribute @s jump_strength base reset

#Starts speedrun timer
execute store result score raceStart raceVariables run stopwatch query timer:global 20