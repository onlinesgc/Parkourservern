$execute store result score @s racePlacing if entity @a[scores={raceSlantar=$(Slant)..}]
$execute store result score @s raceTempPlacing if entity @a[scores={raceSlantar=$(Slant)}]
scoreboard players remove @s raceTempPlacing 1
scoreboard players operation @s racePlacing -= @s raceTempPlacing


function parkourservern:camera/_move_scoreboard