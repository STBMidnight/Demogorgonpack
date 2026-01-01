# Store player chunk coords
execute in demo:upside_down store result score @s chunk_x run data get entity @s Pos[0] 16
execute in demo:upside_down store result score @s chunk_z run data get entity @s Pos[2] 16

# Center chunk
execute in demo:upside_down run forceload add ~ ~

# Adjacent chunks (3×3)
execute in demo:upside_down run forceload add ~1 ~
execute in demo:upside_down run forceload add ~-1 ~
execute in demo:upside_down run forceload add ~ ~1
execute in demo:upside_down run forceload add ~ ~-1
execute in demo:upside_down run forceload add ~1 ~1
execute in demo:upside_down run forceload add ~1 ~-1
execute in demo:upside_down run forceload add ~-1 ~1
execute in demo:upside_down run forceload add ~-1 ~-1
