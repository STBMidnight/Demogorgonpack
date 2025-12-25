# ===== gatetick.mcfunction =====
execute as @e[tag=gateway] at @s run function demo:gateway
function demo:thunder
execute as @e[tag=gateway] at @s run function demo:gateway_teleport

# Sync Origins resource to scoreboard for easier checking
execute as @a store result score @s gateway_cooldown run resource get @s demo:gateway_gateway_cooldown

# Remove just_teleported tag after a short delay
execute as @a[tag=just_teleported] run scoreboard players add @s teleport_timer 1
execute as @a[scores={teleport_timer=60..}] run tag @s remove just_teleported
execute as @a[scores={teleport_timer=60..}] run scoreboard players set @s teleport_timer 0