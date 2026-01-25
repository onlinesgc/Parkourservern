scoreboard players set @s globalVariables 45

execute at @s run function parkourservern:camera/ray/_scan

execute as @s[tag=hitCamera] at @s run function parkourservern:camera/ray/_hit

kill @s