#Sets start value for Slantar and specifies goal amount
$scoreboard players set @s speedrunStartSlantar $(Start)
$scoreboard players set @s speedrunSlantar $(Start)
$scoreboard players set @s speedrunGoal $(Goal)

#Prevents jumping
attribute @s minecraft:jump_strength base set 0.0

#Sets glass as a precaution in case last player left through unconventional means
$execute positioned $(x) $(y) $(z) run setblock ~ ~1 ~-1 glass

#Teleports player into speedrun room thing
$tp @s $(x) $(y) $(z) 180 0

#Checks the value of the global timer at start of speedrun to use in next function
execute store result score @s speedrunCountdownInit run stopwatch query timer:global 20

#Starts a looping function for the countdown. Positioned to remove glass that obstructs speedrunner
$execute positioned $(x) $(y) $(z) run function parkourservern:speedrun/initiate/_speedrun_countdown