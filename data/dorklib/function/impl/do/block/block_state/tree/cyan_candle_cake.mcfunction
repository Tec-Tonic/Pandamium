data modify storage do:io output set value {Name:"minecraft:cyan_candle_cake",properties:{lit:"false"}}
execute if block ~ ~ ~ cyan_candle_cake[lit=true] run data modify storage do:io output.Properties.lit set value "true"
