#Sets current pod number
scoreboard players add numberOfPods raceVariables 1

#Creates current pod
$clone -1415 32 -769 -1414 39 -760 $(x) 32 -769
$execute positioned $(x) 32 -769 run data merge block ~1 38 -763 {front_text:{messages:[{"score":{"name":"numberOfPods","objective":"raceVariables"}},"","",""]}}

#Teleports player into pod
execute as @r[team=Invited,tag=!Teleported] run tag @s add Teleporting
$execute positioned $(x) 32 -769 run tp @a[tag=Teleporting] ~1 34 -762 180.0 0.0
execute as @a[tag=Teleporting] run tag @s add Teleported
execute as @a[tag=Teleporting] run tag @s remove Teleporting

#Sets x value of next pod cloning position
$scoreboard players set podX raceVariables $(x)
scoreboard players remove podX raceVariables 2
execute store result storage race:pod x int 1 run scoreboard players get podX raceVariables

#Either does this all over again or proceeds to next function depending on if finished or not
execute unless score numberOfPods raceVariables < totalNumberOfRaceContestants raceVariables run function parkourservern:race/initiate/_created_pods with storage race:pod
execute if score numberOfPods raceVariables < totalNumberOfRaceContestants raceVariables run function parkourservern:race/initiate/_create_pods with storage race:pod