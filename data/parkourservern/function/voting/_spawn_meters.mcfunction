kill @e[tag=voteMeter]

setblock -1285 46 -934 oak_wall_sign[facing=west]{front_text:{messages:["Värld 1","Fängelsehålorna","",{"text":"<<Rösta här>>","click_event":{"action":"run_command","command":"function parkourservern:voting/vote1"}}]}} replace
setblock -1285 45 -934 oak_wall_sign[facing=west]{front_text:{messages:["Värld 2","Gruvbyn","",{"text":"<<Rösta här>>","click_event":{"action":"run_command","command":"function parkourservern:voting/vote2"}}]}} replace

# World 1
execute positioned -1285 46 -933 run summon block_display ~-0.5 ~ ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:cyan_concrete",Properties:{}},transformation:[0f,0f,-0.0011f,1f,0f,0.375f,0f,0.35f,0.25f,0f,0f,0f,0f,0f,0f,1f],Tags:["voteMeter","voteMeter1"]}],Tags:["voteMeter"]}
execute positioned -1285 46 -933 run summon block_display ~-0.5 ~ ~-0.5 {Passengers:[{id:"minecraft:text_display",text:"0%",text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[0f,0f,-1f,0.9375f,0f,1f,0f,0.4f,1f,0f,0f,0.125f,0f,0f,0f,1f],Tags:["voteMeter","voteMeterValue1"]}],Tags:["voteMeter"]}
# World 2
execute positioned -1285 45 -933 run summon block_display ~-0.5 ~ ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:orange_concrete",Properties:{}},transformation:[0f,0f,-0.0011f,1f,0f,0.375f,0f,0.35f,0.25f,0f,0f,0f,0f,0f,0f,1f],Tags:["voteMeter","voteMeter2"]}],Tags:["voteMeter"]}
execute positioned -1285 45 -933 run summon block_display ~-0.5 ~ ~-0.5 {Passengers:[{id:"minecraft:text_display",text:"0%",text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[0f,0f,-1f,0.9375f,0f,1f,0f,0.4f,1f,0f,0f,0.125f,0f,0f,0f,1f],Tags:["voteMeter","voteMeterValue2"]}],Tags:["voteMeter"]}

