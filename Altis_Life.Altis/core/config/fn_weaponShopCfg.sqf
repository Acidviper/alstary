#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] CALL BIS_fnc_param;
IF(_shop == "") exitWith {closeDialog 0}; //Bad shop TYPE passed.
 
switch(_shop) do
{
        CASE "cop_basic":
        {
                switch(TRUE) do
                {
                        CASE (playerSide != west): {"Nie jesteś Policjantem!"};
                        DEFAULT
                        {
                                ["Akcesoria Policyjne",
                                        [
                                                ["Binocular",nil,150],
                                                ["NVGoggles",nil,500],
                                                ["Rangefinder",nil,2000],
                                                ["ItemRadio","Telefon",100],                                           
                                                ["ItemGPS",nil,100],
                                                ["ToolKit",nil,250],
                                                ["FirstAidKit",nil,150],
                                                ["Medikit",nil,1000],                  
                                                ["ItemWatch",nil,25],
                                                ["ItemCompass",nil,25],
                                                ["ItemMap",nil,25]
                                        ]
                                ];
                        };
                };
        };
        CASE "cop_waffen":
        {
                switch(TRUE) do
                {
                        CASE (playerSide != west): {"Nie jesteś Policjantem!"};
                        CASE (__GETC__(life_coplevel) == 0): {"Nie jesteś Policjantem!"};
                        CASE (__GETC__(life_coplevel) == 1):
                        {
                                ["Kadet",
                                        [
                                                												
                                                ["hgun_P07_snds_F","Paralizator",100],
                                                ["30Rnd_9x21_Mag","Ammo do Paralizatora",50],
												["arifle_SDAR_F",nil,15000],
                                                ["30Rnd_556x45_Stanag",nil,350],
												["SMG_02_F",nil,10000],
                                                ["30Rnd_9x21_Mag",nil,200],
												["arifle_MXC_Black_F",nil,50000],
												["30Rnd_65x39_caseless_mag",nil,100],
												["arifle_MX_F",nil,5000],
												["30Rnd_65x39_caseless_mag,nil,100"],
												
                                                ["optic_Arco",nil,2500],
                                                ["optic_Aco",nil,2500],
                                                ["optic_Holosight",nil,1200],
												
                                                ["muzzle_snds_H",nil,5000],
                                                ["muzzle_snds_L",nil,5000],
												
												["HandGrenade_Stone","Flashbang",nil,1000],
                                                ["SmokeShellGreen","Gaz Łzawiący",1000]
                                        ]
                                ];
                        };
                        CASE (__GETC__(life_coplevel) == 2):
                        {
                                ["Posterunkowy",
                                        [
                                                
                                                ["hgun_P07_snds_F","Paralizator",100],
                                                ["30Rnd_9x21_Mag","Ammo do Paralizatora",50],
												["arifle_SDAR_F",nil,5000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
												["SMG_02_F",nil,6000],
                                                ["30Rnd_9x21_Mag",nil,200],
												["arifle_MXC_Black_F",nil,8000],
												["arifle_MX_Black_F",nil,8000],
												["30Rnd_65x39_caseless_mag",nil,100],
												
                                                ["optic_MRCO",nil,500],
                                                ["optic_Arco",nil,500],
												["optic_Hamr",nil,2000],
                                                ["optic_Aco",nil,500],
                                                ["optic_Holosight",nil,200],
												
                                                ["acc_flashlight",nil,100],
                                                ["acc_pointer_IR",nil,500],
												
                                                ["muzzle_snds_H",nil,500],
                                                ["muzzle_snds_L",nil,500],
												
												["HandGrenade_Stone","Flashbang",nil,1000],
                                                ["SmokeShellGreen","Gaz Łzawiący",1000]
                                               
                                        ]
                                ];
                        };
                        CASE (__GETC__(life_coplevel) == 3):
                        {
                                ["Sierżant",
                                        [
												["hgun_P07_snds_F","Paralizator",100],
                                                ["30Rnd_9x21_Mag","Ammo do Paralizatora",50],
												["arifle_SDAR_F",nil,15000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
												["SMG_02_F",nil,10000],
                                                ["30Rnd_9x21_Mag",nil,200],
												["SMG_01_F",nil,15000],
                                                ["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,5000],
												["arifle_MXC_Black_F",nil,5000],
												["arifle_MX_Black_F",nil,5000],
												["arifle_MXM_Black_F",nil,12000],
												["30Rnd_65x39_caseless_mag",nil,1000],
												["arifle_MX_SW_Black_F",nil,19000],
												["100Rnd_65x39_caseless_mag",nil,2000],	
												["LMG_Mk200_F",nil,80000],
                                                ["200Rnd_65x39_cased_Box",nil,500],
												["srifle_EBR_F",nil,80000],
												["20Rnd_762x51_Mag",nil,500],
											    
												["optic_MRCO",nil,2500],
                                                ["optic_Arco",nil,2500],
                                                ["optic_Aco",nil,2500],
												["optic_NVS",nil,2500],
												["optic_Hamr",nil,5000],
                                                ["optic_Holosight",nil,1200],
												["optic_DMS",nil,10000],
                                                ["acc_flashlight",nil,1000],
                                                ["acc_pointer_IR",nil,500],
												
                                                ["muzzle_snds_H",nil,5000],
												["muzzle_snds_M",nil,5000],
												["muzzle_snds_B",nil,5000],
												["muzzle_snds_H_MG","Tłumik MK200",5000],
												["muzzle_snds_H_SW","Tłumik MX SW",5000],
                                                ["muzzle_snds_L",nil,5000],
												
                                                ["SmokeShellGreen","Gaz Łzawiący",1000],
                                                ["HandGrenade_Stone","Flashbang",nil,1000]
                                       
                                        ]
                                ];
                        };
                        CASE (__GETC__(life_coplevel) == 4):
                        {
                                ["Porucznik",
                                        [
												["hgun_P07_snds_F","Paralizator",100],
                                                ["30Rnd_9x21_Mag","Ammo do Paralizatora",50],
												["arifle_SDAR_F",nil,1500],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
												["SMG_02_F",nil,10000],
                                                ["30Rnd_9x21_Mag",nil,200],
												["SMG_01_F",nil,1500],
                                                ["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,5000],
												["arifle_MXC_Black_F",nil,2000],
												["arifle_MX_Black_F",nil,2500],
												["arifle_MXM_Black_F",nil,5000],
												["30Rnd_65x39_caseless_mag",nil,1000],
												["arifle_MX_SW_Black_F",nil,7500],
												["100Rnd_65x39_caseless_mag",nil,2000],	
												["LMG_Mk200_F",nil,75000],
                                                ["200Rnd_65x39_cased_Box",nil,500],
												["LMG_Zafir_F",nil,80000],
												["150Rnd_762x54_Box_Tracer",nil,1000],												
												["srifle_EBR_F",nil,80000],
												["20Rnd_762x51_Mag",nil,500],
												["srifle_DMR_03_F",nil,80000],
												["20Rnd_762x51_Mag",nil,1000],
                                                
                                                ["optic_DMS",nil,10000],
												["optic_NVS",nil,2500],
                                                ["optic_MRCO",nil,2500],
                                                ["optic_Hamr",nil,2500],
                                                ["optic_Arco",nil,2500],
                                                ["optic_Aco",nil,2500],
                                                ["optic_Holosight",nil,1200],
												
                                                ["acc_flashlight",nil,1000],
                                                ["acc_pointer_IR",nil,500],
												["bipod_02_F_blk",nil,50000],
												
                                                ["muzzle_snds_H",nil,5000],
												["muzzle_snds_M",nil,5000],
												["muzzle_snds_B",nil,5000],
												["muzzle_snds_H_MG","Tłumik MK200",5000],
												["muzzle_snds_H_SW","Tłumik MX SW",5000],
                                                ["muzzle_snds_L",nil,5000],
												["muzzle_snds_acp",nil,5000],
												
                                                ["SmokeShellGreen","Gaz Łzawiący",1000],
                                                ["HandGrenade_Stone","Flashbang",1000],
												["B_UavTerminal",nil,100000]
                                        ]
                                ];
                        };
                        CASE (__GETC__(life_coplevel) == 5):
                        {
                                ["Kapitan",
                                        [
                                                ["hgun_P07_snds_F","Paralizator",100],
                                                ["30Rnd_9x21_Mag","Ammo do Paralizatora",50],
												["arifle_SDAR_F",nil,15000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
												["SMG_02_F",nil,10000],
                                                ["30Rnd_9x21_Mag",nil,500],
												["SMG_01_F",nil,15000],
                                                ["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,500],
												["arifle_MXC_Black_F",nil,20000],
												["arifle_MX_Black_F",nil,25000],
												["arifle_MXM_Black_F",nil,50000],
												["30Rnd_65x39_caseless_mag",nil,1000],
												["arifle_MX_SW_Black_F",nil,55000],
												["100Rnd_65x39_caseless_mag",nil,2000],	
												["LMG_Mk200_F",nil,60000],
                                                ["200Rnd_65x39_cased_Box",nil,500],
												["LMG_Zafir_F",nil,70000],
												["150Rnd_762x54_Box_Tracer",nil,1000],												
												["srifle_EBR_F",nil,50000],
												["20Rnd_762x51_Mag",nil,500],
												["srifle_DMR_03_F",nil,80000],
												["20Rnd_762x51_Mag",nil,1000],
                                                
                                                ["optic_DMS",nil,10000],
												["optic_NVS",nil,2500],
                                                ["optic_MRCO",nil,2500],
                                                ["optic_Hamr",nil,2500],
                                                ["optic_Arco",nil,2500],
                                                ["optic_Aco",nil,2500],
                                                ["optic_Holosight",nil,1200],
												
                                                ["acc_flashlight",nil,1000],
                                                ["acc_pointer_IR",nil,500],
												["bipod_02_F_blk",nil,50000],
												
                                                ["muzzle_snds_H",nil,5000],
												["muzzle_snds_M",nil,5000],
												["muzzle_snds_B",nil,5000],
												["muzzle_snds_H_MG","Tłumik MK200",5000],
												["muzzle_snds_H_SW","Tłumik MX SW",5000],
                                                ["muzzle_snds_L",nil,5000],
												["muzzle_snds_acp",nil,5000],
												
                                                ["SmokeShellGreen","Gaz Łzawiący",1000],
                                                ["HandGrenade_Stone","Flashbang",1000],
												["SmokeShell",nil,1000],
                                                ["SmokeShellRed",nil,1000],
                                                ["SmokeShellYellow",nil,1000],
                                                ["SmokeShellPurple",nil,1000],
                                                ["SmokeShellBlue",nil,1000],
                                                ["SmokeShellOrange",nil,1000],
												["B_UavTerminal",nil,100000]
                                        ]
                                ];
                        };        
                        CASE (__GETC__(life_coplevel) == 6):
                        {
                                ["Komendant",
                                        [
                                                ["hgun_P07_snds_F","Paralizator",100],
                                                ["30Rnd_9x21_Mag","Ammo do Paralizatora",50],
												["arifle_SDAR_F",nil,15000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
												["SMG_02_F",nil,10000],
                                                ["30Rnd_9x21_Mag",nil,500],
												["SMG_01_F",nil,15000],
                                                ["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,500],
												["arifle_MXC_Black_F",nil,20000],
												["arifle_MX_Black_F",nil,25000],
												["arifle_MXM_Black_F",nil,50000],
												["30Rnd_65x39_caseless_mag",nil,1000],
												["arifle_MX_SW_Black_F",nil,55000],
												["100Rnd_65x39_caseless_mag",nil,2000],	
												["LMG_Mk200_F",nil,60000],
                                                ["200Rnd_65x39_cased_Box",nil,500],
												["LMG_Zafir_F",nil,70000],
												["150Rnd_762x54_Box_Tracer",nil,1000],												
												["srifle_EBR_F",nil,50000],
												["20Rnd_762x51_Mag",nil,500],
												["srifle_DMR_03_F",nil,80000],
												["20Rnd_762x51_Mag",nil,1000],
                                                
                                                ["optic_DMS",nil,10000],
												["optic_NVS",nil,2500],
                                                ["optic_MRCO",nil,2500],
                                                ["optic_Hamr",nil,2500],
                                                ["optic_Arco",nil,2500],
                                                ["optic_Aco",nil,2500],
                                                ["optic_Holosight",nil,1200],
												
                                                ["acc_flashlight",nil,1000],
                                                ["acc_pointer_IR",nil,500],
												["bipod_02_F_blk",nil,50000],
												
                                                ["muzzle_snds_H",nil,5000],
												["muzzle_snds_M",nil,5000],
												["muzzle_snds_B",nil,5000],
												["muzzle_snds_H_MG","Tłumik MK200",5000],
												["muzzle_snds_H_SW","Tłumik MX SW",5000],
                                                ["muzzle_snds_L",nil,5000],
												["muzzle_snds_acp",nil,5000],
												
                                                ["SmokeShellGreen","Gaz Łzawiący",1000],
                                                ["HandGrenade_Stone","Flashbang",1000],
												["SmokeShell",nil,1000],
                                                ["SmokeShellRed",nil,1000],
                                                ["SmokeShellYellow",nil,1000],
                                                ["SmokeShellPurple",nil,1000],
                                                ["SmokeShellBlue",nil,1000],
                                                ["SmokeShellOrange",nil,1000],
												["B_UavTerminal",nil,100000]
                                        ]
                                ];
                        };
                };
        };
       
        CASE "cop_sek":
        {
                switch(TRUE) do
                {
                        CASE (playerSide != west): {"Nie jesteś Policjantem!"};
                        CASE (!license_cop_sek): {"Nie jesteś w SWAT!"};
                        DEFAULT
                        {
                                ["SWAT",
                                        [                                              
                                                ["hgun_P07_snds_F","Paralizator",100],
                                                ["30Rnd_9x21_Mag","Ammo do Paralizatora",50],
                                                
												["arifle_MX_SW_Black_F",nil,20000],
												["100Rnd_65x39_caseless_mag",nil,2000],
												["srifle_EBR_F",nil,250000],
												["20Rnd_762x51_Mag",nil,5000],
												["LMG_Zafir_F",nil,40000],
												["150Rnd_762x54_Box_Tracer",nil,6000],
												["arifle_MX_GL_Black_F",nil,50000],
												["30Rnd_65x39_caseless_mag",nil,5000],
												["3Rnd_HE_Grenade_shell",nil,5000],
												["3Rnd_SmokeGreen_Grenade_shell",nil,5000],
                                                ["srifle_DMR_05_blk_F",nil,60000],
                                                ["10Rnd_93x64_DMR_05_Mag",nil,5000],
												["srifle_EBR_F",nil,50000],
												["20Rnd_762x51_Mag",nil,500],	
												["srifle_DMR_01_F",nil,70000],
												["10Rnd_762x54_Mag",nil,500],
												["srifle_DMR_03_F",nil,80000],
												["20Rnd_762x51_Mag",nil,1000],
												["arifle_MXC_F","Gummi MX",1000],
                                                ["30Rnd_65x39_caseless_mag_Tracer","Gumowe nie dziala",150],
												
												["launch_Titan_F",nil,60000],
												["Titan_AA",nil,10000],	
												
                                                ["optic_Arco",nil,5000],
                                                ["optic_Hamr",nil,5000],
                                                ["optic_MRCO",nil,5000],
                                                ["optic_Holosight_smg",nil,5000],
                                                ["optic_Aco_smg",nil,5000],
												["optic_LRPS",nil,5000],
												["optic_MRD",nil,5000],
												["optic_DMS",nil,5000],											
												["optic_NVS",nil,5000],
												["optic_SOS",nil,5000],
                                                ["optic_KHS_blk",nil,15000],
												
                                                ["muzzle_snds_93mmg",nil,15000],
                                                ["muzzle_snds_H",nil,5000],
												["muzzle_snds_M",nil,5000],
												["muzzle_snds_B",nil,5000],
												["muzzle_snds_H_MG","Tłumik MK200",5000],
												["muzzle_snds_H_SW","Tłumik MX SW",5000],
                                                ["muzzle_snds_L",nil,5000],
												
                                                ["SmokeShellGreen","Gaz Łzawiący",1000],
                                                ["HandGrenade_Stone","Flashbang",1000],
                                                ["B_UavTerminal",nil,500000]
                                        ]
                                ];
                        };
                };
        };
                       
        CASE "med_basic":
        {
                switch (TRUE) do
                {
                        CASE (playerSide != independent): {"Nie jesteś Medykiem"};
                        DEFAULT {
                                ["Ekwipunek Medyka",
                                        [
                                                ["ItemRadio","Telefon",100],
                                                ["ItemGPS",nil,100],
                                                ["ItemWatch",nil,25],
                                                ["NVGoggles",nil,5000],
                                                ["ToolKit",nil,250],
                                                ["FirstAidKit",nil,500],
                                                ["Medikit",nil,1000],                                            
                                                ["B_Kitbag_sgg",nil,1000],
                                                ["H_CrewHelmetHeli_B","Hełm Pilota",1000]
                                        ]
                                ];
                        };
                };
        };
       
        CASE "ASF_basic":
        {
                switch (TRUE) do
                {
                        CASE (playerSide != east): {"Nie jesteś Ochroniarzem"};
                        CASE (__GETC__(life_ASFlevel) == 1):
                        {
                                ["Private Shop",
                                        [
                                                ["SMG_02_F",nil,100],
                                                ["30Rnd_9x21_Mag",nil,50],
                                                ["arifle_MXC_Black_F",nil,10000],
                                                ["arifle_MX_Black_F",nil,10000],
                                                ["arifle_MX_SW_Black_F",nil,10000],
                                                ["SmokeShellRed",nil,1000],
                                                ["hgun_P07_snds_F",nil,100],
                                                ["arifle_MXC_F","Gummi MX",1000],
                                                ["30Rnd_65x39_caseless_mag_Tracer","Gumowe Pociski",150],
                                                ["16Rnd_9x21_Mag",nil,50],
                                                ["30Rnd_65x39_caseless_mag",nil,100],
                                                ["100Rnd_65x39_caseless_mag",nil,100],
                                                ["30Rnd_65x39_caseless_mag_Tracer",nil,100],
                                                ["optic_Hamr",nil,500],
                                                ["optic_MRCO",nil,500],
                                                ["optic_Arco",nil,500],
                                                ["optic_DMS",nil,500],
                                                ["optic_NVS",nil,500],
                                                ["optic_SOS",nil,500],
                                                ["optic_LRPS",nil,500],
                                                ["muzzle_snds_H",nil,500]
                                        ]
                                ];
                        };
                        CASE (__GETC__(life_ASFlevel) == 2):
                        {
                                ["Corporel Shop",
                                        [
                                                ["SMG_02_F",nil,100],
                                                ["30Rnd_9x21_Mag",nil,50],
                                                ["arifle_MXC_Black_F",nil,10000],
                                                ["arifle_MX_Black_F",nil,10000],
                                                ["arifle_MX_SW_Black_F",nil,10000],
                                                ["SmokeShellRed",nil,1000],
                                                ["hgun_P07_snds_F",nil,100],
                                                ["arifle_MXC_F","Gummi MX",1000],
                                                ["30Rnd_65x39_caseless_mag_Tracer","Gumowe Pociski",150],
                                                ["16Rnd_9x21_Mag",nil,50],
                                                ["30Rnd_65x39_caseless_mag",nil,100],
                                                ["100Rnd_65x39_caseless_mag",nil,100],
                                                ["30Rnd_65x39_caseless_mag_Tracer",nil,100],
                                                ["arifle_MXM_Black_F",nil,10000],
                                                ["optic_Hamr",nil,500],
                                                ["optic_MRCO",nil,500],
                                                ["optic_Arco",nil,500],
                                                ["optic_DMS",nil,500],
                                                ["optic_NVS",nil,500],
                                                ["optic_SOS",nil,500],
                                                ["optic_LRPS",nil,500],
                                                ["muzzle_snds_H",nil,500]
                                        ]
                                ];
                        };     
                        CASE (__GETC__(life_ASFlevel) >= 3):
                        {
                                ["Ltn. Shop",
                                        [
                                                ["SMG_02_F",nil,100],
                                                ["30Rnd_9x21_Mag",nil,50],
                                                ["arifle_MXC_Black_F",nil,10000],
                                                ["arifle_MX_Black_F",nil,10000],
                                                ["arifle_MX_SW_Black_F",nil,10000],
                                                ["SmokeShellRed",nil,1000],
                                                ["hgun_P07_snds_F",nil,100],
                                                ["arifle_MXC_F","Gummi MX",1000],
                                                ["30Rnd_65x39_caseless_mag_Tracer","Gumowe Pociski",150],
                                                ["16Rnd_9x21_Mag",nil,50],
                                                ["30Rnd_65x39_caseless_mag",nil,100],
                                                ["100Rnd_65x39_caseless_mag",nil,100],
                                                ["30Rnd_65x39_caseless_mag_Tracer",nil,100],
                                                ["arifle_MXM_Black_F",nil,10000],
                                                ["optic_Hamr",nil,500],
                                                ["optic_MRCO",nil,500],
                                                ["optic_Arco",nil,500],
                                                ["optic_DMS",nil,500],
                                                ["optic_NVS",nil,500],
                                                ["optic_SOS",nil,500],
                                                ["optic_LRPS",nil,500],
                                                ["muzzle_snds_H",nil,500],
                                                ["srifle_LRR_SOS_F",nil,350000],
                                                ["7Rnd_408_Mag",nil,500],
                                                ["srifle_EBR_F",nil,55000],
                                                ["20Rnd_762x51_Mag",nil,600],
                                                ["muzzle_snds_B",nil,1000]
                                        ]
                                ];
                        };
                };
        };
       
        CASE "rebel":
        {
                switch(TRUE) do
                {
                        CASE (playerSide != civilian): {"Nie jesteś Cywilem!"};
                        CASE (!license_civ_rebel): {"Nie jesteś Rebeliantem!"};
                        DEFAULT
                        {
                                ["Bronie Rebelianta",
                                        [
												["hgun_Pistol_heavy_01_MRD_F",nil,20000],
												["11Rnd_45ACP_Mag",nil,200],
												["arifle_SDAR_F",nil,50000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
                                                ["arifle_TRG20_F",nil,70000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
                                                ["arifle_TRG21_F",nil,90000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
                                                ["arifle_Mk20C_plain_F",nil,90000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
                                                ["arifle_Katiba_F",nil,115000],
                                                ["30Rnd_65x39_caseless_green_mag_Tracer",nil,500],
												["arifle_MXC_F",nil,150000],
                                                ["arifle_MX_F",nil,175000],
												["arifle_MXM_F",nil,180000],
                                                ["30Rnd_65x39_caseless_mag",nil,500],
												["arifle_MX_GL_Black_F",nil,200000],
												["1Rnd_SmokeBlue_Grenade_shell",nil,5000],
                                                ["LMG_Mk200_F",nil,400000],
                                                ["200Rnd_65x39_cased_Box",nil,500],
												["LMG_Zafir_F",nil,700000],
												["150Rnd_762x54_Box_Tracer",nil,1500],
												["150Rnd_762x54_Box",nil,2500],
                                                ["srifle_DMR_01_F",nil,300000],
                                                ["10Rnd_762x54_Mag",nil,500],
												["srifle_EBR_F",nil,500000],
												["20Rnd_762x51_Mag",nil,500],
                                                ["launch_RPG32_F",nil,1000000],
												["RPG32_F",nil,500000],
												["RPG32_HE_F",nil,500000],
                                                ["muzzle_snds_B",nil,80000],
												["muzzle_snds_H",nil,80000],
												["optic_DMS",nil,100000],												
                                                ["optic_MRCO",nil,30000],
                                                ["optic_Hamr",nil,30000],
                                                ["optic_Arco",nil,30000],
                                                ["optic_Aco",nil,10000],
                                                ["optic_NVS",nil,500000],
                                                ["optic_Holosight",nil,10000], 
												["bipod_02_F_blk",nil,200000],
												["bipod_02_F_hex",nil,200000],
												["bipod_02_F_tan",nil,200000],
												["bipod_03_F_oli",nil,200000],
												["acc_flashlight",nil,1000],
                                                ["acc_pointer_IR",nil,500],
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["ToolKit",nil,250],
                                                ["FirstAidKit",nil,150],
                                                ["NVGoggles",nil,2500],	
                                                ["SmokeShell",nil,1000],
                                                ["SmokeShellRed",nil,1000],
                                                ["SmokeShellYellow",nil,1000],
                                                ["SmokeShellPurple",nil,1000],
                                                ["SmokeShellBlue",nil,1000],
                                                ["SmokeShellOrange",nil,1000]
                                        ]
                                ];
                        };
                };
        };
        CASE "gang":
        {
                switch(TRUE) do
                {
                        CASE (playerSide != civilian): {"Nie jesteś Cywilem!"};       
                        DEFAULT
                        {
                                ["Bronie Gangu",
                                        [
                                                ["hgun_Rook40_F",nil,10000],
                                                ["30Rnd_9x21_Mag",nil,100],
                                                ["hgun_Pistol_heavy_02_F",nil,15000],
                                                ["6Rnd_45ACP_Cylinder",nil,100],
                                                ["hgun_ACPC2_F",nil,15000],
                                                ["9Rnd_45ACP_Mag",nil,100],
                                                ["hgun_PDW2000_F",nil,25000],
                                                ["30Rnd_9x21_Mag",nil,200],												
                                                ["optic_Yorris",nil,2500],
                                                ["optic_ACO_grn_smg",nil,2500],												
                                                ["V_BandollierB_khk",nil,6000],												
                                                ["ToolKit",nil,500],
                                                ["FirstAidKit",nil,500],
                                                ["NVGoggles",nil,2000],
                                                ["Binocular",nil,2000]
                                        ]
                                ];
                        };
                };
        };
        CASE "donator1":
        {
                switch(TRUE) do
                {
                        CASE (playerSide != civilian): {"Nie jesteś Cywilem!"};
                        CASE (!license_civ_donator1): {"Nie jesteś Donatorem!"};
                        DEFAULT
                        {
                                ["Bronie Donatora 1",
                                        [
                                                ["hgun_Rook40_F",nil,38000],
                                                ["30Rnd_9x21_Mag",nil,100],
												["hgun_ACPC2_F",nil,38000],
                                                ["9Rnd_45ACP_Mag",nil,100],
                                                 ["hgun_Pistol_heavy_02_F",nil,57000],
                                                ["6Rnd_45ACP_Cylinder",nil,100],												
                                                ["hgun_PDW2000_F",nil,72000],
                                                ["30Rnd_9x21_Mag",nil,175],
                                                ["arifle_Katiba_F",nil,103500],
                                                ["30Rnd_65x39_caseless_green_mag_Tracer",nil,500],
												["arifle_MX_Black_F",nil,157500],
												["30Rnd_65x39_caseless_mag",nil,500],
                                                ["optic_Yorris",nil,2052],
                                                ["optic_ACO_grn_smg",nil,2138],
												["optic_Hamr",nil,27000],
												["NVGoggles",nil,2000],
                                                ["ItemRadio","Telefon",500],
												["ItemGPS",nil,300],
												["ItemMap",nil,100],
												["ItemWatch",nil,25],
												["ItemCompass",nil,25],
												["ToolKit",nil,250],
												["Medikit",nil,1000],
												["FirstAidKit",nil,500],
												["Chemlight_red",nil,300],
												["Chemlight_yellow",nil,300],
												["Chemlight_green",nil,300],
												["Chemlight_blue",nil,300]
                                        ]
                                ];
                        };
                };
        };
       
        CASE "donator2":
        {
                switch(TRUE) do
                {
                        CASE (playerSide != civilian): {"Nie jesteś Cywilem!"};
                        CASE (!license_civ_donator2): {"Nie jesteś Donatorem!"};
                        DEFAULT
                        {
                                ["Bronie Donatora 2",
                                        [
                                                ["hgun_Rook40_F",nil,36000],
                                                ["30Rnd_9x21_Mag",nil,100],
												["hgun_ACPC2_F",nil,36000],
                                                ["9Rnd_45ACP_Mag",nil,100],
                                                ["hgun_Pistol_heavy_02_F",nil,54000],
                                                ["6Rnd_45ACP_Cylinder",nil,100],												
                                                ["hgun_PDW2000_F",nil,72000],
                                                ["30Rnd_9x21_Mag",nil,175],
												["arifle_TRG20_F",nil,63000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
                                                ["arifle_TRG21_F",nil,81000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
                                                ["arifle_Mk20C_plain_F",nil,81000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
                                                ["arifle_Katiba_F",nil,103500],
                                                ["30Rnd_65x39_caseless_green_mag_Tracer",nil,500],
												["arifle_MXC_Black_F",nil,135000],
                                                ["arifle_MX_Black_F",nil,157500],
												["arifle_MXM_Black_F",nil,180000],
                                                ["30Rnd_65x39_caseless_mag",nil,500],
												["optic_Yorris",nil,2052],
                                                ["optic_MRCO",nil,27000],
                                                ["optic_Hamr",nil,27000],
                                                ["optic_Arco",nil,22500],
                                                ["optic_Aco",nil,9000],
                                                ["optic_Holosight",nil,9000],
												["muzzle_snds_H",nil,90000],
												["muzzle_snds_M",nil,90000], 
												["bipod_02_F_blk",nil,190000],
												["NVGoggles",nil,2000],
                                                ["ItemRadio","Telefon",500],
												["ItemGPS",nil,300],
												["ItemMap",nil,100],
												["ItemWatch",nil,25],
												["ItemCompass",nil,25],
												["ToolKit",nil,250],
												["Medikit",nil,1000],
												["FirstAidKit",nil,500],
												["Chemlight_red",nil,300],
												["Chemlight_yellow",nil,300],
												["Chemlight_green",nil,300],
												["Chemlight_blue",nil,300]
                                        ]
                                ];
                        };
                };
        };
       
        CASE "donator3":
        {
                switch(TRUE) do
                {
                        CASE (playerSide != civilian): {"Nie jesteś Cywilem!"};
                        CASE (!license_civ_donator3): {"Nie jesteś Donatorem!"};
                        DEFAULT
                        {
                                ["Bronie Donatora 3",
                                        [
												["hgun_Rook40_F",nil,32000],
                                                ["30Rnd_9x21_Mag",nil,100],
												["hgun_ACPC2_F",nil,30400],
                                                ["9Rnd_45ACP_Mag",nil,100],
                                                ["hgun_Pistol_heavy_02_F",nil,48000],
                                                ["6Rnd_45ACP_Cylinder",nil,100],												
                                                ["hgun_PDW2000_F",nil,64000],
                                                ["30Rnd_556x45_Stanag",nil,175],
                                                ["arifle_SDAR_F",nil,64000],   
                                                ["30Rnd_9x21_Mag",nil,175],
												["arifle_TRG20_F",nil,56000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
                                                ["arifle_TRG21_F",nil,72000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
                                                ["arifle_Mk20C_plain_F",nil,72000],
                                                ["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
                                                ["arifle_Katiba_F",nil,92000],
                                                ["30Rnd_65x39_caseless_green_mag_Tracer",nil,500],
												["arifle_MXC_F",nil,120000],
                                                ["arifle_MX_F",nil,140000],
												["arifle_MXM_F",nil,160000],
                                                ["30Rnd_65x39_caseless_mag",nil,500],
												["arifle_MX_GL_Black_F",nil,50000],
												["3Rnd_SmokeOrange_Grenade_shell",nil,5000],
												["srifle_DMR_03_F",nil,300000],
												["20Rnd_762x51_Mag",nil,1000],
                                                ["LMG_Mk200_F",nil,320000],
                                                ["200Rnd_65x39_cased_Box",nil,500],
												["LMG_Zafir_F",nil,400000],
												["150Rnd_762x54_Box_Tracer",nil,1500],
												["150Rnd_762x54_Box",nil,2500],
                                                ["srifle_DMR_01_F",nil,240000],
                                                ["10Rnd_762x54_Mag",nil,500],
												["srifle_EBR_F",nil,350000],
												["20Rnd_762x51_Mag",nil,500],
                                                ["srifle_DMR_06_camo_F",nil,400000],
                                                ["20Rnd_762x51_Mag",nil,4000],
												["optic_DMS",nil,80000],
												["optic_NVS",nil,80000],		
                                                ["optic_MRCO",nil,24000],
                                                ["optic_Hamr",nil,24000],
                                                ["optic_Arco",nil,24000],
                                                ["optic_KHS_hex",nil,150000],
                                                ["optic_Aco",nil,8000],
                                                ["optic_Holosight",nil,8000],
												["muzzle_snds_B",nil,80000],
												["muzzle_snds_H",nil,80000],
												["muzzle_snds_M",nil,80000], 
												["bipod_02_F_blk",nil,160000],
												["bipod_02_F_hex",nil,160000],
												["bipod_02_F_tan",nil,160000],
												["bipod_03_F_oli",nil,160000],
												["acc_flashlight",nil,1000],
                                                ["acc_pointer_IR",nil,500],
                                                ["NVGoggles",nil,2000],
                                                ["ItemRadio","Telefon",500],
												["ItemGPS",nil,300],
												["ItemMap",nil,100],
												["ItemWatch",nil,25],
												["ItemCompass",nil,25],
												["ToolKit",nil,250],
												["Medikit",nil,1000],
												["FirstAidKit",nil,500],
												["Chemlight_red",nil,300],
												["Chemlight_yellow",nil,300],
												["Chemlight_green",nil,300],
												["Chemlight_blue",nil,300]
                                        ]
                                ];
                        };
                };
        };
		
        CASE "gun":
        {
                switch(TRUE) do
                {
                        CASE (playerSide != civilian): {"Nie jesteś Cywilem!"};
                        CASE (!license_civ_gun): {"Nie masz licencji na broń!"};
                        DEFAULT
                        {
                                ["Sklep z bronią",
                                        [
                                                ["hgun_Rook40_F",nil,40000],
                                                ["30Rnd_9x21_Mag",nil,100],
                                                ["hgun_Pistol_heavy_02_F",nil,60000],
                                                ["6Rnd_45ACP_Cylinder",nil,100],
												["hgun_ACPC2_F",nil,40000],
                                                ["9Rnd_45ACP_Mag",nil,100],
												["SMG_01_F",nil,120000],
												["30Rnd_45ACP_Mag_SMG_01",nil,100],
												["optic_Yorris",nil,2400],
                                                ["V_BandollierB_khk",nil,6000],
                                                ["V_Press_F",nil,6000]
                                        ]
                                ];
                        };
                };
        };
               
        CASE "genstore":
        {      
                switch(TRUE) do
                {
                        CASE (__GETC__(life_medicLevel) >= 1):
                        {
                                ["Sklep Wielobranżowy",
                                        [
                                                ["ItemRadio","Telefon",500],
                                                ["Binocular",nil,500],
                                                ["ItemGPS",nil,100],
                                                ["ToolKit",nil,250],
                                                ["ItemMap",nil,250],
                                                ["FirstAidKit",nil,1500],
                                                ["NVGoggles",nil,2000],
                                                ["ItemWatch",nil,25],
                                                ["ItemCompass",nil,25]
                                        ]
                                ];
                        };
                        DEFAULT
                        {
                                ["Sklep Wielobranżowy",
                                        [
                                        ["ItemRadio","Telefon",500],
                                        ["ItemGPS",nil,300],
                                        ["ItemMap",nil,100],
                                        ["ItemWatch",nil,25],
                                        ["ItemCompass",nil,25],
                                        ["ToolKit",nil,250],
                                        ["FirstAidKit",nil,500],
                                        ["NVGoggles",nil,2000],
                                        ["Chemlight_red",nil,300],
                                        ["Chemlight_yellow",nil,300],
                                        ["Chemlight_green",nil,300],
                                        ["Chemlight_blue",nil,300]
                                        ]
                                ];
                        };
                };
               
               
        };
        CASE "umwelt":
        {
                switch(TRUE) do
                {
                        CASE (playerSide != civilian): {"Nie jesteś Cywilem!"};
                        CASE (!license_civ_uran2): {"Nie masz licencji na oczyszczanie Uranu!"};
                        DEFAULT
                        {
                                ["Wydział Ochrony Środowiska",
                                        [
                                                ["FirstAidKit",nil,1500],
                                                ["U_C_Scientist","Kombinezon Przeciwpromienny",10000]
                                        ]
                                ];
                        };
                };
        };
};