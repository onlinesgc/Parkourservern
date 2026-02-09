execute store result score @s globalVariables if entity @e[tag=cameraTracking]
execute if score @s globalVariables matches 2.. run tag @s remove cameraTracking
execute store result score @s globalVariables if entity @e[tag=cameraHit]
execute if score @s globalVariables matches 2.. run tag @s remove cameraHit
scoreboard players reset @s globalVariables
execute at @a[distance=..20,tag=cameraTracked] positioned ~ ~1.62 ~ run function parkourservern:camera/ray/_cast

execute if entity @s[tag=cameraHit] run scoreboard players add @s cameraTrackingDelay 1
execute unless entity @s[tag=cameraHit] run scoreboard players reset @s cameraTrackingDelay
execute if score @s cameraTrackingDelay matches 10.. run tag @s add cameraTracking