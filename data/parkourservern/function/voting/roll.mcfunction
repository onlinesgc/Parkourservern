execute store result score rollStartTime worldVote run stopwatch query timer:global 20

execute store result score randomRoll worldVote run random value 1..100

execute unless score randomRoll worldVote >= 1percentage worldVote run scoreboard players set world worldVote 1
execute if score randomRoll worldVote >= 1percentage worldVote run scoreboard players set world worldVote 2


# Triggers in main
scoreboard players set worldRoll worldVote 1