execute as @e[type=armor_stand,tag=counterer] store result score @s speedrunArmorStandCounter run data get entity @s Fire 1
execute as @e[type=armor_stand,tag=counterer] if score @s speedrunArmorStandCounter matches ..0 at @s run setblock ~ ~ ~ heavy_weighted_pressure_plate
execute as @e[type=armor_stand,tag=counterer] if score @s speedrunArmorStandCounter matches ..0 at @s run kill @s