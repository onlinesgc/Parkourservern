execute if score @s speedrunCustomTrigger matches 12..89 run function parkourservern:speedrun/initiate/custom/_2digits
execute if score @s speedrunCustomTrigger matches 110..952 run function parkourservern:speedrun/initiate/custom/_3_or_more_digits
execute if score @s speedrunCustomTrigger matches 1011..5152 run function parkourservern:speedrun/initiate/custom/_3_or_more_digits

execute unless score @s speedrunCustomStart < @s speedrunCustomEnd run tellraw @s {text:"Startvärdet måste vara lägre än målet",color:red}
execute if score @s speedrunCustomEnd > @s Slantar run tellraw @s ["",{"text":"Du har inte klarat bana ","color":"red"},{"score":{"name":"@s","objective":"speedrunCustomEnd"},"color":"red"},{"text":" än","color":"red"}]
execute unless score @s speedrunCustomTrigger matches 12..89 unless score @s speedrunCustomTrigger matches 110..952 unless score @s speedrunCustomTrigger matches 1011..5152 run tellraw @s {text:"Startvärdet måste vara lägre än målet",color:red}

execute if score @s speedrunCustomStart < @s speedrunCustomEnd if score @s speedrunCustomEnd <= @s Slantar run function parkourservern:speedrun/initiate/custom/_parse_input

scoreboard players reset @s speedrunCustomTrigger

