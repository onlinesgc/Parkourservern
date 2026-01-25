summon marker ~ ~ ~ {Tags: [cameraRay]}
tp @e[tag=cameraRay,limit=1,sort=nearest] ~ ~ ~ facing entity @s
execute as @e[tag=cameraRay,limit=1,sort=nearest] run function parkourservern:camera/ray/_process