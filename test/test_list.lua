local list = {}

local cur_item = 40

local list_render = false

local a1 = { -- multiplayer_overlays

	'FM_CREW_M_000_A',
	'FM_CREW_M_000_B',
	'FM_CREW_M_000_C',
	'FM_CREW_M_000_D',
	'FM_CREW_M_000_E',
	'FM_CREW_M_000_F',
	'FM_CREW_F_000_A',
	'FM_CREW_F_000_B',
	'FM_CREW_F_000_C',
	'FM_CREW_F_000_D',
	'FM_Tat_Award_M_000',
	'FM_Tat_Award_M_001',
	'FM_Tat_Award_M_002',
	'FM_Tat_Award_M_003',
	'FM_Tat_Award_M_004',
	'FM_Tat_Award_M_005',
	'FM_Tat_Award_M_006',
	'FM_Tat_Award_M_007',
	'FM_Tat_Award_M_008',
	'FM_Tat_Award_M_009',
	'FM_Tat_Award_M_010',
	'FM_Tat_Award_M_011',
	'FM_Tat_Award_M_012',
	'FM_Tat_Award_M_013',
	'FM_Tat_Award_M_014',
	'FM_Tat_Award_M_015',
	'FM_Tat_Award_M_016',
	'FM_Tat_Award_M_017',
	'FM_Tat_Award_M_018',
	'FM_Tat_Award_M_019',
	'FM_Tat_M_000',
	'FM_Tat_M_001',
	'FM_Tat_M_002',
	'FM_Tat_M_003',
	'FM_Tat_M_004',
	'FM_Tat_M_005',
	'FM_Tat_M_006',
	'FM_Tat_M_007',
	'FM_Tat_M_008',
	'FM_Tat_M_009',
	'FM_Tat_M_010',
	'FM_Tat_M_011',
	'FM_Tat_M_012',
	'FM_Tat_M_013',
	'FM_Tat_M_014',
	'FM_Tat_M_015',
	'FM_Tat_M_016',
	'FM_Tat_M_017',
	'FM_Tat_M_018',
	'FM_Tat_M_019',
	'FM_Tat_M_020',
	'FM_Tat_M_021',
	'FM_Tat_M_022',
	'FM_Tat_M_023',
	'FM_Tat_M_024',
	'FM_Tat_M_025',
	'FM_Tat_M_026',
	'FM_Tat_M_027',
	'FM_Tat_M_028',
	'FM_Tat_M_029',
	'FM_Tat_M_030',
	'FM_Tat_M_031',
	'FM_Tat_M_032',
	'FM_Tat_M_033',
	'FM_Tat_M_034',
	'FM_Tat_M_035',
	'FM_Tat_M_036',
	'FM_Tat_M_037',
	'FM_Tat_M_038',
	'FM_Tat_M_039',
	'FM_Tat_M_040',
	'FM_Tat_M_041',
	'FM_Tat_M_042',
	'FM_Tat_M_043',
	'FM_Tat_M_044',
	'FM_Tat_M_045',
	'FM_Tat_M_046',
	'FM_Tat_M_047',
	'FM_Tat_Award_F_000',
	'FM_Tat_Award_F_001',
	'FM_Tat_Award_F_002',
	'FM_Tat_Award_F_003',
	'FM_Tat_Award_F_004',
	'FM_Tat_Award_F_005',
	'FM_Tat_Award_F_006',
	'FM_Tat_Award_F_007',
	'FM_Tat_Award_F_008',
	'FM_Tat_Award_F_009',
	'FM_Tat_Award_F_010',
	'FM_Tat_Award_F_011',
	'FM_Tat_Award_F_012',
	'FM_Tat_Award_F_013',
	'FM_Tat_Award_F_014',
	'FM_Tat_Award_F_015',
	'FM_Tat_Award_F_016',
	'FM_Tat_Award_F_017',
	'FM_Tat_Award_F_018',
	'FM_Tat_Award_F_019',
	'FM_Tat_F_001',
	'FM_Tat_F_002',
	'FM_Tat_F_003',
	'FM_Tat_F_004',
	'FM_Tat_F_005',
	'FM_Tat_F_006',
	'FM_Tat_F_007',
	'FM_Tat_F_008',
	'FM_Tat_F_009',
	'FM_Tat_F_010',
	'FM_Tat_F_011',
	'FM_Tat_F_012',
	'FM_Tat_F_013',
	'FM_Tat_F_014',
	'FM_Tat_F_015',
	'FM_Tat_F_016',
	'FM_Tat_F_017',
	'FM_Tat_F_018',
	'FM_Tat_F_019',
	'FM_Tat_F_020',
	'FM_Tat_F_021',
	'FM_Tat_F_022',
	'FM_Tat_F_023',
	'FM_Tat_F_024',
	'FM_Tat_F_025',
	'FM_Tat_F_026',
	'FM_Tat_F_027',
	'FM_Tat_F_028',
	'FM_Tat_F_029',
	'FM_Tat_F_030',
	'FM_Tat_F_031',
	'FM_Tat_F_032',
	'FM_Tat_F_033',
	'FM_Tat_F_034',
	'FM_Tat_F_035',
	'FM_Tat_F_036',
	'FM_Tat_F_037',
	'FM_Tat_F_038',
	'FM_Tat_F_039',
	'FM_Tat_F_040',
	'FM_Tat_F_041',
	'FM_Tat_F_042',
	'FM_Tat_F_043',
	'FM_Tat_F_044',
	'FM_Tat_F_045',
	'FM_Tat_F_046',
	'FM_Tat_F_047',
	'FM_Tshirt_Award_000',
	'FM_Tshirt_Award_001',
	'FM_Tshirt_Award_002',
	'FM_Tshirt_Award_F_000',
	'FM_Tshirt_Award_F_001',
	'FM_Tshirt_Award_F_002',
	'FM_F_Hair_003_a',
	'FM_F_Hair_003_b',
	'FM_F_Hair_003_c',
	'FM_F_Hair_003_d',
	'FM_F_Hair_003_e',
	'FM_F_Hair_005_a',
	'FM_F_Hair_005_b',
	'FM_F_Hair_005_c',
	'FM_F_Hair_005_d',
	'FM_F_Hair_005_e',
	'FM_F_Hair_006_a',
	'FM_F_Hair_006_b',
	'FM_F_Hair_006_c',
	'FM_F_Hair_006_d',
	'FM_F_Hair_006_e',
	'FM_F_Hair_013_a',
	'FM_F_Hair_013_b',
	'FM_F_Hair_013_c',
	'FM_F_Hair_013_d',
	'FM_F_Hair_013_e',
	'FM_F_Hair_014_a',
	'FM_F_Hair_014_b',
	'FM_F_Hair_014_c',
	'FM_F_Hair_014_d',
	'FM_F_Hair_014_e',
	'FM_F_Hair_long_a',
	'FM_F_Hair_long_b',
	'FM_F_Hair_long_c',
	'FM_F_Hair_long_d',
	'FM_F_Hair_long_e',
	'FM_M_Hair_001_a',
	'FM_M_Hair_001_b',
	'FM_M_Hair_001_c',
	'FM_M_Hair_001_d',
	'FM_M_Hair_001_e',
	'FM_M_Hair_003_a',
	'FM_M_Hair_003_b',
	'FM_M_Hair_003_c',
	'FM_M_Hair_003_d',
	'FM_M_Hair_003_e',
	'FM_M_Hair_006_a',
	'FM_M_Hair_006_b',
	'FM_M_Hair_006_c',
	'FM_M_Hair_006_d',
	'FM_M_Hair_006_e',
	'FM_M_Hair_008_a',
	'FM_M_Hair_008_b',
	'FM_M_Hair_008_c',
	'FM_M_Hair_008_d',
	'FM_M_Hair_008_e',
	'FM_M_Hair_long_a',
	'FM_M_Hair_long_b',
	'FM_M_Hair_long_c',
	'FM_M_Hair_long_d',
	'FM_M_Hair_long_e',
	'mp_fm_branding_001',
	'mp_fm_branding_002',
	'mp_fm_branding_003',
	'mp_fm_branding_004',
	'mp_fm_branding_005',
	'mp_fm_branding_006',
	'mp_fm_branding_007',
	'mp_fm_branding_008',
	'mp_fm_branding_009',
	'mp_fm_branding_010',
	'mp_fm_branding_011',
	'mp_fm_branding_012',
	'mp_fm_branding_013',
	'mp_fm_branding_014',
	'mp_fm_branding_015',
	'mp_fm_branding_016',
	'mp_fm_branding_017',
	'mp_fm_branding_018',
	'mp_fm_branding_019',
	'mp_fm_branding_020',
	'mp_fm_branding_022',
	'mp_fm_branding_023',
	'mp_fm_branding_024',
	'mp_fm_branding_025',
	'mp_fm_branding_027',
	'mp_fm_branding_028',
	'mp_fm_branding_029',
	'mp_fm_branding_031',
	'mp_fm_branding_032',
	'mp_fm_branding_034',
	'mp_fm_branding_035',
	'mp_fm_branding_036',
	'mp_fm_branding_037',
	'mp_fm_branding_038',
	'mp_fm_branding_039',
	'mp_fm_branding_040',
	'mp_fm_branding_041',
	'mp_fm_branding_042',
	'mp_fm_branding_043',
	'mp_fm_branding_044',
	'mp_fm_branding_045',
	'mp_fm_branding_046',
	'mp_fm_branding_047',
	'mp_fm_branding_048',
	'mp_fm_branding_049',
	'mp_fm_branding_050',
	'mp_fm_branding_051',
	'mp_fm_branding_052',
	'mp_fm_branding_053',
	'mp_fm_branding_054',
	'mp_fm_branding_055',
	'mp_fm_branding_056',
	'mp_fm_branding_057',
	'mp_fm_branding_058',
	'mp_fm_branding_059',
	'mp_fm_branding_060',
	'mp_fm_branding_061',
	'mp_fm_branding_062',
	'mp_fm_branding_066',
	'mp_fm_branding_067',
	'mp_fm_branding_068',
	'mp_fm_branding_069',
	'mp_fm_branding_070',
	'mp_fm_branding_027_f',
	'mp_fm_branding_028_F',
	'mp_fm_branding_034_f',
	'mp_fm_branding_036_F',
	'mp_fm_branding_039_f',
	'mp_fm_OGA_000_m',
	'mp_fm_OGA_001_m',
	'mp_fm_OGA_002_m',
	'mp_fm_OGA_003_m',
	'mp_fm_OGA_000_f',
	'mp_fm_OGA_001_f',
	'mp_fm_OGA_002_f',
	'mp_fm_OGA_003_f',
	'NG_M_Hair_001',
	'NG_M_Hair_002',
	'NG_M_Hair_003',
	'NG_M_Hair_004',
	'NG_M_Hair_005',
	'NG_M_Hair_006',
	'NG_M_Hair_007',
	'NG_M_Hair_008',
	'NG_M_Hair_009',
	'NG_M_Hair_010',
	'NG_M_Hair_011',
	'NG_M_Hair_012',
	'NG_M_Hair_013',
	'NG_M_Hair_014',
	'NG_M_Hair_015',
	'NGBea_M_Hair_000',
	'NGBea_M_Hair_001',
	'NGBus_M_Hair_000',
	'NGBus_M_Hair_001',
	'NGHip_M_Hair_000',
	'NGHip_M_Hair_001',
	'NGInd_M_Hair_000',
	'NG_F_Hair_001',
	'NG_F_Hair_002',
	'NG_F_Hair_003',
	'NG_F_Hair_004',
	'NG_F_Hair_005',
	'NG_F_Hair_006',
	'NG_F_Hair_007',
	'NG_F_Hair_008',
	'NG_F_Hair_009',
	'NG_F_Hair_010',
	'NG_F_Hair_011',
	'NG_F_Hair_012',
	'NG_F_Hair_013',
	'NG_F_Hair_014',
	'NG_F_Hair_015',
	'NGBea_F_Hair_000',
	'NGBea_F_Hair_001',
	'NGBus_F_Hair_000',
	'NGBus_F_Hair_001',
	'NGHip_F_Hair_000',
	'NGHip_F_Hair_001',
	'NGInd_F_Hair_000',
}

local a2 = { -- mphipster_overlays
	'FM_Hip_M_Hair_000_a',
	'FM_Hip_M_Hair_000_b',
	'FM_Hip_M_Hair_000_c',
	'FM_Hip_M_Hair_000_d',
	'FM_Hip_M_Hair_000_e',
	'FM_Hip_M_Hair_001_a',
	'FM_Hip_M_Hair_001_b',
	'FM_Hip_M_Hair_001_c',
	'FM_Hip_M_Hair_001_d',
	'FM_Hip_M_Hair_001_e',
	'FM_Hip_F_Hair_000_a',
	'FM_Hip_F_Hair_000_b',
	'FM_Hip_F_Hair_000_c',
	'FM_Hip_F_Hair_000_d',
	'FM_Hip_F_Hair_000_e',
	'FM_Hip_M_Tat_000',
	'FM_Hip_M_Tat_001',
	'FM_Hip_M_Tat_002',
	'FM_Hip_M_Tat_003',
	'FM_Hip_M_Tat_004',
	'FM_Hip_M_Tat_005',
	'FM_Hip_M_Tat_006',
	'FM_Hip_M_Tat_007',
	'FM_Hip_M_Tat_008',
	'FM_Hip_M_Tat_009',
	'FM_Hip_M_Tat_010',
	'FM_Hip_M_Tat_011',
	'FM_Hip_M_Tat_012',
	'FM_Hip_M_Tat_013',
	'FM_Hip_M_Tat_014',
	'FM_Hip_M_Tat_015',
	'FM_Hip_M_Tat_016',
	'FM_Hip_M_Tat_017',
	'FM_Hip_M_Tat_018',
	'FM_Hip_M_Tat_019',
	'FM_Hip_M_Tat_020',
	'FM_Hip_M_Tat_021',
	'FM_Hip_M_Tat_022',
	'FM_Hip_M_Tat_023',
	'FM_Hip_M_Tat_024',
	'FM_Hip_M_Tat_025',
	'FM_Hip_M_Tat_026',
	'FM_Hip_M_Tat_027',
	'FM_Hip_M_Tat_028',
	'FM_Hip_M_Tat_029',
	'FM_Hip_M_Tat_030',
	'FM_Hip_M_Tat_031',
	'FM_Hip_M_Tat_032',
	'FM_Hip_M_Tat_033',
	'FM_Hip_M_Tat_034',
	'FM_Hip_M_Tat_035',
	'FM_Hip_M_Tat_036',
	'FM_Hip_M_Tat_037',
	'FM_Hip_M_Tat_038',
	'FM_Hip_M_Tat_039',
	'FM_Hip_M_Tat_040',
	'FM_Hip_M_Tat_041',
	'FM_Hip_M_Tat_042',
	'FM_Hip_M_Tat_043',
	'FM_Hip_M_Tat_044',
	'FM_Hip_M_Tat_045',
	'FM_Hip_M_Tat_046',
	'FM_Hip_M_Tat_047',
	'FM_Hip_M_Tat_048',
	'FM_Hip_F_Tat_000',
	'FM_Hip_F_Tat_001',
	'FM_Hip_F_Tat_002',
	'FM_Hip_F_Tat_003',
	'FM_Hip_F_Tat_004',
	'FM_Hip_F_Tat_005',
	'FM_Hip_F_Tat_006',
	'FM_Hip_F_Tat_007',
	'FM_Hip_F_Tat_008',
	'FM_Hip_F_Tat_009',
	'FM_Hip_F_Tat_010',
	'FM_Hip_F_Tat_011',
	'FM_Hip_F_Tat_012',
	'FM_Hip_F_Tat_013',
	'FM_Hip_F_Tat_014',
	'FM_Hip_F_Tat_015',
	'FM_Hip_F_Tat_016',
	'FM_Hip_F_Tat_017',
	'FM_Hip_F_Tat_018',
	'FM_Hip_F_Tat_019',
	'FM_Hip_F_Tat_020',
	'FM_Hip_F_Tat_021',
	'FM_Hip_F_Tat_022',
	'FM_Hip_F_Tat_023',
	'FM_Hip_F_Tat_024',
	'FM_Hip_F_Tat_025',
	'FM_Hip_F_Tat_026',
	'FM_Hip_F_Tat_027',
	'FM_Hip_F_Tat_028',
	'FM_Hip_F_Tat_029',
	'FM_Hip_F_Tat_030',
	'FM_Hip_F_Tat_031',
	'FM_Hip_F_Tat_032',
	'FM_Hip_F_Tat_033',
	'FM_Hip_F_Tat_034',
	'FM_Hip_F_Tat_035',
	'FM_Hip_F_Tat_036',
	'FM_Hip_F_Tat_037',
	'FM_Hip_F_Tat_038',
	'FM_Hip_F_Tat_039',
	'FM_Hip_F_Tat_040',
	'FM_Hip_F_Tat_041',
	'FM_Hip_F_Tat_042',
	'FM_Hip_F_Tat_043',
	'FM_Hip_F_Tat_044',
	'FM_Hip_F_Tat_045',
	'FM_Hip_F_Tat_046',
	'FM_Hip_F_Tat_047',
	'FM_Hip_F_Tat_048',
	'FM_Hip_M_Tshirt_000',
	'FM_Hip_M_Tshirt_001',
	'FM_Hip_M_Tshirt_002',
	'FM_Hip_M_Tshirt_003',
	'FM_Hip_M_Tshirt_004',
	'FM_Hip_M_Tshirt_005',
	'FM_Hip_M_Tshirt_006',
	'FM_Hip_M_Tshirt_007',
	'FM_Hip_M_Tshirt_008',
	'FM_Hip_M_Tshirt_009',
	'FM_Hip_M_Tshirt_010',
	'FM_Hip_M_Tshirt_011',
	'FM_Hip_M_Tshirt_012',
	'FM_Hip_M_Tshirt_013',
	'FM_Hip_M_Tshirt_014',
	'FM_Hip_M_Tshirt_015',
	'FM_Hip_M_Tshirt_016',
	'FM_Hip_M_Tshirt_017',
	'FM_Hip_M_Tshirt_018',
	'FM_Hip_M_Tshirt_019',
	'FM_Hip_M_Tshirt_020',
	'FM_Hip_M_Tshirt_021',
	'FM_Hip_M_Tshirt_022',
	'FM_Hip_F_Tshirt_000',
	'FM_Hip_F_Tshirt_001',
	'FM_Hip_F_Tshirt_002',
	'FM_Hip_F_Tshirt_003',
	'FM_Hip_F_Tshirt_004',
	'FM_Hip_F_Tshirt_005',
	'FM_Hip_F_Tshirt_006',
	'FM_Hip_F_Tshirt_007',
	'FM_Hip_F_Tshirt_008',
	'FM_Hip_F_Tshirt_009',
	'FM_Hip_F_Tshirt_010',
	'FM_Hip_F_Tshirt_011',
	'FM_Hip_F_Tshirt_012',
	'FM_Hip_F_Tshirt_013',
	'FM_Hip_F_Tshirt_014',
	'FM_Hip_F_Tshirt_015',
	'FM_Hip_F_Tshirt_016',
	'FM_Hip_F_Tshirt_017',
	'FM_Hip_F_Tshirt_018',
	'FM_Hip_F_Tshirt_019',
	'FM_Hip_F_Tshirt_020',
	'FM_Hip_F_Tshirt_021',
	'FM_Hip_F_Tshirt_022',
	'FM_Hip_M_Retro_000',
	'FM_Hip_M_Retro_001',
	'FM_Hip_M_Retro_002',
	'FM_Hip_M_Retro_003',
	'FM_Hip_M_Retro_004',
	'FM_Hip_M_Retro_005',
	'FM_Hip_M_Retro_006',
	'FM_Hip_M_Retro_007',
	'FM_Hip_M_Retro_008',
	'FM_Hip_M_Retro_009',
	'FM_Hip_M_Retro_010',
	'FM_Hip_M_Retro_011',
	'FM_Hip_M_Retro_012',
	'FM_Hip_M_Retro_013',
	'FM_Hip_F_Retro_000',
	'FM_Hip_F_Retro_001',
	'FM_Hip_F_Retro_002',
	'FM_Hip_F_Retro_003',
	'FM_Hip_F_Retro_004',
	'FM_Hip_F_Retro_005',
	'FM_Hip_F_Retro_006',
	'FM_Hip_F_Retro_007',
	'FM_Hip_F_Retro_008',
	'FM_Hip_F_Retro_009',
	'FM_Hip_F_Retro_010',
	'FM_Hip_F_Retro_011',
	'FM_Hip_F_Retro_012',
	'FM_Hip_F_Retro_013',
	'FM_F_Hair_017_a',
	'FM_F_Hair_017_b',
	'FM_F_Hair_017_c',
	'FM_F_Hair_017_d',
	'FM_F_Hair_017_e',
	'FM_F_Hair_020_a',
	'FM_F_Hair_020_b',
	'FM_F_Hair_020_c',
	'FM_F_Hair_020_d',
	'FM_F_Hair_020_e',
	'FM_Disc_M_Hair_001_a',
	'FM_Disc_M_Hair_001_b',
	'FM_Disc_M_Hair_001_c',
	'FM_Disc_M_Hair_001_d',
	'FM_Disc_M_Hair_001_e',
	'FM_Rstar_M_Tshirt_000',
	'FM_Rstar_M_Tshirt_001',
	'FM_Rstar_M_Tshirt_002',
	'FM_Rstar_F_Tshirt_000',
	'FM_Rstar_F_Tshirt_001',
	'FM_Rstar_F_Tshirt_002',
}

local a3 = { -- mplowrider_overlays
	'MP_LR_Tat_001_M',
	'MP_LR_Tat_002_M',
	'MP_LR_Tat_004_M',
	'MP_LR_Tat_005_M',
	'MP_LR_Tat_007_M',
	'MP_LR_Tat_009_M',
	'MP_LR_Tat_010_M',
	'MP_LR_Tat_013_M',
	'MP_LR_Tat_014_M',
	'MP_LR_Tat_015_M',
	'MP_LR_Tat_017_M',
	'MP_LR_Tat_020_M',
	'MP_LR_Tat_021_M',
	'MP_LR_Tat_023_M',
	'MP_LR_Tat_026_M',
	'MP_LR_Tat_027_M',
	'MP_LR_Tat_033_M',
	'MP_LR_Tat_001_F',
	'MP_LR_Tat_002_F',
	'MP_LR_Tat_004_F',
	'MP_LR_Tat_005_F',
	'MP_LR_Tat_007_F',
	'MP_LR_Tat_009_F',
	'MP_LR_Tat_010_F',
	'MP_LR_Tat_013_F',
	'MP_LR_Tat_014_F',
	'MP_LR_Tat_015_F',
	'MP_LR_Tat_017_F',
	'MP_LR_Tat_020_F',
	'MP_LR_Tat_021_F',
	'MP_LR_Tat_023_F',
	'MP_LR_Tat_026_F',
	'MP_LR_Tat_027_F',
	'MP_LR_Tat_033_F',
	'MP_Broker_000_F',
	'MP_Broker_000_M',
	'MP_Broker_001_F',
	'MP_Broker_001_M',
	'MP_Broker_002_F',
	'MP_Broker_002_M',
	'MP_Broker_003_F',
	'MP_Broker_003_M',
	'MP_Broker_004_F',
	'MP_Broker_004_M',
	'MP_Broker_005_F',
	'MP_Broker_005_M',
	'MP_Magnetics_000_F',
	'MP_Magnetics_000_M',
	'MP_Magnetics_001_F',
	'MP_Magnetics_001_M',
	'MP_Magnetics_002_F',
	'MP_Magnetics_002_M',
	'MP_Magnetics_003_F',
	'MP_Magnetics_003_M',
	'MP_Magnetics_004_F',
	'MP_Magnetics_004_M',
	'MP_Magnetics_005_F',
	'MP_Magnetics_005_M',
	'MP_Trickster_000_F',
	'MP_Trickster_000_M',
	'MP_Trickster_001_F',
	'MP_Trickster_001_M',
	'MP_Trickster_002_F',
	'MP_Trickster_002_M',
	'MP_Trickster_003_F',
	'MP_Trickster_003_M',
	'MP_Trickster_004_F',
	'MP_Trickster_004_M',
	'MP_Trickster_005_F',
	'MP_Trickster_005_M',
	'MP_Trickster_006_F',
	'MP_Trickster_006_M',
	'MP_Trickster_007_F',
	'MP_Trickster_007_M',
	'MP_Trickster_008_M',
	'MP_Trickster_009_M',
	'MP_Trickster_010_F',
	'MP_Trickster_010_M',
	'LR_F_Hair_000',
	'LR_F_Hair_001',
	'LR_F_Hair_002',
	'LR_M_Hair_000',
	'LR_M_Hair_001',
	'LR_M_Hair_002',
	'LR_M_Hair_003',
	'MP_Bennys_000_M',
	'MP_Bennys_001_M',
	'MP_Bennys_000_F',
	'MP_Bennys_001_F',
}

local a4 = { -- mplowrider2_overlays
	'MP_LR_Tat_000_M',
	'MP_LR_Tat_003_M',
	'MP_LR_Tat_006_M',
	'MP_LR_Tat_008_M',
	'MP_LR_Tat_011_M',
	'MP_LR_Tat_012_M',
	'MP_LR_Tat_016_M',
	'MP_LR_Tat_018_M',
	'MP_LR_Tat_019_M',
	'MP_LR_Tat_022_M',
	'MP_LR_Tat_028_M',
	'MP_LR_Tat_029_M',
	'MP_LR_Tat_030_M',
	'MP_LR_Tat_031_M',
	'MP_LR_Tat_032_M',
	'MP_LR_Tat_035_M',
	'MP_LR_Tat_000_F',
	'MP_LR_Tat_003_F',
	'MP_LR_Tat_006_F',
	'MP_LR_Tat_008_F',
	'MP_LR_Tat_011_F',
	'MP_LR_Tat_012_F',
	'MP_LR_Tat_016_F',
	'MP_LR_Tat_018_F',
	'MP_LR_Tat_019_F',
	'MP_LR_Tat_022_F',
	'MP_LR_Tat_028_F',
	'MP_LR_Tat_029_F',
	'MP_LR_Tat_030_F',
	'MP_LR_Tat_031_F',
	'MP_LR_Tat_032_F',
	'MP_LR_Tat_035_F',
	'MP_Chianski_000_F',
	'MP_Chianski_000_M',
	'MP_Chianski_001_F',
	'MP_Chianski_001_M',
	'MP_Chianski_002_F',
	'MP_Chianski_002_M',
	'MP_Chianski_003_F',
	'MP_Chianski_003_M',
	'MP_Chianski_004_F',
	'MP_Chianski_004_M',
	'MP_Chianski_005_F',
	'MP_Chianski_005_M',
	'MP_Chianski_006_F',
	'MP_Chianski_006_M',
	'MP_Hntr_000_F',
	'MP_Hntr_000_M',
	'MP_Hntr_001_F',
	'MP_Hntr_001_M',
	'MP_Hntr_002_F',
	'MP_Hntr_002_M',
	'MP_Hntr_003_F',
	'MP_Hntr_003_M',
	'MP_Hntr_004_F',
	'MP_Hntr_004_M',
	'MP_Hntr_005_F',
	'MP_Hntr_005_M',
	'MP_Hntr_006_F',
	'MP_Hntr_006_M',
	'MP_Hntr_007_F',
	'MP_Hntr_007_M',
	'MP_Hntr_008_F',
	'MP_Hntr_008_M',
	'MP_Hntr_009_F',
	'MP_Hntr_009_M',
	'MP_Hntr_010_F',
	'MP_Hntr_010_M',
	'MP_Hntr_011_F',
	'MP_Hntr_011_M',
	'MP_Hntr_012_F',
	'MP_Hntr_012_M',
	'MP_Dense_000_F',
	'MP_Dense_000_M',
	'MP_Dense_001_F',
	'MP_Dense_001_M',
	'MP_Dense_002_F',
	'MP_Dense_002_M',
	'MP_Dense_003_F',
	'MP_Dense_003_M',
	'MP_Dense_004_F',
	'MP_Dense_004_M',
	'MP_Dense_005_F',
	'MP_Dense_005_M',
	'MP_Dense_006_F',
	'MP_Dense_006_M',
	'MP_Dense_007_F',
	'MP_Dense_007_M',
	'LR_F_Hair_003',
	'LR_F_Hair_004',
	'LR_F_Hair_006',
	'LR_M_Hair_004',
	'LR_M_Hair_005',
	'LR_M_Hair_006',
}

local a5 = { -- mpluxe_overlays
	'MP_LUXE_LC_004_M',
	'MP_LUXE_LC_005_M',
	'MP_LUXE_LC_010_M',
	'MP_LUXE_LC_011_M',
	'MP_LUXE_ENEMA_000_M',
	'MP_LUXE_Per_001_M',
	'MP_LUXE_SC_000_M',
	'MP_FAKE_LB_000_M',
	'MP_FAKE_LC_000_M',
	'MP_FAKE_ENEMA_000_M',
	'MP_FAKE_Per_000_M',
	'MP_FAKE_SN_000_M',
	'MP_FAKE_SC_000_M',
	'MP_FAKE_DS_000_M',
	'MP_FAKE_Vap_000_M',
	'MP_FAKE_DIS_000_M',
	'MP_FAKE_DIS_001_M',
	'MP_LUXE_DIX_000_M',
	'MP_LUXE_DIX_001_M',
	'MP_LUXE_DIX_002_M',
	'MP_LUXE_SN_000_M',
	'MP_LUXE_SN_001_M',
	'MP_LUXE_SN_002_M',
	'MP_LUXE_SN_003_M',
	'MP_LUXE_SN_004_M',
	'MP_LUXE_SN_005_M',
	'MP_LUXE_SN_006_M',
	'MP_LUXE_SN_007_M',
	'MP_FILM_000_M',
	'MP_FILM_001_M',
	'MP_FILM_002_M',
	'MP_FILM_003_M',
	'MP_FILM_004_M',
	'MP_FILM_005_M',
	'MP_FILM_006_M',
	'MP_FILM_007_M',
	'MP_FILM_008_M',
	'MP_FILM_009_M',
	'MP_LUXE_LC_004_F',
	'MP_LUXE_LC_005_F',
	'MP_LUXE_LC_010_F',
	'MP_LUXE_LC_011_F',
	'MP_LUXE_Enema_000_F',
	'MP_LUXE_Per_001_F',
	'MP_FAKE_LB_000_F',
	'MP_FAKE_LC_000_F',
	'MP_FAKE_ENEMA_000_F',
	'MP_FAKE_Per_000_F',
	'MP_FAKE_SN_000_F',
	'MP_FAKE_SC_000_F',
	'MP_FAKE_DS_000_F',
	'MP_FAKE_Vap_000_F',
	'MP_FAKE_DIS_000_F',
	'MP_FAKE_DIS_001_F',
	'MP_LUXE_DIX_000_F',
	'MP_LUXE_DIX_001_F',
	'MP_LUXE_DIX_002_F',
	'MP_LUXE_SN_000_F',
	'MP_LUXE_SN_001_F',
	'MP_LUXE_SN_002_F',
	'MP_LUXE_SN_003_F',
	'MP_LUXE_SN_004_F',
	'MP_LUXE_SN_005_F',
	'MP_LUXE_SN_006_F',
	'MP_LUXE_SN_007_F',
	'MP_LUXE_SC_000_F',
	'MP_FILM_000_F',
	'MP_FILM_001_F',
	'MP_FILM_002_F',
	'MP_FILM_003_F',
	'MP_FILM_004_F',
	'MP_FILM_005_F',
	'MP_FILM_006_F',
	'MP_FILM_007_F',
	'MP_FILM_008_F',
	'MP_FILM_009_F',
	'MP_LUXE_TAT_000_M',
	'MP_LUXE_TAT_001_M',
	'MP_LUXE_TAT_003_M',
	'MP_LUXE_TAT_004_M',
	'MP_LUXE_TAT_006_M',
	'MP_LUXE_TAT_007_M',
	'MP_LUXE_TAT_008_M',
	'MP_LUXE_TAT_009_M',
	'MP_LUXE_TAT_013_M',
	'MP_LUXE_TAT_014_M',
	'MP_LUXE_TAT_015_M',
	'MP_LUXE_TAT_019_M',
	'MP_LUXE_TAT_020_M',
	'MP_LUXE_TAT_021_M',
	'MP_LUXE_TAT_024_M',
	'MP_LUXE_TAT_000_F',
	'MP_LUXE_TAT_001_F',
	'MP_LUXE_TAT_003_F',
	'MP_LUXE_TAT_004_F',
	'MP_LUXE_TAT_006_F',
	'MP_LUXE_TAT_007_F',
	'MP_LUXE_TAT_008_F',
	'MP_LUXE_TAT_009_F',
	'MP_LUXE_TAT_013_F',
	'MP_LUXE_TAT_014_F',
	'MP_LUXE_TAT_015_F',
	'MP_LUXE_TAT_019_F',
	'MP_LUXE_TAT_020_F',
	'MP_LUXE_TAT_021_F',
	'MP_LUXE_TAT_024_F',
}

local a6 = { -- mpluxe2_overlays
	'MP_LUXE_LC_000_M',
	'MP_LUXE_LC_001_M',
	'MP_LUXE_LC_002_M',
	'MP_LUXE_LC_003_M',
	'MP_LUXE_LC_006_M',
	'MP_LUXE_LC_007_M',
	'MP_LUXE_LC_008_M',
	'MP_LUXE_LC_009_M',
	'MP_LUXE_LC_012_M',
	'MP_LUXE_LC_013_M',
	'MP_LUXE_LC_014_M',
	'MP_LUXE_LC_015_M',
	'MP_LUXE_VDG_000_M',
	'MP_LUXE_VDG_001_M',
	'MP_LUXE_VDG_002_M',
	'MP_LUXE_VDG_004_M',
	'MP_LUXE_VDG_005_M',
	'MP_LUXE_VDG_006_M',
	'MP_LUXE_LC_000_F',
	'MP_LUXE_LC_001_F',
	'MP_LUXE_LC_002_F',
	'MP_LUXE_LC_003_F',
	'MP_LUXE_LC_006_F',
	'MP_LUXE_LC_007_F',
	'MP_LUXE_LC_008_F',
	'MP_LUXE_LC_009_F',
	'MP_LUXE_LC_012_F',
	'MP_LUXE_LC_013_F',
	'MP_LUXE_LC_014_F',
	'MP_LUXE_LC_015_F',
	'MP_LUXE_VDG_000_F',
	'MP_LUXE_VDG_001_F',
	'MP_LUXE_VDG_002_F',
	'MP_LUXE_VDG_004_F',
	'MP_LUXE_VDG_005_F',
	'MP_LUXE_VDG_006_F',
	'MP_LUXE_TAT_002_M',
	'MP_LUXE_TAT_005_M',
	'MP_LUXE_TAT_010_M',
	'MP_LUXE_TAT_011_M',
	'MP_LUXE_TAT_012_M',
	'MP_LUXE_TAT_016_M',
	'MP_LUXE_TAT_017_M',
	'MP_LUXE_TAT_018_M',
	'MP_LUXE_TAT_022_M',
	'MP_LUXE_TAT_023_M',
	'MP_LUXE_TAT_025_M',
	'MP_LUXE_TAT_026_M',
	'MP_LUXE_TAT_027_M',
	'MP_LUXE_TAT_028_M',
	'MP_LUXE_TAT_029_M',
	'MP_LUXE_TAT_030_M',
	'MP_LUXE_TAT_031_M',
	'MP_LUXE_TAT_002_F',
	'MP_LUXE_TAT_005_F',
	'MP_LUXE_TAT_010_F',
	'MP_LUXE_TAT_011_F',
	'MP_LUXE_TAT_012_F',
	'MP_LUXE_TAT_016_F',
	'MP_LUXE_TAT_017_F',
	'MP_LUXE_TAT_018_F',
	'MP_LUXE_TAT_022_F',
	'MP_LUXE_TAT_023_F',
	'MP_LUXE_TAT_025_F',
	'MP_LUXE_TAT_026_F',
	'MP_LUXE_TAT_027_F',
	'MP_LUXE_TAT_028_F',
	'MP_LUXE_TAT_029_F',
	'MP_LUXE_TAT_030_F',
	'MP_LUXE_TAT_031_F',
}

local a7 = { -- mpstunt_overlays
	'MP_MP_Stunt_Tat_000_M',
	'MP_MP_Stunt_tat_001_M',
	'MP_MP_Stunt_tat_002_M',
	'MP_MP_Stunt_tat_003_M',
	'MP_MP_Stunt_tat_004_M',
	'MP_MP_Stunt_tat_005_M',
	'MP_MP_Stunt_tat_006_M',
	'MP_MP_Stunt_tat_007_M',
	'MP_MP_Stunt_tat_008_M',
	'MP_MP_Stunt_tat_009_M',
	'MP_MP_Stunt_tat_010_M',
	'MP_MP_Stunt_tat_011_M',
	'MP_MP_Stunt_tat_012_M',
	'MP_MP_Stunt_tat_013_M',
	'MP_MP_Stunt_tat_014_M',
	'MP_MP_Stunt_tat_015_M',
	'MP_MP_Stunt_tat_016_M',
	'MP_MP_Stunt_tat_017_M',
	'MP_MP_Stunt_tat_018_M',
	'MP_MP_Stunt_tat_019_M',
	'MP_MP_Stunt_tat_020_M',
	'MP_MP_Stunt_tat_021_M',
	'MP_MP_Stunt_tat_022_M',
	'MP_MP_Stunt_tat_023_M',
	'MP_MP_Stunt_tat_024_M',
	'MP_MP_Stunt_tat_025_M',
	'MP_MP_Stunt_tat_026_M',
	'MP_MP_Stunt_tat_027_M',
	'MP_MP_Stunt_tat_028_M',
	'MP_MP_Stunt_tat_029_M',
	'MP_MP_Stunt_tat_030_M',
	'MP_MP_Stunt_tat_031_M',
	'MP_MP_Stunt_tat_032_M',
	'MP_MP_Stunt_tat_033_M',
	'MP_MP_Stunt_tat_034_M',
	'MP_MP_Stunt_tat_035_M',
	'MP_MP_Stunt_tat_036_M',
	'MP_MP_Stunt_tat_037_M',
	'MP_MP_Stunt_tat_038_M',
	'MP_MP_Stunt_tat_039_M',
	'MP_MP_Stunt_tat_040_M',
	'MP_MP_Stunt_tat_041_M',
	'MP_MP_Stunt_tat_042_M',
	'MP_MP_Stunt_tat_043_M',
	'MP_MP_Stunt_tat_044_M',
	'MP_MP_Stunt_tat_045_M',
	'MP_MP_Stunt_tat_046_M',
	'MP_MP_Stunt_tat_047_M',
	'MP_MP_Stunt_tat_048_M',
	'MP_MP_Stunt_tat_049_M',
	'MP_MP_Stunt_Tat_000_F',
	'MP_MP_Stunt_tat_001_F',
	'MP_MP_Stunt_tat_002_F',
	'MP_MP_Stunt_tat_003_F',
	'MP_MP_Stunt_tat_004_F',
	'MP_MP_Stunt_tat_005_F',
	'MP_MP_Stunt_tat_006_F',
	'MP_MP_Stunt_tat_007_F',
	'MP_MP_Stunt_tat_008_F',
	'MP_MP_Stunt_tat_009_F',
	'MP_MP_Stunt_tat_010_F',
	'MP_MP_Stunt_tat_011_F',
	'MP_MP_Stunt_tat_012_F',
	'MP_MP_Stunt_tat_013_F',
	'MP_MP_Stunt_tat_014_F',
	'MP_MP_Stunt_tat_015_F',
	'MP_MP_Stunt_tat_016_F',
	'MP_MP_Stunt_tat_017_F',
	'MP_MP_Stunt_tat_018_F',
	'MP_MP_Stunt_tat_019_F',
	'MP_MP_Stunt_tat_020_F',
	'MP_MP_Stunt_tat_021_F',
	'MP_MP_Stunt_tat_022_F',
	'MP_MP_Stunt_tat_023_F',
	'MP_MP_Stunt_tat_024_F',
	'MP_MP_Stunt_tat_025_F',
	'MP_MP_Stunt_tat_026_F',
	'MP_MP_Stunt_tat_027_F',
	'MP_MP_Stunt_tat_028_F',
	'MP_MP_Stunt_tat_029_F',
	'MP_MP_Stunt_tat_030_F',
	'MP_MP_Stunt_tat_031_F',
	'MP_MP_Stunt_tat_032_F',
	'MP_MP_Stunt_tat_033_F',
	'MP_MP_Stunt_tat_034_F',
	'MP_MP_Stunt_tat_035_F',
	'MP_MP_Stunt_tat_036_F',
	'MP_MP_Stunt_tat_037_F',
	'MP_MP_Stunt_tat_038_F',
	'MP_MP_Stunt_tat_039_F',
	'MP_MP_Stunt_tat_040_F',
	'MP_MP_Stunt_tat_041_F',
	'MP_MP_Stunt_tat_042_F',
	'MP_MP_Stunt_tat_043_F',
	'MP_MP_Stunt_tat_044_F',
	'MP_MP_Stunt_tat_045_F',
	'MP_MP_Stunt_tat_046_F',
	'MP_MP_Stunt_tat_047_F',
	'MP_MP_Stunt_tat_048_F',
	'MP_MP_Stunt_tat_049_F',
}

local a8 = { -- mpbiker_overlays
	'MP_Biker_Award_000_M',
	'MP_Biker_Award_000_F',
	'MP_Biker_Award_001_M',
	'MP_Biker_Award_001_F',
	'MP_Biker_Hair_000_M',
	'MP_Biker_Hair_000_F',
	'MP_Biker_Hair_001_M',
	'MP_Biker_Hair_001_F',
	'MP_Biker_Hair_002_M',
	'MP_Biker_Hair_002_F',
	'MP_Biker_Hair_003_M',
	'MP_Biker_Hair_003_F',
	'MP_Biker_Hair_004_M',
	'MP_Biker_Hair_004_F',
	'MP_Biker_Hair_005_M',
	'MP_Biker_Hair_005_F',
	'MP_Biker_Hair_006_M',
	'MP_Biker_Hair_006_F',
	'MP_Biker_Rank_000_M',
	'MP_Biker_Rank_000_F',
	'MP_Biker_Rank_001_M',
	'MP_Biker_Rank_001_F',
	'MP_Biker_Rank_002_M',
	'MP_Biker_Rank_002_F',
	'MP_Biker_Rank_003_M',
	'MP_Biker_Rank_003_F',
	'MP_Biker_Rank_004_M',
	'MP_Biker_Rank_004_F',
	'MP_Biker_Rank_005_M',
	'MP_Biker_Rank_005_F',
	'MP_Biker_Rank_006_M',
	'MP_Biker_Rank_006_F',
	'MP_Biker_Rank_007_M',
	'MP_Biker_Rank_007_F',
	'MP_Biker_Rank_008_M',
	'MP_Biker_Rank_008_F',
	'MP_Biker_Rank_009_M',
	'MP_Biker_Rank_009_F',
	'MP_Biker_Rank_010_M',
	'MP_Biker_Rank_010_F',
	'MP_Biker_Rank_011_M',
	'MP_Biker_Rank_011_F',
	'MP_Biker_Rank_012_M',
	'MP_Biker_Rank_012_F',
	'MP_Biker_Rank_013_M',
	'MP_Biker_Rank_013_F',
	'MP_Biker_Rank_014_M',
	'MP_Biker_Rank_014_F',
	'MP_Biker_Rank_015_M',
	'MP_Biker_Rank_015_F',
	'MP_Biker_Rank_016_M',
	'MP_Biker_Rank_016_F',
	'MP_Biker_Rank_017_M',
	'MP_Biker_Rank_017_F',
	'MP_MP_Biker_Tat_000_M',
	'MP_MP_Biker_Tat_000_F',
	'MP_MP_Biker_Tat_001_M',
	'MP_MP_Biker_Tat_001_F',
	'MP_MP_Biker_Tat_002_M',
	'MP_MP_Biker_Tat_002_F',
	'MP_MP_Biker_Tat_003_M',
	'MP_MP_Biker_Tat_003_F',
	'MP_MP_Biker_Tat_004_M',
	'MP_MP_Biker_Tat_004_F',
	'MP_MP_Biker_Tat_005_M',
	'MP_MP_Biker_Tat_005_F',
	'MP_MP_Biker_Tat_006_M',
	'MP_MP_Biker_Tat_006_F',
	'MP_MP_Biker_Tat_007_M',
	'MP_MP_Biker_Tat_007_F',
	'MP_MP_Biker_Tat_008_M',
	'MP_MP_Biker_Tat_008_F',
	'MP_MP_Biker_Tat_009_M',
	'MP_MP_Biker_Tat_009_F',
	'MP_MP_Biker_Tat_010_M',
	'MP_MP_Biker_Tat_010_F',
	'MP_MP_Biker_Tat_011_M',
	'MP_MP_Biker_Tat_011_F',
	'MP_MP_Biker_Tat_012_M',
	'MP_MP_Biker_Tat_012_F',
	'MP_MP_Biker_Tat_013_M',
	'MP_MP_Biker_Tat_013_F',
	'MP_MP_Biker_Tat_014_M',
	'MP_MP_Biker_Tat_014_F',
	'MP_MP_Biker_Tat_015_M',
	'MP_MP_Biker_Tat_015_F',
	'MP_MP_Biker_Tat_016_M',
	'MP_MP_Biker_Tat_016_F',
	'MP_MP_Biker_Tat_017_M',
	'MP_MP_Biker_Tat_017_F',
	'MP_MP_Biker_Tat_018_M',
	'MP_MP_Biker_Tat_018_F',
	'MP_MP_Biker_Tat_019_M',
	'MP_MP_Biker_Tat_019_F',
	'MP_MP_Biker_Tat_020_M',
	'MP_MP_Biker_Tat_020_F',
	'MP_MP_Biker_Tat_021_M',
	'MP_MP_Biker_Tat_021_F',
	'MP_MP_Biker_Tat_022_M',
	'MP_MP_Biker_Tat_022_F',
	'MP_MP_Biker_Tat_023_M',
	'MP_MP_Biker_Tat_023_F',
	'MP_MP_Biker_Tat_024_M',
	'MP_MP_Biker_Tat_024_F',
	'MP_MP_Biker_Tat_025_M',
	'MP_MP_Biker_Tat_025_F',
	'MP_MP_Biker_Tat_026_M',
	'MP_MP_Biker_Tat_026_F',
	'MP_MP_Biker_Tat_027_M',
	'MP_MP_Biker_Tat_027_F',
	'MP_MP_Biker_Tat_028_M',
	'MP_MP_Biker_Tat_028_F',
	'MP_MP_Biker_Tat_029_M',
	'MP_MP_Biker_Tat_029_F',
	'MP_MP_Biker_Tat_030_M',
	'MP_MP_Biker_Tat_030_F',
	'MP_MP_Biker_Tat_031_M',
	'MP_MP_Biker_Tat_031_F',
	'MP_MP_Biker_Tat_032_M',
	'MP_MP_Biker_Tat_032_F',
	'MP_MP_Biker_Tat_033_M',
	'MP_MP_Biker_Tat_033_F',
	'MP_MP_Biker_Tat_034_M',
	'MP_MP_Biker_Tat_034_F',
	'MP_MP_Biker_Tat_035_M',
	'MP_MP_Biker_Tat_035_F',
	'MP_MP_Biker_Tat_036_M',
	'MP_MP_Biker_Tat_036_F',
	'MP_MP_Biker_Tat_037_M',
	'MP_MP_Biker_Tat_037_F',
	'MP_MP_Biker_Tat_038_M',
	'MP_MP_Biker_Tat_038_F',
	'MP_MP_Biker_Tat_039_M',
	'MP_MP_Biker_Tat_039_F',
	'MP_MP_Biker_Tat_040_M',
	'MP_MP_Biker_Tat_040_F',
	'MP_MP_Biker_Tat_041_M',
	'MP_MP_Biker_Tat_041_F',
	'MP_MP_Biker_Tat_042_M',
	'MP_MP_Biker_Tat_042_F',
	'MP_MP_Biker_Tat_043_M',
	'MP_MP_Biker_Tat_043_F',
	'MP_MP_Biker_Tat_044_M',
	'MP_MP_Biker_Tat_044_F',
	'MP_MP_Biker_Tat_045_M',
	'MP_MP_Biker_Tat_045_F',
	'MP_MP_Biker_Tat_046_M',
	'MP_MP_Biker_Tat_046_F',
	'MP_MP_Biker_Tat_047_M',
	'MP_MP_Biker_Tat_047_F',
	'MP_MP_Biker_Tat_048_M',
	'MP_MP_Biker_Tat_048_F',
	'MP_MP_Biker_Tat_049_M',
	'MP_MP_Biker_Tat_049_F',
	'MP_MP_Biker_Tat_050_M',
	'MP_MP_Biker_Tat_050_F',
	'MP_MP_Biker_Tat_051_M',
	'MP_MP_Biker_Tat_051_F',
	'MP_MP_Biker_Tat_052_M',
	'MP_MP_Biker_Tat_052_F',
	'MP_MP_Biker_Tat_053_M',
	'MP_MP_Biker_Tat_053_F',
	'MP_MP_Biker_Tat_054_M',
	'MP_MP_Biker_Tat_054_F',
	'MP_MP_Biker_Tat_055_M',
	'MP_MP_Biker_Tat_055_F',
	'MP_MP_Biker_Tat_056_M',
	'MP_MP_Biker_Tat_056_F',
	'MP_MP_Biker_Tat_057_M',
	'MP_MP_Biker_Tat_057_F',
	'MP_MP_Biker_Tat_058_M',
	'MP_MP_Biker_Tat_058_F',
	'MP_MP_Biker_Tat_059_M',
	'MP_MP_Biker_Tat_059_F',
	'MP_MP_Biker_Tat_060_M',
	'MP_MP_Biker_Tat_060_F',
	'MP_Biker_Tee_000_M',
	'MP_Biker_Tee_000_F',
	'MP_Biker_Tee_001_M',
	'MP_Biker_Tee_001_F',
	'MP_Biker_Tee_002_M',
	'MP_Biker_Tee_002_F',
	'MP_Biker_Tee_003_M',
	'MP_Biker_Tee_003_F',
	'MP_Biker_Tee_004_M',
	'MP_Biker_Tee_004_F',
	'MP_Biker_Tee_005_M',
	'MP_Biker_Tee_005_F',
	'MP_Biker_Tee_006_M',
	'MP_Biker_Tee_006_F',
	'MP_Biker_Tee_007_M',
	'MP_Biker_Tee_007_F',
	'MP_Biker_Tee_008_M',
	'MP_Biker_Tee_008_F',
	'MP_Biker_Tee_009_M',
	'MP_Biker_Tee_009_F',
	'MP_Biker_Tee_010_M',
	'MP_Biker_Tee_010_F',
	'MP_Biker_Tee_011_M',
	'MP_Biker_Tee_011_F',
	'MP_Biker_Tee_012_M',
	'MP_Biker_Tee_012_F',
	'MP_Biker_Tee_013_M',
	'MP_Biker_Tee_013_F',
	'MP_Biker_Tee_014_M',
	'MP_Biker_Tee_014_F',
	'MP_Biker_Tee_015_M',
	'MP_Biker_Tee_015_F',
	'MP_Biker_Tee_016_M',
	'MP_Biker_Tee_016_F',
	'MP_Biker_Tee_017_M',
	'MP_Biker_Tee_017_F',
	'MP_Biker_Tee_018_M',
	'MP_Biker_Tee_018_F',
	'MP_Biker_Tee_019_M',
	'MP_Biker_Tee_019_F',
	'MP_Biker_Tee_020_M',
	'MP_Biker_Tee_020_F',
	'MP_Biker_Tee_021_M',
	'MP_Biker_Tee_021_F',
	'MP_Biker_Tee_022_M',
	'MP_Biker_Tee_022_F',
	'MP_Biker_Tee_023_M',
	'MP_Biker_Tee_023_F',
	'MP_Biker_Tee_024_M',
	'MP_Biker_Tee_024_F',
	'MP_Biker_Tee_025_M',
	'MP_Biker_Tee_025_F',
	'MP_Biker_Tee_026_M',
	'MP_Biker_Tee_026_F',
	'MP_Biker_Tee_027_M',
	'MP_Biker_Tee_027_F',
	'MP_Biker_Tee_028_M',
	'MP_Biker_Tee_028_F',
	'MP_Biker_Tee_029_M',
	'MP_Biker_Tee_029_F',
	'MP_Biker_Tee_030_M',
	'MP_Biker_Tee_030_F',
	'MP_Biker_Tee_031_M',
	'MP_Biker_Tee_031_F',
	'MP_Biker_Tee_032_M',
	'MP_Biker_Tee_032_F',
	'MP_Biker_Tee_033_M',
	'MP_Biker_Tee_033_F',
	'MP_Biker_Tee_034_M',
	'MP_Biker_Tee_034_F',
	'MP_Biker_Tee_035_M',
	'MP_Biker_Tee_035_F',
	'MP_Biker_Tee_036_M',
	'MP_Biker_Tee_036_F',
	'MP_Biker_Tee_037_M',
	'MP_Biker_Tee_037_F',
	'MP_Biker_Tee_038_M',
	'MP_Biker_Tee_038_F',
	'MP_Biker_Tee_039_M',
	'MP_Biker_Tee_039_F',
	'MP_Biker_Tee_040_M',
	'MP_Biker_Tee_040_F',
	'MP_Biker_Tee_041_M',
	'MP_Biker_Tee_041_F',
	'MP_Biker_Tee_042_M',
	'MP_Biker_Tee_042_F',
	'MP_Biker_Tee_043_M',
	'MP_Biker_Tee_043_F',
	'MP_Biker_Tee_044_M',
	'MP_Biker_Tee_044_F',
	'MP_Biker_Tee_045_M',
	'MP_Biker_Tee_045_F',
	'MP_Biker_Tee_046_M',
	'MP_Biker_Tee_046_F',
	'MP_Biker_Tee_047_M',
	'MP_Biker_Tee_047_F',
	'MP_Biker_Tee_048_M',
	'MP_Biker_Tee_048_F',
	'MP_Biker_Tee_049_M',
	'MP_Biker_Tee_049_F',
	'MP_Biker_Tee_050_M',
	'MP_Biker_Tee_050_F',
	'MP_Biker_Tee_051_M',
	'MP_Biker_Tee_051_F',
	'MP_Biker_Tee_052_M',
	'MP_Biker_Tee_052_F',
	'MP_Biker_Tee_053_M',
	'MP_Biker_Tee_053_F',
	'MP_Biker_Tee_054_M',
	'MP_Biker_Tee_054_F',
	'MP_Biker_Tee_055_M',
	'MP_Biker_Tee_055_F',
}

local a9 = { -- mpchristmas2_overlays
	'MP_Xmas2_M_Tat_000',
	'MP_Xmas2_M_Tat_001',
	'MP_Xmas2_M_Tat_002',
	'MP_Xmas2_M_Tat_003',
	'MP_Xmas2_M_Tat_004',
	'MP_Xmas2_M_Tat_005',
	'MP_Xmas2_M_Tat_006',
	'MP_Xmas2_M_Tat_007',
	'MP_Xmas2_M_Tat_008',
	'MP_Xmas2_M_Tat_009',
	'MP_Xmas2_M_Tat_010',
	'MP_Xmas2_M_Tat_011',
	'MP_Xmas2_M_Tat_012',
	'MP_Xmas2_M_Tat_013',
	'MP_Xmas2_M_Tat_014',
	'MP_Xmas2_M_Tat_015',
	'MP_Xmas2_M_Tat_016',
	'MP_Xmas2_M_Tat_017',
	'MP_Xmas2_M_Tat_018',
	'MP_Xmas2_M_Tat_019',
	'MP_Xmas2_M_Tat_020',
	'MP_Xmas2_M_Tat_021',
	'MP_Xmas2_M_Tat_022',
	'MP_Xmas2_M_Tat_023',
	'MP_Xmas2_M_Tat_024',
	'MP_Xmas2_M_Tat_025',
	'MP_Xmas2_M_Tat_026',
	'MP_Xmas2_M_Tat_027',
	'MP_Xmas2_M_Tat_028',
	'MP_Xmas2_M_Tat_029',
	'MP_Xmas2_F_Tat_000',
	'MP_Xmas2_F_Tat_001',
	'MP_Xmas2_F_Tat_002',
	'MP_Xmas2_F_Tat_003',
	'MP_Xmas2_F_Tat_004',
	'MP_Xmas2_F_Tat_005',
	'MP_Xmas2_F_Tat_006',
	'MP_Xmas2_F_Tat_007',
	'MP_Xmas2_F_Tat_008',
	'MP_Xmas2_F_Tat_009',
	'MP_Xmas2_F_Tat_010',
	'MP_Xmas2_F_Tat_011',
	'MP_Xmas2_F_Tat_012',
	'MP_Xmas2_F_Tat_013',
	'MP_Xmas2_F_Tat_014',
	'MP_Xmas2_F_Tat_015',
	'MP_Xmas2_F_Tat_016',
	'MP_Xmas2_F_Tat_017',
	'MP_Xmas2_F_Tat_018',
	'MP_Xmas2_F_Tat_019',
	'MP_Xmas2_F_Tat_020',
	'MP_Xmas2_F_Tat_021',
	'MP_Xmas2_F_Tat_022',
	'MP_Xmas2_F_Tat_023',
	'MP_Xmas2_F_Tat_024',
	'MP_Xmas2_F_Tat_025',
	'MP_Xmas2_F_Tat_026',
	'MP_Xmas2_F_Tat_027',
	'MP_Xmas2_F_Tat_028',
	'MP_Xmas2_F_Tat_029',
}

local a10 = { -- mpbusiness_overlays
	'MP_Buis_M_Neck_000',
	'MP_Buis_M_Neck_001',
	'MP_Buis_M_Neck_002',
	'MP_Buis_M_Neck_003',
	'MP_Buis_M_LeftArm_000',
	'MP_Buis_M_LeftArm_001',
	'MP_Buis_M_RightArm_000',
	'MP_Buis_M_RightArm_001',
	'MP_Buis_M_Stomach_000',
	'MP_Buis_M_Chest_000',
	'MP_Buis_M_Chest_001',
	'MP_Buis_M_Back_000',
	'MP_Buis_F_Chest_000',
	'MP_Buis_F_Chest_001',
	'MP_Buis_F_Chest_002',
	'MP_Buis_F_Stom_000',
	'MP_Buis_F_Stom_001',
	'MP_Buis_F_Stom_002',
	'MP_Buis_F_Back_000',
	'MP_Buis_F_Back_001',
	'MP_Buis_F_Neck_000',
	'MP_Buis_F_Neck_001',
	'MP_Buis_F_RArm_000',
	'MP_Buis_F_LArm_000',
	'MP_Buis_F_LLeg_000',
	'MP_Buis_F_RLeg_000',
	'MP_Male_Crew_Tat_000',
	'MP_Male_Crew_Tat_001',
	'MP_Female_Crew_Tat_000',
	'MP_Female_Crew_Tat_001',
	'FM_Bus_F_Hair_a',
	'FM_Bus_F_Hair_b',
	'FM_Bus_F_Hair_c',
	'FM_Bus_F_Hair_d',
	'FM_Bus_F_Hair_e',
	'FM_Bus_M_Hair_000_a',
	'FM_Bus_M_Hair_000_b',
	'FM_Bus_M_Hair_000_c',
	'FM_Bus_M_Hair_000_d',
	'FM_Bus_M_Hair_000_e',
	'FM_Bus_M_Hair_001_a',
	'FM_Bus_M_Hair_001_b',
	'FM_Bus_M_Hair_001_c',
	'FM_Bus_M_Hair_001_d',
	'FM_Bus_M_Hair_001_e',
}

function list.tick()
	
	if(SYSTEM.TIMERB() > 120 and list_render) then
		if(get_key_pressed(Keys.Up)) then				-- Up
			if(cur_item == #a) then cur_item = 1 else cur_item = cur_item + 1 end
			setTatto()
			
			-- if(cur_item == 71) then cur_item = 1 else cur_item = cur_item + 1 end
			-- setHeadOverlay()
			
			SYSTEM.SETTIMERB(0)
		end
		
		if(get_key_pressed(Keys.Down)) then				-- Down
			if(cur_item == 1) then cur_item = #a else cur_item = cur_item - 1 end
			setTatto()
			
			-- if(cur_item == 1) then cur_item = 71 else cur_item = cur_item - 1 end
			-- setHeadOverlay()
			
			SYSTEM.SETTIMERB(0)
		end
	end
	
	if(get_key_pressed(Keys.Z)) then
		-- if(list_render) then list_render = false else list_render = true end
		wait(200)
	end
	
	if(get_key_pressed(Keys.H)) then
		-- execute(0xA001)
		
		wait(200)
	end
	
	render()

end

function setTatto()
	PED.CLEAR_PED_DECORATIONS(player())
	PED._0x5F5D1665E352A839(player(), GAMEPLAY.GET_HASH_KEY('facial_overlays'), GAMEPLAY.GET_HASH_KEY(a[cur_item]))
end

function setHeadOverlay()
	PED.SET_PED_HEAD_OVERLAY(player(), 4, cur_item, 1.0)
end

function render()

	if(list_render) then
	
		CONTROLS.DISABLE_CONTROL_ACTION(2, 27, true) -- INPUT_PHONE (Up)
		
		-- Head
		GRAPHICS.DRAW_RECT(0.07, 0.019, 2.0, 0.038, 0, 0, 0, 200)
		drawText("("..cur_item.." of "..#a..") "..a[cur_item], 0, 0.32, 0.006, 0.0055, false) -- list
		-- drawText("("..cur_item.." of 71) ", 0, 0.32, 0.006, 0.0055, false) -- head_overlay
	
	end

end

return list
