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

function Itemcool()


local inv = getPlayer():getInventory();
local player = getPlayer();
local stats = player:getStats();
local borracho = getPlayer():getStats():get(CharacterStat.INTOXICATION)
local pwg = getPlayer():getNutrition():getWeight();



it = inv:FindAndReturn("MC.Cura");
    if it then
    
	inv:Remove("Cura"); -- Se remueve el item Cura.
	if borracho < 20 then				
		if pwg >= 100 then  -- Peso corporal mayor a 100
			getPlayer():Say("I need survive");	
			getPlayer():getNutrition():setWeight(pwg - 19) -- Perdida de 19kg de peso.

			getPlayer():getBodyDamage():RestoreToFullHealth();  -- <------ Full Health (it will be update later)

			getPlayer():getStats():setDrunkenness(getPlayer():getStats():getDrunkenness() + 100);  
			getPlayer():getStats():setEndurance(getPlayer():getStats():getEndurance() - 0.55);

			if getPlayer():HasTrait("Asthmatic") then -- Si se tiene Asma
				if ZombRand( 100 ) <= 33 then	      -- 33% chance 		
					getPlayer():getBodyDamage():ReduceGeneralHealth(80);  --resultar dañado		
					getPlayer():Say("Blood in my nose");	
					getPlayer():getStats():setEndurance(getPlayer():getStats():getEndurance() - 0.25);				  
				end
			end		
		end
		
	if pwg < 100 then -- Menos que 100 KG
		if pwg >= 80 then  -- Mayor o igual a 80 KG
			getPlayer():Say("My body feel really weak");	
			getPlayer():getNutrition():setWeight(pwg - 17) 

			local BD = player:getBodyDamage();
			local BPs = BD:getBodyParts();
			-----------------------------------------------------------------------------------------------------
			getPlayer():getBodyDamage():RestoreToFullHealth();  -- <------ Full Health (it will be update later)
			-----------------------------------------------------------------------------------------------------
				
			--for i=0, BPs:size()-1 do -- por cada... elemento bodypart, dañado.... -1 osea si tienes 10 dañados sera 9 veces partiendo desde 0.

			--end

			getPlayer():getStats():setDrunkenness(getPlayer():getStats():getDrunkenness() + 100); 
			getPlayer():getStats():setEndurance(getPlayer():getStats():getEndurance() - 0.55); --Pulmones	

			if getPlayer():HasTrait("Asthmatic") then
				if  ZombRand( 100 ) <= 33 then
					getPlayer():getBodyDamage():ReduceGeneralHealth(80);		
					getPlayer():Say("Oh no, headache");	
				    getPlayer():getStats():setEndurance(getPlayer():getStats():getEndurance() - 0.25);				  
				end
			end		
				
		end
	end
	
	
	if pwg < 80 then  -- Menor que 80 KG
		if pwg >= 70 then -- Mayor que 70 KG
			getPlayer():Say("My body feel weak");	
			getPlayer():getNutrition():setWeight(pwg - 15) -- Perderas 15 Kilos

			-----------------------------------------------------------------------------------------------------
			getPlayer():getBodyDamage():RestoreToFullHealth();  -- <------ Full Health (it will be update later)
			-----------------------------------------------------------------------------------------------------
			
	        getPlayer():getStats():setDrunkenness(getPlayer():getStats():getDrunkenness() + 100); 				
		    getPlayer():getStats():setEndurance(getPlayer():getStats():getEndurance() - 0.55);

			if getPlayer():HasTrait("Asthmatic") then
				if ZombRand( 100 ) <= 33 then
				  getPlayer():getBodyDamage():ReduceGeneralHealth(80);		
		          getPlayer():Say("I dont feel so good");
		          getPlayer():getStats():setEndurance(getPlayer():getStats():getEndurance() - 0.25);			  
				end
			end				
		end
	end
		
	if pwg < 70 then -- Menor que 70 KG
		if pwg >= 60 then -- Mayor que o igual a 60 KG
			getPlayer():Say("My body feel weak . . .");
			getPlayer():getNutrition():setWeight(pwg - 14) -- Perderas 15 Kilos

			-----------------------------------------------------------------------------------------------------
			getPlayer():getBodyDamage():RestoreToFullHealth();  -- <------ Full Health (it will be update later)
			-----------------------------------------------------------------------------------------------------
			
			getPlayer():getStats():setDrunkenness(getPlayer():getStats():getDrunkenness() + 100); 
			getPlayer():getStats():setEndurance(getPlayer():getStats():getEndurance() - 0.55);	
				
			if getPlayer():HasTrait("Asthmatic") then
				if ZombRand( 100 ) <= 33 then
				getPlayer():getBodyDamage():ReduceGeneralHealth(80);		
				getPlayer():Say("breathe is hard");
				getPlayer():getStats():setEndurance(getPlayer():getStats():getEndurance() - 0.25);				  
				end
			end		
		end
	end
		
	if pwg < 60 then 
		if pwg >= 40 then -- Si tienes 60 a 40 de peso 
			getPlayer():Say("My body resists luckily.");
			getPlayer():getNutrition():setWeight(pwg - 13) -- Perderas 13 kg

			-----------------------------------------------------------------------------------------------------
			getPlayer():getBodyDamage():RestoreToFullHealth();  -- <------ Full Health (it will be update later)
			-----------------------------------------------------------------------------------------------------
			
		    getPlayer():getStats():setDrunkenness(getPlayer():getStats():getDrunkenness() + 100); 
		    getPlayer():getStats():setEndurance(getPlayer():getStats():getEndurance() - 0.55);
		
			if getPlayer():HasTrait("Asthmatic") then
				if ZombRand( 100 ) <= 33 then
					getPlayer():getBodyDamage():ReduceGeneralHealth(80);		
					getPlayer():Say("breathe is hard");
		            getPlayer():getStats():setEndurance(getPlayer():getStats():getEndurance() - 0.25);				  
				end
			end		
		end
	end
	
	if pwg < 40 then 
				getPlayer():Say("I can't breathe");
				getPlayer():setHealth(0);
	end
		
	if getPlayer():HasTrait("Desensitized") == false then
		if getPlayer():HasTrait("Brave") == false then	
		getPlayer():getStats():setPanic(getPlayer():getStats():getPanic() + 120); -- Susto
		getPlayer():getStats():setBoredom(-25);  
		end
	end
	
	
	if getPlayer():HasTrait("Iron Gut") == false then  -- Si No tienes Estomago fuerte
	getPlayer():getStats():setHunger(50);
	getPlayer():Say("My stomach hurts");				
	end	


	elseif borracho >= 20 then
	
		if ZombRand( 100 ) <= 33 then
		getPlayer():getStats():setDrunkenness(0)
		getPlayer():Say("medicine and Alcohol doesn't get along");
		getPlayer():setHealth(0);
		elseif ZombRand( 67 ) <= 33 then
		getPlayer():getStats():setDrunkenness(0)
		getPlayer():Say("Pain and agony");
		elseif ZombRand( 34 ) <= 33 then
		getPlayer():getStats():setDrunkenness(0)
		getPlayer():Say("i cant hear anything,something was totally wrong");
			if getPlayer():HasTrait("Deaf") == false then
			getPlayer():getTraits():add("Deaf");
			end
		elseif ZombRand (10) <= 11 then --SIEMPRE
				getPlayer():getNutrition():setWeight(pwg - 1) -- Perderas 13 kg
			-----------------------------------------------------------------------------------------------------
			getPlayer():getBodyDamage():RestoreToFullHealth();  -- <------ Full Health (it will be update later)
			-----------------------------------------------------------------------------------------------------
				

				getPlayer():getStats():setDrunkenness(getPlayer():getStats():getDrunkenness() + 100); 
				getPlayer():getStats():setEndurance(getPlayer():getStats():getEndurance() - 0.55);	
		end	
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

Events.OnZombieDead.Add(ZombDropextra);
Events.OnPlayerUpdate.Add(Itemcool);

