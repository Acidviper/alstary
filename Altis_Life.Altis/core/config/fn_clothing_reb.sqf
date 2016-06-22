/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mundury Rebeliantów"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_OG_Guerilla3_2",nil,8000],
			["U_B_CombatUniform_mcam",nil,8000],
			["U_B_CombatUniform_mcam_tshirt",nil,9000],
			["U_B_CombatUniform_mcam_vest",nil,9000],
			["U_B_SpecopsUniform_sgg",nil,9000],
			["U_IG_Guerilla1_1",nil,10000],
			["U_I_G_resistanceLeader_F",nil,10000],
			["U_IG_leader",nil,15000],	
			["U_O_CombatUniform_oucamo",nil,15000],	
			["U_O_SpecopsUniform_blk",nil,15000],
			["U_O_OfficerUniform_ocamo",nil,15000],	
			["U_O_GhillieSuit",nil,55000],
			["U_I_CombatUniform_tshirt",nil,15000],	
			["U_I_CombatUniform",nil,15000],	
			["U_I_OfficerUniform",nil,15000],
			["U_I_GhillieSuit",nil,80000],
			["U_O_PilotCoveralls",nil,10000]
		];
	};
	
	//Hats
	case 1:
	{
		[
		["H_HelmetB",nil,5000],
		["H_HelmetB_camo",nil,6000],
		["H_HelmetB_light",nil,4000],
		["H_Booniehat_indp",nil,800],
		["H_Booniehat_mcamo",nil,800],
		["H_HelmetB_plain_mcamo",nil,6000],
		["H_HelmetB_plain_blk",nil,7000],
		["H_HelmetIA",nil,6000],
		["H_HelmetIA_camo",nil,7000],
		["H_HelmetB_black",nil,6000],
		["H_HelmetB_desert",nil,7000],
		["H_Cap_oli",nil,800],
		["H_Cap_headphones",nil,800],
		["H_Cap_blk_CMMG",nil,800],
		["H_Cap_brn_SPECOPS",nil,800],
		["H_Cap_blk_ION",nil,800],
		["H_HelmetCrew_I",nil,3000],
		["H_PilotHelmetHeli_I",nil,3000],
		["H_CrewHelmetHeli_B",nil,10000],
		["H_CrewHelmetHeli_I",nil,12000],
		["H_HelmetO_ocamo",nil,8000],
		["H_HelmetLeaderO_ocamo",nil,9000],
		["H_Shemag_olive_hs",nil,800],
		["H_ShemagOpen_tan",nil,800],
		["H_Beret_blk",nil,1800],
		["H_Beret_red",nil,1800],
		["H_Beret_02",nil,2000],
		["H_Beret_Colonel",nil,2000],
		["H_Hat_camo",nil,800],
		["H_Watchcap_sgg",nil,800]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat","Maska Gazowa",10000]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessO_brn",nil,7500],
			["V_BandollierB_oli",nil,7500],
			["V_HarnessOSpec_brn",nil,10000],
			["V_TacVest_camo",nil,10000],
			["V_PlateCarrier_Kerry",nil,15000],
			["V_PlateCarrierIAGL_dgtl",nil,25000],
			["V_PlateCarrier3_rgr",nil,45000] //dodano OkruT
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_khk",nil,2500],
			["B_AssaultPack_dgtl",nil,2500],
			["B_AssaultPack_rgr",nil,2500],
			["B_AssaultPack_sgg",nil,2500],
			["B_AssaultPack_blk",nil,2500],
			["B_AssaultPack_cbr",nil,2500],
			["B_AssaultPack_mcamo",nil,2500],
			["B_FieldPack_ocamo",nil,3000],
			["B_FieldPack_cbr",nil,3000],
			["B_FieldPack_blk",nil,3000],
			["B_Kitbag_mcamo",nil,4500],
			["B_Kitbag_rgr",nil,4500],			
			["B_Kitbag_sgg",nil,4500],	
			["B_Kitbag_cbr",nil,4500],
			["B_Bergen_sgg",nil,4500],	
			["B_Bergen_mcamo",nil,4500],	
			["B_Bergen_rgr",nil,4500],	
			["B_Bergen_blk",nil,4500],
			["B_Carryall_ocamo",nil,5000],	
			["B_Carryall_oucamo",nil,5000],	
			["B_Carryall_mcamo",nil,5000],	
			["B_Carryall_oli",nil,5000],					
			["B_Carryall_khk",nil,5000]
		];
	};
};