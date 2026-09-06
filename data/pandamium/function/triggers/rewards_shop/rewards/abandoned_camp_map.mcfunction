execute unless dimension minecraft:overworld run return run function pandamium:utils/fail_and_message {message: [{color:"dark_red",text:"[Rewards Shop]"},{color:"red",text:" This reward can only be bought in the Overworld!"}] }
loot give @s loot pandamium:rewards_shop/rewards/abandoned_camp_map
return 1
