# Run for players that just teleported
execute as @a[tag=finishing_upside_down] at @s in demo:upside_down run kill @e[type=marker,tag=upside_down,distance=..50]

execute as @a[tag=finishing_upside_down] at @s in demo:upside_down run summon minecraft:marker ~ ~ ~ {Tags:["gateway","upside_down", "new_gateway"]}
scoreboard players set @e[type=marker,tag=new_gateway] gateway_life 600
tag @e[type=marker,tag=new_gateway] remove new_gateway
