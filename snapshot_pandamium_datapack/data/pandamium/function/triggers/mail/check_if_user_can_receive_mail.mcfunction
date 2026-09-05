# arguments: username, id
# Currently-online players have obviously logged in since mailing was enabled, so a stale
# last_joined.datetime scoreboard value must not block them from receiving mail.
$execute if data storage pandamium:cache online_players[{id:$(id)}] run return 1
$execute store success score <joined_since_mail_added> variable if score $(username) last_joined.datetime matches 780926400..
execute if score <joined_since_mail_added> variable matches 0 run return -1
$execute if score $(username) optn.disable_receiving_mail matches 1 run return -2
$execute if predicate pandamium:player/gameplay_rank/guest if score $(username) optn.disable_receiving_mail matches 2 run return -3
return 1
