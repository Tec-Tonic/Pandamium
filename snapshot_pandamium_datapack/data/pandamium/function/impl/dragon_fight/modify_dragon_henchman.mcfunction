team join dragon_fight @s

execute store result entity @s attributes[{id:"minecraft:scale"}].base double 0.01 run random value 5..40

execute store result entity @s attributes[{id:"minecraft:max_health"}].modifiers[{id:"pandamium:dragon_henchman_max_health_modifier",operation:"add_multiplied_base"}].amount double 0.2 run random value -30..30

execute store result entity @s Health float 1 run attribute @s minecraft:max_health get