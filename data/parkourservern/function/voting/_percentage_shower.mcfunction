$data modify entity @e[limit=1,tag=voteMeterValue1] transformation.translation[2] set value $(1x)
$data merge entity @e[limit=1,tag=voteMeterValue1] {text:"$(1percentage)%"}

$data modify entity @e[limit=1,tag=voteMeterValue2] transformation.translation[2] set value $(2x)
$data merge entity @e[limit=1,tag=voteMeterValue2] {text:"$(2percentage)%"}