execute unless score @s id matches 1.. run function pandamium:misc/assign_id

execute if score @s on_join.tp_to_spawn matches 1 in overworld run tp 0 65 0
execute if score @s on_join.reset_spawnpoint matches 1 in overworld run spawnpoint @s 0 65 0
scoreboard players reset @s on_join.tp_to_spawn
scoreboard players reset @s on_join.reset_spawnpoint

# Triggers
scoreboard players enable @s item_font
scoreboard players enable @s sign_font
scoreboard players enable @s world_info
scoreboard players enable @s rtp

#
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":"===== IMPORTANT =====","bold":true,"color":"red"},{"text":"\n"},{"text":"The ","color":"green"},{"text":"Release Server","bold":true,"color":"dark_green"},{"text":" will be shutting down permanently","color":"green"},{"text":"\n"},{"text":"on the ","color":"green"},{"text":"1st of November 2026","bold":true,"color":"dark_green"},{"text":". Please make note of coords if you wish to download the world.\n\n","color":"green"},{"text":"For more info see our Discord:","color":"green","clickEvent":{"action":"open_url","value":"https://discord.com/channels/504627012921589763/505093367903027220"}},{"text":" ","bold":true,"color":"green","clickEvent":{"action":"open_url","value":"https://discord.com/channels/504627012921589763/505093367903027220"}},{"text":"#announcements","bold":true,"color":"dark_green","clickEvent":{"action":"open_url","value":"https://discord.com/channels/504627012921589763/505093367903027220"}},{"text":"\n"},{"text":"===== IMPORTANT =====","bold":true,"color":"red"}]

scoreboard players set @s detect.leave_game 0
