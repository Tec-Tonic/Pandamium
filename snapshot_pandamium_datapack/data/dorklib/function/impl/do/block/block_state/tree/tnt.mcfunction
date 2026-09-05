data modify storage do:io output set value {Name:"minecraft:tnt",properties:{unstable:"false"}}
execute if block ~ ~ ~ tnt[unstable=true] run data modify storage do:io output.Properties.unstable set value "true"
