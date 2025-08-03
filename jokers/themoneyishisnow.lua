SMODS.Joker{ --The money is his now
    key = "themoneyishisnow",
    config = {
        extra = {
            dollars = 3,
            mult = 3
        }
    },
    loc_txt = {
        ['name'] = 'The money is his now',
        ['text'] = {
            [1] = 'He gives you {C:hearts}smth{} for {C:blue}exchange{}'
        }
    },
    pos = {
        x = 3,
        y = 0
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    dollars = -card.ability.extra.dollars,
                    extra = {
                        mult = card.ability.extra.mult
                        }
                }
        end
    end
}
