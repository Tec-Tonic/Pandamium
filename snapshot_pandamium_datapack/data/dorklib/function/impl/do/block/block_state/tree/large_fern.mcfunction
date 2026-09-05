data modify storage do:io output set value {Name:"minecraft:large_fern",properties:{half:"lower"}}
execute if block ~ ~ ~ large_fern[half=upper] run data modify storage do:io output.Properties.half set value "upper"
