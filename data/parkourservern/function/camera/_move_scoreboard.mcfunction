tag @s add moveScoreBoard
execute as @a[tag=!moveScoreBoard,limit=1] if score @s racePlacing = @a[tag=moveScoreBoard,limit=1] racePlacing run tag @s add moveScoreboard
tag @s remove moveScoreBoard
scoreboard players add @a[tag=moveScoreBoard] racePlacing 1
execute as @a[tag=moveScoreBoard] run function parkourservern:camera/_move_scoreboard