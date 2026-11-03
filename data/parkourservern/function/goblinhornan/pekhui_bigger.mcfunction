execute positioned ~ ~2 ~-0.5 as @a[distance=..1,y_rotation=-60..60] run tag @s add pekhui_bigger
execute as @a[tag=pekhui_bigger] at @s run tp @s ~27.5 ~ ~-4.5
execute as @a[tag=pekhui_bigger] store result score @s pekhuiSize run attribute @s scale base get 1000
execute as @a[tag=pekhui_bigger] store result score @s pekhuiSpeed run attribute @s movement_speed base get 100.00000149011612
execute as @a[tag=pekhui_bigger] store result score @s pekhuiJump run attribute @s jump_strength base get 419.99998688697815
execute as @a[tag=pekhui_bigger] store result score @s pekhuiGravity run attribute @s gravity base get 1000
execute as @a[tag=pekhui_bigger] run scoreboard players operation @s pekhuiSize *= 2 NumberConstants
execute as @a[tag=pekhui_bigger] run scoreboard players operation @s pekhuiSpeed *= 2 NumberConstants
execute as @a[tag=pekhui_bigger] run scoreboard players operation @s pekhuiJump *= 2 NumberConstants
execute as @a[tag=pekhui_bigger] run scoreboard players operation @s pekhuiGravity *= 2 NumberConstants
execute as @a[tag=pekhui_bigger] store result storage goblinhornan:pekhui size float 0.001 run scoreboard players get @s pekhuiSize
execute as @a[tag=pekhui_bigger] store result storage goblinhornan:pekhui speed float 0.0099999998509883902204460179966303499341100988194160389439519138306947669603077695280199246505271859706407368691039126266992983988383306320081425135487886930363156203285434874063765329474133746534821813 run scoreboard players get @s pekhuiSpeed
execute as @a[tag=pekhui_bigger] store result storage goblinhornan:pekhui jump float 0.0023809524552892418333785148357774389573779018693753474292256587875652196713981758359383328257175561814441812759050324435799260895772929381240465749317160654696548202371765945902830170737452394570104437 run scoreboard players get @s pekhuiJump
execute as @a[tag=pekhui_bigger] store result storage goblinhornan:pekhui gravity float 0.001 run scoreboard players get @s pekhuiGravity
execute as @a[tag=pekhui_bigger] run function parkourservern:goblinhornan/_pekhui_set_size with storage goblinhornan:pekhui
tag @a remove pekhui_bigger