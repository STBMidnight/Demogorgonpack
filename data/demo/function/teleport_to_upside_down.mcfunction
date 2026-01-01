# Prevent immediate re-entry
tag @s add just_teleported
tag @s add finishing_upside_down

# Fiery pull-in swirl
particle minecraft:flame ~ ~1 ~ 0.35 0.6 0.35 0.01 40 force

# Smoke distortion
particle minecraft:smoke ~ ~1 ~ 0.25 0.5 0.25 0.005 25 force

# Core ignition flash
particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force

# Reset cooldown
resource set @s demo:gateway_gateway_cooldown 200

# --- OVERWORLD SIDE ---
execute in minecraft:overworld run kill @e[type=marker,tag=overworld,distance=..50]
execute in minecraft:overworld run summon minecraft:marker ~ ~ ~ {Tags:["gateway","overworld", "new_gateway"]}
scoreboard players set @e[type=marker,tag=new_gateway] gateway_life 600
tag @e[type=marker,tag=new_gateway] remove new_gateway
# --- TELEPORT ---
execute in demo:upside_down run tp @s ~ ~ ~

# --- UPSIDE DOWN SIDE ---
schedule function demo:upside_down_gate 10t

schedule function demo:gate_exit_particles 15t

playsound minecraft:block.honey_block.break player @s ~ ~ ~ 10 0.1
