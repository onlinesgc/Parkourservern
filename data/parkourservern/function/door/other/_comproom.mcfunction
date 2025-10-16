#Checks for right amount of Slantar and denies or allows exit

execute unless score @s Slantar matches 30.. run title @s actionbar ["",{"text":"Du behöver fler ","color":"yellow"},{"text":"Slantar","color":"gold"},{"text":" för att komma in här","color":"yellow"}]
execute if score @s Slantar matches 30.. run tp @s -1332 44 -932 -90 0

# If in speedrun mode, reset speedrun
execute as @s[team=Speedrun] run function parkourservern:speedrun/reset/reset