-- Thanks for use this mod. 
-- Zombie Cure Medical cocktail By Buguniao & Eazybot
-- Original mod by Erdato
-- Also thanks to Nolan Ritchie. i took some lines from one of his code.



function onItemUse()
    local player = getPlayer()
    local stats = player:getStats()
    local nutrition = player:getNutrition()
    local bodyDamage = player:getBodyDamage()
    local drunk = stats:get(CharacterStat.INTOXICATION)
    local endurance = stats:get(CharacterStat.ENDURANCE)
    local panic = stats:get(CharacterStat.PANIC)
    local weight = nutrition:getWeight()

	-- ISTimedActionQueue.add(ISInventoryTransferAction:new(playerObj, item, item:getContainer(), playerObj:getInventory()))
	-- ISTimedActionQueue.add(ISConsumeGenericAction:new(playerObj, item, 100))

	player:getInventory():Remove("ZombieCureAntidote")

    if drunk < 20 then
        -- Handle weight-based logic
        if weight >= 100 then
            player:Say(getText("IGUI_ZombieCure_Say_NeedSurvive"))
            nutrition:setWeight(weight - 19) -- 19kg weight loss.
        elseif weight >= 80 then
            player:Say(getText("IGUI_ZombieCure_Say_BodyWeakReally"))
            nutrition:setWeight(weight - 17) -- 17kg weight loss.
        elseif weight >= 70 then
            player:Say(getText("IGUI_ZombieCure_Say_BodyWeak"))
            nutrition:setWeight(weight - 15) -- 15kg weight loss.
        elseif weight >= 60 then
            player:Say(getText("IGUI_ZombieCure_Say_BodyWeakDots"))
            nutrition:setWeight(weight - 14) -- 14kg weight loss.
        elseif weight >= 40 then
            player:Say(getText("IGUI_ZombieCure_Say_BodyResists"))
            nutrition:setWeight(weight - 13) -- 13kg weight loss.
        else
            player:Say(getText("IGUI_ZombieCure_Say_CantBreathe"))
            player:setHealth(0)
            return -- Exit function as player is dead
        end

        -- Apply common effects for survivors (weight >= 40)
        bodyDamage:RestoreToFullHealth() 
        stats:add(CharacterStat.INTOXICATION, 100);
        stats:set(CharacterStat.ENDURANCE, endurance - 0.55) -- Lungs

		-- 哮喘情况下触发流血效果
		-- In case of Asthmatic trait, trigger bleeding effect
        if player:getCharacterTraits():get(CharacterTrait.ASTHMATIC) and ZombRand(100) <= 33 then
            bodyDamage:ReduceGeneralHealth(80) -- Take damage
            player:Say(getText("IGUI_ZombieCure_Say_BloodNose"))
            stats:set(CharacterStat.ENDURANCE, endurance - 0.25)
        end

		local hasBraveTrait = player:getCharacterTraits():get(CharacterTrait.DESENSITIZED) or player:getCharacterTraits():get(CharacterTrait.BRAVE)
        if hasBraveTrait then
			stats:set(CharacterStat.PANIC, panic + 120.0) -- Panic
			stats:set(CharacterStat.BOREDOM, -25)
        end

        if not player:getCharacterTraits():get(CharacterTrait.IRON_GUT) then 
            stats:set(CharacterStat.HUNGER, 50)
            player:Say(getText("IGUI_ZombieCure_Say_StomachHurts"))
        end

    -- 在醉酒状态下服药产生的严重后果，33% 概率死亡、33% 概率疼痛、33% 概率耳聋
    -- In case of high drunkenness when taking medicine, 33% chance of death, 33% chance of pain, 33% chance of deafness
    elseif drunk >= 20 then
        getPlayer():getStats():set(CharacterStat.INTOXICATION, 0.0)
        if ZombRand(100) <= 33 then
            player:Say(getText("IGUI_ZombieCure_Say_AlcoholBad"))
            player:setHealth(0)
        elseif ZombRand(67) <= 33 then
            player:Say(getText("IGUI_ZombieCure_Say_PainAgony"))
        elseif ZombRand(34) <= 33 then
            player:Say(getText("IGUI_ZombieCure_Say_DeafError"))
            if not player:getCharacterTraits():get(CharacterTrait.DEAF) then
                player:getCharacterTraits():set(CharacterTrait.DEAF, true)
            end
        else -- ALWAYS executes if previous conditions fail
            nutrition:setWeight(weight - 1)
            bodyDamage:RestoreToFullHealth()
            stats:add(CharacterStat.INTOXICATION, 100)
            stats:set(CharacterStat.ENDURANCE, endurance - 0.55)
        end
    end
end


local function ZombDropextra(zombie)
local player2 = getPlayer();

    if (ZombRand(1000) <= 5) then  -- selecciona un numero del 0 al 999 (contando el 0 y el 999)
        if (ZombRand(6) == 5) then  -- selecciona un numero al azar entre 0 y 4.
        zombie:getInventory():AddItem("Antibiotics")
        --getPlayer():Say("6");
        elseif (ZombRand(5) == 4) then  -- selecciona un numero al azar entre 0 y 4.
        zombie:getInventory():AddItem("ZombieCure.ZombieCureMed1")
        --getPlayer():Say("5");
        elseif (ZombRand(4) == 3) then  -- selecciona un numero al azar entre 0 y 3.
        --getPlayer():Say("4");
        zombie:getInventory():AddItem("ZombieCure.ZombieCureMed2") 
        elseif (ZombRand(3) == 2) then  -- selecciona un numero al azar entre 0 y 2.
        --getPlayer():Say("3");
        zombie:getInventory():AddItem("ZombieCure.ZombieCureMed3")
        elseif (ZombRand(2) == 1) then  -- selecciona un numero al azar entre 0 y 1.
        --getPlayer():Say("2");
        zombie:getInventory():AddItem("ZombieCure.ZombieCureMed4")
        elseif (0 == 0) then  -- Siempre que 0 sea igual a 0.
        --getPlayer():Say("1");
        zombie:getInventory():AddItem("ZombieCure.ZombieCureMed5")
        end
    end
    
end

local function doCuraMenu(player, context, items)
    local item = nil
    for _, v in ipairs(items) do
        if not instanceof(v, "InventoryItem") then
            item = v.items[1]
        else
            item = v
        end
    end

    if item:getType() == "ZombieCureAntidote" then
        context:addOption(getText("ContextMenu_ZombieCure_TryCure"), item, onItemUse, player)
    end
end

Events.OnZombieDead.Add(ZombDropextra);
Events.OnFillInventoryObjectContextMenu.Add(doCuraMenu);