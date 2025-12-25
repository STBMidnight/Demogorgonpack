# ===== teleport_to_overworld.mcfunction =====
# Add a tag to prevent immediate re-entry
tag @s add just_teleported

# Reset ability cooldown
resource set @s demo:gateway_gateway_cooldown 200

# Store coordinates
execute store result score @s gw_x run data get entity @s Pos[0]
execute store result score @s gw_y run data get entity @s Pos[1]
execute store result score @s gw_z run data get entity @s Pos[2]

# Kill old gateway in overworld at these coords
execute in minecraft:overworld positioned as @s run kill @e[type=marker,tag=gateway]

# Teleport player
execute in minecraft:overworld run tp @s ~ ~ ~

# Create linked gateway at arrival point
execute in minecraft:overworld positioned as @s run summon minecraft:marker ~ ~ ~ {Tags:["gateway","linked"]}

# Effects
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 2 0.5
particle minecraft:portal ~ ~1 ~ 1 1 1 2 200 force