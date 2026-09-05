# process the last remaining entry (highest remaining index in the entries array)
execute unless data storage pandamium:queue selected.entry.rebuild_entries[] run return 0
execute store result score <rebuild.index> variable if data storage pandamium:queue selected.entry.rebuild_entries[]
scoreboard players remove <rebuild.index> variable 1
execute store result storage pandamium:templates macro.rebuild.params.index int 1 run scoreboard players get <rebuild.index> variable
data modify storage pandamium:templates macro.rebuild.params.username set from storage pandamium:queue selected.entry.rebuild_entries[-1].username
execute store result storage pandamium:templates macro.rebuild.params.id int 1 run data get storage pandamium:queue selected.entry.rebuild_entries[-1].id
function pandamium:impl/queue/actions/rebuild_players_indexes/with_entry with storage pandamium:templates macro.rebuild.params
data remove storage pandamium:queue selected.entry.rebuild_entries[-1]
# progress
execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.rebuild_entries[]
execute if data storage pandamium:queue selected.entry.rebuild_entries[] run return run function pandamium:impl/queue/utils/continue