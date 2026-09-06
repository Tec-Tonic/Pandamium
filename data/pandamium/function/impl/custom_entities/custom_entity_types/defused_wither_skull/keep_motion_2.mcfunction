execute as @e[type=snowball,tag=pandamium.fixing_motion_2] run data modify entity @s Motion set from storage pandamium:temp motion_2
tag @s remove pandamium.fixing_motion_2
tag @s add pandamium.fixed