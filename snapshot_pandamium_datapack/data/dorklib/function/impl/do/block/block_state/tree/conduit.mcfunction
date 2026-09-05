data modify storage do:io output set value {Name:"minecraft:conduit",properties:{waterlogged:"true"}}
execute if block ~ ~ ~ conduit[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
