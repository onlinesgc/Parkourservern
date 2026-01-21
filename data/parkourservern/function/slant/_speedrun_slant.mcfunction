title @s times 0 10 20

execute unless score @s speedrunSlantar matches 0.. run scoreboard players add @s speedrunSlantar 0

#Informs you about receiving Slant
$execute if score @s speedrunSlantar matches $(Slant) run title @s title [{"text":"+1","color":"yellow"}]
$execute if score @s speedrunSlantar matches $(Slant) run title @s subtitle [{"text":"Du tog speedrun-slanten!"}]

#Visual and audio effects
$execute if score @s speedrunSlantar matches $(Slant) run playsound entity.player.levelup neutral @s
$execute if score @s speedrunSlantar matches $(Slant) run particle minecraft:soul_fire_flame ~0 ~1.1 ~0 0 0 0 10 1

#Informs you about already having Slant
$execute unless score @s speedrunSlantar matches $(Slant) if score @s speedrunSlantar matches $(Slant).. run title @s title [{"text":""}]
$execute unless score @s speedrunSlantar matches $(Slant) if score @s speedrunSlantar matches $(Slant).. run title @s subtitle [{"text":"Redan tagen!"}]

#Special effects
#   Level 19 boss sound
$execute if score @s speedrunSlantar matches $(Slant) if score @s speedrunSlantar matches 19 at @s run playsound block.end_portal.spawn master @s ~ ~ ~

#Adds slant to total statistics
$execute if score @s speedrunSlantar matches $(Slant) run scoreboard players add @s statsSpeedrunSlantarTotal 1
$execute if score @s speedrunSlantar matches $(Slant) run scoreboard players add speedrunSlantarTotal statsGlobal 1

#Gives you slant
$execute if score @s speedrunSlantar matches $(Slant) run experience add @s 1 levels
$execute if score @s speedrunSlantar matches $(Slant) run scoreboard players add @s speedrunSlantar 1

execute if score @s speedrunGoal = @s speedrunSlantar run function parkourservern:speedrun/end/_end