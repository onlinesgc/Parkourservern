execute as @e unless score @s cameraTrackingHeat matches 0.. run tag @s remove cameraTrackingLocked
execute as @e[tag=cameraPoint,tag=!cameraTracking] run scoreboard players reset @s cameraTrackingHeat
execute as @e[tag=cameraPoint,tag=!cameraTrackingLocked] if score @s cameraTrackingHeat <= @e[limit=1,tag=cameraTrackingLocked] cameraTrackingHeat run scoreboard players add @s cameraTrackingHeat 7
execute as @e[tag=cameraPoint,tag=!cameraTrackingLocked] if score @s cameraTrackingHeat <= @e[limit=1,tag=cameraTrackingLocked] cameraTrackingHeat run tag @s add cameraTrackingLocking
execute if entity @e[tag=cameraTrackingLocking] run tag @e remove cameraTrackingLocked
tag @e[tag=cameraTrackingLocking] add cameraTrackingLocked
tag @e remove cameraTrackingLocking

execute unless entity @e[tag=cameraTrackingLocked] as @a[tag=cameraTracked] at @s at @e[limit=1,type=marker,sort=nearest,tag=cameraPoint,tag=cameraTracking] run tp @e[tag=camera1,type=text_display] ~ ~ ~ facing entity @s eyes
execute unless entity @e[tag=cameraTrackingLocked] as @a[tag=cameraTracked] at @s as @e[limit=1,type=marker,sort=nearest,tag=cameraPoint,tag=cameraTracking] run tag @s add cameraTrackingLocked
execute if entity @e[tag=cameraTrackingLocked] as @a[tag=cameraTracked] at @s at @e[limit=1,type=marker,sort=nearest,tag=cameraPoint,tag=cameraTrackingLocked] run tp @e[tag=camera1,type=text_display] ~ ~ ~ facing entity @s eyes