data modify storage do:io output set value {Name:"minecraft:sunflower",properties:{half:"lower"}}
execute if block ~ ~ ~ sunflower[half=upper] run data modify storage do:io output.Properties.half set value "upper"
