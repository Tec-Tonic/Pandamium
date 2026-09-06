data modify storage do:io output set value {Name:"minecraft:grass_block",properties:{snowy:"false"}}
execute if block ~ ~ ~ grass_block[snowy=true] run data modify storage do:io output.Properties.snowy set value "true"
