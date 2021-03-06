/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lumpex Rebelka0"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Poloshirt_burgundy",nil,750],
			["U_C_Poloshirt_salmon",nil,750],
			["U_C_Poloshirt_redwhite",nil,750],
			["U_C_Poloshirt_stripped",nil,750],
			["U_C_Poloshirt_tricolour",nil,750],
			["U_C_Poor_1",nil,750],
			["U_C_WorkerCoveralls",nil,1000],
			["U_OrestesBody",nil,1000],
			["U_C_HunterBody_grn",nil,1000],
			["U_C_Scientist",nil,1500],
			["U_C_Journalist",nil,200],
			["U_C_Driver_1_white",nil,400],
			["U_C_Driver_1_black",nil,400],
			["U_C_Driver_1_blue",nil,400],
			["U_C_Driver_1_green",nil,400],
			["U_C_Driver_1_yellow",nil,400],
			["U_C_Driver_1_orange",nil,400],
			["U_C_Driver_1_red",nil,400],
			["U_C_Driver_1",nil,400],
			["U_C_Driver_2",nil,400],
			["U_C_Driver_3",nil,400],
			["U_C_Driver_4",nil,400],
			["U_I_Wetsuit",nil,400],
			["U_O_Wetsuit",nil,400],
			["U_B_Wetsuit",nil,400],
			["U_IG_leader",nil,400],
			["U_IG_Guerilla1_1",nil,4000],
			["U_I_G_Story_Protagonist_F",nil,4000],
			["U_O_SpecopsUniform_ocamo",nil,4000],
			["U_O_PilotCoveralls",nil,4000],
			["U_B_PilotCoveralls",nil,4000],
			["U_IG_Guerilla3_1",nil,4000],
			["U_IG_Guerilla2_3",nil,4000],
			["U_IG_Guerilla3_2",nil,4000],
			["U_BG_Guerilla1_1",nil,4000],
			["U_BG_Guerilla2_1",nil,4000],
			["U_BG_Guerilla2_2",nil,4000],
			["U_BG_Guerilla2_3",nil,4000],
			["U_BG_Guerilla3_1",nil,4000],
			["U_BG_Guerrilla_6_1",nil,4000],
			["U_BG_leader",nil,4000],
			["U_I_G_resistanceLeader_F",nil,4000],
			["U_I_CombatUniform_shortsleeve",nil,4000],
			["U_I_CombatUniform",nil,4000],
			["U_I_OfficerUniform",nil,4000],
			["U_I_CombatUniform_tshirt",nil,4000],
			["U_O_CombatUniform_ocamo",nil,4000],
			["U_O_CombatUniform_oucamo",nil,4000],
			["U_O_OfficerUniform_ocamo",nil,4000],
			["U_O_Protagonist_VR",nil,4000],
			["U_B_Protagonist_VR",nil,4000],
			["U_I_Protagonist_VR",nil,4000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Cap_blu",nil,2500],
			["H_Cap_grn",nil,2500],
			["H_Cap_oli",nil,2500],
			["H_Cap_red",nil,2500],
			["H_Cap_blk",nil,2500],
			["H_Cap_surfer",nil,2500],
			["H_Cap_press",nil,2500],
			["H_Bandanna_blu",nil,2500],
			["H_Bandanna_sand",nil,2500],
			["H_Bandanna_gry",nil,2500],
			["H_Bandanna_khk",nil,2500],
			["H_Bandanna_surfer",nil,2500],
			["H_Bandanna_surfer_grn",nil,2500],
			["H_Bandanna_surfer_blk",nil,2500],
			["H_Booniehat_khk",nil,2500],
			["H_Booniehat_oli",nil,2500],
			["H_Booniehat_tan",nil,2500],
			["H_Booniehat_mcamo",nil,2500],
			["H_Hat_brown",nil,2500],
			["H_Booniehat_dgtl",nil,2500],
			["H_Booniehat_khk_hs",nil,2500],
			["H_Hat_grey",nil,2500],
			["H_Hat_tan",nil,2500],
			["H_Hat_blue",nil,2500],
			["H_Hat_checker",nil,2500],
			["H_StrawHat",nil,2500],
			["H_StrawHat_dark",nil,2500],
			["H_RacingHelmet_1_white_F",nil,4000],
			["H_RacingHelmet_1_black_F",nil,4000],
			["H_RacingHelmet_1_blue_F",nil,4000],
			["H_RacingHelmet_1_green_F",nil,4000],
			["H_RacingHelmet_1_yellow_F",nil,4000],
			["H_RacingHelmet_1_orange_F",nil,4000],
			["H_RacingHelmet_1_red_F",nil,4000],
			["H_RacingHelmet_1_F",nil,4000],
			["H_RacingHelmet_2_F",nil,4000],
			["H_RacingHelmet_3_F",nil,4000],
			["H_RacingHelmet_4_F",nil,4000],
			["H_ShemagOpen_tan",nil,4000],
			["H_Shemag_olive",nil,4000],
			["H_ShemagOpen_khk",nil,4000],
			["H_MilCap_oucamo",nil,4000],
			["H_HelmetB_camo",nil,4000],
			["H_HelmetB_paint",nil,4000],
			["H_Bandanna_camo",nil,4000],
			["H_Watchcap_camo",nil,4000],
			["H_Watchcap_khk",nil,4000],
			["H_HelmetIA",nil,4000],
			["H_HelmetO_ocamo",nil,4000],
			["H_HelmetO_oucamo",nil,4000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Aviator",nil,400],
			["G_Spectacles",nil,400],
			["G_Spectacles_Tinted",nil,400],
		    ["G_Squares",nil,400],
		    ["G_Squares_Tinted",nil,250],
			["G_Sport_Blackred",nil,250],
			["G_Sport_Checkered",nil,250],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,250],
			["G_Lowprofile",nil,250],
		    ["G_Shades_Blue",nil,250],
		    ["G_Shades_Green",nil,250],
		    ["G_Shades_Red",nil,250],
		    ["G_Shades_Black",nil,250],
		    ["G_Shades_Green",nil,250],
			["G_I_Diving",nil,450],
			["G_O_Diving",nil,450],
			["G_B_Diving",nil,400],
			["G_Bandanna_beast",nil,250],
			["G_Bandanna_tan",nil,250],
			["G_Bandanna_khk",nil,250],
			["G_Bandanna_oli",nil,250],
			["G_Bandanna_blk",nil,250],
			["G_Balaclava_oli",nil,1300],
			["G_Balaclava_blk",nil,1350],
			["G_Tactical_Clear",nil,1350],
			["G_Tactical_Black",nil,1350],
			["G_Combat","Maska przeciwgazowa",5000],
			["G_Goggles_VR",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,25000],
			["V_TacVest_oli",nil,25000],
			["V_TacVest_camo",nil,25000],
			["V_TacVest_brn",nil,25000],
			["V_BandollierB_cbr",nil,25000],
			["V_BandollierB_oli",nil,25000],
			["V_BandollierB_rgr",nil,25000],
			["V_BandollierB_khk",nil,25000],
			["V_HarnessO_brn",nil,25000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,500],
		    ["B_AssaultPack_rgr",nil,500],
		    ["B_AssaultPack_sgg",nil,500],
		    ["B_AssaultPack_khk",nil,500],
		    ["B_AssaultPack_blk",nil,500],
		    ["B_FieldPack_cbr",nil,500],
		    ["B_FieldPack_khk",nil,500],
		    ["B_FieldPack_oli",nil,500],
		    ["B_FieldPack_blk",nil,500],
		    ["B_TacticalPack_rgr",nil,500],
		    ["B_TacticalPack_oli",nil,500],
		    ["B_TacticalPack_blk",nil,500],
		    ["B_Kitbag_cbr",nil,500],
		    ["B_Kitbag_rgr",nil,500],
		    ["B_Kitbag_sgg",nil,500],
		    ["B_Carryall_cbr",nil,500],
		    ["B_Carryall_khk",nil,500],
		    ["B_Carryall_oli",nil,500],
			["B_AssaultPack_ocamo",nil,800],
			["B_AssaultPack_mcamo",nil,800],
			["B_AssaultPack_dgtl",nil,800],
			["B_FieldPack_ocamo",nil,800],
			["B_FieldPack_oucamo",nil,800],
			["B_TacticalPack_ocamo",nil,800],
			["B_TacticalPack_mcamo",nil,800],
			["B_Kitbag_mcamo",nil,800],
			["B_Carryall_ocamo",nil,5000],	
			["B_Carryall_oucamo",nil,5000],	
			["B_Carryall_mcamo",nil,5000],	
			["B_Carryall_oli",nil,5000],					
			["B_Carryall_khk",nil,5000]
		];
	};
};