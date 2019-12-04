local actions = {}

local action = false

local object = {
	'prop_curl_bar_01',
	'prop_el_guitar_02',
	'prop_acc_guitar_01',
	'prop_bongos_01',
	'prop_cs_walking_stick',
	'prop_ld_toilet_01',
	'prop_big_shit_02',
	'ng_proc_brick_01a',
	'p_cs_cam_phone',
	'prop_binoc_01',
	-- 'prop_beach_fire',
}

function action_execute(hex)

	if(hex == 0xC10) then -- Clear Objects
	
		local p = ENTITY.GET_ENTITY_COORDS(player(), true)
		
		for i = 1, #object do
			
			while OBJECT.GET_CLOSEST_OBJECT_OF_TYPE(p.x, p.y, p.z, 10.0, loadModel(object[i]), false) ~= 0 do
				removeObject(GAMEPLAY.GET_HASH_KEY(object[i]), 10.0)
			end
		end
	end

end

function actions.tick()
	actions.control()
end

function actions.control()

	if(action) then
	
		if(ENTITY.GET_ENTITY_HEALTH(player()) < 10) then Action(5) end
		
		if(SYSTEM.TIMERB() > 120) then
		
			if(press(157)) then Action(1) playSound(1) end -- 1
			if(press(158)) then Action(2) playSound(1) end -- 2
			if(press(160)) then Action(3) playSound(1) end -- 3
			if(press(164)) then Action(4) playSound(1) end -- 4
			if(press(165)) then Action(5) playSound(1) end -- 5
		end
	end

end



function loadAction(hex)

	if(action ~= hex) then
		if(action ~= false) then Action(5) end
	end
	
	action = hex
	noty(hexName(action)..'~n~Action Enable')
end

function objectAction(hash, bone, animation, ani, flag)
	
	if(not flag) then flag = 1 end
	
	local p = ENTITY.GET_ENTITY_COORDS(player(), true)
	obj = OBJECT.GET_CLOSEST_OBJECT_OF_TYPE(p.x, p.y, p.z, 1.0, hash, false)
	
	if(ENTITY.IS_ENTITY_PLAYING_ANIM(player(), animation, ani, 3)) then
		ENTITY.DETACH_ENTITY(obj, true, true)
		resetAnimation()
	else
		if(not ENTITY.IS_ENTITY_AN_OBJECT(obj)) then
			obj = OBJECT.CREATE_OBJECT(hash, 0.0, 0.0, 0.0, true, true, true)
		end
		
		ENTITY.ATTACH_ENTITY_TO_ENTITY(obj, player(), bone, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, true, true, false, 2, true)
		playAnimation(animation, ani, flag)
	end
end

function removeObject(hash, r)
	local p = ENTITY.GET_ENTITY_COORDS(player(), true)
	obj = OBJECT.GET_CLOSEST_OBJECT_OF_TYPE(p.x, p.y, p.z, r, hash, false)
	OBJECT.DELETE_OBJECT(obj)
end



function Action(button)

	if(action == 0xC11) then -- Drill
		if(button == 1) then playAction('WORLD_HUMAN_CONST_DRILL') end
		if(button == 2) then resetAnimation() end
	end
	
	if(action == 0xC12) then -- Gardener
		if(button == 1) then playAction('WORLD_HUMAN_GARDENER_PLANT') end
		if(button == 2) then resetAnimation() end
	end
	
	if(action == 0xC13) then -- Welding
		if(button == 1) then playAction('WORLD_HUMAN_WELDING') end
		if(button == 2) then resetAnimation() end
	end
	
	
	
	
	
	
	
	
	
	
	if(action == 0xC14) then -- Muscle Weights
		if(button == 1) then objectAction(2739253511, 90, 'amb@world_human_muscle_free_weights@male@barbell@idle_a', 'idle_a') end
		
		if(button == 2) then
			if(ENTITY.IS_ENTITY_PLAYING_ANIM(player(), 'amb@world_human_muscle_free_weights@male@barbell@idle_a', 'idle_a', 3)) then
				playAnimation('amb@world_human_muscle_free_weights@male@barbell@base', 'base', 1)
			end
		end
		
		if(button == 3) then
			if(ENTITY.IS_ENTITY_PLAYING_ANIM(player(), 'amb@world_human_muscle_free_weights@male@barbell@idle_a', 'idle_a', 3)) then
				playAnimation('amb@world_human_muscle_free_weights@male@barbell@idle_a', 'idle_d', 1)
			end
		end
		
		if(button == 4) then
			removeObject(2739253511, 0.3)
			resetAnimation()
		end
		
		if(button == 5) then
			removeObject(2739253511, 0.3)
		end
	end
	
	
	
	
	
	
	
	
	
	
	if(action == 0xC15) then -- Musician
		if(button == 1) then
			objectAction(916292624, 61, 'amb@world_human_musician@guitar@male@idle_a', 'idle_c')
			removeObject(3586178055, 0.3)
			removeObject(591916419, 0.3)
		end
		if(button == 2) then
			objectAction(3586178055, 61, 'amb@world_human_musician@guitar@male@idle_a', 'idle_b')
			removeObject(916292624, 0.3)
			removeObject(591916419, 0.3)
		end
		if(button == 3) then
			objectAction(591916419, 61, 'amb@world_human_musician@bongos@male@idle_a', 'idle_a')
			removeObject(916292624, 0.3)
			removeObject(3586178055, 0.3)
		end
		
		if(button == 4 or button == 5) then
			removeObject(916292624, 0.3)
			removeObject(3586178055, 0.3)
			removeObject(591916419, 0.3)
			resetAnimation()
		end
	end
	
	
	
	
	
	
	
	
	
	
	if(action == 0xC16) then -- Walking Stick
		if(button == 1) then objectAction(1152510020, 90, 'move_characters@lester@waiting', 'lester_waitidle_a') end
		if(button == 2) then playAnimation('move_characters@lester@waiting', 'lester_waitidle_b', 1) end
		if(button == 3) then playAnimation('move_characters@lester@waiting', 'lester_waitidle_c', 1) end
		if(button == 4 or button == 5) then resetAnimation() removeObject(1152510020, 0.3) end
	end
	
	
	
	
	
	
	
	
	
	
	if(action == 0xC17) then -- Binoculars
	
		if(button == 1) then objectAction(loadModel('prop_binoc_01'), 90, 'amb@world_human_binoculars@male@base', 'idle') end
		if(button == 2) then playAnimation('amb@world_human_binoculars@male@base', 'base', 1) end
		if(button == 3) then playAnimation('amb@world_human_binoculars@male@idle_a', 'idle_a', 1) end
		if(button == 4 or button == 5) then resetAnimation() removeObject(985101275, 1.0) end
	end
	
	
	
	
	
	
	
	
	
	
	if(action == 0xC18) then -- Toilet
		if(button == 1) then
			if(ENTITY.IS_ENTITY_PLAYING_ANIM(player(), 'switch@trevor@on_toilet', 'trev_on_toilet_loop', 3)) then
				AI.TASK_PLAY_ANIM(player(), "", "", 1.0, 1.0, 50, 0, 0, false, false, false)
				ENTITY.DETACH_ENTITY(player(), true, true)
			else
				hash = loadModel('prop_ld_toilet_01')
				local p = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(player(), 0.0, 1.6, -1.5)
				obj = OBJECT.CREATE_OBJECT(hash, p.x, p.y, p.z + 0.65, true, true, true)
				-- OBJECT.PLACE_OBJECT_ON_GROUND_PROPERLY(obj)
				ENTITY.SET_ENTITY_HEADING(obj, ENTITY.GET_ENTITY_HEADING(player()))
			end
		end
		
		if(button == 2) then
			if(ENTITY.IS_ENTITY_PLAYING_ANIM(player(), 'switch@trevor@on_toilet', 'trev_on_toilet_loop', 3)) then
				AI.TASK_PLAY_ANIM(player(), "", "", 1.0, 1.0, 50, 0, 0, false, false, false)
				ENTITY.DETACH_ENTITY(player(), true, true)
			else
				local p = ENTITY.GET_ENTITY_COORDS(player(), true)
				obj = OBJECT.GET_CLOSEST_OBJECT_OF_TYPE(p.x, p.y, p.z, 1.0, 1872312775, false)
			
				if(ENTITY.IS_ENTITY_AN_OBJECT(obj)) then
					-- ENTITY.ATTACH_ENTITY_TO_ENTITY(getPlayer(), obj, 0, 0.0, -1.0, 0.6, 0.0, 0.0, 180.0, false, true, true, false, 2, true)
					
					ENTITY.ATTACH_ENTITY_TO_ENTITY(player(), obj, 0, 0.0, -1.0, 0.45, 0.0, 0.0, 180.0, false, true, true, false, 2, true) -- Каблук
					-- ENTITY.ATTACH_ENTITY_TO_ENTITY(getPlayer(), obj, 0, 0.0, -1.0, 0.5, 0.0, 0.0, 180.0, false, true, true, false, 2, true) -- Не Каблук оО
					playAnimation('switch@trevor@on_toilet', 'trev_on_toilet_loop', 1)
				end
			end
		end
		
		if(button == 4) then
			resetAnimation()
		end
		
		if(button == 4 or button == 5) then
			removeObject(1872312775, 0.9)
		end
	end
	
	
	
	
	
	
	
	
	
	
	if(action == 0xC19) then -- Take a Shit
		if(button == 1) then
			if(ENTITY.IS_ENTITY_PLAYING_ANIM(player(), 'missfbi3ig_0', 'shit_loop_trev', 3)) then
				AI.TASK_PLAY_ANIM(player(), "", "", 1.0, 1.0, 50, 0, 0, false, false, false)
			else
				playAnimation('missfbi3ig_0', 'shit_loop_trev', 1)
			end
		end
		
		local p = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(player(), 0.0, -0.2, 0.0)
		if(button == 2) then
			obj = OBJECT.CREATE_OBJECT(2223607550, p.x, p.y, p.z, true, true, true)
			OBJECT.PLACE_OBJECT_ON_GROUND_PROPERLY(obj)
		end
		
		if(button == 3) then
			obj = OBJECT.CREATE_OBJECT(64781110, p.x, p.y, p.z, true, true, true)
			OBJECT.PLACE_OBJECT_ON_GROUND_PROPERLY(obj)
		end
		
		if(button == 4) then
			removeObject(2223607550, 0.9)
			removeObject(64781110, 0.9)
		end
	end
	
	
	
	
	
	
	
	
	
	
	WEAPON.SET_CURRENT_PED_WEAPON(player(), GAMEPLAY.GET_HASH_KEY('WEAPON_UNARMED'), true)
	if(button == 5) then
		resetAnimation()
		if(action) then noty(hexName(action)..'~n~Action Disable') end
		action = false
	end

end

function playAction(scene)
	local p = ENTITY.GET_ENTITY_COORDS(player(), true)
	local a = ENTITY.GET_ENTITY_HEADING(player())
	AI.TASK_START_SCENARIO_AT_POSITION(player(), scene, p.x, p.y, p.z, a, -1, false, true)
end

return actions