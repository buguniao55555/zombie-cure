-- Thanks for use this mod. 
-- Zombie Cure Medical cocktail By Erdato
-- Also thanks to Nolan Ritchie. i took some lines from one of his code.


--Body Parts List --> Foot_L, Foot_R, ForeArm_L, ForeArm_R, Groin, Hand_L, Hand_R, Head, LowerLeg_L, LowerLeg_R, 
--MAX, Neck, Torso_Lower, Torso_Upper, UpperArm_L, UpperArm_R, UpperLeg_L, UpperLeg_R 
-- This part is not implemented yet.

function healBodyPart(bodyPart, player, BD)
--se entra aca por cada parte del cuerpo.
	
	--Body part es una parte del cuerpo tipo Leg_5
	--bodyPart:SetScratched(bodyPart,true); ERROR
	--bodyPart:SetScratched(bodyPart:get(i),true); ERROR
	--local BP;
	--BP = player:getBodyDamage():getBodyPart(BodyPartType.bodyPart);
	--BPD:generateDeepWound();
	--bodyPart:generateDeepWound();
	--if (BD:IsBitten() == true) then  --bodypart deberia ser... OJO
	
	--Body Parts List --> Foot_L, Foot_R, ForeArm_L, ForeArm_R, Groin, Hand_L, Hand_R, Head, LowerLeg_L, LowerLeg_R, 
	--MAX, Neck, Torso_Lower, Torso_Upper, UpperArm_L, UpperArm_R, UpperLeg_L, UpperLeg_R 

	
	--getBiteTime
	if (player:getBodyDamage():getBodyPart(BodyPartType.UpperLeg_L ):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.UpperLeg_L );
	--AA2 = player:getBodyDamage():getBodyPart(BodyPartType.UpperLeg_L):getBiteTime();
	
	BP:RestoreToFullHealth();

	end
	
	if (player:getBodyDamage():getBodyPart(BodyPartType.UpperLeg_R ):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.UpperLeg_R );
	BP:RestoreToFullHealth();

	end	

	if (player:getBodyDamage():getBodyPart(BodyPartType.UpperArm_L):bitten() == true) then
	local BP;
		BP = player:getBodyDamage():getBodyPart(BodyPartType.UpperArm_L);
	BP:RestoreToFullHealth();

	end

	if (player:getBodyDamage():getBodyPart(BodyPartType.UpperArm_R):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.UpperArm_R);
	BP:RestoreToFullHealth();

	end

	if (player:getBodyDamage():getBodyPart(BodyPartType.Torso_Lower):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.Torso_Lower);
	BP:RestoreToFullHealth();
		

	end
	
	
	if (player:getBodyDamage():getBodyPart(BodyPartType.Torso_Upper):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.Torso_Upper);
	BP:RestoreToFullHealth();

	end


	if (player:getBodyDamage():getBodyPart(BodyPartType.Neck):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.Neck);
	BP:RestoreToFullHealth();

	end


	--if (player:getBodyDamage():getBodyPart(BodyPartType.MAX):bitten() == true) then
	--local BP;
	--BP = player:getBodyDamage():getBodyPart(BodyPartType.MAX);
	--BP:generateDeepWound();
	--end

	if (player:getBodyDamage():getBodyPart(BodyPartType.Groin):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.Groin);
	BP:RestoreToFullHealth();
	
	end

	if (player:getBodyDamage():getBodyPart(BodyPartType.Head):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.Head);
	BP:RestoreToFullHealth();
	
	end
	
	if (player:getBodyDamage():getBodyPart(BodyPartType.Hand_L):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.Hand_L);
	BP:RestoreToFullHealth();
		
	end

	if (player:getBodyDamage():getBodyPart(BodyPartType.Hand_R):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.Hand_R);
	BP:RestoreToFullHealth();
		
	end	
	
	if (player:getBodyDamage():getBodyPart(BodyPartType.ForeArm_L):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.ForeArm_L);
	BP:RestoreToFullHealth();
	
	end
	
	if (player:getBodyDamage():getBodyPart(BodyPartType.ForeArm_R):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.ForeArm_R);
	BP:RestoreToFullHealth();

	end

	if (player:getBodyDamage():getBodyPart(BodyPartType.Foot_L):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.Foot_L);
	BP:RestoreToFullHealth();

	end
	
	if (player:getBodyDamage():getBodyPart(BodyPartType.Foot_R):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.Foot_R);
	BP:RestoreToFullHealth();

	end

	if (player:getBodyDamage():getBodyPart(BodyPartType.LowerLeg_L):bitten() == true) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.LowerLeg_L);
	BP:RestoreToFullHealth();

	end
	
	if (player:getBodyDamage():getBodyPart(BodyPartType.LowerLeg_R):bitten() == true or player:getBodyDamage():getBodyPart(BodyPartType.LowerLeg_R):IsInfected() == true ) then
	local BP;
	BP = player:getBodyDamage():getBodyPart(BodyPartType.LowerLeg_R);
	BP:RestoreToFullHealth();
	BD:setInf(false);
	end
	
	
	
	
	
	
	--	BP = player:getBodyDamage():getBodyPart(BodyPartType.LowerLeg_L);
	--	BP:generateDeepWound();
	--	BP = player:getBodyDamage():getBodyPart(BodyPartType.LowerLeg_R);
	--	BP:generateDeepWound();
	
		--local BP;
		--BP = player:getBodyDamage():getBodyPart(BD:get(i);
		--BP:generateDeepWound();
		--bodyPart():generateDeepWound();
	--BD:SetScratched(bodyPart,true);
	--BD:SetBleeding(bodyPart,false);
	--BD:SetBleeding(bodyPart,false);
	
	--BD:SetScratched(true);
	--BD:SetScratched(bodyPart,true);
	--BD:SetScratched(true);
	--SetBleeding
	--endjj
	
	    --BD:scratched() = true; 			NO FUNCA
		--BD:scratched(true); 				NO FUNCA
		--BD:scratched(bodyPart,true) 		NO FUNCA
		--BD:SetScratched(bodyPart,true);   NO FUNCA
		--BD:SetScratched(bodyPart:get(i),true); NO FUNCA
		--BD:SetScratched(true); 				--NO FUNCA
		--BD:SetScratched(bodyPart,true) 	--	NO FUNCA
		bodyPart:SetInfected(false);
		bodyPart:setInfectedWound(false);
		bodyPart:SetFakeInfected(false);
		bodyPart:setWoundInfectionLevel(0);	
		BD:setInf(false); --remueve infeccion virus
		BD:setInfectionLevel(0);
		BD:setInfectionGrowthRate(0);	
		BD:setFakeInfectionLevel(0);
		
	--bodyPart:RestoreToFullHealth();

	
end

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

    if drunk < 20 then
        -- Handle weight-based logic
        if weight >= 100 then
            player:Say("I need survive")
            nutrition:setWeight(weight - 19) -- 19kg weight loss.
        elseif weight >= 80 then
            player:Say("My body feel really weak")
            nutrition:setWeight(weight - 17) -- 17kg weight loss.
        elseif weight >= 70 then
            player:Say("My body feel weak")
            nutrition:setWeight(weight - 15) -- 15kg weight loss.
        elseif weight >= 60 then
            player:Say("My body feel weak . . .")
            nutrition:setWeight(weight - 14) -- 14kg weight loss.
        elseif weight >= 40 then
            player:Say("My body resists luckily.")
            nutrition:setWeight(weight - 13) -- 13kg weight loss.
        else
            player:Say("I can't breathe")
            player:setHealth(0)
            return -- Exit function as player is dead
        end

        -- Apply common effects for survivors (weight >= 40)
        bodyDamage:RestoreToFullHealth() 
		stats:add(CharacterStat.INTOXICATION, 100);
		stats:set(CharacterStat.ENDURANCE, endurance - 0.55) -- Lungs

		-- 哮喘情况下触发流血效果
		-- In case of Asthmatic trait, trigger bleeding effect
        if player.getCharacterTraits():get(CharacterTrait.ASTHMATIC) and ZombRand(100) <= 33 then
            bodyDamage:ReduceGeneralHealth(80) -- Take damage
            player:Say("Blood in my nose")
			stats:set(CharacterStat.ENDURANCE, endurance - 0.25)
        end

		local hasBraveTrait = player.getCharacterTraits():get(CharacterTrait.DESENSITIZED) or not player.getCharacterTraits():get(CharacterTrait.BRAVE)
        if hasBraveTrait then
			stats:set(CharacterStat.PANIC, panic + 120) -- Panic
			stats:set(CharacterStat.BOREDOM, -25)
        end

        if not player.getCharacterTraits():get(CharacterTrait.IRON_GUT) then 
			stats:set(CharacterStat.HUNGER, 50)
            player:Say("My stomach hurts")
        end

	-- 在醉酒状态下服药产生的严重后果，33% 概率死亡、33% 概率疼痛、33% 概率耳聋
	-- In case of high drunkenness when taking medicine, 33% chance of death, 33% chance of pain, 33% chance of deafness
    elseif drunk >= 20 then
        getPlayer():getStats():set(CharacterStat.INTOXICATION, 0.0)
        if ZombRand(100) <= 33 then
            player:Say("medicine and Alcohol doesn't get along")
            player:setHealth(0)
        elseif ZombRand(67) <= 33 then
            player:Say("Pain and agony")
        elseif ZombRand(34) <= 33 then
            player:Say("i cant hear anything,something was totally wrong")
            if not player.getCharacterTraits():get(CharacterTrait.DEAF) then
                player.getCharacterTraits():set(CharacterTrait.DEAF, true)
            end
        else -- ALWAYS executes if previous conditions fail
            nutrition:setWeight(weight - 1)
            bodyDamage:RestoreToFullHealth()
			stats:add(CharacterStat.INTOXICATION, 100)
			stats:set(CharacterStat.ENDURANCE, endurance - 0.55)
        end
    end
end

function Itemcool2()
local inv2 = getPlayer():getInventory();
local player2 = getPlayer();

it2 = inv2:FindAndReturn("MC.AVopen");
    if it2 then
		if ZombRand( 1000 ) <= 5 then
		player2:getInventory():AddItem(instanceItem("Base.Cigarettes"));
			
		getPlayer():Say("I found something");	
		inv2:Remove("AVopen"); -- Se remueve el item sin MC.
		
		elseif ZombRand( 10 ) <= 11 then --SIEMPRE
		getPlayer():Say("Useless Junk");	
		inv2:Remove("AVopen"); -- Se remueve el item sin MC.	
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
		zombie:getInventory():AddItem("MC.AV1")
		--getPlayer():Say("5");
		elseif (ZombRand(4) == 3) then  -- selecciona un numero al azar entre 0 y 3.
		--getPlayer():Say("4");
		zombie:getInventory():AddItem("MC.AV2") 
		elseif (ZombRand(3) == 2) then  -- selecciona un numero al azar entre 0 y 2.
		--getPlayer():Say("3");
		zombie:getInventory():AddItem("MC.AV3")
		elseif (ZombRand(2) == 1) then  -- selecciona un numero al azar entre 0 y 1.
		--getPlayer():Say("2");
		zombie:getInventory():AddItem("MC.AV4")
		elseif (0 == 0) then  -- Siempre que 0 sea igual a 0.
		--getPlayer():Say("1");
		zombie:getInventory():AddItem("MC.AV5")
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

    if item:getType() == "Cura" then
        context:addOption("Try to cure infection...", item, onItemUse, player)
    end
end

Events.OnZombieDead.Add(ZombDropextra);
Events.OnFillInventoryObjectContextMenu.Add(doCuraMenu);