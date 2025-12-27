execute unless score @s worldVoted matches 1 run scoreboard players add 1 worldVote 1
execute if score @s worldVoted matches 2 run scoreboard players remove 2 worldVote 1


# Success noise
execute unless score @s worldVoted matches 1 if score active worldVote matches 1 at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 1.7 1

# Voting closed message
execute unless score active worldVote matches 1 run tellraw @s {"text":"Röstningen är stängd!","color":"red"}
execute unless score active worldVote matches 1 at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5 1

# Update voting status
scoreboard players set @s worldVoted 1