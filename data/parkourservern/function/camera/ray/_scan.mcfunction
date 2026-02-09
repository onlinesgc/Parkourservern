tp @s ^ ^ ^0.5

particle bubble ~ ~ ~ 0 0 0 1 1 force @a[tag=cameraRayTest]

execute if entity @e[tag=cameraPoint,type=marker,distance=..1.5] run tag @s add hitCamera

execute unless block ~ ~ ~ #parkourservern:camera_seethrough run tag @s add hitBlock

scoreboard players remove @s globalVariables 1

scoreboard players add @s cameraTrackingHeat 1

execute as @s[tag=!hitCamera,tag=!hitBlock] if score @s globalVariables matches 1.. at @s run function parkourservern:camera/ray/_scan