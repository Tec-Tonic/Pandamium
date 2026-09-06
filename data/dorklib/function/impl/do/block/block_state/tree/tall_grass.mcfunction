data modify storage do:io output set value {Name:"minecraft:tall_grass",properties:{half:"lower"}}
execute if block ~ ~ ~ tall_grass[half=upper] run data modify storage do:io output.Properties.half set value "upper"
