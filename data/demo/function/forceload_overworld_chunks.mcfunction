# Store player chunk coords
execute in minecraft:overworld store result score @s chunk_x run data get entity @s Pos[0] 16
execute in minecraft:overworld store result score @s chunk_z run data get entity @s Pos[2] 16

# Center chunk
execute in minecraft:overworld run forceload add ~ ~

# Adjacent chunks (3×3)
execute in minecraft:overworld run forceload add ~1 ~
execute in minecraft:overworld run forceload add ~-1 ~
execute in minecraft:overworld run forceload add ~ ~1
execute in minecraft:overworld run forceload add ~ ~-1
execute in minecraft:overworld run forceload add ~1 ~1
execute in minecraft:overworld run forceload add ~1 ~-1
execute in minecraft:overworld run forceload add ~-1 ~1
execute in minecraft:overworld run forceload add ~-1 ~-1
