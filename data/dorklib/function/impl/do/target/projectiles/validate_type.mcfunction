# arguments: type
return 1
$execute if entity @s[type=$(type)] if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:entity_type":"$(type)"}}
