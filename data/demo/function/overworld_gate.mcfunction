# Run for players that just teleported
execute as @a[tag=finishing_overworld] at @s in minecraft:overworld run kill @e[type=marker,tag=overworld,distance=..50]

execute as @a[tag=finishing_overworld] at @s in minecraft:overworld run summon minecraft:marker ~ ~ ~ {Tags:["gateway","overworld"]}

# Cleanup
tag @a[tag=finishing_overworld] remove finishing_overworld
