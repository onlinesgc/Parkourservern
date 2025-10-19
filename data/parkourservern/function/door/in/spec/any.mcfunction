#/function path/to/file:function {"Slantar":"E","x":"A","y":"B","z":"C","x_rot":"Q","y_rot":"W"}

$execute positioned ~ ~2 ~ as @a[distance=..1,team=!Speedrun, team=!Race] if score @s Slantar matches $(Slantar).. run tp @s $(x) $(y) $(z) $(x_rot) $(y_rot)
$execute positioned ~ ~2 ~ as @a[distance=..1,team=Speedrun] if score @s speedrunSlantar matches $(Slantar).. run tp @s $(x) $(y) $(z) $(x_rot) $(y_rot)
$execute positioned ~ ~2 ~ as @a[distance=..1,team=Race] if score @s raceSlantar matches $(Slantar).. run tp @s $(x) $(y) $(z) $(x_rot) $(y_rot)