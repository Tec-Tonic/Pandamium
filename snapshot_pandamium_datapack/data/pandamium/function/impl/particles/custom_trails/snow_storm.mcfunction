# Snowfall
particle minecraft:dust{color:[0.976f,0.988f,1.000f],scale:3f} ~ ~3.2 ~ .5 0.1 .5 0 25
particle minecraft:snowflake ~ ~3.2 ~ 0.5 0 0.5 0 2
#clouds
execute if score <storm> variable matches 100.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run function pandamium:impl/particles/custom_trails/misc/lightning_bolt_1
execute if score <storm> variable matches 100.. if score <lightning_bolt> variable matches 5 rotated ~ 0 run function pandamium:impl/particles/custom_trails/misc/lightning_bolt_2
execute if score <storm> variable matches 100.. if score <lightning_bolt> variable matches 9 rotated ~ 0 run function pandamium:impl/particles/custom_trails/misc/lightning_bolt_3