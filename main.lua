-- Temperance: shows total joker sell value in the jokers and/or consumables area

if SMODS and SMODS.current_mod then
    TEMP_CONFIG = SMODS.current_mod.config
else
    TEMP_CONFIG = {}
end
TEMP_CONFIG.show_consumables = TEMP_CONFIG.show_consumables == nil and false or TEMP_CONFIG.show_consumables
TEMP_CONFIG.show_jokers = TEMP_CONFIG.show_jokers == nil and true or TEMP_CONFIG.show_jokers

if SMODS and SMODS.current_mod then
    SMODS.current_mod.config_tab = function()
        return {n = G.UIT.ROOT, config = {r = 0.1, align = "cm", padding = 0.1, colour = G.C.BLACK, minw = 8, minh = 6}, nodes = {
            {n = G.UIT.R, config = {align = "cl", padding = 0.1}, nodes = {
                {n = G.UIT.C, config = {align = "c", padding = 0.1}, nodes = {
                    {n = G.UIT.T, config = {text = "Show in jokers area", scale = 0.35, colour = G.C.UI.TEXT_LIGHT}},
                }},
                {n = G.UIT.C, config = {align = "cl", padding = 0.05}, nodes = {
                    create_toggle{col = true, label = "", scale = 0.85, w = 0, shadow = true, ref_table = TEMP_CONFIG, ref_value = 'show_jokers'},
                }},
            }},
            {n = G.UIT.R, config = {align = "cl", padding = 0.1}, nodes = {
                {n = G.UIT.C, config = {align = "c", padding = 0.1}, nodes = {
                    {n = G.UIT.T, config = {text = "Show in consumables area", scale = 0.35, colour = G.C.UI.TEXT_LIGHT}},
                }},
                {n = G.UIT.C, config = {align = "cl", padding = 0.05}, nodes = {
                    create_toggle{col = true, label = "", scale = 0.85, w = 0, shadow = true, ref_table = TEMP_CONFIG, ref_value = 'show_consumables'},
                }},
            }},
        }}
    end
end
