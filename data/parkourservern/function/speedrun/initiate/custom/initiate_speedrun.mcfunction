execute if block ~ ~2 ~ minecraft:heavy_weighted_pressure_plate run setblock ~ ~2 ~ air
execute if block ~ ~2 ~ minecraft:air run summon armor_stand ~ ~2 ~ {Invulnerable:1b,Fire:1200,HasVisualFire:0b,Invisible:1b,Tags:["counterer"]}

$scoreboard players set @s speedrunCustomX $(x)
$scoreboard players set @s speedrunCustomY $(y)
$scoreboard players set @s speedrunCustomZ $(z)
scoreboard players enable @s speedrunCustomTrigger
dialog show @s parkourservern:custom_speedrun