summon snowball ~ ~ ~ {NoGravity:1b,Team:"wither_skull",Tags:["pandamium.wither_skull","pandamium.defusing","pandamium.defused","pandamium.dangerous"],ExplosionPower:-1b,Item:{id:"minecraft:polished_blackstone_button",count:1}}

execute store result score #x pandamium.temp run data get entity @s Motion[0] 1000
execute store result score #y pandamium.temp run data get entity @s Motion[1] 1000
execute store result score #z pandamium.temp run data get entity @s Motion[2] 1000

data modify entity @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing] Owner set from entity @s Owner
data modify entity @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing] Rotation set from entity @s Rotation
data modify entity @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing] Pos set from entity @s Pos

execute unless data entity @s {dangerous:1b} run tag @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing] remove pandamium.dangerous

execute store result entity @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing,tag=!pandamium.dangerous] Motion[0] double 0.009 run scoreboard players get #x pandamium.temp
execute store result entity @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing,tag=!pandamium.dangerous] Motion[1] double 0.006 run scoreboard players get #y pandamium.temp
execute store result entity @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing,tag=!pandamium.dangerous] Motion[2] double 0.009 run scoreboard players get #z pandamium.temp

execute store result entity @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing,tag=pandamium.dangerous] Motion[0] double 0.004 run scoreboard players get #x pandamium.temp
execute store result entity @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing,tag=pandamium.dangerous] Motion[1] double 0.003 run scoreboard players get #y pandamium.temp
execute store result entity @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing,tag=pandamium.dangerous] Motion[2] double 0.004 run scoreboard players get #z pandamium.temp

data modify entity @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing] data.pandamium.motion set from entity @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing] Motion

execute at @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing] summon item_display run function pandamium:impl/main_loop/defuse_entity/defuse_wither_skull/as_marker
tag @n[type=snowball,tag=pandamium.wither_skull,tag=pandamium.defusing] remove pandamium.defusing
kill @s