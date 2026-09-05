# from pandamium:bedrock_breaker enchantment hit_block effect
particle minecraft:item{item:{id:"minecraft:barrier",count:1}} ~ ~0.3 ~ 0.3 0.3 0.3 0.03 5
execute if predicate pandamium:in_bottom_bedrock_layer run return run setblock ~ ~ ~ bedrock destroy
