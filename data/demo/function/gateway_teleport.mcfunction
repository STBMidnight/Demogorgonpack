# ===== gateway_teleport.mcfunction =====
# Teleport players near the gateway (only if they have the power, cooldown is 0, AND don't have just_teleported tag)
execute as @a[distance=..2,tag=!just_teleported] if score @s gateway_cooldown matches 0 at @s run function demo:player_enter_gateway