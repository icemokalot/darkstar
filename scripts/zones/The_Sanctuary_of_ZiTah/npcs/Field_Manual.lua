-----------------------------------
-- Field Manual
-- Area: The Sanctuary of Zi'Tah
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/fieldsofvalor");
-----------------------------------

function onTrigger(player,npc)
    startFov(FOV_EVENT_ZITAH,player);
end;

function onTrade(player,npc,trade)
end;

function onEventUpdate(player,csid,option)
    updateFov(player,csid,option,114,115,116,117,118);
end;

function onEventFinish(player,csid,option)
    finishFov(player,csid,option,114,115,116,117,118,FOV_MSG_ZITAH);
end;
