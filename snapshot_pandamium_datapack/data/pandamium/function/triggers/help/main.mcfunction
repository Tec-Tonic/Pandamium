tellraw @a[scores={send_extra_debug_info=1..}] [{color:"gray",italic:true,text:"["},{color:"gray",selector:"@s"},": help ",{score:{name:"@s",objective:"help"}},"]"]
function pandamium:triggers/help/logic
scoreboard players reset @s help
scoreboard players enable @s help
