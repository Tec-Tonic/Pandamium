scoreboard players reset @s detect.use.bow
advancement revoke @s only pandamium:detect/shoot_arrow
# remove fire from lit arrows in spawn
execute at @s[predicate=pandamium:in_spawn] anchored eyes positioned ^ ^ ^ as @e[type=#arrows,predicate=pandamium:periodic_tick/on_load,predicate=pandamium:on_fire,distance=..10] run data merge entity @s {Fire:0,HasVisualFire:true,damage:0}
# track the newly fired projectile only; nearby stale arrows can otherwise steal the attachment logic
execute at @s[scores={optn.do_projectile_trails=1,particles_data.trail.type=1..},predicate=pandamium:player/min_gameplay_perms/supporter] anchored eyes positioned ^ ^ ^ as @e[type=#arrows,predicate=pandamium:periodic_tick/on_load,distance=..10] run function pandamium:impl/database/cache/modify/add_projectile_trail_entry/main
execute at @s[scores={optn.do_projectile_trails=1,particles_data.trail.type=1..},predicate=pandamium:player/min_gameplay_perms/supporter] anchored eyes positioned ^ ^ ^ as @e[type=firework_rocket,predicate=pandamium:periodic_tick/on_load,distance=..10] run function pandamium:impl/database/cache/modify/add_projectile_trail_entry/main