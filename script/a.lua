local reload = {}

function reload.tick()

	if(get_key_pressed(Keys.F12)) then
		flag = nil
		loadAddIns()
		-- print(TIME.GET_CLOCK_HOURS()..":"..TIME.GET_CLOCK_MINUTES()..":"..TIME.GET_CLOCK_SECONDS().." AddIns ReLoaded")
		print("\n	"..os.date("%X"))
		wait(1000)
	end

end

return reload