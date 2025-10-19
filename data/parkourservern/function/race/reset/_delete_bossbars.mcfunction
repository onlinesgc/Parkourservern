scoreboard players add deletedBossbars raceVariables 1
execute store result storage race:currentbossbar bossbar int 1 run scoreboard players get deletedBossbars raceVariables
execute unless score deletedBossbars raceVariables > totalNumberOfRaceContestants raceVariables run function parkourservern:race/reset/_delete_bossbar with storage race:currentbossbar
execute unless score deletedBossbars raceVariables > totalNumberOfRaceContestants raceVariables run function parkourservern:race/reset/_delete_bossbars
