# ===== teleport_to_upside_down.mcfunction =====
# Add a tag to prevent immediate re-entry
tag @s add just_teleported

# Reset ability cooldown
resource set @s demo:gateway_gateway_cooldown 200

# Store coordinates
execute store result score @s gw_x run data get entity @s Pos[0]
execute store result score @s gw_y run data get entity @s Pos[1]
execute store result score @s gw_z run data get entity @s Pos[2]

# Teleport player
execute in demo:upside_down run tp @s ~ ~ ~

# Kill old gateway in upside down at these coords
execute in demo:upside_down positioned as @s run kill @e[type=marker,tag=gateway]

# Create linked gateway at arrival point
execute in demo:upside_down positioned as @s run summon minecraft:marker ~ ~ ~ {Tags:["gateway","linked"]}

# Effects
playsound minecraft:block.portal.travel master @s ~ ~ ~ 2 0.5
particle minecraft:portal ~ ~1 ~ 1 1 1 2 200 force