execute unless score bossbarCountdown raceVariables matches 3.. run bossbar set race:countdown name ["",{"score":{"name":"preCountdown","objective":"raceVariables"},"bold":true,"color":"aqua"},{"text":" minut till race!","bold":true,"color":"aqua"}]
execute if score bossbarCountdown raceVariables matches 3.. run bossbar set race:countdown name ["",{"score":{"name":"preCountdown","objective":"raceVariables"},"bold":true,"color":"aqua"},{"text":" minuter till race!","bold":true,"color":"aqua"}]


execute if score bossbarCountdown raceVariables matches 7.. run bossbar set race:countdown color red
execute if score bossbarCountdown raceVariables matches 5.. run bossbar set race:countdown color yellow
execute if score bossbarCountdown raceVariables matches 4.. run bossbar set race:countdown color green

execute if score bossbarCountdown raceVariables matches 0 run bossbar set race:countdown name ["",{"text":"Racet startar!","bold":true,"color":"aqua"}]
execute if score bossbarCountdown raceVariables matches 0 run bossbar set race:countdown color green
execute if score bossbarCountdown raceVariables matches 0 run bossbar set race:countdown style progress

execute store result bossbar race:countdown value run scoreboard players get bossbarCountdown raceVariables

execute if score bossbarCountdown raceVariables matches 0 run bossbar set race:countdown value 10


scoreboard players remove bossbarCountdown raceVariables 1
bossbar set race:countdown visible true
bossbar set race:countdown players @a