execute store result storage speedrun:custom Start int 1 run scoreboard players get @s speedrunCustomStart
execute store result storage speedrun:custom Goal int 1 run scoreboard players get @s speedrunCustomEnd
execute store result storage speedrun:custom x int 1 run scoreboard players get @s speedrunCustomX
execute store result storage speedrun:custom y int 1 run scoreboard players get @s speedrunCustomY
execute store result storage speedrun:custom z int 1 run scoreboard players get @s speedrunCustomZ

function parkourservern:speedrun/initiate/_initiate_speedrun with storage speedrun:custom

scoreboard players remove @s speedrunCustomEnd 1