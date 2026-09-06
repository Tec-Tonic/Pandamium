scoreboard players add @s variable 1 
execute as @s[scores={variable=600..}] on vehicle run kill @s
execute as @s[scores={variable=600..}] run tag @s add pandamium.remove
execute on vehicle at @s[type=fireball,tag=pandamium.defused] run return fail
execute unless predicate pandamium:in_spawn unless entity @s[tag=pandamium.remove] run function pandamium:impl/custom_entities/custom_entity_types/defused_fireball/controller_create_explosion
kill @s