local clothes = {}

variations = {0, 1, 1, 7, 11, 3, 8, 4, 6}

function clothes_execute(hex)

	--[[
	
		0	Hat
		1	Glasses
		
		1	Mask
		7	Accessories
		11	Top
		3	Upper Skin
		8	Under Coat
		4	Pants
		6	Shoes
	
	]]--
	
	-- Console
	
	if(hex == 0xB99) then
		
		local g = {
		
			prop = {
			
				drawable = function(i)
					if(skin_values[i][1] == -1) then return 'nil' else return skin_values[i][1] end
				end,
				
				texture = function(i)
					if(skin_values[i][3] == -1) then return 'nil' else return skin_values[i][3] end
				end
			},
			
			variation = {
			
				drawable = function(i) return skin_values[i][1] end,
				texture = function(i) return skin_values[i][3] end
			}
		}
		
		print(
			'{'..g.prop.drawable(1)..', '..g.prop.texture(1)..'}, '.. -- Hat
			'{'..g.prop.drawable(2)..', '..g.prop.texture(2)..'}, '.. -- Glasses
			
			'{'..g.variation.drawable(3)..', '..g.variation.texture(3)..'}, '.. -- Mask
			'{'..g.variation.drawable(4)..', '..g.variation.texture(4)..'}, '.. -- Accessories
			'{'..g.variation.drawable(5)..', '..g.variation.texture(5)..'}, '.. -- Top
			'{'..g.variation.drawable(6)..', '..g.variation.texture(6)..'}, '.. -- Upper Skin
			'{'..g.variation.drawable(7)..', '..g.variation.texture(7)..'}, '.. -- Under Coat
			'{'..g.variation.drawable(8)..', '..g.variation.texture(8)..'}, '.. -- Pants
			'{'..g.variation.drawable(9)..', '..g.variation.texture(9)..'}' -- Shoes
		)
	end
	
	-- Clothes
	
	if(hex == 0xB001) then setClothes({ {nil, nil}, {9, 9}, {0, 0}, {0, 0}, {30, 1}, {2, 0}, {3, 0}, {19, 2}, {0, 0} }) end -- Трусики
	if(hex == 0xB002) then setClothes({ {nil, nil}, {nil, nil}, {0, 0}, {0, 0}, {2, 12}, {2, 0}, {3, 0}, {1, 5}, {32, 0} }) end -- Джинсы
	
	if(hex == 0xB003) then setClothes({ {nil, nil}, {9, 9}, {0, 0}, {0, 0}, {64, 1}, {25, 0}, {2, 0}, {20, 2}, {44, 1} }) end -- Чулки ( чёрные )
	if(hex == 0xB004) then setClothes({ {nil, nil}, {9, 10}, {0, 0}, {2, 5}, {18, 0}, {15, 0}, {3, 0}, {20, 0}, {7, 3} }) end -- Чулки ( белые )
	if(hex == 0xB005) then setClothes({ {28, 0}, {nil, nil}, {0, 0}, {0, 0}, {35, 4}, {38, 1}, {3, 0}, {63, 9}, {41, 9} }) end -- Чулки ( гангстер )
	
	if(hex == 0xB006) then setClothes({ {nil, nil}, {9, 9}, {0, 0}, {0, 0}, {64, 1}, {26, 0}, {2, 0}, {15, 0}, {0, 0} }) end -- Пальто ( чёрное )
	if(hex == 0xB007) then setClothes({ {nil, nil}, {9, 10}, {0, 0}, {2, 5}, {64, 0}, {6, 0}, {2, 0}, {17, 0}, {0, 2} }) end -- Пальто ( белое )
	
	if(hex == 0xB008) then setClothes({ {36, 4}, {nil, nil}, {0, 0}, {2, 5}, {38, 0}, {2, 0}, {2, 0}, {16, 6}, {0, 0} }) end -- Blarneys
	if(hex == 0xB009) then setClothes({ {36, 0}, {nil, nil}, {0, 0}, {2, 5}, {40, 0}, {2, 0}, {2, 0}, {19, 2}, {0, 0} }) end -- Piswasser
	if(hex == 0xB010) then setClothes({ {36, 3}, {17, 5}, {0, 0}, {0, 0}, {14, 1}, {14, 0}, {3, 0}, {5, 8}, {11, 1} }) end -- Patriot
	
	if(hex == 0xB011) then setClothes({ {6, 7}, {nil, nil}, {0, 0}, {2, 5}, {18, 6}, {32, 0}, {3, 0}, {11, 10}, {7, 7} }) end -- Камуфляж
	if(hex == 0xB012) then setClothes({ {nil, nil}, {nil, nil}, {36, 0}, {0, 0}, {54, 3}, {23, 0}, {14, 0}, {11, 1}, {7, 0} }) end -- Скрытный
	if(hex == 0xB013) then setClothes({ {nil, nil}, {0, 9}, {0, 0}, {21, 2}, {7, 0}, {3, 0}, {38, 0}, {6, 0}, {0, 0} }) end -- Деловой
	if(hex == 0xB014) then setClothes({ {29, 1}, {9, 10}, {0, 0}, {2, 5}, {65, 4}, {65, 0}, {26, 0}, {27, 15}, {2, 4} }) end -- Куртка
	
	if(hex == 0xB015) then setClothes({ {45, 0}, {nil, nil}, {0, 0}, {0, 0}, {48, 0}, {14, 0}, {35, 0}, {6, 0}, {0, 0} }) end -- Коп
	if(hex == 0xB016) then setClothes({ {nil, nil}, {nil, nil}, {0, 0}, {0, 0}, {11, 15}, {4, 0}, {36, 1}, {35, 0}, {26, 0} }) end -- Рабочий
	if(hex == 0xB017) then setClothes({ {7, 0}, {nil, nil}, {0, 0}, {0, 0}, {106, 2}, {6, 0}, {3, 0}, {58, 2}, {9, 0} }) end -- Гопница
	
	if(hex == 0xB018) then setClothes({ {nil, nil}, {26, 2}, {0, 0}, {0, 0}, {181, 0}, {32, 0}, {14, 0}, {76, 0}, {53, 1} }) end -- Байкер
	if(hex == 0xB019) then setClothes({ {nil, nil}, {26, 2}, {0, 0}, {0, 0}, {183, 0}, {31, 0}, {77, 3}, {77, 0}, {53, 1} }) end -- Байкер
	if(hex == 0xB020) then setClothes({ {nil, nil}, {nil, nil}, {0, 0}, {0, 0}, {171, 4}, {4, 0}, {2, 3}, {77, 0}, {0, 0} }) end -- Байкер ( рубашка )
	
	if(hex == 0xB021) then setClothes({ {nil, nil}, {nil, nil}, {0, 0}, {0, 0}, {15, 0}, {15, 0}, {3, 0}, {15, 0}, {35, 0} }) end -- Купальник ( чёрный )
	if(hex == 0xB022) then setClothes({ {nil, nil}, {nil, nil}, {0, 0}, {0, 0}, {18, 0}, {15, 0}, {3, 0}, {17, 0}, {35, 0} }) end -- Купальник ( белый )
	if(hex == 0xB023) then setClothes({ {nil, nil}, {17, 5}, {0, 0}, {0, 0}, {105, 0}, {0, 0}, {3, 0}, {57, 0}, {16, 9} }) end -- Халат
	if(hex == 0xB024) then setClothes({ {nil, nil}, {nil, nil}, {0, 0}, {0, 0}, {82, 0}, {15, 0}, {3, 0}, {17, 0}, {35, 0} }) end -- Без одежды
	if(hex == 0xB025) then setClothes({ {nil, nil}, {nil, nil}, {0, 0}, {12, 2}, {82, 0}, {15, 0}, {3, 0}, {20, 2}, {41, 4} }) end -- Hooker
	
	-- Props
	
	if(hex == 0xB101) then resetAccessories() end
	
	if(hex == 0xB102) then setAccessories(1, {9, 9}) end -- Очки ( стрелковые чёрные )
	if(hex == 0xB103) then setAccessories(1, {9, 10}) end -- Очки ( стрелковые белые )
	if(hex == 0xB104) then setAccessories(1, {0, 9}) end -- Очки ( чёрные )
	if(hex == 0xB105) then setAccessories(1, {0, 10}) end -- Очки ( белые )
	if(hex == 0xB106) then setAccessories(1, {17, 5}) end -- Очки ( розовые )
	
	if(hex == 0xB107) then setAccessories(2, {11, 2}) end -- Маска ( чёрная )
	if(hex == 0xB108) then setAccessories(2, {11, 0}) end -- Маска ( белая )
	
	if(hex == 0xB109) then setAccessories(0, {15, 0}) end -- Наушники
	if(hex == 0xB110) then setAccessories(0, {36, 4}) end -- Blarneys
	if(hex == 0xB111) then setAccessories(0, {36, 0}) end -- Piswasser
	if(hex == 0xB112) then setAccessories(0, {36, 3}) end -- Patriot
	if(hex == 0xB113) then setAccessories(0, {1, 0}) end -- D
	
	if(hex == 0xB114) then setAccessories(3, {2, 5}) end -- Серьги
	if(hex == 0xB115) then setAccessories(4, {45, 0}) end -- Сумка
	
	-- Decorations
	
	if(hex == 0xB200) then defaultDecorations() end
	if(hex == 0xB201) then clearDecorations() end
	
	if(hex == 0xB202) then PED.SET_PED_COMPONENT_VARIATION(player(), 2, 4, 0, 0) end -- Хвостик
	if(hex == 0xB203) then PED.SET_PED_COMPONENT_VARIATION(player(), 2, 3, 0, 0) end -- Косички
	if(hex == 0xB204) then PED.SET_PED_COMPONENT_VARIATION(player(), 2, 16, 0, 0) end -- Красотка
	if(hex == 0xB205) then PED.SET_PED_COMPONENT_VARIATION(player(), 2, 15, 0, 0) end -- Волнистый боб
	
	if(hex == 0xB206) then setOverlay('multiplayer_overlays', 'FM_Tat_Award_F_000') end -- Татуровка на лицо
	
	--
	
	-- if(hex == 0xB23) then skin.set() end

end

function setClothes(component)

	resetAccessories()
	
	for j = 1, 2 do
		if(component[j][1] ~= nil) then
			PED.SET_PED_PROP_INDEX(player(), variations[j], component[j][1], component[j][2], false)
		end
	end
	
	for j = 3, #variations do
		if(component[j][1] ~= nil) then
			PED.SET_PED_COMPONENT_VARIATION(player(), variations[j], component[j][1], component[j][2], 0)
		end
	end

end

function resetAccessories()
	PED.CLEAR_ALL_PED_PROPS(player())
	PED.SET_PED_COMPONENT_VARIATION(player(), 1, 0, 0, 0)
	PED.SET_PED_COMPONENT_VARIATION(player(), 5, 0, 0, 0)
	PED.SET_PED_COMPONENT_VARIATION(player(), 7, 0, 0, 0)
	PED.SET_PED_COMPONENT_VARIATION(player(), 9, 0, 0, 0)
end

function setAccessories(part, prop)
	
	hat_index = PED.GET_PED_PROP_INDEX(player(), 0)
	hat_texture = PED.GET_PED_PROP_TEXTURE_INDEX(player(), 0)
	glasses_index = PED.GET_PED_PROP_INDEX(player(), 1)
	glasses_texture = PED.GET_PED_PROP_TEXTURE_INDEX(player(), 1)
	mask_index = PED.GET_PED_DRAWABLE_VARIATION(player(), 1)
	mask_texture = PED.GET_PED_TEXTURE_VARIATION(player(), 1)
	accessories_index = PED.GET_PED_DRAWABLE_VARIATION(player(), 7)
	accessories_texture = PED.GET_PED_TEXTURE_VARIATION(player(), 7)
	
	if(part == 0) then -- Hat
		if(prop[1] == hat_index and prop[2] == hat_texture) then PED.CLEAR_PED_PROP(player(), 0) return false end
		PED.SET_PED_PROP_INDEX(player(), 0, prop[1], prop[2], false)
	end
	
	if(part == 1) then -- Glasses
		PED.SET_PED_COMPONENT_VARIATION(player(), 1, 0, 0, 0)
		if(prop[1] == glasses_index and prop[2] == glasses_texture) then PED.CLEAR_PED_PROP(player(), 1) return false end
		PED.SET_PED_PROP_INDEX(player(), 1, prop[1], prop[2], false)
	end
	
	if(part == 2) then -- Mask
		PED.CLEAR_ALL_PED_PROPS(player())
		PED.SET_PED_PROP_INDEX(player(), 0, hat_index, hat_texture, false)
		if(prop[1] == mask_index and prop[2] == mask_texture) then PED.SET_PED_COMPONENT_VARIATION(player(), 1, 0, 0, 0) return false end
		PED.SET_PED_COMPONENT_VARIATION(player(), 1, prop[1], prop[2], 0)
	end
	
	if(part == 3) then -- Accessories
		if(prop[1] == accessories_index and prop[2] == accessories_texture) then PED.SET_PED_COMPONENT_VARIATION(player(), 7, 0, 0, 0) return false end
		PED.SET_PED_COMPONENT_VARIATION(player(), 7, prop[1], prop[2], 0)
	end
	
	if(part == 4) then -- Bag
		if(prop[1] == PED.GET_PED_DRAWABLE_VARIATION(player(), 5) and prop[2] == PED.GET_PED_TEXTURE_VARIATION(player(), 5)) then PED.SET_PED_COMPONENT_VARIATION(player(), 5, 0, 0, 0) return false end
		PED.SET_PED_COMPONENT_VARIATION(player(), 5, prop[1], prop[2], 0)
	end

end

function clearDecorations()

	PED.CLEAR_PED_WETNESS(player())
	PED.CLEAR_PED_BLOOD_DAMAGE(player())
	PED.CLEAR_PED_LAST_DAMAGE_BONE(player())
	PED.RESET_PED_VISIBLE_DAMAGE(player())
	
	PED.CLEAR_PED_DECORATIONS(player())
end

function defaultDecorations()

	clearDecorations()
	setOverlay('multiplayer_overlays', 'NG_F_Hair_003')
	setOverlay('multiplayer_overlays', 'FM_Tat_F_002')
	setOverlay('multiplayer_overlays', 'FM_Tat_F_040')
	setOverlay('multiplayer_overlays', 'FM_Tat_Award_F_002')
	setOverlay('mplowrider2_overlays', 'MP_LR_Tat_022_F')
end

function setOverlay(overlay, name)
	PED._0x5F5D1665E352A839(player(), GAMEPLAY.GET_HASH_KEY(overlay), GAMEPLAY.GET_HASH_KEY(name))
end



function GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(propId, drawableId)

	propId = propId + 1
	drawableId = drawableId + 1
	
	prop_textures = {
		{ -- Hat
			8, 1, 8, 8, 8, 8, 8, 8, 8, 8,
			8, 8, 8, 8, 8, 8, 8, 8, 8, 1,
			7, 7, 7, 2, 1, 1, 14, 14, 8, 5,
			1, 1, 2, 1, 1, 1, 6, 1, 5, 8,
			1, 4, 4, 8, 8, 1, 1, 1, 1, 1,
			1, 1, 1, 2, 8, 26, 10, 1, 3, 10,
			10, 10, 10, 10, 1, 1, 24, 1, 1, 1,
			1, 10, 13, 13, 16, 21, 21, 5, 5, 4,
			4, 24, 7, 10, 1, 1, 1, 1, 10, 1,
			11, 11, 4, 10, 10
		},
		{ -- Glasses
			11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
			11, 8, 8, 8, 11, 8, 10, 10, 11, 11,
			8, 8, 1, 1, 11, 10, 6, 8
		}
	}
	
	return prop_textures[propId][drawableId]
	
end

skin = {

	init = function()
	
		skin_values = {}
		
		for j = 1, 2 do -- props
		
			table.insert(skin_values,
			
				{
					PED.GET_PED_PROP_INDEX(player(), variations[j]), -- current drawable
					PED.GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS(player(), variations[j]), -- drawables
					PED.GET_PED_PROP_TEXTURE_INDEX(player(), variations[j]), -- current texture
					GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(variations[j], PED.GET_PED_PROP_INDEX(player(), variations[j])) -- textures
				}
			)
		end
		
		for j = 3, #variations do
		
			table.insert(skin_values,
			
				{
					PED.GET_PED_DRAWABLE_VARIATION(player(), variations[j]), -- current drawable
					PED.GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS(player(), variations[j]), -- drawables
					PED.GET_PED_TEXTURE_VARIATION(player(), variations[j]), -- current texture
					PED.GET_NUMBER_OF_PED_TEXTURE_VARIATIONS(player(), variations[j], PED.GET_PED_DRAWABLE_VARIATION(player(), variations[j])) -- textures
				}
			)
		end
	
	end,
	
	
	
	drawableID = function(j)
	
		if(j <= #variations) then
			drawable = skin_values[j][1] + 1
			drawables = skin_values[j][2]
		
			if(s == 2 and i == j) then d = '~s~' else d = '~c~' end
			return d..drawable..'~c~ of '..drawables
		end
	end,
	
	textureID = function(j)
	
		if(j <= #variations) then
			texture = skin_values[j][3] + 1
			textures = skin_values[j][4] or 0
		
			if(s == 3 and i == j) then t = '~s~' else t = '~c~' end
			return t..texture..'~c~ of '..textures
		end
	end,
	
	
	
	up = function()
	
		if(i < 3) then		-- props
			
			if(s == 2) then	-- drawable
				if(skin_values[i][1] + 1 == skin_values[i][2]) then skin_values[i][1] = -1 else skin_values[i][1] = skin_values[i][1] + 1 end
				skin_values[i][3] = 0
			end
			
			if(s == 3) then	-- texture
				if(skin_values[i][3] + 1 == skin_values[i][4]) then skin_values[i][3] = 0 else skin_values[i][3] = skin_values[i][3] + 1 end
			end
			
			PED.SET_PED_PROP_INDEX(player(), variations[i], skin_values[i][1], skin_values[i][3], true)
			if(skin_values[i][1] == -1) then PED.CLEAR_PED_PROP(player(), variations[i]) end
		
		else				-- variations
			
			if(s == 2) then	-- drawable
				if(skin_values[i][1] + 1 == skin_values[i][2]) then skin_values[i][1] = 0 else skin_values[i][1] = skin_values[i][1] + 1 end
				skin_values[i][3] = 0
			end
			
			if(s == 3) then	-- texture
				if(skin_values[i][3] + 1 == skin_values[i][4]) then skin_values[i][3] = 0 else skin_values[i][3] = skin_values[i][3] + 1 end
			end
			
			PED.SET_PED_COMPONENT_VARIATION(player(), variations[i], skin_values[i][1], skin_values[i][3], 0)
		
		end
		
		skin.init()
	end,
	
	down = function()
	
		if(i < 3) then		-- props
		
			if(s == 2) then	-- drawable
				if(skin_values[i][1] == -1) then skin_values[i][1] = skin_values[i][2] - 1 else skin_values[i][1] = skin_values[i][1] - 1 end
				skin_values[i][3] = 0
			end
			
			if(s == 3) then	-- texture
				if(skin_values[i][3] == 0) then skin_values[i][3] = skin_values[i][4] - 1 else skin_values[i][3] = skin_values[i][3] - 1 end
			end
			
			PED.SET_PED_PROP_INDEX(player(), variations[i], skin_values[i][1], skin_values[i][3], true)
			if(skin_values[i][1] == -1) then PED.CLEAR_PED_PROP(player(), variations[i]) end
		
		else				-- variations
		
			if(s == 2) then	-- drawable
				if(skin_values[i][1] == 0) then skin_values[i][1] = skin_values[i][2] - 1 else skin_values[i][1] = skin_values[i][1] - 1 end
				skin_values[i][3] = 0
			end
			
			if(s == 3) then	-- texture
				if(skin_values[i][3] == 0) then skin_values[i][3] = skin_values[i][4] - 1 else skin_values[i][3] = skin_values[i][3] - 1 end
			end
			
			PED.SET_PED_COMPONENT_VARIATION(player(), variations[i], skin_values[i][1], skin_values[i][3], 0)
		
		end
		
		skin.init()
	end

}

return clothes