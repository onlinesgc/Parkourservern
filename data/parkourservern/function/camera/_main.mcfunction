execute if score cameraActive globalVariables matches 1 as @e[tag=cameraPoint] at @s run function parkourservern:camera/ray/_select
execute if score cameraActive globalVariables matches 1 run function parkourservern:camera/_update_cameras

function parkourservern:camera/_selector