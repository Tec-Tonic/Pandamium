execute unless entity @s[predicate=pandamium:in_dimension/the_end,x=0,y=62,z=0,distance=..10] run advancement grant @s only pandamium:detect/place_end_crystal/message
function pandamium:impl/main_loop/defuse_entity/main
scoreboard players reset @s detect.use.end_crystal
advancement revoke @s only pandamium:detect/place_end_crystal