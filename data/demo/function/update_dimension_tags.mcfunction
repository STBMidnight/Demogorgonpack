# Clear old tags
tag @a remove in_overworld
tag @a remove in_upside_down

# Apply correct tags using predicates
execute as @a[nbt={Dimension:"minecraft:overworld"}] run tag @s add in_overworld
