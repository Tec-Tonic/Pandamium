# arguments: index, id, username
$execute if data storage pandamium.db.players:data entries[$(index)] run data modify storage pandamium.db.players:data id_indexes."$(id)" set value $(index)
$execute if data storage pandamium.db.players:data entries[$(index)] run data modify storage pandamium.db.players:data username_indexes."$(username)" set value $(index)
# compute the lowercase username (same method as on_join)
data modify storage do:io input set from storage pandamium:templates macro.rebuild.params.username
function do:str/lower
data modify storage pandamium:templates macro.rebuild.params.lowercase_username set from storage do:io output
$execute if data storage pandamium.db.players:data entries[$(index)] run data modify storage pandamium.db.players:data lowercase_username_indexes."$(lowercase_username)" set value $(index)
return 1