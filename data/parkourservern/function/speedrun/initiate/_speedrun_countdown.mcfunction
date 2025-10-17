title @s times 0 10 0

#Converts global timer into local timer
execute store result score @s globalCountdown run stopwatch query timer:global 20
scoreboard players operation @s speedrunCountdown = @s speedrunCountdownInit
scoreboard players operation @s speedrunCountdown -= @s globalCountdown

#Countdown uses negative values!!
execute if score @s speedrunCountdown matches -20.. run title @s title {"text":"10", "bold": true}
execute if score @s speedrunCountdown matches -40..-20 run title @s title {"text":"9", "bold": true}
execute if score @s speedrunCountdown matches -60..-40 run title @s title {"text":"8", "bold": true}
execute if score @s speedrunCountdown matches -80..-60 run title @s title {"text":"7", "bold": true}
execute if score @s speedrunCountdown matches -100..-80 run title @s title {"text":"6", "bold": true}
execute if score @s speedrunCountdown matches -120..-100 run title @s title {"text":"5", "bold": true}
execute if score @s speedrunCountdown matches -140..-120 run title @s title {"text":"4", "bold": true}
execute if score @s speedrunCountdown matches -160..-140 run title @s title {"text":"3", "bold": true}
execute if score @s speedrunCountdown matches -180..-160 run title @s title {"text":"2", "bold": true}
execute if score @s speedrunCountdown matches -200..-180 run title @s title {"text":"1", "bold": true}
execute if score @s speedrunCountdown matches ..-200 run title @s title {"text":"KÖR!", "bold": true}

#Checks if countdown has finished and if so performs next step
execute if score @s speedrunCountdown matches ..-200 run function parkourservern:speedrun/initiate/_speedrun_start