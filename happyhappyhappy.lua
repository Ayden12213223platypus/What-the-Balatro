SMODS.Joker{ --Happy, Happy, Happy
    key = "happyhappyhappy",
    config = {
        extra = {
            Xmult = 2
        }
    },
    loc_txt = {
        ['name'] = 'Happy, Happy, Happy',
        ['text'] = {
            [1] = 'Happy, Happy, Happy, Happy, Happy'
        }
    },
    pos = {
        x = 4,
        y = 0
    },
    cost = 6,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.Xmult
                }
        end
    end
}