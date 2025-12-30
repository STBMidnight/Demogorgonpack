execute in demo:upside_down run kill @e[type=minecraft:armor_stand,tag=overworld_tracker]

execute in minecraft:overworld as @a[tag=in_overworld] at @s run execute in demo:upside_down run summon minecraft:armor_stand ~ ~1.5 ~ {Invisible:1b, NoGravity:1b, Small:1b, Tags:["overworld_tracker"]}

execute in demo:upside_down run effect give @e[type=minecraft:armor_stand,tag=overworld_tracker] minecraft:glowing 2 0 true
