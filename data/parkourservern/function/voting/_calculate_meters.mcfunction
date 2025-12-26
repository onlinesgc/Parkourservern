scoreboard players operation 1dummy worldVote = 1 worldVote
scoreboard players operation 2dummy worldVote = 2 worldVote

scoreboard players operation 1dummy worldVote += 2dummy worldVote
scoreboard players operation total worldVote = 1dummy worldVote
scoreboard players operation 1dummy worldVote = 1 worldVote

scoreboard players operation 1percentage worldVote = 1dummy worldVote
scoreboard players operation 2percentage worldVote = 2dummy worldVote

scoreboard players operation 1dummy worldVote *= 275 NumberConstants
scoreboard players operation 2dummy worldVote *= 275 NumberConstants
scoreboard players operation 1percentage worldVote *= 100 NumberConstants
scoreboard players operation 2percentage worldVote *= 100 NumberConstants

scoreboard players operation 1dummy worldVote /= total worldVote
scoreboard players operation 2dummy worldVote /= total worldVote
scoreboard players operation 1percentage worldVote /= total worldVote
scoreboard players operation 2percentage worldVote /= total worldVote

scoreboard players operation 1dummy worldVote += 25 NumberConstants
scoreboard players operation 2dummy worldVote += 25 NumberConstants


execute as @e[tag=voteMeter1] store result entity @s transformation.scale[0] float 0.01 run scoreboard players get 1dummy worldVote

execute as @e[tag=voteMeter2] store result entity @s transformation.scale[0] float 0.01 run scoreboard players get 2dummy worldVote

scoreboard players operation 1dummy worldVote /= 2 NumberConstants
scoreboard players operation 2dummy worldVote /= 2 NumberConstants

execute store result storage voting:textdisplay 1x float 0.01 run scoreboard players get 1dummy worldVote
execute store result storage voting:textdisplay 2x float 0.01 run scoreboard players get 2dummy worldVote
execute store result storage voting:textdisplay 1percentage int 1 run scoreboard players get 1percentage worldVote
execute store result storage voting:textdisplay 2percentage int 1 run scoreboard players get 2percentage worldVote

function parkourservern:voting/_percentage_shower with storage voting:textdisplay