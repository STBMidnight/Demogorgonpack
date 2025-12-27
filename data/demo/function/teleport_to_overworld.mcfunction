# ===== teleport_to_overworld.mcfunction =====
# Add a tag to prevent immediate re-entry
tag @s add just_teleported

# Reset ability cooldown
resource set @s demo:gateway_gateway_cooldown 200

kill @e[tag=gateway,distance=..50]

execute in demo:upside_down run summon minecraft:marker ~ ~ ~ {Tags:["gateway","linked"]}

# Store coordinates
execute store result score @s gw_x run data get entity @s Pos[0]
execute store result score @s gw_y run data get entity @s Pos[1]
execute store result score @s gw_z run data get entity @s Pos[2]

# Teleport player
execute in minecraft:overworld run tp @s ~ ~ ~

# Kill old gateway in overworld at these coords
kill @e[type=marker,tag=gateway,distance=..50]

# Create linked gateway at arrival point
execute in minecraft:overworld positioned as @s run summon minecraft:marker ~ ~ ~ {Tags:["gateway","linked"]}

# Effects
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 2 0.5
particle minecraft:portal ~ ~1 ~ 1 1 1 2 200 force