SMODS.Joker{ --Drip Chicken
    key = "dripchicken",
    config = {
        extra = {
            dollars = 100
        }
    },
    loc_txt = {
        ['name'] = 'Drip Chicken',
        ['text'] = {
            [1] = 'He has {C:attention}money{}, and he give you some'
        }
    },
    pos = {
        x = 2,
        y = 0
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval and G.GAME.blind.boss  then
                return {
                    dollars = card.ability.extra.dollars,
                    message = "Money"
                }
        end
    end
}
