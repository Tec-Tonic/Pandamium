data modify storage do:io output set value {Name:"minecraft:redstone_ore",properties:{lit:"false"}}
execute if block ~ ~ ~ redstone_ore[lit=true] run data modify storage do:io output.Properties.lit set value "true"
