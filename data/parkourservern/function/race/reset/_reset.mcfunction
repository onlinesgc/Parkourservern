function parkourservern:race/reset/_delete_pods with storage race:pod

scoreboard players set deletedBossbars raceVariables 0
function parkourservern:race/reset/_delete_bossbars

team empty Race
scoreboard players reset * raceSlantar
scoreboard objectives setdisplay sidebar