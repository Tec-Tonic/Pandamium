gamerule mob_griefing false
schedule function pandamium:impl/custom_entities/custom_entity_types/defused_creeper/restore_gamerule 2t replace
particle minecraft:explosion_emitter ~ ~-1.5 ~
kill @s
