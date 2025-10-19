title @s times 0 10 20

execute unless score @s raceSlantar matches 0.. run scoreboard players add @s raceSlantar 0

#Informers you about receiving Slant
$execute if score @s raceSlantar matches $(Slant) run title @s title [{"text":"+1","color":"yellow"}]
$execute if score @s raceSlantar matches $(Slant) run title @s subtitle [{"text":"Du tog tävlingsslanten!"}]

#Visual and audio effects
$execute if score @s raceSlantar matches $(Slant) run playsound entity.player.levelup neutral @s
$execute if score @s raceSlantar matches $(Slant) run particle heart ~0 ~1.1 ~0 0 0 0 10 1

#Informs you about already having Slant
$execute unless score @s raceSlantar matches $(Slant) if score @s raceSlantar matches $(Slant).. run title @s title [{"text":""}]
$execute unless score @s raceSlantar matches $(Slant) if score @s raceSlantar matches $(Slant).. run title @s subtitle [{"text":"Redan tagen!"}]

#Gives you slant
$execute if score @s raceSlantar matches $(Slant) run scoreboard players add @s raceSlantar 1

execute store result storage race:player Player int 1 run scoreboard players get @s racePodnumber
function parkourservern:race/_update_bossbar with storage race:player
$execute if score raceGoal raceVariables matches $(Slant) run function parkourservern:race/goal