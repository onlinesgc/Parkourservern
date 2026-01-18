scoreboard players operation @s bossbarValue = @s raceSlantar
scoreboard players operation @s bossbarValue -= bossbarRelativeZero raceVariables

execute store result storage race:player Player int 1 run scoreboard players get @s racePodnumber
function parkourservern:race/_update_bossbar with storage race:player