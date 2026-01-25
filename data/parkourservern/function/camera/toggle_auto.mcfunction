scoreboard players add cameraAuto globalVariables 1
execute if score cameraAuto globalVariables matches 4.. run scoreboard players set cameraAuto globalVariables 1

execute if score cameraAuto globalVariables matches 1 run tellraw @s [{text:"Kameror är nu inställda på: "},{text:"AUTO",color:green,bold:true},{text:"\nNär racet start kommer kameran då och då byta mellan 1an 2an och 3an",color:white}]
execute if score cameraAuto globalVariables matches 1 run scoreboard players set cameraPlayerToTrack globalVariables 1

execute if score cameraAuto globalVariables matches 2 run tellraw @s [{text:"Kameror är nu inställda på: "},{text:"INPUT",color:yellow,bold:true},{text:"\nByt vem du spectatear med A/D (i ordning av vem som leder i racet)",color:white}]

execute if score cameraAuto globalVariables matches 3 run tellraw @s [{text:"Kameror är nu inställda på: "},{text:"MANUELL",color:yellow,bold:true},{text:"\nTagga den du vill tracka med /tag NAMN add cameraTracked. Glöm ej ta bort taggen från andra först",color:white}]
execute if score cameraAuto globalVariables matches 3 run tag @a remove cameraTracked