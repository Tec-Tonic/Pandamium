data modify storage do:io output set value {Name:"minecraft:peony",properties:{half:"lower"}}
execute if block ~ ~ ~ peony[half=upper] run data modify storage do:io output.Properties.half set value "upper"
