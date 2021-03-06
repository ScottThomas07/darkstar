-----------------------------------
-- Area: West Ronfaure
--  NPC: qm3 (???)
-- Involved in Quest: The Dismayed Customer
-- !pos -399 -10 -438 100
-----------------------------------
local ID = require("scripts/zones/West_Ronfaure/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/quests")
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    if player:getQuestStatus(SANDORIA, dsp.quest.id.sandoria.THE_DISMAYED_CUSTOMER) == QUEST_ACCEPTED and player:getVar("theDismayedCustomer") == 3 then
        player:addKeyItem(dsp.ki.GULEMONTS_DOCUMENT)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, dsp.ki.GULEMONTS_DOCUMENT)
        player:setVar("theDismayedCustomer", 0)
    else
        player:messageSpecial(ID.text.DISMAYED_CUSTOMER)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
