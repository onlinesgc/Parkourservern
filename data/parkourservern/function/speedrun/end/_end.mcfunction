execute store result score @s speedrunEnd run stopwatch query timer:global 20
scoreboard players operation @s speedrunEnd -= @s speedrunStart

execute store result storage speedrun:end time int 1 run scoreboard players get @s speedrunEnd
execute store result score @s speedrunMinutes run data get storage speedrun:end time 0.0008333
execute store result score @s speedrunSeconds run data get storage speedrun:end time 0.05

#World 1
execute if score @s speedrunGoal matches 28 run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" avslutade en speedrun av Fängelsehålorna på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"yellow"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"yellow"},{"text":" sekunder!","color":"yellow"}]
#World 2
execute if score @s speedrunGoal matches 52 run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" avslutade en speedrun av Gruvbyn på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"yellow"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"yellow"},{"text":" sekunder!","color":"yellow"}]