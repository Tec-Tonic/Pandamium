data modify storage do:io output set value {Name:"minecraft:barrier",properties:{waterlogged:"false"}}
execute if block ~ ~ ~ barrier[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
