/*
    File: fn_vehicleColorCfg.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Master configuration for vehicle colors.
*/
    private["_vehicle","_ret","_path"];
    _vehicle = [_this,0,"",[""]] call BIS_fnc_param;
    if(_vehicle == "") exitWith {[]};
    _ret = [];
     
    switch (_vehicle) do
    {
            // Quad
            case "B_Quadbike_01_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
                            ["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
                            ["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
                            ["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
                            ["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
                            ["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
                            ["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
                            ["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
                    ];
            };
            // Offroader
            case "C_Offroad_01_F":
            {
                    _ret =
                    [
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa","civ"],
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa","civ"],
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa","civ"],
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
                            ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
                            ["textures\cop\cop_offroad.jpg","cop"],
                            ["textures\medic\medic_offroad.jpg","med"],
                            ["\A3\soft_f_gamma\Offroad_01\Data\offroad_01_ext_ig01_co.paa","reb"],                            
                            ["textures\civ\civ_offroad_gruen.jpg","civ"],
                            ["textures\rebel\rebel_offroad.jpg","reb"],
                            
							
							
							["#(argb,8,8,3)color(0.1,0,0.1,1)","donator2"],
							["#(argb,8,8,3)color(0,0.1,0.3,1)","donator2"],
							["#(argb,8,8,3)color(0.5,0,0,1)","donator2"],
							["#(argb,8,8,3)color(0.3,0.3,0,1)","donator2"],
							["textures\civ\civ_offroad_dodge.jpg","donator2"],
							["#(argb,8,8,3)color(0.2,0,0.2,1)","donator2"],
							["textures\civ\civ_offroad_dodge.jpg","donator3"],
							["#(argb,8,8,3)color(0.2,0,0.2,1)","donator3"],
							["textures\civ\offroad_Rockstar.jpg","donator3"],
                            ["textures\civ\civ_offroad_pun.jpg","donator3"],
                            ["textures\civ\civ_offroad_9d.jpg","donator3"]
																				
							
                    ];
            };
            // Hatchback
            case "C_Hatchback_01_F":
            {
                    _ret =
                    [
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
                            ["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
                            ["textures\cop\cop_hatchback.jpg","cop"],
							["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa","donator2"],
							["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa","donator2"],
							["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa","donator2"]							
                    ];
            };
            // Hatchback Sport
            case "C_Hatchback_01_sport_F":
            {
                    _path = "\a3\soft_f_gamma\Hatchback_01\data\";
                    _ret =
                    [
                            [_path + "hatchback_01_ext_sport01_co.paa","civ"],
                            [_path + "hatchback_01_ext_sport02_co.paa","civ"],
                            [_path + "hatchback_01_ext_sport03_co.paa","civ"],
                            [_path + "hatchback_01_ext_sport04_co.paa","civ"],
                            [_path + "hatchback_01_ext_sport05_co.paa","civ"],
                            [_path + "hatchback_01_ext_sport06_co.paa","civ"],
                            ["textures\cop\cop_hatchback.jpg","cop"],
							["textures\medic\medic_hatchback.jpg","med"]
                    ];
            };     
            // SUV
			case "C_SUV_01_F":
			{
					_ret =
					[
					  		["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
							["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
							["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
							["textures\cop\cop_suv.jpg","cop"],
							["textures\medic\medic_suv.jpg","med"],
							["textures\civ\civ_suv_blau.jpg","civ"],
							["textures\civ\civ_suv_gruen.jpg","civ"],
							["textures\rebel\rebel_suv.jpg","reb"],
							["textures\civ\civ_suv_dunkelgruen.jpg","civ"],
							["textures\civ\civ_suv_monster.jpg","donator2"],	
							["textures\civ\civ_suv_monster.jpg","donator3"],
							["textures\civ\civ_suv_ferrari.jpg","donator3"],
							["textures\civ\civ_suv_donuts.jpg","donator3"],
                  		    ["textures\civ\civ_suv_acid.jpg","donator3"],
							["textures\civ\civ_suv_camo.paa","donator3"],
						    ["textures\civ\civ_suv_marihuana.jpg","donator3"],           
                            ["textures\civ\civ_suv_sticker.jpg","donator3"],
                            ["textures\civ\civ_suv_taxi.jpg","civ"],
                            ["textures\civ\civ_suv_kla.jpg","civ"],
                            ["textures\civ\civ_suv_lek.jpg","donator3"],
							["textures\civ\civ_suv_tron.jpg","civ"],
                            ["textures\civ\civ_suv_skull.jpg","donator3"]
    			];
			};
            // Truck
            case "C_Van_01_transport_F":
            {
                    _ret =
                    [
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
                    ];
            };
            // Truck Box
            case "C_Van_01_box_F":
            {
                    _ret =
                    [
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
                    ];
            };
            // Truck Fuel
            case "C_Van_01_fuel_F":
            {
                    _ret =
                    [
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
                            ["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
                    ];
            };
            // Zamak
            case "I_Truck_02_covered_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
							["textures\civ\civ_zamak_redbull_0.jpg","donator2","textures\civ\civ_zamak_redbull_1.jpg"],
                            ["textures\civ\civ_zamak_redbull_0.jpg","donator3","textures\civ\civ_zamak_redbull_1.jpg"] 
							
                    ];
            };
            // Zamak
            case "I_Truck_02_transport_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
                            ["textures\civ\civ_zamak_redbull_0.jpg","donator2","textures\civ\civ_zamak_redbull_1.jpg"],
                            ["textures\civ\civ_zamak_redbull_0.jpg","donator3","textures\civ\civ_zamak_redbull_1.jpg"]
                    ];
            };
            // HEMTT
            case "B_Truck_01_box_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa"]
                    ];
            };
            // HEMTT
            case "B_Truck_01_covered_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa"]
                    ];
            };
            // HEMTT
            case "B_Truck_01_transport_F":
            {
                    _ret =
                    [
                            ["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa"]
                    ];
            };     
            // HEMTT
            case "B_Truck_01_ammo_F":
            {
                    _ret =
                    [];
            };
			// HEMTT
            case "B_Truck_01_mover_F":
            {
                    _ret =
                    [
                    ];
            };
            // Hummingbird
            case "B_Heli_Light_01_F":
            {
                    _ret =
                    [
                            ["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","reb"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
                            ["textures\cop\cop_hummingbird.jpg","cop"],
                            ["textures\medic\medic_hummingbird.paa","med"],
                            ["textures\civ\civ_hummingbird_redbull.jpg","civ"],
                            ["textures\rebel\rebel_hummingbird.jpg","jpg"],
							["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_graywatcher_co.paa","civ"],
							["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_light_co.paa","civ"],
							["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_shadow_co.paa","civ"],
							["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","civ"],
							["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wasp_co.paa","civ"],
							["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
							["textures\donator\energy_block.paa","donator3"]
                    ];
            };
            // Orca
            case "O_Heli_Light_02_unarmed_F":
            {
                    _ret =
                    [
                            ["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
                            ["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
                            ["textures\cop\cop_orca.jpg","cop"],
                            ["textures\medic\medic_orca.paa","med"],
                            ["textures\rebel\rebel_orca.jpg","reb"]
                    ];
            };
            // Ghosthawk
            case "B_Heli_Transport_01_F":
            {
                    _ret =
                    [
                            ["textures\cop\cop_ghosthawk_0.jpg","cop","textures\cop\cop_ghosthawk_1.jpg"]
                    ];
            };
            // Hellcat
            case "I_Heli_light_03_unarmed_F":
            {
                    _ret =
                    [
                            ["textures\cop\cop_hellcat.jpg","cop"],
							["textures\donator\donator_hellcat.jpg","donator3"]                           
                    ];
            };
            // Mohawk
            case "I_Heli_Transport_02_F":
            {
                    _path = "\a3\air_f_beta\Heli_Transport_02\Data\";
                    _ret =
                    [
                            [_path + "Skins\heli_transport_02_1_ion_co.paa","civ",_path + "Skins\heli_transport_02_2_ion_co.paa",_path + "Skins\heli_transport_02_3_ion_co.paa"],
                            [_path + "Skins\heli_transport_02_1_dahoman_co.paa","civ",_path + "Skins\heli_transport_02_2_dahoman_co.paa",_path + "Skins\heli_transport_02_3_dahoman_co.paa"],
                            [_path + "heli_transport_02_1_indp_co.paa","reb",_path + "heli_transport_02_2_indp_co.paa",_path + "heli_transport_02_3_indp_co.paa"],
							["textures\medic\medic_mohawk_0.jpg","med","textures\medic\medic_mohawk_1.jpg","textures\medic\medic_mohawk_2.jpg"]
                    ];
            };             
            // Hunter
            case "B_MRAP_01_F":
            {
			    _ret =
                [
					["textures\cop\cop_hunter_0.jpg","cop","textures\cop\cop_hunter_1.jpg"],
					["\a3\soft_f\MRAP_01\Data\mrap_01_base_co.paa","donator2","\a3\soft_f\MRAP_01\Data\mrap_01_adds_co.paa"],
					["#(argb,8,8,3)color(0.05,0.05,0.05,1)","donator2"],
					["\a3\soft_f\MRAP_01\Data\mrap_01_base_co.paa","donator3","\a3\soft_f\MRAP_01\Data\mrap_01_adds_co.paa"],
					["#(argb,8,8,3)color(0.05,0.05,0.05,1)","donator3"],
                    ["textures\civ\civ_hunter_9do.jpg","donator3","textures\civ\civ_hunter_9do_2.jpg"],
                    ["textures\civ\civ_hunter_gward.jpg","donator3","textures\civ\civ_hunter_gward_2.jpg"]
				];
            };
            // HunterHMG
            case "B_MRAP_01_hmg_F":
            {
                    _ret =
                    [
                            ["textures\cop\cop_hunter_0.jpg","cop","textures\cop\cop_hunter_1.jpg","textures\cop\cop_hmg.jpg"]
                    ];
            };     
            // Ifrit       
            case "O_MRAP_02_F":
            {
                    _ret =
                    [
                            ["textures\rebel\rebel_ifrit_braun_0.jpg","reb","textures\rebel\rebel_ifrit_braun_1.jpg"],
                            ["textures\rebel\rebel_ifrit_grau_0.jpg","reb","textures\rebel\rebel_ifrit_grau_1.jpg"],
							["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa","reb","\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"],
                            ["textures\rebel\rebel_ifrit_blau_0.jpg","reb","textures\rebel\rebel_ifrit_blau_1.jpg"],
							["textures\rebel\rebel_ifrit_rot_0.jpg","reb","textures\rebel\rebel_ifrit_rot_1.jpg"]
                    ];
            };
            // Strider     
            case "I_MRAP_03_F":
            {
                    _ret =
                    [
							["textures\cop\cop_strider.jpg","cop"]
                    ];
            };
    }; 
_ret;