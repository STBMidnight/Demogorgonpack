# Run for players that just teleported
execute as @a[tag=finishing_upside_down] at @s in demo:upside_down run kill @e[type=marker,tag=upside_down,distance=..50]

execute as @a[tag=finishing_upside_down] at @s in demo:upside_down run summon minecraft:marker ~ ~ ~ {Tags:["gateway","upside_down"]}

# Cleanup
tag @a[tag=finishing_upside_down] remove finishing_upside_down
