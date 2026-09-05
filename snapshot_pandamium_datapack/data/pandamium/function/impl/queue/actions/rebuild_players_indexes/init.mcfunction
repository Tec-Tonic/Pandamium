# arguments: entry
# called by the queue system on a loaded entry with action: "rebuild_players_indexes"
data modify storage pandamium:queue selected.entry.meta.name set value {text:"Rebuilding [players] indexes",color:"yellow"}
data modify storage pandamium:queue selected.entry.meta.status set value ""
# take a working copy of the players entries to iterate through (processed from the end)
execute if data storage pandamium:queue selected.entry.rebuild_entries run data remove storage pandamium:queue selected.entry.rebuild_entries
data modify storage pandamium:queue selected.entry.rebuild_entries set from storage pandamium.db.players:data entries
# NOTE: we intentionally do NOT clear the existing id/username/lowercase index maps here.
# They are rebuilt by overwriting each key (idempotent), so they can never be left empty
# if this queue action gets interrupted or skipped on a restart.
# progress
execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.rebuild_entries[]