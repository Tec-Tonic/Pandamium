data modify storage do:io output set value {Name:"minecraft:waxed_oxidized_copper_grate",properties:{waterlogged:"false"}}
execute if block ~ ~ ~ waxed_oxidized_copper_grate[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
