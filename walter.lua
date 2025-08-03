SMODS.Joker{ --Wal ter
    key = "walter",
    config = {
        extra = {
            chips = 1
        }
    },
    loc_txt = {
        ['name'] = 'Wal ter',
        ['text'] = {
            [1] = 'New {C:blue}mission{}: pet {C:red}doggo{}'
        }
    },
    pos = {
        x = 1,
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
        if context.individual and context.cardarea == G.play  then
                return {
                    chips = card.ability.extra.chips
                }
        end
    end
}