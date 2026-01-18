$bossbar set race:score$(Player) color white
$bossbar set race:score$(Player) name ["",{"text":"Turnering: "},{"score":{"name":"@s","objective":"raceSlantar"}},{"text":" Slantar"}]
$execute store result bossbar race:score$(Player) value run scoreboard players get @s bossbarValue