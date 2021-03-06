-----------------------------------------
-- ID: 5189
-- Item: dish_of_spaghetti_vongole_rosso
-- Food Effect: 30Min, All Races
-----------------------------------------
-- Health % 20
-- Health Cap 90
-- Vitality 2
-- Mind -1
-- Defense % 25
-- Defense Cap 30
-- Store TP 6
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if target:hasStatusEffect(dsp.effect.FOOD) or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,1800,5189)
end

function onEffectGain(target, effect)
    target:addMod(dsp.mod.FOOD_HPP, 20)
    target:addMod(dsp.mod.FOOD_HP_CAP, 90)
    target:addMod(dsp.mod.VIT, 2)
    target:addMod(dsp.mod.MND, -1)
    target:addMod(dsp.mod.FOOD_DEFP, 25)
    target:addMod(dsp.mod.FOOD_DEF_CAP, 30)
    target:addMod(dsp.mod.STORETP, 6)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.FOOD_HPP, 20)
    target:delMod(dsp.mod.FOOD_HP_CAP, 90)
    target:delMod(dsp.mod.VIT, 2)
    target:delMod(dsp.mod.MND, -1)
    target:delMod(dsp.mod.FOOD_DEFP, 25)
    target:delMod(dsp.mod.FOOD_DEF_CAP, 30)
    target:delMod(dsp.mod.STORETP, 6)
end
