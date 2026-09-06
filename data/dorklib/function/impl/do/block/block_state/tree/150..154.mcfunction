execute if block ~ ~ ~ minecraft:budding_amethyst run return run data modify storage do:io output set value {Name:"minecraft:budding_amethyst"}
execute if block ~ ~ ~ minecraft:bush run return run data modify storage do:io output set value {Name:"minecraft:bush"}
execute if block ~ ~ ~ minecraft:cactus run return run function dorklib:impl/do/block/block_state/tree/cactus
execute if block ~ ~ ~ minecraft:cactus_flower run return run data modify storage do:io output set value {Name:"minecraft:cactus_flower"}
execute if block ~ ~ ~ minecraft:cake run return run function dorklib:impl/do/block/block_state/tree/cake
