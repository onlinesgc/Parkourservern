scoreboard players set totalNumberOfRaceContestants raceVariables 0
function parkourservern:race/reset/_reset

scoreboard players set preCountdown raceVariables 6
scoreboard players set bossbarCountdown raceVariables 10
bossbar set race:countdown style notched_10

function parkourservern:race/initiate/world_2/_race_countdown