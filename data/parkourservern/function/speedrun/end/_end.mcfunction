execute store result score @s speedrunEnd run stopwatch query timer:global 20
scoreboard players operation @s speedrunEnd -= @s speedrunStart

execute store result storage speedrun:end tickTime int 1 run scoreboard players get @s speedrunEnd
function parkourservern:tools/_calculate_time

#World 1
execute if score @s speedrunGoal matches 28 if score @s speedrunStartSlantar matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" avslutade en speedrun av Fängelsehålorna på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder!","color":"yellow"}]
#World 2
execute if score @s speedrunGoal matches 52 if score @s speedrunStartSlantar matches 30 run tellraw @a ["",{"selector":"@s"},{"text":" avslutade en speedrun av Gruvbyn på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder!","color":"yellow"}]
#World 1 + 2
execute if score @s speedrunGoal matches 52 if score @s speedrunStartSlantar matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" avslutade en speedrun av Fängelsehålorna och Gruvbyn på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder!","color":"yellow"}]
#Custom
execute unless score @s speedrunGoal matches 28 unless score @s speedrunGoal matches 52 run tellraw @a ["",{"selector":"@s"},{"text":" avslutade en okänd speedrun på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder!","color":"yellow"}]

function parkourservern:speedrun/reset/_reset