execute unless score @s worldVoted matches 2 run scoreboard players add 2 worldVote 1
execute if score @s worldVoted matches 1 run scoreboard players remove 1 worldVote 1
scoreboard players set @s worldVoted 2