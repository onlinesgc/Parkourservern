#Resets everything related to speedrun countdown
execute positioned ~ ~1 ~-1 if block ~ ~ ~ glass run setblock ~ ~ ~ air
scoreboard players reset @s speedrunCountdown
scoreboard players reset @s speedrunCountdownInit
scoreboard players reset @s globalCountdown

attribute @s jump_strength base reset

#Starts speedrun timer
team join Speedrun @s
tag @s add inSpeedrunPod
execute store result score @s speedrunStart run stopwatch query timer:global 20

schedule function parkourservern:speedrun/initiate/_abort_speedrun 10s