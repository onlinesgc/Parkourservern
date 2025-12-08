scoreboard players remove preCountdown raceVariables 1

title @a times 20 50 20
execute if score preCountdown raceVariables matches 5 run title @a title [{"text":"-Gruvbyn-","color":"aqua","bold":true}]
execute unless score preCountdown raceVariables matches 5 run title @a title ""
title @a subtitle ["",{"text":"En tävling startar om ","bold":true,"italic":true},{"score":{"name":"preCountdown","objective":"raceVariables"},"bold":true,"italic":true},{"text":" minuter!","bold":true,"italic":true}]

function parkourservern:race/initiate/world_2/_race_bossbar_counter
execute unless score preCountdown raceVariables matches ..0 run schedule function parkourservern:race/initiate/world_2/_race_bossbar_counter 30s

execute if score preCountdown raceVariables matches ..0 run function parkourservern:race/initiate/world_2/_start_race
execute unless score preCountdown raceVariables matches ..0 run schedule function parkourservern:race/initiate/world_2/_race_countdown 60s