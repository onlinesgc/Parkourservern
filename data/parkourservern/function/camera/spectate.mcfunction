gamemode spectator @s
function parkourservern:camera/activate_cameras
tag @a remove camPlayer
tag @s add camPlayer
function parkourservern:camera/toggle_auto
spectate @e[tag=camera1,limit=1]