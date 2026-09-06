execute if score <marco_shouted> variable matches 1 run return 0
advancement grant @s only pandamium:detect/marco_polo_flag
execute as @a[tag=source,limit=1] if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{looking_at:{"minecraft:entity_type":"minecraft:player","minecraft:type_specific/player":{advancements:{"pandamium:detect/marco_polo_flag":true}}}}}} run scoreboard players set <marco_shouted> variable 1
advancement revoke @s only pandamium:detect/marco_polo_flag
execute if score <marco_shouted> variable matches 1 run advancement revoke @s only pandamium:pandamium/misc/marco_polo/marco
execute if score <marco_shouted> variable matches 1 run advancement grant @s only pandamium:pandamium/misc/marco_polo/marco
