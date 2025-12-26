scoreboard players set world raceVariables 2

scoreboard players set numberOfPods raceVariables 0
scoreboard players set totalNumberOfRaceContestants raceVariables 0
execute as @a[team=Invited] run scoreboard players add totalNumberOfRaceContestants raceVariables 1
scoreboard players set raceGoal raceVariables 52
function parkourservern:race/initiate/world_2/_create_pods {"x":"-1417"}

execute store result score raceCountdownInit raceVariables run stopwatch query timer:global 20
function parkourservern:race/initiate/world_2/_race_countdown_booth