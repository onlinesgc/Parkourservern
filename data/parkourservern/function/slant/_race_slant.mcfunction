title @s times 0 10 20

execute unless score @s raceSlantar matches 0.. run scoreboard players add @s raceSlantar 0

#Informes you about receiving Slant
$execute if score @s raceSlantar matches $(Slant) run title @s title [{"text":"+1","color":"yellow"}]
$execute if score @s raceSlantar matches $(Slant) run title @s subtitle [{"text":"Du tog tävlingsslanten!"}]

#Visual and audio effects
$execute if score @s raceSlantar matches $(Slant) run playsound entity.player.levelup neutral @s
$execute if score @s raceSlantar matches $(Slant) run particle flame ~0 ~1.1 ~0 0 0 0 10 1

#Informs you about already having Slant
$execute unless score @s raceSlantar matches $(Slant) if score @s raceSlantar matches $(Slant).. run title @s title [{"text":""}]
$execute unless score @s raceSlantar matches $(Slant) if score @s raceSlantar matches $(Slant).. run title @s subtitle [{"text":"Redan tagen!"}]

#Special effects
#   Level 19 boss sound
$execute if score @s raceSlantar matches $(Slant) if score @s raceSlantar matches 19 at @s run playsound block.end_portal.spawn master @s ~ ~ ~

#Camera
$execute if score @s raceSlantar matches $(Slant) run function parkourservern:camera/_update_scores {"Slant":"$(Slant)"}

#Gives you slant
$execute if score @s raceSlantar matches $(Slant) run scoreboard players add @s raceSlantar 1


#Bossbar updater
scoreboard players operation @s bossbarValue = @s raceSlantar
scoreboard players operation @s bossbarValue -= bossbarRelativeZero raceVariables
execute store result storage race:player Player int 1 run scoreboard players get @s racePodnumber
function parkourservern:race/_update_bossbar with storage race:player

execute if score raceGoal raceVariables = @s raceSlantar run function parkourservern:race/_goal