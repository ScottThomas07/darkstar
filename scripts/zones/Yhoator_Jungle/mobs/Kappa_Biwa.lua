-----------------------------------
-- Area: Yhoator Jungle
--   NM: Kappa Biwa
-- Involved in Quest: True will
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
require("scripts/globals/quests")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(dsp.mobMod.IDLE_DESPAWN, 180)
end

function onMobDeath(mob, player, isKiller)
    if player:getQuestStatus(OUTLANDS,dsp.quest.id.outlands.TRUE_WILL) == QUEST_ACCEPTED then
        if KAPPA_AKUSO:isDead() and KAPPA_BONZE:isDead() then
            player:addVar("trueWillKilledNM", 1)
        end
    end
end