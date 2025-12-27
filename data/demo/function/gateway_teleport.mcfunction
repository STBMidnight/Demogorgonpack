# ===== gateway_teleport.mcfunction =====
# Teleport players near the gateway (only if they have the power, cooldown is 0, AND don't have just_teleported tag)
execute as @a[distance=..0.3,tag=!just_teleported] if score @s gateway_cooldown matches 0 at @e[type=marker,tag=gateway,limit=1,sort=nearest] run function demo:player_enter_gateway