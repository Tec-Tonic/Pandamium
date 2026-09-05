advancement revoke @s only pandamium:detect/place_respawn_anchor_in_non_nether_dimension
tellraw @s [{text:"[Private Info]",color:"dark_red"},{text:" Respawn Anchors are currently disabled in this location!",color:"red"}]
execute if predicate {type:"minecraft:location_check",predicate:{position:{y:{min:-10,max:10}}}} run fill ~-10 0 ~-10 ~10 ~10 ~10 air replace minecraft:respawn_anchor
execute if predicate {type:"minecraft:location_check",predicate:{position:{y:{min:10,max:245}}}} run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace minecraft:respawn_anchor
execute if predicate {type:"minecraft:location_check",predicate:{position:{y:{min:245,max:265}}}} run fill ~-10 ~-10 ~-10 ~10 255 ~10 air replace minecraft:respawn_anchor
give @s[gamemode=!creative] minecraft:respawn_anchor