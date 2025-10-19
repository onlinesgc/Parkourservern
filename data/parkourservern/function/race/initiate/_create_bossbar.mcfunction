$bossbar add race:score$(podnumber) ["",{"text":"Racet startar!","bold":true,"color":"aqua"}]
$bossbar set race:score$(podnumber) color green
$bossbar set race:score$(podnumber) style progress
$execute store result bossbar race:score$(podnumber) max run scoreboard players get raceGoal raceVariables
$execute store result bossbar race:score$(podnumber) value run scoreboard players get raceGoal raceVariables
$bossbar set race:score$(podnumber) visible true
$bossbar set race:score$(podnumber) players @s
$scoreboard players set @s racePodnumber $(podnumber)