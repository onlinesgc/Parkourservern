execute if score cameraAuto globalVariables matches 1..2 as @a[team=Race] if score @s racePlacing = cameraPlayerToTrack globalVariables run tag @s add cameraTracked
execute if score cameraAuto globalVariables matches 1..2 as @a[team=Race] unless score @s racePlacing = cameraPlayerToTrack globalVariables run tag @s remove cameraTracked
execute if score cameraAuto globalVariables matches 1..2 as @a[team=!Race] run tag @s remove cameraTracked


#Camera switch Auto
execute if score cameraAuto globalVariables matches 1 store result score globalCountdown globalVariables run stopwatch query timer:global 20
execute if score cameraAuto globalVariables matches 1 run scoreboard players operation globalCountdown globalVariables %= 500 NumberConstants
execute if score cameraAuto globalVariables matches 1 if score globalCountdown globalVariables matches 0 run scoreboard players add cameraPlayerToTrack globalVariables 1
execute if score cameraAuto globalVariables matches 1 if score cameraPlayerToTrack globalVariables matches 4.. run scoreboard players set cameraPlayerToTrack globalVariables 1

#Camera switch Input
execute if score cameraAuto globalVariables matches 2 as @a[tag=camPlayer,gamemode=spectator] if predicate parkourservern:left unless score @s camPlayerSwitched matches 1 run scoreboard players add cameraPlayerToTrack globalVariables 1
execute if score cameraAuto globalVariables matches 2 as @a[tag=camPlayer,gamemode=spectator] if predicate parkourservern:left run scoreboard players set @s camPlayerSwitched 1

execute if score cameraAuto globalVariables matches 2 as @a[tag=camPlayer,gamemode=spectator] if predicate parkourservern:right unless score @s camPlayerSwitched matches 1 run scoreboard players remove cameraPlayerToTrack globalVariables 1
execute if score cameraAuto globalVariables matches 2 as @a[tag=camPlayer,gamemode=spectator] if predicate parkourservern:right run scoreboard players set @s camPlayerSwitched 1

execute if score cameraAuto globalVariables matches 2 as @a[tag=camPlayer] unless predicate parkourservern:right unless predicate parkourservern:left run scoreboard players reset @s camPlayerSwitched


#Camera display
execute if score cameraAuto globalVariables matches 1..2 as @a if score @s racePlacing = cameraPlayerToTrack globalVariables run title @a[tag=camPlayer] actionbar ["",{"text":"Följer: "},{"selector":"@s","color":"green"},{"text":" | Plats "},{"score":{"name":"cameraPlayerToTrack","objective":"globalVariables"},"color":"gold"},{"text":" med "},{"score":{"name":"@s","objective":"raceSlantar"},"color":"yellow"},{"text":" slantar"}]