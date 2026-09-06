# arguments: rgb
# modify the colours
$item modify entity @s armor.feet {type:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},on_pass:{type:"minecraft:set_components",components:{"minecraft:dyed_color":$(rgb)}}}
$item modify entity @s armor.legs {type:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},on_pass:{type:"minecraft:set_components",components:{"minecraft:dyed_color":$(rgb)}}}
$item modify entity @s armor.chest {type:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},on_pass:{type:"minecraft:set_components",components:{"minecraft:dyed_color":$(rgb)}}}
$item modify entity @s armor.head {type:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},on_pass:{type:"minecraft:set_components",components:{"minecraft:dyed_color":$(rgb)}}}
