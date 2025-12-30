# Clear old tags
tag @e remove in_overworld

# Apply correct tags using predicates
execute as @a[nbt={Dimension:"minecraft:overworld"}] run tag @s add in_overworld
execute as @e[type=minecraft:villager] run tag @s add in_overworld
