# Parkourserver datapack

Runs in latest 1.21.11 snapshot, to be able to use stopwatch command


# Todo

- [ ] Race voteing
- [x] Checks when pepole leave the game in speedrun or race mode
- [ ] Add support for world 2 in races
- [x] Add support for world 1 + 2 in speedruns
- [x] xp bar when speedruning?
- [ ] Test for bugs
- [ ] Add in new advancements and fix bugs in the existing ones 
- [ ] Fully operational speedrun from tävlingscentret
- [x] Optional menu for custom speedrun


# Future 
- [ ] Quest system
- [ ] Cosmetic system


# Functions/Documentation

## Doors

### In
`/function parkourservern:door/in/<north|east|west|south> {"Slantar":"x"}`

Placed under entrance preassure plate, x = amount of slantar needed to enter. Direction based on traveling direction.

`/function parkourservern:door/spec/in/<north|east|west|south> {"Slantar":"E","x":"A","y":"B","z":"C"}`

Placed under entrance preassure plate for doors that require teleportation. Requires both destination and origin to be rotated as specified.
E = amount of slantar needed to enter
A,B,C = x,y,z destination coordinates

`/function parkourservern:door/spec/in/any {"Slantar":"E","x":"A","y":"B","z":"C","x_rot":"Q","y_rot":"W"}`

Placed under entrance preassure plate for doors that require teleportation. Does not check for initial rotation.
E = amount of slantar needed to enter
A,B,C = x,y,z destination coordinates
Q = yaw, W = pitch
