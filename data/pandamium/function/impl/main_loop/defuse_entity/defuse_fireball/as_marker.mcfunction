data modify entity @s data.custom_entity_type set value "defused_fireball"
tag @s add pandamium.custom_entity.type.defused_fireball
tag @s add pandamium.custom_entity.brain
tag @s add pandamium.ticking
ride @s mount @e[type=fireball,tag=pandamium.defusing,distance=..0.01,limit=1]