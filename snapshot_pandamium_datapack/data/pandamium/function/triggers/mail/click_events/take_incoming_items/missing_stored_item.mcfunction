# Called when an attached item's stored-item record cannot be loaded from pandamium.db.stored_items.
# The item is deliberately NOT marked as taken (it stays on the mail) — report this once per claim.
scoreboard players add <missing_stored_item_reported> variable 1
execute if score <missing_stored_item_reported> variable matches 1 run tellraw @s [{text:"[Mail]",color:"dark_red"},{text:" One of the attached items could not be found in the item database, so it was left on this mail (not lost). Please let staff know!",color:"red"}]