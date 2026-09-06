data modify storage do:io output set value {Name:"minecraft:basalt",properties:{axis:"y"}}
execute if block ~ ~ ~ basalt[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ basalt[axis=z] run data modify storage do:io output.Properties.axis set value "z"
