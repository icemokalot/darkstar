-----------------------------------
-- Area: Mount Zhayolm
--  MOB: Wamoura
-----------------------------------
local ID = require("scripts/zones/Mount_Zhayolm/IDs")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob)
end

function onMobDespawn(mob)
    phOnDespawn(mob,ID.mob.IGNAMOTH_PH,10,7200) -- 2 hours
end
