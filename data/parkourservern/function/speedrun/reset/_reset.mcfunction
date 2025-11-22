#Function for resetting speedrun status
team leave @s
scoreboard players reset @s speedrunSlantar
scoreboard players reset @s speedrunGoal
scoreboard players reset @s speedrunPod
scoreboard players reset @s speedrunCountdownInit
scoreboard players reset @s speedrunCountdown
scoreboard players reset @s speedrunStart
scoreboard players reset @s speedrunEnd
scoreboard players reset @s speedrunMinutes
scoreboard players reset @s speedrunSeconds

execute store result storage speedrun:xp xp int 1 run scoreboard players get @s Slantar
function parkourservern:speedrun/initiate/_setxplevel with storage speedrun:xp

attribute @s minecraft:jump_strength base reset
