#Timer to use in all timer related things
stopwatch create timer:global
stopwatch restart timer:global

#Creates scoreboard to use in
scoreboard objectives add globalCountdown dummy

scoreboard objectives add globalVariables dummy

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
scoreboard objectives add raceVariables dummy
scoreboard objectives add racePodnumber dummy
scoreboard objectives add racePlacing dummy
scoreboard objectives add raceTempPlacing dummy

scoreboard objectives add bossbarValue dummy
scoreboard objectives add speedrunPodKickTimer dummy
scoreboard objectives add speedrunStartSlantar dummy


scoreboard objectives add speedrunCustomTrigger trigger
scoreboard objectives add speedrunCustom dummy
scoreboard objectives add speedrunCustomStart dummy
scoreboard objectives add speedrunCustomEnd dummy

scoreboard objectives add speedrunCustomX dummy
scoreboard objectives add speedrunCustomY dummy
scoreboard objectives add speedrunCustomZ dummy

scoreboard objectives add cosmeticsPlayerID dummy

scoreboard objectives add camPlayerSwitched dummy
scoreboard objectives add cameraTrackingHeat dummy
scoreboard objectives add cameraTrackingDelay dummy

scoreboard objectives add leftGame minecraft.custom:minecraft.leave_game

scoreboard objectives add raceSlantar dummy
scoreboard objectives modify raceSlantar displayname "Turnering"

scoreboard objectives add reset trigger
scoreboard objectives add timerCalculator dummy

scoreboard players set oneMinute timerConstants 1200

scoreboard objectives add worldVote dummy
scoreboard objectives add worldVoted dummy
scoreboard players reset * worldVote
scoreboard players reset * worldVoted

scoreboard objectives add speedrunArmorStandCounter dummy

bossbar add race:countdown {text:"."}
bossbar set race:countdown max 10

team add Invited
team modify Invited collisionRule never
team modify Invited color gold

team add Speedrun
team modify Speedrun collisionRule never
team modify Speedrun color dark_aqua

team add Race
team modify Race collisionRule never
team modify Race seeFriendlyInvisibles false

team add Normal
team modify Normal collisionRule never

team add Finished
team modify Finished collisionRule never
team modify Finished color green


#Number constants, please keep in numbered order

scoreboard objectives add NumberConstants dummy

scoreboard players set 2 NumberConstants 2
scoreboard players set 10 NumberConstants 10
scoreboard players set 25 NumberConstants 25
scoreboard players set 100 NumberConstants 100
scoreboard players set 275 NumberConstants 275
scoreboard players set 500 NumberConstants 500

# Voting
function parkourservern:voting/_spawn_meters

#Stats
scoreboard objectives add statsSpeedrunSlantarTotal dummy "Speedrunslantar (21/01/2026 - Nu)"
scoreboard objectives add statsGlobal dummy