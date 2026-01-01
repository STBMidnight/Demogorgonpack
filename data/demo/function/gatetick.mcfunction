# ===== gatetick.mcfunction =====

execute as @e[tag=gateway] at @s run function demo:gateway
function demo:thunder
function demo:update_dimension_tags
execute as @e[tag=gateway] at @s run function demo:gateway_teleport

# Sync Origins resource to scoreboard for easier checking
execute as @a store result score @s gateway_cooldown run resource get @s demo:gateway_gateway_cooldown

# Remove just_teleported tag after a short delay
execute as @e[tag=just_teleported] run scoreboard players add @s teleport_timer 1
execute as @e[scores={teleport_timer=60..}] run tag @s remove just_teleported
execute as @e[scores={teleport_timer=60..}] run scoreboard players set @s teleport_timer 0

# Decrease lifetime of all gateways
scoreboard players remove @e[type=marker,tag=gateway] gateway_life 1

# Remove expired gateways
execute as @e[type=marker,tag=gateway,scores={gateway_life=1..100}] at @s run particle minecraft:crimson_spore ~ ~1 ~ 0.3 0.6 0.3 0.02 6 force
execute as @e[type=marker,tag=gateway,scores={gateway_life=1}] at @s run playsound minecraft:entity.allay.death master @a[distance=..10] ~ ~ ~ 1 0.7
kill @e[type=marker,tag=gateway,scores={gateway_life=..0}]
