#Resets everything related to speedrun countdown
execute at @a[team=Race] positioned ~ ~1 ~-1 if block ~ ~ ~ glass run setblock ~ ~ ~ air
scoreboard players reset raceCountdown raceVariables
scoreboard players reset raceCountdownInit raceVariables
scoreboard players reset globalCountdown raceVariables
scoreboard players set @a[team=Race] raceSlantar 30
scoreboard objectives setdisplay sidebar raceSlantar

execute as @a[team=Race] run attribute @s jump_strength base reset
execute as @a[team=Race] run function parkourservern:race/initiate/_initial_bossbar

#Starts speedrun timer
execute store result score raceStart raceVariables run stopwatch query timer:global 20

effect give @a[team=Race] invisibility 60 1 true