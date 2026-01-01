# Orange glow core
effect give @s minecraft:slowness 1 10 true

particle minecraft:dust{color:[1.0,0.45,0.1],scale:1.5} ~ ~1 ~ 0.4 0.6 0.4 0 80 force
particle minecraft:dust{color:[1.0,0.55,0.15],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0 40 force

# Heat / instability
particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.01 40 force
particle minecraft:smoke ~ ~1 ~ 0.4 0.6 0.4 0.01 20 force

playsound minecraft:block.portal.trigger master @s ~ ~ ~ 1.5 0.6
playsound minecraft:block.fire.ambient master @s ~ ~ ~ 0.8 0.9

execute in demo:upside_down run tp @s ~ ~ ~

particle dust{color:[1.0,0.55,0.5],scale:1.7} ~ ~1 ~ 0.4 0.6 0.4 0 100 force
particle minecraft:ash ~ ~1 ~ 0.4 0.8 0.4 0.01 30 force

playsound minecraft:block.portal.travel master @s ~ ~ ~ 1.5 0.7
playsound minecraft:block.lava.pop master @s ~ ~ ~ 0.6 1.2