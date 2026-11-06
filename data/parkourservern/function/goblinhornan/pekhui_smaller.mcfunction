execute positioned ~0.5 ~2 ~-0.5 as @a[distance=..1.5,y_rotation=120..-120] run tag @s add pekhui_bigger
execute as @a[tag=pekhui_bigger] store result score @s pekhuiSize run attribute @s scale base get 1000
execute as @a[tag=pekhui_bigger] store result score @s pekhuiSpeed run attribute @s movement_speed base get 1000
execute as @a[tag=pekhui_bigger] store result score @s pekhuiJump run attribute @s jump_strength base get 1000
execute as @a[tag=pekhui_bigger] store result score @s pekhuiGravity run attribute @s gravity base get 1000
execute as @a[tag=pekhui_bigger] run scoreboard players operation @s pekhuiSize /= 2 NumberConstants
execute as @a[tag=pekhui_bigger] run scoreboard players operation @s pekhuiSpeed /= 2 NumberConstants
execute as @a[tag=pekhui_bigger] run scoreboard players operation @s pekhuiJump /= 2 NumberConstants
execute as @a[tag=pekhui_bigger] run scoreboard players operation @s pekhuiGravity /= 2 NumberConstants
execute as @a[tag=pekhui_bigger] store result storage goblinhornan:pekhui size float 0.001 run scoreboard players get @s pekhuiSize
execute as @a[tag=pekhui_bigger] store result storage goblinhornan:pekhui speed float 0.001 run scoreboard players get @s pekhuiSpeed
execute as @a[tag=pekhui_bigger] store result storage goblinhornan:pekhui jump float 0.001 run scoreboard players get @s pekhuiJump
execute as @a[tag=pekhui_bigger] store result storage goblinhornan:pekhui gravity float 0.001 run scoreboard players get @s pekhuiGravity
execute as @a[tag=pekhui_bigger] run function parkourservern:goblinhornan/_pekhui_set_size with storage goblinhornan:pekhui
execute as @a[tag=pekhui_bigger] at @s run tp @s ~-27.5 ~ ~4.5
tag @a remove pekhui_bigger