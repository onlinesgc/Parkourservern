# Parkourserver datapack

Runs in latest 1.21.11 snapshot, to be able to use stopwatch command


# Todo

- [x] Race voting
- [x] Checks when pepole leave the game in speedrun or race mode
- [x] Add support for world 2 in races
- [x] Add support for world 1 + 2 in speedruns
- [x] xp bar when speedruning?
- [ ] Test for bugs
- [ ] Add new advancements and fix bugs in the existing ones 
- [ ] Fully operational speedrun from tävlingscentret
- [x] Optional menu for custom speedrun


# Future 
- [ ] Quest system
- [ ] Cosmetic system


# Functions/Documentation

## Doors

### In
#### Door in
    /function parkourservern:door/in/<north|east|west|south> {"Slantar":"x"}

Placed under entrance pressure plate, x = amount of slantar needed to enter. Direction based on current traveling direction.
#### Special door in
    /function parkourservern:door/spec/in/<north|east|west|south> {"Slantar":"E","x":"A","y":"B","z":"C"}

Placed under entrance pressure plate for doors that require teleportation. Requires both destination and origin to be rotated as specified.  
- E = amount of slantar needed to enter  
- A,B,C = x,y,z destination coordinates  
<!-- -->
#### Special door in any direction
    /function parkourservern:door/spec/in/any {"Slantar":"E","x":"A","y":"B","z":"C","x_rot":"Q","y_rot":"W"}

Placed under entrance pressure plate for doors that require teleportation. Does not check for initial rotation.  
- E = amount of slantar needed to enter  
- A,B,C = x,y,z destination coordinates  
- Q = yaw, W = pitch  

### Out
#### Normal out door
    /function parkourservern:door/out/<north|east|west|south>
Placed under exit pressure plate. Direction based on current traveling direction (not same corresponding entrance function).
#### Special out door
    /function parkourservern:door/spec/out/<north|east|west|south> {"x":"A","y":"B","z":"C"}

Placed under entrance pressure plate for doors that require teleportation. Requires both destination and origin to be rotated as specified.  
- E = amount of slantar needed to enter  
- A,B,C = x,y,z destination coordinates  

### Other
#### Competition room
    /function parkourservern:door/other/comproom
Teleports closest player standing on chiseled stone within 3 blocks to Tävlingscentret

## Slantar
#### Slant
    function parkourservern:slant/slant {"Slant":"x"}
Placed under Slant button at end of level
- x = Amount of Slantar BEFORE getting button, same as door to level.  Eg. x = 13 results in player getting their 14th Slant.

## Speedruns
### Normal
#### Start speedrun
    /function parkourservern:speedrun/initiate/initiate_speedrun {"Start":"A","Goal":"B","x":"C","y":"D","z":"E"}
Placed in commandblock behind start speedrun button.  
- A = Amount of Slantar to start with  
- B = Amount of Slantar to reach (keep in mind this is 1 higher than level number)  
- C,D,E = x,y,z of speedrun pod booth (where countdown takes place)  

<!-- -->
#### Teleportation button
    /function parkourservern/initiate/speedrun_teleport
Placed under exit pressure plate in speedrun pod (which teleports you after countdown)

### Custom
#### Custom speedrun
    /function parkourservern/initiate/custom/initiate_speedrun {"x":"A","y":"B","z":"C"}
Placed in commandblock behind start speedrun button. Allows player to choose start and end point.
- A,B,C = x,y,z of speedrun pod booth (where countdown takes place) 

## Race
### Starting
#### World 1
##### Start with countdown
    /function parkourservern:race/initiate/world_1/start_race

Starts 5 minute countdown until world 1 race starts.  
##### Start without countdown
    /function parkourservern:race/initiate/world_1/start_race_no_cooldown
Immediatly teleports players and starts world 1 race.
##### Player teleporter
    /function parkourservern:race/initiate/world_1/teleport_to_start
Placed under pressure plate to exit race pod, teleports the player to the start of the course.
#### World 2
##### Start with countdown
    /function parkourservern:race/initiate/world_2/start_race

Starts 5 minute countdown until world 2 race starts.  
##### Start without countdown
    /function parkourservern:race/initiate/world_2/start_race_no_cooldown
Immediatly teleports players and starts world 2 race.
##### Player teleporter
    /function parkourservern:race/initiate/world_2/teleport_to_start
Placed under pressure plate to exit race pod, teleports the player to the start of the course.

### Ending
#### Ending
    /function parkourservern:race/reset/reset
Ends the race.

### Voting
#### Opening
    /function parkourservern:voting/start
Opens voting.  
#### Closing
    /function parkourservern:voting/close
Closes voting.  
#### Rolling
    /function parkourservern:voting/roll
Rolls for world, (purely visual at the moment, you still need to manually start the corresponding race).