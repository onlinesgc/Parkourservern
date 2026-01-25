execute store result score @s globalVariables if entity @e[tag=cameraTracking]
execute if score @s globalVariables matches 2.. run tag @s remove cameraTracking
scoreboard players reset @s globalVariables
execute at @a[distance=..20,tag=cameraTracked] positioned ~ ~1.62 ~ run function parkourservern:camera/ray/_cast