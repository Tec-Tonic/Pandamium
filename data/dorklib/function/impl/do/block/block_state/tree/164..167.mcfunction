execute if block ~ ~ ~ minecraft:cave_air run return run data modify storage do:io output set value {Name:"minecraft:cave_air"}
execute if block ~ ~ ~ minecraft:cave_vines run return run function dorklib:impl/do/block/block_state/tree/cave_vines
execute if block ~ ~ ~ minecraft:cave_vines_plant run return run function dorklib:impl/do/block/block_state/tree/cave_vines_plant
execute if block ~ ~ ~ minecraft:chain_command_block run return run function dorklib:impl/do/block/block_state/tree/chain_command_block
