#To be called from speedrun selector room. Takes values Start, Goal, x, y ,z. 
#Start & Goal are starting Slantar and goal Slantar and coordinates are for which countdown room to use
$execute if score @p Slantar matches $(Goal).. as @p run function parkourservern:speedrun/initiate/_initiate_speedrun {"Start":"$(Start)","Goal":"$(Goal)","x":"$(x)","y":"$(y)","z":"$(z)"}