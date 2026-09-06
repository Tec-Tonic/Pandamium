data modify storage do:io output set value {Name:"minecraft:stone_pressure_plate",properties:{powered:"false"}}
execute if block ~ ~ ~ stone_pressure_plate[powered=true] run data modify storage do:io output.Properties.powered set value "true"
