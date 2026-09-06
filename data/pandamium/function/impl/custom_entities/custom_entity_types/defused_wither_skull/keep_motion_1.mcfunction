execute as @e[type=snowball,tag=pandamium.fixing_motion_1] run data modify entity @s Motion set from storage pandamium:temp motion_1
tag @s remove pandamium.fixing_motion_1
tag @s add pandamium.fixed