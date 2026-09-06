tag @s add pandamium.defusing
execute at @s[nbt={Invul:220}] summon marker run function pandamium:impl/main_loop/defuse_entity/defuse_wither/as_marker
tag @s remove pandamium.defusing
tag @s add pandamium.defused
team join wither_skull @s