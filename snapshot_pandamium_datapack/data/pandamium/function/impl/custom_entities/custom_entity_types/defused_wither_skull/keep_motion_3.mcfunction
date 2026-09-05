execute as @e[type=snowball,tag=pandamium.fixing_motion_3] run data modify entity @s Motion set from storage pandamium:temp motion_3
tag @s remove pandamium.fixing_motion_3
tag @s add pandamium.fixed