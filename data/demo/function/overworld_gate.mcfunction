# Run for players that just teleported
execute as @a[tag=finishing_overworld] at @s in minecraft:overworld run kill @e[type=marker,tag=overworld,distance=..50]

execute as @a[tag=finishing_overworld] at @s in minecraft:overworld run summon minecraft:marker ~ ~ ~ {Tags:["gateway","overworld", "new_gateway"]}
scoreboard players set @e[type=marker,tag=new_gateway] gateway_life 3600
tag @e[type=marker,tag=new_gateway] remove new_gateway

