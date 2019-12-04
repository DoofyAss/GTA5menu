local props = {}

local bone = 0
local prop = loadModel('prop_binoc_01')

function props.tick()

	if(SYSTEM.TIMERB() > 120) then
	
		if(key(187)) then
			bone = bone + 1
			print(bone)
			attachObject()
		end
		
		if(key(189)) then
			bone = bone - 1
			print(bone)
			attachObject()
		end
		
		if(key(46)) then -- Delete
			attachObject(true)
		end
	
	end

end

function attachObject(detach)

	local p = ENTITY.GET_ENTITY_COORDS(player(), true)
	obj = OBJECT.GET_CLOSEST_OBJECT_OF_TYPE(p.x, p.y, p.z, 1.0, prop, false)
	
	if(not ENTITY.IS_ENTITY_AN_OBJECT(obj)) then
		obj = OBJECT.CREATE_OBJECT(prop, 0.0, 0.0, 0.0, true, true, true)
	end
	
	if(detach) then
		ENTITY.DETACH_ENTITY(obj, true, true)
		OBJECT.DELETE_OBJECT(obj)
		resetAnimation()
	else
		ENTITY.ATTACH_ENTITY_TO_ENTITY(obj, player(), bone, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, true, true, false, 2, true)
	end
end

return props