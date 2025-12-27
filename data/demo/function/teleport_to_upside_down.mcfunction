# Prevent immediate re-entry
tag @s add just_teleported
tag @s add finishing_upside_down

# Reset cooldown
resource set @s demo:gateway_gateway_cooldown 200

# --- OVERWORLD SIDE ---
execute in minecraft:overworld run kill @e[type=marker,tag=overworld,distance=..50]
execute in minecraft:overworld run summon minecraft:marker ~ ~ ~ {Tags:["gateway","overworld"]}

# --- TELEPORT ---
execute in demo:upside_down run tp @s ~ ~ ~

# --- UPSIDE DOWN SIDE ---
schedule function demo:upside_down_gate 5t

# Effects
playsound minecraft:block.portal.travel master @s ~ ~ ~ 2 0.5
particle minecraft:portal ~ ~1 ~ 1 1 1 2 200 force
