#Timer to use in all timer related things
stopwatch create timer:global
stopwatch restart time:global

#Creates scoreboard to use in
scoreboard objectives add globalCountdown dummy

scoreboard objectives add Slantar dummy

scoreboard objectives add speedrunSlantar dummy
scoreboard objectives add speedrunGoal dummy
scoreboard objectives add speedrunPod dummy
scoreboard objectives add speedrunCountdownInit dummy
scoreboard objectives add speedrunCountdown dummy
scoreboard objectives add speedrunStart dummy
scoreboard objectives add speedrunEnd dummy
scoreboard objectives add speedrunMinutes dummy
scoreboard objectives add speedrunSeconds dummy
scoreboard objectives add timerConstants dummy

scoreboard players set oneMinute timerConstants 1200

team add Speedrun
team modify Speedrun collisionRule never
team modify Speedrun color dark_aqua