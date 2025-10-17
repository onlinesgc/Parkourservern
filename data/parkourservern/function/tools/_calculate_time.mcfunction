# Input time in ticks, set value of speedrun:end tickTime in storage

#Output sets scoreboard values for @s speedrunMinutes and speedrunSeconds

# Load value into timerCalculator
execute store result score @s timerCalculator run data get storage speedrun:end tickTime 1

#Calculate seconds in current minute
scoreboard players operation @s timerCalculator %= oneMinute timerConstants
execute store result storage speedrun:end lastSpeedrunSecondsInTicks int 1 run scoreboard players get @s timerCalculator

# Restore value in timerCalculator
execute store result score @s timerCalculator run data get storage speedrun:end tickTime 1

#Load tick seconds into speedrunSeconds
execute store result score @s speedrunSeconds run data get storage speedrun:end lastSpeedrunSecondsInTicks 1

#Calculate minutes
scoreboard players operation @s timerCalculator -= @s speedrunSeconds
execute store result score @s speedrunMinutes run scoreboard players get @s timerCalculator

#Turn ticks into seconds and minutes
scoreboard players operation @s speedrunMinutes /= oneMinute timerConstants
execute store result score @s speedrunSeconds run data get storage speedrun:end lastSpeedrunSecondsInTicks 0.05