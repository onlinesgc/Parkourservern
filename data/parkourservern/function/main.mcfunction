execute as @a if score @s speedrunCountdown matches ..0 at @s run function parkourservern:speedrun/initiate/_speedrun_countdown
scoreboard players enable @a[team=Speedrun] reset
execute as @a if score @s reset matches 1.. run function parkourservern:speedrun/reset/_triggered_reset