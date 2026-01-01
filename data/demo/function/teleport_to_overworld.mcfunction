# Prevent immediate re-entry
tag @s add just_teleported
tag @s add finishing_overworld

# Fiery pull-in swirl
particle minecraft:flame ~ ~1 ~ 0.35 0.6 0.35 0.01 40 force

# Smoke distortion
particle minecraft:smoke ~ ~1 ~ 0.25 0.5 0.25 0.005 25 force

# Core ignition flash
particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force


# Reset cooldown
resource set @s demo:gateway_gateway_cooldown 200

# --- UPSIDE DOWN SIDE ---
execute in demo:upside_down run kill @e[type=marker,tag=upside_down,distance=..50]
execute in demo:upside_down run summon minecraft:marker ~ ~ ~ {Tags:["gateway","upside_down", "new_gateway"]}
scoreboard players set @e[type=minecraft:marker, tag=new_gateway] gateway_life 600
tag @e[type=marker,tag=new_gateway] remove new_gateway

# --- TELEPORT ---
execute in minecraft:overworld run tp @s ~ ~ ~

# --- OVERWORLD SIDE ---
schedule function demo:overworld_gate 5t

schedule function demo:gate_exit_particles 10t

playsound minecraft:block.honey_block.break player @s ~ ~ ~ 10 0.1