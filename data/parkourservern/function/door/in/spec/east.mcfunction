#/function path/to/file:function {"Slantar":"E","x":"A","y":"B","z":"C"}

$execute positioned ~ ~2 ~ as @a[distance=..1,y_rotation=-110..-70] if score @s Slantar matches $(Slantar).. run tp @s $(x) $(y) $(z)