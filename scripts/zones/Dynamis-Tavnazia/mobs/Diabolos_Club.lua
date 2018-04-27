-----------------------------------
-- Area:
--  MOB: Diabolos_Club
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/keyitems");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobDeath(mob, player, isKiller)
    if (player:hasKeyItem(dsp.kis.DYNAMIS_TAVNAZIA_SLIVER ) == false) then
        player:addKeyItem(dsp.kis.DYNAMIS_TAVNAZIA_SLIVER);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.kis.DYNAMIS_TAVNAZIA_SLIVER);
    end
    -- despawn diabolos 's pet
    if (GetMobAction(16949253)~=0) then
        DespawnMob(16949253);
    end
    if (GetMobAction(16949254)~=0) then
        DespawnMob(16949254);
    end

    player:addTitle(dsp.titles.NIGHTMARE_AWAKENER);
end;