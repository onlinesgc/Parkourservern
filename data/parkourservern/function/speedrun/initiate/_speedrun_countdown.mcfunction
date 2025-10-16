title @s times 0 10 0

#Converts global timer into local timer
execute store result score @s globalCountdown run stopwatch query timer:global 20
scoreboard players operation @s speedrunCountdown = @s speedrunCountdownInit
scoreboard players operation @s speedrunCountdown -= @s globalCountdown

#Countdown uses negative values!!
execute if score @s speedrunCountdown matches -20.. run title @s title "10"
execute if score @s speedrunCountdown matches -40..-20 run title @s title "9"
execute if score @s speedrunCountdown matches -60..-40 run title @s title "8"
execute if score @s speedrunCountdown matches -80..-60 run title @s title "7"
execute if score @s speedrunCountdown matches -100..-80 run title @s title "6"
execute if score @s speedrunCountdown matches -120..-100 run title @s title "5"
execute if score @s speedrunCountdown matches -140..-120 run title @s title "4"
execute if score @s speedrunCountdown matches -160..-140 run title @s title "3"
execute if score @s speedrunCountdown matches -180..-160 run title @s title "2"
execute if score @s speedrunCountdown matches -200..-180 run title @s title "1"
execute if score @s speedrunCountdown matches ..-200 run title @s title "KÖR!"

#Checks if countdown has finished and if so performs next step
execute if score @s speedrunCountdown matches ..-200 run function parkourservern:speedrun/initiate/_speedrun_start