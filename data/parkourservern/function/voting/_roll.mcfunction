title @a times 0 40 0

execute store result score currentTime worldVote run stopwatch query timer:global 20
scoreboard players operation currentTime worldVote -= rollStartTime worldVote

title @a subtitle {"text":"↑",color:red}

execute if score currentTime worldVote matches 1 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 2 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 3 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 4 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 5 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 6 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 7 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 8 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 9 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 10 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 11 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 12 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 13 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 14 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 15 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 16 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 17 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 18 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 20 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 22 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 24 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 26 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 30 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 34 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 38 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 44 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 50 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 56 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 64 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 72 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 80 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 89 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 99 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 111 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 123 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 137 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 153 run function parkourservern:voting/roller/_wrong1
execute if score currentTime worldVote matches 173 run function parkourservern:voting/roller/_wrong2
execute if score currentTime worldVote matches 213 run function parkourservern:voting/roller/_right
execute if score currentTime worldVote matches 213.. run scoreboard players set worldRoll worldVote 0