# Prevent immediate re-entry
tag @s add just_teleported
tag @s add finishing_overworld

# Reset cooldown
resource set @s demo:gateway_gateway_cooldown 200

# --- UPSIDE DOWN SIDE ---
execute in demo:upside_down run kill @e[type=marker,tag=upside_down,distance=..50]
execute in demo:upside_down run summon minecraft:marker ~ ~ ~ {Tags:["gateway","upside_down"]}

# --- TELEPORT ---
execute in minecraft:overworld run tp @s ~ ~ ~

# --- OVERWORLD SIDE ---
schedule function demo:overworld_gate 5t

# Effects
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 2 0.5
particle minecraft:portal ~ ~1 ~ 1 1 1 2 200 force
