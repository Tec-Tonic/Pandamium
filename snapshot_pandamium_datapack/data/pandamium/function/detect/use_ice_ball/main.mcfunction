# track thrown ice balls
execute at @s[scores={optn.do_projectile_trails=1,particles_data.trail.type=1..},predicate=pandamium:player/min_gameplay_perms/supporter] anchored eyes positioned ^ ^ ^ as @e[type=ice_ball,predicate=pandamium:periodic_tick/on_load,distance=..10] run function pandamium:impl/database/cache/modify/add_projectile_trail_entry/main
scoreboard players reset @s detect.use.ice_ball
advancement revoke @s only pandamium:detect/use_ice_ball
