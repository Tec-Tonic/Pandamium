# track thrown experience bottles
execute at @s[scores={optn.do_projectile_trails=1,particles_data.trail.type=1..},predicate=pandamium:player/min_gameplay_perms/supporter] anchored eyes positioned ^ ^ ^ as @e[type=experience_bottle,predicate=pandamium:periodic_tick/on_load,distance=..10] run function pandamium:impl/database/cache/modify/add_projectile_trail_entry/main
scoreboard players reset @s detect.use.experience_bottle
advancement revoke @s only pandamium:detect/use_experience_bottle
