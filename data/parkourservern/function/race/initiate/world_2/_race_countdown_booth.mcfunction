title @a[team=Race] times 0 10 0

#Converts global timer into local timer
execute store result score globalCountdown raceVariables run stopwatch query timer:global 20
scoreboard players operation raceCountdown raceVariables = raceCountdownInit raceVariables
scoreboard players operation raceCountdown raceVariables -= globalCountdown raceVariables

#Countdown uses negative values!!
execute if score raceCountdown raceVariables matches -20.. run title @a[team=Race] title {"text":"10", "bold": true}
execute if score raceCountdown raceVariables matches -40..-20 run title @a[team=Race] title {"text":"9", "bold": true}
execute if score raceCountdown raceVariables matches -60..-40 run title @a[team=Race] title {"text":"8", "bold": true}
execute if score raceCountdown raceVariables matches -80..-60 run title @a[team=Race] title {"text":"7", "bold": true}
execute if score raceCountdown raceVariables matches -100..-80 run title @a[team=Race] title {"text":"6", "bold": true}
execute if score raceCountdown raceVariables matches -120..-100 run title @a[team=Race] title {"text":"5", "bold": true}
execute if score raceCountdown raceVariables matches -140..-120 run title @a[team=Race] title {"text":"4", "bold": true}
execute if score raceCountdown raceVariables matches -160..-140 run title @a[team=Race] title {"text":"3", "bold": true}
execute if score raceCountdown raceVariables matches -180..-160 run title @a[team=Race] title {"text":"2", "bold": true}
execute if score raceCountdown raceVariables matches -200..-180 run title @a[team=Race] title {"text":"1", "bold": true}
execute if score raceCountdown raceVariables matches ..-200 run title @a[team=Race] title {"text":"KÖR!", "bold": true}

#Checks if countdown has finished and if so performs next step
execute if score raceCountdown raceVariables matches ..-200 run function parkourservern:race/initiate/world_2/_race_start