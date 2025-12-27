execute if score world worldVote matches 1 run title @a title [{"text":"3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 "},{"text":"1",bold:true},{text:" 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2"}]
execute if score world worldVote matches 2 run title @a title [{"text":"1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 "},{"text":"2",bold:true},{text:" 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3"}]
execute if score world worldVote matches 3 run title @a title [{"text":"2312312312312312312312312312"},{"text":"3",bold:true},{text:"1231231231231231231231231231"}]

execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1