tag @s add pandamium.defusing
execute at @s summon marker run function pandamium:impl/main_loop/defuse_entity/defuse_fireball/as_marker
tag @s remove pandamium.defusing
tag @s add pandamium.defused
data modify entity @s ExplosionPower set value -1b
