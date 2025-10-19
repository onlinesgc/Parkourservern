$bossbar add race:score$(podnumber) ["",{"text":"Racet startar!","bold":true,"color":"aqua"}]
$bossbar set race:score$(podnumber) color green
$bossbar set race:score$(podnumber) style progress
$bossbar set race:score$(podnumber) max 1
$bossbar set race:score$(podnumber) value 1
$bossbar set race:score$(podnumber) visible true
$bossbar set race:scores$(podnumber) players @s
$scoreboard players set @s racePodnumber $(podnumber)