# ===== player_enter_gateway.mcfunction =====
# Check which dimension player is in and teleport accordingly

# Only teleport to upside down if in overworld AND not just teleported
execute if entity @s[predicate=demo:in_overworld] unless entity @s[tag=just_teleported] run function demo:teleport_to_upside_down

# Only teleport to overworld if in upside down AND not just teleported
execute if entity @s[predicate=demo:in_upside_down] unless entity @s[tag=just_teleported] run function demo:teleport_to_overworld