local animations = {}

function animations_execute(hex)

	if(hex == 0xA01) then resetAnimation() end
	
	if(hex == 0xA001) then playFacialAnimation('facials@gen_female@base', 'mood_happy_1') end -- Happy
	if(hex == 0xA002) then playFacialAnimation('facials@gen_female@base', 'effort_1') end -- Angry
	if(hex == 0xA003) then playFacialAnimation('facials@gen_female@base', 'mood_sleeping_1') end	-- Sleep
	
	--
	
	if(hex == 0xA004) then playAnimation('amb@world_human_partying@female@partying_beer@base', 'base', 1) end -- Dance
	if(hex == 0xA005) then playAnimation('amb@world_human_jog_standing@female@base', 'base', 1) end -- Dance
	if(hex == 0xA006) then playAnimation('misschinese2_crystalmazemcs1_ig', 'dance_loop_tao', 1) end -- Dance
	if(hex == 0xA007) then playAnimation('special_ped@mountain_dancer@monologue_3@monologue_3a', 'mnt_dnc_buttwag', 1) end -- Dance
	
	--
	
	if(hex == 0xA008) then playAnimation('mini@triathlon', 'idle_a', 0) end -- Triathlon
	if(hex == 0xA009) then playAnimation('mini@triathlon', 'ig_2_gen_warmup_06', 0) end -- Triathlon
	
	--
	
	if(hex == 0xA010) then playAnimation('mp_defend_base', 'guard_handsup_loop', 1) end -- Hands Up
	
	if(hex == 0xA011) then playAnimation('switch@franklin@press_ups', 'pressups_loop', 1) end -- Push Up Female
	if(hex == 0xA012) then playAnimation('amb@world_human_push_ups@male@base', 'base', 1) end -- Push Up Male
	if(hex == 0xA013) then playAnimation('amb@world_human_sit_ups@male@idle_a', 'idle_a', 1) end -- Seat Up
	
	--
	
	if(hex == 0xA014) then playAnimation('amb@lo_res_idles@', 'world_human_picnic_female_lo_res_base', 1) end -- Rest
	if(hex == 0xA015) then playAnimation('amb@lo_res_idles@', 'lying_face_down_lo_res_base', 1) end -- Rest
	if(hex == 0xA016) then playAnimation('amb@world_human_sunbathe@female@front@base', 'base', 1) end -- Rest
	if(hex == 0xA017) then playAnimation('amb@lo_res_idles@', 'lying_face_up_lo_res_base', 1) end -- Rest
	if(hex == 0xA018) then playAnimation('amb@world_human_sit_ups@male@idle_a', 'idle_b', 1) end -- Rest
	
	--
	
	if(hex == 0xA019) then playAnimation('amb@world_human_bum_slumped@male@laying_on_right_side@idle_a', 'idle_a', 1) end -- Slump
	
	--
	
	if(hex == 0xA020) then playAnimation('reaction@shake_it_off@', 'dustoff', 0) end -- Dust Off
	
	-- Clipset
	
	if(hex == 0xA901) then setClipset('move_m@drunk@moderatedrunk_head_up') end -- Drunk
	if(hex == 0xA902) then setClipset('move_m@drunk@verydrunk') end -- Very Drunk
	if(hex == 0xA903) then setClipset('mini@strip_club@walk', 'walk', 1) end -- Stripper
	if(hex == 0xA904) then -- Jogging
		setClipset('move_f@jogger', 'idle', 0)
		setClipset('move_f@jogger', 'jogging', 1)
	end
	
	if(hex == 0xA905) then -- Test
		setClipset('amb@world_human_binoculars@male@base', 'idle', 0)
		-- setClipset('amb@world_human_binoculars@male@base', 'base', 1)
	end
	
	if(hex == 0xA999) then resetClipset() end -- Clipset
	
	-- Online
	
	if(hex == 0xA101) then playAnimation('mp_player_int_upperv_sign', 'mp_player_int_v_sign', 1) end -- Hands Up Sign
	if(hex == 0xA102) then playAnimation('mp_player_int_upperwank', 'mp_player_int_wank_01', 1) end -- Wank
	if(hex == 0xA103) then playAnimation('mp_suicide', 'pill_fp', 2) end -- Suicide pill
	if(hex == 0xA104) then playAnimation('mp_suicide', 'pistol_fp', 2) end -- Suicide pistol
	if(hex == 0xA105) then playAnimation('ragdoll@human', 'electrocute', 2) end -- Electrocute
	
	-- Stripper
	
	if(hex == 0xA201) then playAnimation('mini@hookers_spcokehead', 'idle_wait', 1) end -- Idle
	if(hex == 0xA202) then playAnimation('mini@hookers_spcokehead', 'idle_reject_loop_a', 1) end -- Idle
	if(hex == 0xA204) then playAnimation('mini@hookers_sp', 'idle_reject_loop_a', 1) end -- Idle
	
	if(hex == 0xA205) then playAnimation('oddjobs@taxi@argument', 'hooker_loop_a_hooker_b', 1) end -- Idle
	if(hex == 0xA206) then playAnimation('mp_move@prostitute@f@hooker', 'idle', 1) end -- Idle
	if(hex == 0xA207) then playAnimation('amb@world_human_hang_out_street@female_hold_arm@idle_a', 'idle_a', 1) end -- Idle
	if(hex == 0xA208) then playAnimation('special_ped@jane@base', 'base', 1) end -- Idle
	
	if(hex == 0xA209) then playAnimation('mini@strip_club@idles@stripper', 'stripper_idle_01', 1) end -- Stripper
	if(hex == 0xA210) then playAnimation('mini@strip_club@idles@stripper', 'stripper_idle_04', 1) end -- Stripper
	if(hex == 0xA211) then playAnimation('switch@trevor@mocks_lapdance', '001443_01_trvs_28_idle_stripper', 1) end -- Stripper
	
	if(hex == 0xA212) then playAnimation('oddjobs@assassinate@multi@yachttarget@lapdance', 'yacht_ld_f', 1) end -- Strip Dance
	if(hex == 0xA213) then playAnimation('mini@strip_club@lap_dance_2g@ld_2g_p1', 'ld_2g_p1_s2', 1) end -- Strip Dance
	if(hex == 0xA214) then playAnimation('mini@strip_club@lap_dance@ld_girl_a_song_a_p1', 'ld_girl_a_song_a_p1_f', 1) end -- Strip Dance
	if(hex == 0xA215) then playAnimation('mp_am_stripper', 'lap_dance_girl', 1) end -- Strip Dance
	
	if(hex == 0xA216) then playAnimation('mini@strip_club@private_dance@idle', 'priv_dance_idle', 1) end -- Private Dance
	if(hex == 0xA217) then playAnimation('mini@strip_club@private_dance@part1', 'priv_dance_p1', 1) end -- Private Dance
	if(hex == 0xA218) then playAnimation('mini@strip_club@private_dance@part2', 'priv_dance_p2', 1) end -- Private Dance
	if(hex == 0xA219) then playAnimation('mini@strip_club@private_dance@part3', 'priv_dance_p3', 1) end -- Private Dance
	
end

function playAnimation(animation, ani, loop)

	if(loadAnimation(animation)) then
		AI.TASK_PLAY_ANIM(player(), animation, ani, 10.0, 10.0, -1, loop, 0, true, true, true)
	end
end

function playFacialAnimation(animation, ani)

	if(loadAnimation(animation)) then
		PED.PLAY_FACIAL_ANIM(player(), ani, animation)
	end
end

function resetAnimation()
	AI.CLEAR_PED_TASKS(player())
end

function setClipset(clip, movement, stance)

	if(movement) then
		if(loadAnimation(clip)) then
			PED.SET_PED_ALTERNATE_MOVEMENT_ANIM(player(), stance, clip, movement, 1.0, true)
		end
	else
		if(loadClipset(clip)) then
			PED.SET_PED_MOVEMENT_CLIPSET(player(), clip, 1.0)
		end
	end

end

function resetClipset()
	PED.RESET_PED_MOVEMENT_CLIPSET(player(), 1.0)
	PED.CLEAR_PED_ALTERNATE_MOVEMENT_ANIM(player(), 0, 1.0)
	PED.CLEAR_PED_ALTERNATE_MOVEMENT_ANIM(player(), 1, 1.0)
	PED.CLEAR_PED_ALTERNATE_MOVEMENT_ANIM(player(), 2, 1.0)
end

return animations