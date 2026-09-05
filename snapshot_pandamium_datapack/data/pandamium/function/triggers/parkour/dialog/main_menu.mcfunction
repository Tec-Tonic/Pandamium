#> Builds the Parkour dialog menu (replaces the chat print_courses_menu).
# Built at runtime because best times and option states are player-specific.
data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog set value \
{ \
    type: "minecraft:multi_action", \
    title: "Parkour", \
    external_title: "Parkour", \
    body: [], \
    pause: false, \
    after_action: "none", \
    columns: 1, \
    actions: [], \
    "exit_action": {\
						"label": {\
							"translate": "gui.done"\
						},\
						"action": {\
							"type": "minecraft:show_dialog",\
							"dialog": "pandamium:options"\
						}\
					}\
}
# Best Times
data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body append value {type:"minecraft:plain_message",contents:[{text:"Best Times:",bold:true,color:"aqua"}]}
execute if score @s parkour.leaderboard_blacklist matches 1 run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body append value {type:"minecraft:plain_message",contents:[{text:"⚠",color:"yellow",hover_event:{action:"show_text",value:{text:"You may have been blacklisted by request or as a result of hacking/cheating. If you think this is a mistake, please contact a staff member.",color:"red"}}},{text:" You have been blacklisted from parkour leaderboards.",color:"red"}]}
# Course 1 (archived)
execute if score @s parkour_1.best_time matches 1.. run scoreboard players operation <ticks> variable = @s parkour_1.best_time
execute if score @s parkour_1.best_time matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_1.best_time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body append value {type:"minecraft:plain_message",contents:["",": ", ""]}
execute if score @s parkour_1.best_time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[0] set from storage pandamium:dictionary parkour.parkour_1.name
execute if score @s parkour_1.best_time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[2] set from storage pandamium:temp formatted_time
execute if score @s parkour_1.best_time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents append value {text:" (ARCHIVED)",color:"gray"}
# Course 2 (archived)
execute if score @s parkour_2.best_time matches 1.. run scoreboard players operation <ticks> variable = @s parkour_2.best_time
execute if score @s parkour_2.best_time matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_2.best_time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body append value {type:"minecraft:plain_message",contents:["",": ", ""]}
execute if score @s parkour_2.best_time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[0] set from storage pandamium:dictionary parkour.parkour_2.name
execute if score @s parkour_2.best_time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[2] set from storage pandamium:temp formatted_time
execute if score @s parkour_2.best_time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents append value {text:" (ARCHIVED)",color:"gray"}
# Course 3 (unconfirmed)
execute if score @s parkour_3.best_time matches 1.. run scoreboard players operation <ticks> variable = @s parkour_3.best_time
execute if score @s parkour_3.best_time matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_3.best_time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body append value {type:"minecraft:plain_message",contents:["", " (Unconfirmed): ", "", " ", {text:"⚠",color:"yellow",hover_event:{action:"show_text",value:["",{text:"Unconfirmed",color:"yellow",underlined:true},{text:"\nThis time was made before lag correction was added, so may be shorter than your real time.",color:"gray"}]}}]}
execute if score @s parkour_3.best_time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[0] set from storage pandamium:dictionary parkour.parkour_3.name
execute if score @s parkour_3.best_time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[2] set from storage pandamium:temp formatted_time
# Course 3 (real)
execute if score @s parkour_3.best_time_real matches 1.. run scoreboard players operation <ticks> variable = @s parkour_3.best_time_real
execute if score @s parkour_3.best_time_real matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_3.best_time_real matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body append value {type:"minecraft:plain_message",contents:["",": ", ""]}
execute if score @s parkour_3.best_time_real matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[0] set from storage pandamium:dictionary parkour.parkour_3.name
execute if score @s parkour_3.best_time_real matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[2] set from storage pandamium:temp formatted_time
# Course 3 (flawless)
execute if score @s parkour_3.best_time_deathless matches 1.. run scoreboard players operation <ticks> variable = @s parkour_3.best_time_deathless
execute if score @s parkour_3.best_time_deathless matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_3.best_time_deathless matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body append value {type:"minecraft:plain_message",contents:["", " (Flawless): ", ""]}
execute if score @s parkour_3.best_time_deathless matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[0] set from storage pandamium:dictionary parkour.parkour_3.name
execute if score @s parkour_3.best_time_deathless matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[2] set from storage pandamium:temp formatted_time
# Course 4 (shortest time)
execute if score @s parkour_4.shortest_time.time matches 1.. run scoreboard players operation <ticks> variable = @s parkour_4.shortest_time.time
execute if score @s parkour_4.shortest_time.time matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_4.shortest_time.time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body append value {type:"minecraft:plain_message",contents:["", " (Shortest Time): ", "", " with ", 0, " falls"]}
execute if score @s parkour_4.shortest_time.time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[0] set from storage pandamium:dictionary parkour.parkour_4.name
execute if score @s parkour_4.shortest_time.time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[2] set from storage pandamium:temp formatted_time
execute if score @s parkour_4.shortest_time.time matches 1.. run execute store result storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body[-1].contents[4] int 1 run scoreboard players get @s parkour_4.shortest_time.falls
execute unless score @s parkour_1.best_time matches 1.. unless score @s parkour_2.best_time matches 1.. unless score @s parkour_3.best_time matches 1.. unless score @s parkour_3.best_time_real matches 1.. unless score @s parkour_3.best_time_deathless matches 1.. unless score @s parkour_4.shortest_time.time matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.body append value {type:"minecraft:plain_message",contents:["", " You havent completed any of the parkour courses that we spent a lot of time building :( ", ""]}
# Courses
data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions append value {label:["["], action:{type:"minecraft:run_command",command:"trigger parkour.warp.Forgotten_Caverns"}}
data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions[-1].label append from storage pandamium:dictionary parkour.parkour_3.name
data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions[-1].label append value "]"
data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions append value {label:["["], action:{type:"minecraft:run_command",command:"trigger parkour.warp.Jack_o_Giggle"}}
data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions[-1].label append from storage pandamium:dictionary parkour.parkour_4.name
data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions[-1].label append value "]"
# Options
data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions append value {label:["Show Parkour Timer: "], action:{type:"minecraft:run_command",command:"trigger options set -5"}}
execute unless score @s hide_parkour_timer matches 1 run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions[-1].label append value {text:"On",color:"yellow",bold:true}
execute if score @s hide_parkour_timer matches 1 run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions[-1].label append value {text:"Off",color:"yellow",bold:true}
data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions append value {label:["New Attempt on Fall: "], action:{type:"minecraft:run_command",command:"trigger options set -15"}}
execute unless score @s optn.parkour.restart_on_fall matches 1 run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions[-1].label append value {text:"Off",color:"yellow",bold:true}
execute if score @s optn.parkour.restart_on_fall matches 1 run data modify storage pandamium:local functions."pandamium:triggers/parkour/*".dialog.actions[-1].label append value {text:"On",color:"yellow",bold:true}
function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:triggers/parkour/*"
