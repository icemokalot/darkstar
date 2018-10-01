-----------------------------------
-- Area: Ifrit's Cauldron
--  MOB: Magma
-----------------------------------
local ID = require("scripts/zones/Ifrits_Cauldron/IDs");
require("scripts/globals/settings");
require("scripts/globals/status");
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(dsp.mobMod.IDLE_DESPAWN, 180);
end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
    GetNPCByID(ID.npc.PIRATES_COVE_QM):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
end;
