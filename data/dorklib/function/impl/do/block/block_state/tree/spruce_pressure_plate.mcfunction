data modify storage do:io output set value {Name:"minecraft:spruce_pressure_plate",properties:{powered:"false"}}
execute if block ~ ~ ~ spruce_pressure_plate[powered=true] run data modify storage do:io output.Properties.powered set value "true"
