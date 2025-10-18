title @a times 20 50 20
title @a title [{"text":"-Fängelsehålorna-","color":"aqua","bold":true}]
title @a subtitle ["",{"text":"En tävling startar om ","bold":true,"italic":true},{"score":{"name":"preCountdown","objective":"raceVariables"},"bold":true,"italic":true},{"text":" minuter!","bold":true,"italic":true}]

function parkourservern:race/initiate/world_1/_race_bossbar_counter
execute unless score preCountdown raceVariables matches ..1 run schedule function parkourservern:race/initiate/world_1/_race_bossbar_counter 30s

scoreboard players remove preCountdown raceVariables 1

execute if score preCountdown raceVariables matches ..0 run function parkourservern:race/initiate/world_1/_start_race
execute unless score preCountdown raceVariables matches ..0 run schedule function parkourservern:race/initiate/world_1/_race_countdown 60s