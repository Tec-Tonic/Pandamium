#> Opens the Advancement Help dialog (converted from data/pandamium/dialog/help_advancements.json).
data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog set value \
{ \
    "type": "minecraft:multi_action", \
    "title": "Advancement Help", \
    "pause": false, \
    "after_action": "none", \
    "columns": 2, \
    "body": { \
        "type": "minecraft:plain_message", \
        "contents": "Select an advancement to see your progress and whats left to do.", \
        "width": 400 \
    }, \
    "exit_action": { \
        "label": "Done", \
        "action": { \
            "type": "minecraft:show_dialog", \
            "dialog": "pandamium:options" \
        } \
    }, \
    "actions": [ \
        { \
            "label": { \
                "player": { \
                    "properties": [ \
                        { \
                            "name": "textures", \
                            "value": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTM0YWViMmVhNDI0YzMwNmFhZmJkNzc2N2VmNzBiMTk3OGZhMWZiODc2OTNlMTU2YjdlMzYxYzI2OTU2YjZhZCJ9fX0=" \
                        } \
                    ] \
                } \
            }, \
            "tooltip": { \
                "text": "Craft EVERY* mini-block in a stonecutter", \
                "color": "dark_purple", \
                "extra": [ \
                    { \
                        "text": "\n(except the Dragon Egg)", \
                        "color": "gray" \
                    } \
                ] \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 101" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": "Minicraft: Pandamium Edition", \
            "tooltip": { \
                "text": "Craft EVERY* mini-block in a stonecutter", \
                "color": "dark_purple", \
                "extra": [ \
                    { \
                        "text": "\n(except the Dragon Egg)", \
                        "color": "gray" \
                    } \
                ] \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 101" \
            }, \
        }, \
        { \
            "label": { \
                "player": { \
                    "properties": [ \
                        { \
                            "name": "textures", \
                            "value": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmFmNTA3ODVjYWQ5MWU1ZWJjZDE5YjU3ZWRjZWE4Y2JjZGM1OGYwNmI5MWMxOWVlMTdmYjI0MjJjMTg5MmFkMyJ9fX0=" \
                        } \
                    ] \
                } \
            }, \
            "tooltip": { \
                "text": "Obtain all the Unobtainable Mini Blocks from wandering traders", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 111" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": "How Did They Get Those?", \
            "tooltip": { \
                "text": "Obtain all the Unobtainable Mini Blocks from wandering traders", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 111" \
            } \
        }, \
        { \
            "label": { \
                "player": { \
                    "properties": [ \
                        { \
                            "name": "textures", \
                            "value": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjY3ZTE1ZWFiNzMwNjRiNjY4MGQxZGI5OGJhNDQ1ZWQwOTE0YmEzNWE3OTk5OTdjMGRhMmIwM2ZmYzNhODgyNiJ9fX0=" \
                        } \
                    ] \
                } \
            }, \
            "tooltip": { \
                "text": "Collect every Custom Mob Head using charged creepers", \
                "color": "dark_purple", \
                "extra": [ \
                    { \
                        "text": "\n(except the Ender Dragon Head)", \
                        "color": "gray" \
                    } \
                ] \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 102" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": "Taxidermist", \
            "tooltip": { \
                "text": "Collect every Custom Mob Head using charged creepers", \
                "color": "dark_purple", \
                "extra": [ \
                    { \
                        "text": "\n(except the Ender Dragon Head)", \
                        "color": "gray" \
                    } \
                ] \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 102" \
            } \
        }, \
        { \
            "label": { \
                "player": { \
                    "properties": [ \
                        { \
                            "name": "textures", \
                            "value": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGNhZGQ0YmYzYzRjYWNlOTE2NjgwZTFmZWY5MGI1ZDE2YWQ2NjQzOTUxNzI1NjY4YmE2YjQ5OTZiNjljYTE0MCJ9fX0=" \
                        } \
                    ] \
                } \
            }, \
            "tooltip": { \
                "text": "Collect every Panda Head using charged creepers", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 112" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": "Pandamonium", \
            "tooltip": { \
                "text": "Collect every Panda Head using charged creepers", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 112" \
            } \
        }, \
        { \
            "label": { \
                "player": { \
                    "properties": [ \
                        { \
                            "name": "textures", \
                            "value": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzJjZTE2MWUzMjA1ZDg5ZTdlNGQzZWMwNGQyNWFiZmVhNjIzMWEyMjc3YTJiZDc2ZjQ2OTNmNGNlNjE4OWEyZCJ9fX0=" \
                        } \
                    ] \
                } \
            }, \
            "tooltip": { \
                "text": "Collect every Wolf Head using charged creepers", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 113" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": "Man's Best Friend?", \
            "tooltip": { \
                "text": "Collect every Wolf Head using charged creepers", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 113" \
            } \
        }, \
        { \
            "label": { \
                "player": { \
                    "properties": [ \
                        { \
                            "name": "textures", \
                            "value": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjExM2RiZDNjNmEwNzhhMTdiNGVkYjc4Y2UwN2Q4MzZjMzhkYWNlNTAyN2Q0YjBhODNmZDYwZTdjYTdhMGZjYiJ9fX0=" \
                        } \
                    ] \
                } \
            }, \
            "tooltip": { \
                "text": "Collect every Cat Head using charged creepers", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 114" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": "Creeper's Payback", \
            "tooltip": { \
                "text": "Collect every Cat Head using charged creepers", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 114" \
            } \
        }, \
        { \
            "label": { \
                "atlas": "minecraft:items", \
                "sprite": "minecraft:item/map", \
                "color": "#FFFFFF", \
                "shadow_color": 0 \
            }, \
            "tooltip": { \
                "translate": "advancements.adventure.adventuring_time.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 103" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": { \
                "translate": "advancements.adventure.adventuring_time.title" \
            }, \
            "tooltip": { \
                "translate": "advancements.adventure.adventuring_time.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 103" \
            } \
        }, \
        { \
            "label": { \
                "atlas": "minecraft:items", \
                "sprite": "minecraft:item/diamond_sword", \
                "color": "#FFFFFF", \
                "shadow_color": 0 \
            }, \
            "tooltip": { \
                "translate": "advancements.adventure.kill_all_mobs.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 104" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": { \
                "translate": "advancements.adventure.kill_all_mobs.title" \
            }, \
            "tooltip": { \
                "translate": "advancements.adventure.kill_all_mobs.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 104" \
            } \
        }, \
        { \
            "label": { \
                "atlas": "minecraft:items", \
                "sprite": "minecraft:item/apple", \
                "color": "#FFFFFF", \
                "shadow_color": 0 \
            }, \
            "tooltip": { \
                "translate": "advancements.husbandry.balanced_diet.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 105" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": { \
                "translate": "advancements.husbandry.balanced_diet.title" \
            }, \
            "tooltip": { \
                "translate": "advancements.husbandry.balanced_diet.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 105" \
            } \
        }, \
        { \
            "label": { \
                "atlas": "minecraft:items", \
                "sprite": "minecraft:item/wheat", \
                "color": "#FFFFFF", \
                "shadow_color": 0 \
            }, \
            "tooltip": { \
                "translate": "advancements.husbandry.breed_all_animals.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 107" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": { \
                "translate": "advancements.husbandry.breed_all_animals.title" \
            }, \
            "tooltip": { \
                "translate": "advancements.husbandry.breed_all_animals.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 107" \
            } \
        }, \
        { \
            "label": { \
                "atlas": "minecraft:items", \
                "sprite": "minecraft:item/silence_armor_trim_smithing_template", \
                "color": "#FFFFFF", \
                "shadow_color": 0 \
            }, \
            "tooltip": { \
                "translate": "advancements.adventure.trim_with_all_exclusive_armor_patterns.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 106" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": { \
                "translate": "advancements.adventure.trim_with_all_exclusive_armor_patterns.title" \
            }, \
            "tooltip": { \
                "translate": "advancements.adventure.trim_with_all_exclusive_armor_patterns.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 106" \
            } \
        }, \
        { \
            "label": { \
                "atlas": "minecraft:items", \
                "sprite": "minecraft:item/cod", \
                "color": "#FFFFFF", \
                "shadow_color": 0 \
            }, \
            "tooltip": { \
                "translate": "advancements.husbandry.complete_catalogue.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 108" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": { \
                "translate": "advancements.husbandry.complete_catalogue.title" \
            }, \
            "tooltip": { \
                "translate": "advancements.husbandry.complete_catalogue.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 108" \
            } \
        }, \
        { \
            "label": { \
                "atlas": "minecraft:items", \
                "sprite": "minecraft:item/bone", \
                "color": "#FFFFFF", \
                "shadow_color": 0 \
            }, \
            "tooltip": { \
                "translate": "advancements.husbandry.whole_pack.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 109" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": { \
                "translate": "advancements.husbandry.whole_pack.title" \
            }, \
            "tooltip": { \
                "translate": "advancements.husbandry.whole_pack.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 109" \
            } \
        }, \
        { \
            "label": { \
                "atlas": "minecraft:items", \
                "sprite": "minecraft:item/netherite_boots", \
                "color": "#FFFFFF", \
                "shadow_color": 0 \
            }, \
            "tooltip": { \
                "translate": "advancements.nether.explore_nether.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 110" \
            }, \
            "width": 20 \
        }, \
        { \
            "label": { \
                "translate": "advancements.nether.explore_nether.title" \
            }, \
            "tooltip": { \
                "translate": "advancements.nether.explore_nether.description", \
                "color": "dark_purple" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "trigger help.advancements set 110" \
            } \
        } \
    ] \
}
function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:triggers/help.advancements/*"
