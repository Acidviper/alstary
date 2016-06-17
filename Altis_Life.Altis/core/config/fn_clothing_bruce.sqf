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
ctrlSetText[3103,"Lumpex"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blue",250],
        ["U_NikosBody","Cwaniak",250],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",150],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",175],
		["U_C_Poloshirt_stripped","Poloshirt stripped",125],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350],
		["U_C_Poor_2","Rag tagged clothes",250],
		["U_IG_Guerilla2_2","Green stripped shirt & Pants",650],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",735],
		["U_IG_Guerilla2_3","The Outback Rangler",1200],
		["U_C_HunterBody_grn","The Hunters Look",1500],
		["U_OrestesBody","Surfing On Land",1100],
		["U_NikosAgedBody","Casual Wears",5000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150]
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
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Rangemaster_belt",nil,3500],
			["V_BandollierB_cbr",nil,4500],			
			["V_BandollierB_cbr",nil,4500],
			["V_BandollierB_khk",nil,4500],
			["V_BandollierB_rgr",nil,4500],
			["V_BandollierB_blk",nil,4500],
			["V_BandollierB_oli",nil,4500]
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