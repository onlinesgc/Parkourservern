scoreboard players set cameraAuto globalVariables 1
scoreboard players reset * cameraTrackingHeat
scoreboard players reset * cameraTrackingDelay
tag @e remove cameraHit
tag @e remove cameraTracking
tag @e remove cameraTrackingLocked



kill @e[type=text_display,tag=camera1]



scoreboard players set cameraActive globalVariables 1
execute positioned -1365.10 55.00 -931.49 summon text_display run data merge entity @s {teleport_duration:6,Tags:["camera1"]}