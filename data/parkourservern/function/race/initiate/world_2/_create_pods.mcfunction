#Sets current pod number
scoreboard players add numberOfPods raceVariables 1
execute store result storage race:currentpod podnumber int 1 run scoreboard players get numberOfPods raceVariables

#Creates current pod, with sign with correct number
$clone -1415 25 -769 -1414 31 -760 $(x) 25 -769

#Teleports player into pod and disables jumping to ensure constant position when executing relative commands further down the line
execute as @r[team=Invited,tag=!Teleported] run tag @s add Teleporting
$execute positioned $(x) 25 -769 run tp @a[tag=Teleporting] ~1 27 -762 180.0 0.0
execute as @a[tag=Teleporting] run tag @s add Teleported
execute as @a[tag=Teleporting] run attribute @s jump_strength base set 0
execute as @a[tag=Teleporting] run function parkourservern:race/initiate/_create_bossbar with storage race:currentpod
execute as @a[tag=Teleporting] run tag @s remove Teleporting

#Sets x value of next pod cloning position
$scoreboard players set podX raceVariables $(x)
scoreboard players remove podX raceVariables 2
execute store result storage race:pod x int 1 run scoreboard players get podX raceVariables

#Either does this all over again or proceeds to next function depending on if finished or not
execute unless score numberOfPods raceVariables < totalNumberOfRaceContestants raceVariables run function parkourservern:race/initiate/world_2/_created_pods with storage race:pod
execute if score numberOfPods raceVariables < totalNumberOfRaceContestants raceVariables run function parkourservern:race/initiate/world_2/_create_pods with storage race:pod