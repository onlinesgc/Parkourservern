execute store result score @s speedrunEnd run stopwatch query timer:global 20
scoreboard players operation @s speedrunEnd -= @s speedrunStart

execute store result storage speedrun:end tickTime int 1 run scoreboard players get @s speedrunEnd
function parkourservern:tools/_calculate_time

#World 1
execute if score @s speedrunGoal matches 28 if score @s speedrunStartSlantar matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" avslutade en speedrun av Fängelsehålorna på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder!","color":"yellow"}]
execute if score @s speedrunGoal matches 28 if score @s speedrunStartSlantar matches 1 run tag @s add announced
#World 2
execute if score @s speedrunGoal matches 52 if score @s speedrunStartSlantar matches 30 run tellraw @a ["",{"selector":"@s"},{"text":" avslutade en speedrun av Gruvbyn på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder!","color":"yellow"}]
execute if score @s speedrunGoal matches 52 if score @s speedrunStartSlantar matches 30 run tag @s add announced
#World 1 + 2
execute if score @s speedrunGoal matches 52 if score @s speedrunStartSlantar matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" avslutade en speedrun av Fängelsehålorna och Gruvbyn på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder!","color":"yellow"}]
execute if score @s speedrunGoal matches 52 if score @s speedrunStartSlantar matches 1 run tag @s add announced
#Custom
execute unless entity @s[tag=announced] unless score @s speedrunCustomStart = @s speedrunCustomEnd run tellraw @a ["",{"selector":"@s"},{"text":" avslutade en speedrun av bana ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunCustomStart"},"color":"yellow"},{"text":" till ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunCustomEnd"},"color":"yellow"},{"text":" på","color":"yellow"},{"text":" "},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och","color":"yellow"},{"text":" "},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder!","color":"yellow"}]

execute unless entity @s[tag=announced] if score @s speedrunCustomStart = @s speedrunCustomEnd run tellraw @a ["",{"selector":"@s"},{"text":" avslutade en speedrun av bana ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunCustomStart"},"color":"yellow"},{"text":" på","color":"yellow"},{"text":" "},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och","color":"yellow"},{"text":" "},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder!","color":"yellow"}]

tag @s remove announced

function parkourservern:speedrun/reset/_reset