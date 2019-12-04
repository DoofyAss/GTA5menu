local id = g.menuid(0xF0)
local p = 3

online = {

	init = function()
		
		if(character == nil) then character = {} end
		
		char = {}
		
		for p = 3, 5 do page(p) end -- удаление старых страниц
		
		for i = 0, 32 do
		
			if(PLAYER.GET_PLAYER_PED(i) ~= 0) then
				if(not m[id][p]) then page(p, 'Online') end
				if(PLAYER.GET_PLAYER_NAME(i) == 'Doofy.Ass.Banned') then name = 'Doofy.Ass' else name = PLAYER.GET_PLAYER_NAME(i) end
				table.insert(m[id][p], {1, 0xF1, name, {}})
				table.insert(char, PLAYER.GET_PLAYER_PED(i))
				if(#m[id][p] > 16) then p = p + 1 end
			end
		end
		
		for i = 1, #character do
		
			if(not m[id][p]) then page(p, 'Peds') end
			table.insert(m[id][p], {1, 0xF1, character[i], {}})
			table.insert(char, character[i])
			if(#m[id][p] > 16) then p = p + 1 end
		end
	end
}

function page(p, head)
	if(head == nil) then m[id][p] = nil else m[id][p] = {head} end
end



function online_execute(hex)

	if(hex == 0xF101) then
		-- local ped = PED.CLONE_PED(player(), 0.0, false, false)
		
		local p = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(player(), 0.0, 1.0, 0.0)
		hash = loadModel('ig_lamardavis')
		-- hash = loadModel('player_two')
		local ped = PED.CREATE_PED(26, hash, p.x, p.y, p.z, 0.0, false, true)
		
		table.insert(character, ped)
	end
	
	if(hex == 0xF102) then
		if(player() ~= ped()) then
			
			for i = 1, #character do
			
				if(character[i] == ped()) then
					character[i] = player()
				end
			end
			
			PLAYER.CHANGE_PLAYER_PED(PLAYER.PLAYER_ID(), ped(), true, true)
		end
	end
	
	if(hex == 0xF103) then
		print(PLAYER.PLAYER_ID(), player(), ped())
		-- print(PLAYER.GET_PLAYER_PED())
	end
	
	if(hex == 0xF104) then
	
		for i = 1, #character do
			PED.DELETE_PED(character[i])
			table.remove(character, i)
		end
	end
	
	if(hex == 0xF105) then -- Make Player
		player = function() return ped() end
	end
	
	if(hex == 0xF106) then -- Make Ped
		player = function() return PLAYER.PLAYER_PED_ID() end
	end
	
	-- Online
	
	if(hex == 0xF11) then -- Attach
	
		if(player() ~= ped()) then
		
			if(ENTITY.DOES_ENTITY_EXIST(ped())) then
			
				-- 47 ped, 68 player
				ENTITY.ATTACH_ENTITY_TO_ENTITY(player(), ped(), 68, 0.48, -0.06, -0.15, 0.0, 0.0, 10.0, false, true, true, false, 2, true)
				playAnimation('missfam1_yachtbattleincar02_', 'jimmyincar_loop', 1)
			
			else noty("~r~Error ~s~~n~Character doesn't exist.") end
		else
		
			local p = ENTITY.GET_ENTITY_COORDS(player(), true)
			local tmpped = PED.GET_RANDOM_PED_AT_COORD(p.x, p.y, p.z, 5.0, 5.0, 5.0, -1)
			if(tmpped ~= 0) then
			
				ENTITY.ATTACH_ENTITY_TO_ENTITY(player(), tmpped, 47, 0.48, -0.06, -0.15, 0.0, 0.0, 10.0, false, true, true, false, 2, true)
				playAnimation('missfam1_yachtbattleincar02_', 'jimmyincar_loop', 1)
			end
		
		end
	end
	
	if(hex == 0xF12) then -- Detach
	
		ENTITY.DETACH_ENTITY(player(), true, true)
		resetAnimation()
	end

end



ped = function(i)
	if(i) then pedid = i end
	-- return PLAYER.GET_PLAYER_PED(pedid)
	-- print(pedid)
	return pedid
end

function online.tick()

end

return online