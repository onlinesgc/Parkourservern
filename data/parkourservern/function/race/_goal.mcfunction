scoreboard players add numberOfFinishers raceVariables 1

execute store result score @s speedrunEnd run stopwatch query timer:global 20
scoreboard players operation @s speedrunEnd -= raceStart raceVariables

execute store result storage speedrun:end tickTime int 1 run scoreboard players get @s speedrunEnd
function parkourservern:tools/_calculate_time

execute if score raceGoal raceVariables matches 28 run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" kom på plats ","color":"yellow"},{"score":{"name":"numberOfFinishers","objective":"raceVariables"},"color":"green"},{"text":" och klarade Fängelsehålorna på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder","color":"yellow"}]
execute if score raceGoal raceVariables matches 52 run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" kom på plats ","color":"yellow"},{"score":{"name":"numberOfFinishers","objective":"raceVariables"},"color":"green"},{"text":" och klarade Gruvbyn på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"yellow"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder","color":"yellow"}]
execute unless score raceGoal raceVariables matches 28 unless score raceGoal raceVariables matches 52 run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" kom på plats ","color":"yellow"},{"score":{"name":"numberOfFinishers","objective":"raceVariables"},"color":"green"},{"text":" och klarade racet på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"yellow"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder","color":"yellow"}]

execute if score numberOfFinishers raceVariables matches 1 run tp @s -1351 40 -916 180.0 0.0
execute if score numberOfFinishers raceVariables matches 2 run tp @s -1347 39 -916 180.0 0.0
execute if score numberOfFinishers raceVariables matches 3 run tp @s -1355 38 -916 180.0 0.0

execute if score numberOfFinishers raceVariables matches 1 at @s run data merge block -1351 36 -920 {front_text:{messages:[{"text":"Senaste","bold":true},{"selector":"@p","bold":true,"color":"black"},["",{"score":{"name":"@p","objective":"speedrunMinutes"}},{"text":" min"}], ["",{"score":{"name":"@p","objective":"speedrunSeconds"}},{"text":" sek"}]]}}
execute if score numberOfFinishers raceVariables matches 2 at @s run data merge block -1347 36 -920 {front_text:{messages:[{"text":"Senaste","bold":true},{"selector":"@p","bold":true,"color":"black"},["",{"score":{"name":"@p","objective":"speedrunMinutes"}},{"text":" min"}], ["",{"score":{"name":"@p","objective":"speedrunSeconds"}},{"text":" sek"}]]}}
execute if score numberOfFinishers raceVariables matches 3 at @s run data merge block -1355 36 -920 {front_text:{messages:[{"text":"Senaste","bold":true},{"selector":"@p","bold":true,"color":"black"},["",{"score":{"name":"@p","objective":"speedrunMinutes"}},{"text":" min"}], ["",{"score":{"name":"@p","objective":"speedrunSeconds"}},{"text":" sek"}]]}}