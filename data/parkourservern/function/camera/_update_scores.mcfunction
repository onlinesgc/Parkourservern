$execute store result score @s racePlacing if entity @a[scores={raceSlantar=$(Slant)..}]
$execute store result score @s raceTempPlacing if entity @a[scores={raceSlantar=$(Slant)}]
scoreboard players remove @s raceTempPlacing 1
scoreboard players operation @s racePlacing -= @s raceTempPlacing

tag @s add moveScoreBoard
execute as @a[tag=!moveScoreBoard,limit=1] if score @s racePlacing = @a[tag=moveScoreBoard,limit=1] racePlacing run scoreboard players add @s racePlacing 1
tag @s remove moveScoreBoard