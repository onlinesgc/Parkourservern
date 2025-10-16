execute store result score @s speedrunEnd run stopwatch query timer:global 20
scoreboard players operation @s speedrunEnd -= @s speedrunStart

#Save the time in ticks
execute store result storage speedrun:end tickTime int 1 run scoreboard players get @s speedrunEnd

#Calculate rest of time in the minute
scoreboard players operation @s speedrunEnd %= oneMinute timerConstants
execute store result storage speedrun:end lastSpeedrunSecondsInTicks int 1 run scoreboard players get @s speedrunEnd

#Saves tick seconds in speedrunSeconds
execute store result score @s speedrunSeconds run data get storage speedrun:end lastSpeedrunSecondsInTicks 1

#Restores value in speedrunEnd.
execute store result score @s speedrunEnd run data get storage speedrun:end tickTime 1

#Removes seconds to create full minute values
scoreboard players operation @s speedrunEnd -= @s speedrunSeconds
execute store result score @s speedrunMinutes run scoreboard players get @s speedrunEnd

#Saves minutes & seconds in their respective scoreboards
scoreboard players operation @s speedrunEnd /= oneMinute timerConstants
execute store result score @s speedrunMinutes run scoreboard players get @s speedrunEnd
execute store result score @s speedrunSeconds run data get storage speedrun:end lastSpeedrunSecondsInTicks 0.05


#World 1
execute if score @s speedrunGoal matches 28 run tellraw @a ["",{"selector":"@s"},{"text":" avslutade en speedrun av Fängelsehålorna på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder!","color":"yellow"}]
#World 2
execute if score @s speedrunGoal matches 52 run tellraw @a ["",{"selector":"@s"},{"text":" avslutade en speedrun av Gruvbyn på ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunMinutes"},"color":"gold"},{"text":" minuter och ","color":"yellow"},{"score":{"name":"@s","objective":"speedrunSeconds"},"color":"gold"},{"text":" sekunder!","color":"yellow"}]

function parkourservern:speedrun/reset/reset