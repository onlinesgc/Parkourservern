scoreboard players set numberOfPods raceVariables 0
scoreboard players set totalNumberOfRaceContestants raceVariables 0
execute as @a[team=Invited] run scoreboard players add totalNumberOfRaceContestants raceVariables 1
function parkourservern:race/initiate/world_1/_create_pods {"x":"-1417"}