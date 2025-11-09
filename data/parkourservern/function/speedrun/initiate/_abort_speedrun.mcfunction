execute as @a[tag=inSpeedrunPod] run scoreboard players operation @s speedrunPodKickTimer = @s speedrunStart
execute as @a[tag=inSpeedrunPod] store result score @s globalCountdown run stopwatch query timer:global
execute as @a[tag=inSpeedrunPod] run scoreboard players operation @s speedrunPodKickTimer -= @s globalCountdown
execute as @a[tag=inSpeedrunPod] if score @s speedrunPodKickTimer matches 180.. run function parkourservern:speedrun/reset/_triggered_reset