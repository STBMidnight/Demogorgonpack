# ===== gateway_teleport.mcfunction =====
# Teleport players near the gateway (only if they have the power, cooldown is 0, AND don't have just_teleported tag)
execute as @e[distance=..1,tag=!just_teleported, type=!minecraft:item, type=!minecraft:marker] at @e[type=marker,tag=gateway,limit=1,sort=nearest] run function demo:player_enter_gateway