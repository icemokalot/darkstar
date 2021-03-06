-----------------------------------
-- Area: Sea Serpent Grotto
--  NPC: ??? Used for Norg quest "It's not your vault"
-- !pos -173 26 252 176
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
local ID = require("scripts/zones/Sea_Serpent_Grotto/IDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    Vault = player:getQuestStatus(OUTLANDS,ITS_NOT_YOUR_VAULT);

    if (Vault == QUEST_ACCEPTED and player:hasKeyItem(dsp.ki.SEALED_IRON_BOX) == false) then
        player:addKeyItem(dsp.ki.SEALED_IRON_BOX);
        player:messageSpecial(ID.text.KEYITEM_OBTAINED,dsp.ki.SEALED_IRON_BOX);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;