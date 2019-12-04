local menu = {}

m = {

	{0x0, {},
	
		{'Menu',
		
			{
				1, 0xA0, 'Player', {},
				0, 0xB200, 'Clear Damage', {70, 200, 60},
				-- 0, 0xFF, 'get', {250, 120, 45},
			},
			{
				1, 0xF0, 'Online', {117, 193, 255},
				0, 0xF11, 'Attach', {117, 193, 255},
				0, 0xF12, 'Detach', {117, 193, 255},
			}
		}
	},
	
	
	
	{0xA0, {},
	
		{'Player',
		
			{1, 0xA1, 'Animations', {}},
			{
				1, 0xB1, 'Clothes', {},
				1, 0xB2, 'Skin', {},
			},
			{1, 0xC1, 'Action', {}},
			
		}
	},
	
	
	
	{0xF0, {117, 193, 255}},
	
	{0xF1, {117, 193, 255},
	
		{'Online Player',
		
			{
				0, 0xF105, 'Make Player', {255, 128, 0},
				0, 0xF106, 'Make Ped', {255, 128, 0},
			},
			{
				0, 0xF101, 'Spawn', {255, 255, 255},
				0, 0xF102, 'Get', {255, 255, 255},
				0, 0xF103, 'Print', {255, 255, 255},
				0, 0xF104, 'Delete Peds', {255, 255, 255},
			},
			{
				0, 0xF11, "Attach", {},
				0, 0xF12, "Detach", {},
			},
			{
				0, 0xF13, "Clothes", {},
				0, 0xF14, "Assign", {255, 128, 0},
			},
			{
				0, 0xF15, "to Passenger", {},
				0, 0xF16, "to Driver", {},
			},
		}
	},
	
	
	
	{0xA1, {},
	
		{'Animations',
		
			-- {0, 0xA01, 'Clear ( Space )', {70, 200, 60}},
			{
				0, 0xA001, 'Happy', {},
				0, 0xA002, 'Angry', {},
				0, 0xA003, 'Sleep', {},
			},
			{
				0, 0xA004, 'Dance', {},
				0, 0xA005, 'Dance', {},
				0, 0xA006, 'Dance', {},
				0, 0xA007, 'Dance', {},
			},
			{
				0, 0xA008, 'Triathlon', {},
				0, 0xA009, 'Triathlon', {},
			},
			{
				0, 0xA010, 'Hands Up', {},
			},
			{
				0, 0xA011, 'Push Up Female', {},
				0, 0xA012, 'Push Up Male', {},
				0, 0xA013, 'Seat Up', {},
			},
			{
				0, 0xA014, 'Rest', {},
				0, 0xA015, 'Rest', {},
				0, 0xA016, 'Rest', {},
				0, 0xA017, 'Rest', {},
				0, 0xA018, 'Rest', {},
			},
			{0, 0xA019, 'Slump', {}},
			{0, 0xA020, 'Dust Off', {}},
			
			{
				0, 0xA901, 'Clipset: Drunk', {},
				0, 0xA902, 'Clipset: Very Drunk', {},
				0, 0xA903, 'Movement: Stripper', {},
				0, 0xA904, 'Movement: Jogging', {},
				-- 0, 0xA905, 'Clipset: Test', {},
				0, 0xA999, 'Clear Clipset', {70, 200, 60},
			},
		},
		
		{'Animations ( Online )',
		
			{0, 0xA101, 'Hands Up Sign', {117, 193, 255}},
			{0, 0xA102, 'Wank', {117, 193, 255}},
			{0, 0xA103, 'Suicide pill', {117, 193, 255}},
			{0, 0xA104, 'Suicide pistol', {117, 193, 255}},
			{0, 0xA105, 'Electrocute', {117, 193, 255}},
		},
		
		{'Animations ( Stripper )',
		
			{
				0, 0xA201, 'Idle', {250, 120, 180},
				0, 0xA202, 'Idle', {250, 120, 180},
				0, 0xA204, 'Idle', {250, 120, 180},
			},
			{
				0, 0xA205, 'Idle', {250, 120, 180},
				0, 0xA206, 'Idle', {250, 120, 180},
				0, 0xA207, 'Idle', {250, 120, 180},
				0, 0xA208, 'Idle', {250, 120, 180},
			},
			{
				0, 0xA209, 'Stripper', {250, 120, 180},
				0, 0xA210, 'Stripper', {250, 120, 180},
				0, 0xA211, 'Stripper', {250, 120, 180},
			},
			{
				0, 0xA212, 'Strip Dance', {250, 120, 180},
				0, 0xA213, 'Strip Dance', {250, 120, 180},
				0, 0xA214, 'Strip Dance', {250, 120, 180},
				0, 0xA215, 'Strip Dance', {250, 120, 180},
			},
			{
				0, 0xA216, 'Private Dance', {250, 120, 180},
				0, 0xA217, 'Private Dance', {250, 120, 180},
				0, 0xA218, 'Private Dance', {250, 120, 180},
				0, 0xA219, 'Private Dance', {250, 120, 180},
			},
		}
	},
	
	
	
	{0xB1, {},
	
		{'Clothes',
		
			{
				0, 0xB001, 'Трусики', {},
				0, 0xB002, 'Джинсы', {},
			},
			{
				0, 0xB003, 'Чулки ( чёрные )', {},
				0, 0xB004, 'Чулки ( белые )', {},
				0, 0xB005, 'Чулки ( гангстер )', {},
			},
			{
				0, 0xB006, 'Пальто ( чёрное )', {},
				0, 0xB007, 'Пальто ( белое )', {},
			},
			{
				0, 0xB008, 'Blarneys', {},
				0, 0xB009, 'Piswasser', {},
				0, 0xB010, 'Patriot', {},
			},
			{
				0, 0xB011, 'Камуфляж', {},
				0, 0xB012, 'Скрытный', {},
				0, 0xB013, 'Деловой', {},
				0, 0xB014, 'Куртка', {},
			},
			{
				0, 0xB015, 'Коп', {},
				0, 0xB016, 'Рабочий', {},
				0, 0xB017, 'Гопница', {},
			},
			{
				0, 0xB018, 'Байкер', {},
				0, 0xB019, 'Байкер', {},
				0, 0xB020, 'Байкер ( рубашка )', {},
			},
			{
				0, 0xB021, 'Купальник ( чёрный )', {},
				0, 0xB022, 'Купальник ( белый )', {},
				0, 0xB023, 'Халат', {},
				0, 0xB024, 'Без одежды', {70, 200, 60},
				0, 0xB025, 'Hooker', {70, 200, 60},
			},
		},
		
		{'Props',
		
			{0, 0xB101, 'Снять всё', {70, 200, 60}},
			{
				0, 0xB102, 'Очки ( стрелковые чёрные )', {},
				0, 0xB103, 'Очки ( стрелковые белые )', {},
				0, 0xB104, 'Очки ( чёрные )', {},
				0, 0xB105, 'Очки ( белые )', {},
				0, 0xB106, 'Очки ( розовые )', {},
			},
			{
				0, 0xB107, 'Маска ( чёрная )', {},
				0, 0xB108, 'Маска ( белая )', {},
			},
			{
				0, 0xB109, 'Наушники', {},
				0, 0xB110, 'Blarneys', {},
				0, 0xB111, 'Piswasser', {},
				0, 0xB112, 'Patriot', {},
				0, 0xB113, 'D', {},
			},
			{0, 0xB114, 'Серьги', {}},
			{0, 0xB115, 'Сумка', {}},
		},
		
		{'Decorations',
		
			{0, 0xB201, 'Clear Decorations', {70, 200, 60}},
			{
				0, 0xB202, 'Хвостик', {},
				0, 0xB203, 'Косички', {},
				0, 0xB204, 'Красотка', {},
				0, 0xB205, 'Волнистый боб', {},
			},
			{
				0, 0xB206, 'Татуровка на лицо', {},
			}
		}
	},
	
	
	
	{0xB2, {},
	
		{'Skin',
		
			{
				0, 0xB21, 'Hats', {},
				3, 0xB21, 'Hats', {},
				3, 0xB21, 'Hats', {},
			},
			{
				0, 0xB22, 'Glasses', {},
				3, 0xB22, 'Glasses', {},
				3, 0xB22, 'Glasses', {},
			},
			{
				0, 0xB23, 'Mask', {},
				3, 0xB23, 'Mask', {},
				3, 0xB23, 'Mask', {},
			},
			{
				0, 0xB24, 'Accessories', {},
				3, 0xB24, 'Accessories', {},
				3, 0xB24, 'Accessories', {},
			},
			{
				0, 0xB25, 'Top', {},
				3, 0xB25, 'Top', {},
				3, 0xB25, 'Top', {},
			},
			{
				0, 0xB26, 'Upper Skin', {},
				3, 0xB26, 'Upper Skin', {},
				3, 0xB26, 'Upper Skin', {},
			},
			{
				0, 0xB27, 'Under Coat', {},
				3, 0xB27, 'Under Coat', {},
				3, 0xB27, 'Under Coat', {},
			},
			{
				0, 0xB28, 'Pants', {},
				3, 0xB28, 'Pants', {},
				3, 0xB28, 'Pants', {},
			},
			{
				0, 0xB29, 'Shoes', {},
				3, 0xB29, 'Shoes', {},
				3, 0xB29, 'Shoes', {},
			},
			
			{0, 0xB99, 'Console', {70, 200, 60}},
		},
	},
	
	{0xC1, {},
	
		{'Action',
		
			{0, 0xC10, "Clear Objects", {70, 200, 60}},
			
			{4, 0xC11, 'Drill', {}},
			{4, 0xC12, 'Gardener', {}},
			{4, 0xC13, 'Welding', {}},
			
			{4, 0xC14, 'Muscle Weights', {}},
			{4, 0xC15, 'Musician', {}},
			{4, 0xC16, 'Walking Stick', {}},
			{4, 0xC17, 'Binoculars', {}},
			
			{4, 0xC18, 'Toilet', {}},
			{4, 0xC19, 'Take a Shit', {185, 120, 90}},
			
		},
	},
}

id, p, i, s, e = false, 1, 1, 1, {} -- menu, page, item, subitem, {}

function menu.tick()
	menu.control()
	menu.render()
	-- menu.headphone()
end

function menu.control()

	function press(b)	-- Game control
		if(CONTROLS.IS_CONTROL_PRESSED(2, b)) then
			CONTROLS.DISABLE_CONTROL_ACTION(2, b, true)
			SYSTEM.SETTIMERB(0)
		return true else return false end
	end
	
	function key(b)	-- Keyboard control
		if(get_key_pressed(b)) then
			SYSTEM.SETTIMERB(0)
		return true else return false end
	end
	
	
	
	if(not id) then
		if(key(35)) then			-- Show (Keys.End)
			playSound(9)
			GRAPHICS._START_SCREEN_EFFECT("FocusIn", 200, false)
			wait(200)
			GRAPHICS._STOP_SCREEN_EFFECT("FocusIn")
			GRAPHICS._START_SCREEN_EFFECT("FocusOut", 200, false)
			menu.render(true)
			id = 1
		end
	end
	
	if(id) then
		
		CONTROLS.DISABLE_CONTROL_ACTION(2, 27, true) -- INPUT_PHONE (Up)
		CONTROLS.DISABLE_CONTROL_ACTION(2, 44, true) -- INPUT_COVER (Q)
		
		-- for i = 0, 377 do CONTROLS.DISABLE_CONTROL_ACTION(2, i, true) end
		
		if(SYSTEM.TIMERB() > 120) then
		
			if(key(35))		then menu.init('CLOSE')	end
			if(press(201))	then menu.init('ENTER')	end
			if(press(22))	then menu.init('JUMP')	end
			if(key(8))		then menu.init('BACK')	end
			if(key(37))		then menu.init('LEFT')	end
			if(key(39))		then menu.init('RIGHT')	end
			if(key(38))		then menu.init('UP')	end
			if(key(40))		then menu.init('DOWN')	end
			if(press(19))	then menu.init('PAGE')	end
		
		end
	end

end

function menu.render(init)

	if(init) then c_head, c_id, xx, yy, aa = ' ', id, 0.006, 0.0055, 200 end
	
	if(id) then
	
		if(c_head ~= g.head() and c_id ~= id) then -- On Change Menu
			m_up, m_down, yy, he = true, false, 0.0055, c_head
			m_left, m_right, xx = false, false, 0.006
		end
		
		if(c_head ~= g.head() and c_id == id) then -- On Change Page
			m_left, m_right, xx, he = true, false, 0.006, c_head
			m_up, m_down, yy = false, false, 0.0055
			-- m_out, m_in, aa, he = true, false, 200, c_head
		end
		
		if(m_up)	then if(yy > -0.03)		then yy = yy - 0.0025	else m_up, m_down, he = false, true, g.head() end end
		if(m_down)	then if(yy < 0.0055)	then yy = yy + 0.0025	else m_down, yy = false, 0.0055 end end
		
		if(m_left)	then if(xx > -0.03)		then xx = xx - 0.003	else m_left, m_right, he = false, true, g.head() end end
		if(m_right)	then if(xx < 0.006)		then xx = xx + 0.003	else m_right, xx = false, 0.006 end end
		
		if(m_out)	then if(aa > 120)		then aa = aa - 5		else m_out, m_in, he = false, true, g.head() end end
		if(m_in)	then if(aa < 200)		then aa = aa + 10		else m_in, aa = false, 200 end end
		
		c_head = g.head()
		c_id = id
		
		
		
		-- head
		if(g.menu() ~= 0xB2) then x, w = 0.07, 0.142 else x, w = 0.14, 0.284 end
		GRAPHICS.DRAW_RECT(x, 0.019, w, 0.038, 0, 0, 0, aa)
		-- drawText(g.head(), 0, 0.32, 0.006, 0.0055)
		drawText(he, 0, 0.32, xx, yy)
		
		
		
		-- page
		-- if(g.p() > 1) then
			-- drawText(p.." of "..g.p(), 0, 0.3, 0.105, 0.007)
		-- end
		
		-- item
		x, y, w, h, a = 0.07, 0.019, 0.142, 0.038, 160
		
		for j = 1, g.i() do
			if(g.check(j)) then break end
			y = y + h
			item(j, x, y, w, h)
		end
		
		GRAPHICS.DRAW_RECT(x, y + 0.02, w, 0.003, 0, 0, 0, 200)
	end
	
	
	
	function item(j, x, y, w, h)
		
		if(a == 140) then a = 160 else a = 140 end
		if(SYSTEM.TIMERB() < 500) then A = SYSTEM.TIMERB() / 5 + 40 else A = 140 end
		
		if(j ~= i) then -- not Active Item
			GRAPHICS.DRAW_RECT(x, y, w, h, 0, 0, 0, a)
			if(g.class(j) == 2) then
				if(toggle(g.hex(j))) then
					c = j
					t = '~s~'
				else
					t = '~c~'
					c = false
				end
			else
				t = '~s~'
				c = false
			end
			drawText(t..g.name(j), 0, 0.3, 0.006, y - 0.013, false, c)
		end
		
		if(j == i) then -- Active Item
			-- GRAPHICS.DRAW_RECT(x, y, w, h, 0, 0, 0, a)
			GRAPHICS.DRAW_SPRITE('commonmenu', 'gradient_bgd', x, y, w, h, 180.0, 0, 0, 0, 200) -- header_gradient_script
			R, G, B = table.unpack(g.item.color())
			
			
			
			-- sub items
			-- GRAPHICS.DRAW_RECT(x, y - 0.002, w, h - 0.004, R, G, B, A)
			-- subitem(x, y, w, h, 0.002, g.s(), R, G, B, 200)
			
			if(g.s() > 1) then
				GRAPHICS.DRAW_RECT(x, y - 0.002, w, h - 0.004, R, G, B, A)
				subitem(x, y, w, h, 0.002, g.s(), R, G, B, 160)
			else
				GRAPHICS.DRAW_RECT(x, y, w, h, R, G, B, A)
			end
			
			
			if(g.item.class() == 2 and not toggle(g.item.hex())) then t = '~c~' else t = '~s~' end
			drawText(t..g.item.name(), 0, 0.3, 0.006, y - 0.013, true)
			
			-- arrow
			if(as == nil) then as = 0 ap = 0 end
			
			if(as == 0) then
				if(ap <= 3.0) then ap = ap + 0.15 else as = 1 end
			else
				if(ap >= 0.0) then ap = ap - 0.075 else as = 0 end
			end
			
			if(g.item.class() == 1) then
				drawText("2", 3, 0.25, ap / 1000 + 0.127, y - 0.013, true)
			end
		end
		
		if(g.menu() == 0xB2) then -- Skin
			
			GRAPHICS.DRAW_RECT(x + 0.106, y, w / 2, h, 0, 0, 0, a)
			if(i == j and s == 2) then
				GRAPHICS.DRAW_RECT(x + 0.1065, y - 0.002, w / 2, h - 0.004, R, G, B, A)
				outline = true
			else outline = false end
			drawText(skin.drawableID(j), 0, 0.3, x + 0.08, y - 0.013, outline)
			
			GRAPHICS.DRAW_RECT(x + 0.1765, y, w / 2, h, 0, 0, 0, a)
			if(i == j and s == 3) then
				GRAPHICS.DRAW_RECT(x + 0.1765, y - 0.002, w / 2, h - 0.004, R, G, B, A)
				outline = true
			else outline = false end
			drawText(skin.textureID(j), 0, 0.3, x + 0.15, y - 0.013, outline)
		end
		
	end
	
	function subitem(x, y, w, h, sh, n, R, G, B, a)
	
		cd = (x - w / 2) + s * (w / n) - (w / n / 2) -- текущая точка
		if(nd == nil) then nd = cd end -- точка для анимации
		
		if(g.s() == 1) then nd = cd end -- отключение анимации при одном элементе
		
		if(nd < cd) then
			pi = cd - nd
			if(SYSTEM.TIMERB() < 600) then b = pi - SYSTEM.TIMERB() * 0.00001 end
			if(b < 0.002) then b = 0.002 end
			nd = nd + b / 8
		end
		
		if(nd > cd) then
			pi = nd - cd
			if(SYSTEM.TIMERB() < 600) then b = pi - SYSTEM.TIMERB() * 0.00001 end
			if(b < 0.002) then b = 0.002 end
			nd = nd - b / 8
		end
		
		if(cd + 0.0005 > nd and nd > cd - 0.0005) then nd = cd end -- диапазон для выравнивания
		
		GRAPHICS.DRAW_RECT(nd, y + h / 2 - sh / 2, w / n, sh, R, G, B, a)
	end

end

function menu.init(k)

	if(k == 'UP') then
		if(g.item.class() == 3) then
			skin.up()
		else
			s = 1
			if(i == 1) then i = g.i() else i = i - 1 end
		end
		
		playSound(1)
	end
	
	if(k == 'DOWN') then
		if(g.item.class() == 3) then
			skin.down()
		else
			s = 1
			if(i == g.i()) then i = 1 else i = i + 1 end
		end
		
		playSound(1)
	end
	
	if(k == 'LEFT') then
		if(s == 1) then s = g.s() else s = s - 1 end
		playSound(6)
	end
	
	if(k == 'RIGHT') then
		if(s == g.s()) then s = 1 else s = s + 1 end
		playSound(6)
	end
	
	if(k == 'PAGE') then
		i, s = 1, 1
		if(p == g.p()) then p = 1 else p = p + 1 end
		playSound(6)
	end
	
	
	
	if(k == 'ENTER') then
	
		if(g.item.class() == 0) then execute(g.item.hex()) end -- Run Script
		
		if(g.item.class() == 1) then -- Enter Menu
		
			if(g.item.hex() == 0xB2) then skin.init() end
			if(g.item.hex() == 0xF0) then online.init() end
			if(g.item.hex() == 0xF1) then ped(char[p * 16 - 16 + i]) end
			
			if(g.menuid()) then
				table.insert(e, {id, p, i, s})
				p, i, s, id = 1, 1, 1, g.menuid()
			else
				print('	undefined '..g.item.name()..string.format(' 0x%X', g.item.hex()))
			end
			
			if(g.menu() == 0xF1) then
				-- g.head(PLAYER.GET_PLAYER_NAME(char[p * 16 - 16 + i]))
				g.head(ped())
			end
			
		end
		
		if(g.item.class() == 2) then -- Toggle
			toggle(g.item.hex(), true)
		end
		
		if(g.item.class() == 4) then -- Action
			loadAction(g.item.hex())
		end
		
		playSound(2)
	end
	
	if(k == 'BACK') then
		
		if(#e > 0) then
			id, p, i, s = e[#e][1], e[#e][2], e[#e][3], e[#e][4]
			table.remove(e)
		else
			menu.init('CLOSE')
		end
		
		playSound(3)
	end
	
	if(k == 'CLOSE') then
		id, p, i, s, e = false, 1, 1, 1, {}
		nd = nil
		playSound(5)
		wait(200)
	end
	
	
	
	if(k == 'JUMP') then
		if(g.menu() == 0xA1) then resetAnimation() end
	end

end

function execute(hex)

	animations_execute(hex)
	clothes_execute(hex)
	action_execute(hex)
	online_execute(hex)

end










--[[ Common ]]--



g = {

	head		= function(h) if(h ~= nil) then m[id][p+2][1] = h else return m[id][p+2][1] end end,
	menu		= function() return m[id][1] end,
	
	p			= function() return #m[id] - 2 end,				-- pages
	i			= function() return #m[id][p+2] - 1 end,		-- items
	s			= function() return #m[id][p+2][i+1] / 4 end,	-- sub items
	
	item = { -- current
	
		class	= function() return m[id][p+2][i+1][s * 4 - 4 + 1] end,
		hex		= function() return m[id][p+2][i+1][s * 4 - 4 + 2] end,
		name	= function() return m[id][p+2][i+1][s * 4 - 4 + 3] end,
		color	= function()
		
			c = {255, 200, 70}
			if(#m[id][2] == 3) then c = m[id][2] end
			if(#m[id][p+2][i+1][s * 4 - 4 + 4] == 3) then c = m[id][p+2][i+1][s * 4 - 4 + 4] end
			return c
		end
	},
	
	class		= function(o) return m[id][p+2][o+1][1] end,
	hex			= function(o) return m[id][p+2][o+1][2] end,
	name		= function(o) return m[id][p+2][o+1][3] end,
	color		= function(o)
		c = {255, 200, 70}
		if(#m[id][2] == 3) then c = m[id][2] end
		if(#m[id][p+2][o+1][4] == 3) then c = m[id][p+2][o+1][4] end
		return c
	end,
	
	check		= function(o) if(#m[id][p+2][o+1] == 0) then table.remove(m[id][p+2], o+1) return true else return false end end,
	
	menuid		= function(hex)
		
		if(hex == nil) then hex = g.item.hex() end
		for j = 1, #m do
			if m[j][1] == hex then return j end
		end return false
	end
}

function hexName(hex, str)

	for id = 1, #m do -- перебор Массива
		for p = 3, #m[id] do -- перебор Страниц
			for i = 2, #m[id][p] do -- перебор Элементов
				for s = 1, #m[id][p][i] / 4 do -- перебор Суб Элементов
					
					-- print(m[id][p][i][s * 4 - 4 + 2])
					if(m[id][p][i][s * 4 - 4 + 2] == hex) then -- если есть совпадения по hex
						-- print('	'..m[id][e][i][s * 4 - 4 + 3])
						
						if(str) then
							m[id][p][i][s * 4 - 4 + 3] = str -- изменение имени элемента
						else
							return m[id][p][i][s * 4 - 4 + 3] -- получение имени
						end
						break
					end
				
				end
			end
		end
	end
end



function toggle(hex, set)

	if(flag == nil) then flag = {} end
	
	found = false
	
	for j = 1, #flag do
		if(hex == flag[j]) then
			found = true
			if(set) then table.remove(flag, j) end
		end
	end
	
	if(set and not found) then table.insert(flag, hex) end
	return found
end



function playSound(id)

	local sound = {
	
		{"NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET"},	-- 1	UP, DOWN
		{"SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET"},		-- 2	SELECT
		{"BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET"},			-- 3	BACK, CANCEL
		{"ERROR", "HUD_FRONTEND_DEFAULT_SOUNDSET"},			-- 4	ERROR
		
		{"BOATS_PLANES_HELIS_BOOM", "MP_LOBBY_SOUNDS"},		-- 5	Show Menu
		{"CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE"},		-- 6	Left, Right
		{"Load_Scene", "DLC_Dmod_Prop_Editor_Sounds"},		-- 7	Select Item
		{"Parcel_Vehicle_Lost", "GTAO_FM_Events_Soundset"},	-- 8	Spawn
		
		{"1st_Person_Transition", "PLAYER_SWITCH_CUSTOM_SOUNDSET"}, -- 9	Close Menu
		{"Apt_Style_Purchase", "DLC_APT_Apartment_SoundSet"},
		{"Dropped", "HUD_FRONTEND_MP_COLLECTABLE_SOUNDS"},
		{"Event_Message_Purple", "GTAO_FM_Events_Soundset"}			-- 12	Noty
	}	
	
	AUDIO.PLAY_SOUND_FRONTEND(-1, sound[id][1], sound[id][2], false)

end



function drawText(text, font, scale, x, y, outline, c)

	UI.SET_TEXT_FONT(font)
	UI.SET_TEXT_SCALE(0, scale)
	UI._SET_TEXT_ENTRY("STRING")
	UI._ADD_TEXT_COMPONENT_STRING(text)
	if(outline) then UI.SET_TEXT_OUTLINE() end
	
	if(c) then
		R, G, B = table.unpack(g.color(c))
		UI.SET_TEXT_COLOUR(R, G, B, 220)
	end
	
	UI._DRAW_TEXT(x, y)

end

function noty(text)

	UI._SET_NOTIFICATION_TEXT_ENTRY('STRING')
	UI._ADD_TEXT_COMPONENT_STRING(text)
	UI._DRAW_NOTIFICATION(false, true)
	
	-- ~r~ = Red
	-- ~b~ = Blue
	-- ~g~ = Green
	-- ~y~ = Yellow
	-- ~p~ = Purple
	-- ~o~ = Orange
	-- ~c~ = Grey)
	-- ~m~ = Darker Grey
	-- ~u~ = Black
	-- ~n~ = New Line
	-- ~s~ = Default White
	-- ~h~ = Bold Text
	
	-- ¦ = Rockstar Verified Icon
	-- ∑ = Rockstar Icon

end










function menu.headphone()
	if(PED.IS_PED_ON_FOOT(player()) and not id) then
		CONTROLS.DISABLE_CONTROL_ACTION(2, 85, true) -- INPUT_VEH_RADIO_WHEEL (Q)
	end
	
	if(PED.GET_PED_PROP_INDEX(player(), 0) ~= 15) then
	
		if(PED.IS_PED_ON_FOOT(player())) then
			radioname = AUDIO.GET_PLAYER_RADIO_STATION_NAME()
			radioindex = AUDIO.GET_PLAYER_RADIO_STATION_INDEX()
		end
		
		AUDIO.SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY(false)
	else
	
		AUDIO.SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY(true)
		if(radioname and not AUDIO.IS_MOBILE_PHONE_RADIO_ACTIVE()) then
			AUDIO.SET_RADIO_TO_STATION_NAME(radioname)
			AUDIO.SET_RADIO_TO_STATION_INDEX(radioindex)
		end
	
	end
end










-- function player() return PLAYER.PLAYER_PED_ID() end

player = function() return PLAYER.PLAYER_PED_ID() end

-- load

function loadAnimation(animation)
	if(not STREAMING.HAS_ANIM_DICT_LOADED(animation)) then
		STREAMING.REQUEST_ANIM_DICT(animation)
		print('	load Animation: '..animation)
		wait(300)
	end
	
	if(STREAMING.HAS_ANIM_DICT_LOADED(animation)) then return true else return false end
end

function loadClipset(clip)
	if(not STREAMING.HAS_CLIP_SET_LOADED(clip)) then
		STREAMING.REQUEST_CLIP_SET(clip)
		print('	load Clipset: '..clip)
		wait(300)
	end
	
	if(STREAMING.HAS_CLIP_SET_LOADED(clip)) then return true else return false end
end

function loadModel(model)

	hash = GAMEPLAY.GET_HASH_KEY(model)
	
	if(not STREAMING.HAS_MODEL_LOADED(hash)) then
		STREAMING.REQUEST_MODEL(hash)
		print('	load Model: '..model..', hash: '..hash)
		wait(300)
	end
	
	if(STREAMING.HAS_MODEL_LOADED(hash)) then return hash else return false end
end

return menu