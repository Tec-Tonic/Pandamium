execute if score @s help matches ..-1 run return run tellraw @s [{text:"[Help]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
execute if score @s help matches 1 run return run dialog show @s pandamium:help
execute if score @s help matches 2 run return run dialog show @s pandamium:help_commands
execute if score @s help matches 3 run return run dialog show @s pandamium:help_rules
execute if score @s help matches 4 run return run dialog show @s pandamium:help_ranks
tellraw @s [{text:"[Help]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
