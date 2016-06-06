#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

//Shop Title Name
ctrlSetText[3103,"Mundury Policyjne"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["U_B_CombatUniform_mcam","Biały Mundur",800]; 
		_ret pushBack ["U_O_Wetsuit",nil,4000];

		if(license_cop_sek) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_vest","SWAT",100];
			_ret pushBack ["U_B_GhillieSuit",nil,4000];
			_ret pushBack ["U_B_CTRG_3",nil,400];
		};
        if(__GETC__(life_coplevel) >= 3) then
		{
			
			_ret pushBack ["U_B_CombatUniform_mcam_worn","Ciemny Mundur",1000];
		};
		if(__GETC__(life_coplevel) >= 5) then
		{
			
			_ret pushBack ["U_B_CTRG_3","Garnitur",5000];
		};
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_Cap_police",nil,50];
		_ret pushBack ["H_Booniehat_khk_hs",nil,75];
		_ret pushBack ["H_Beret_blk_POLICE",nil,120];
		_ret pushBack ["H_Beret_Colonel",nil,120];
		if(license_cop_sek) then
		{
			_ret pushBack ["H_Beret_blk",nil,100];
			_ret pushBack ["H_HelmetSpecB_blk",nil,100];
            _ret pushBack ["H_CrewHelmetHeli_B",nil,1000];
            _ret pushBack ["H_Watchcap_blk",nil,500];
			_ret pushBack ["H_HelmetSpecO_blk",nil,500];
		};
		if(__GETC__(life_coplevel) >= 5) then
		{
			_ret pushBack ["H_Beret_02","Chef!",120];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,155],
			["G_Diving",nil,500],
			["G_Combat","Maska przeciwgazowa",500]
		];
		
		if(license_cop_sek) then
		{
		_ret pushBack ["G_Balaclava_blk","SWAT",505];
		};
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_TacVest_blk_POLICE","Kamizelka Podstawowa",0];
		_ret pushBack ["V_Chestrig_blk",nil,0];
		_ret pushBack ["V_RebreatherB",nil,5000];
        _ret pushBack ["V_TacVest_blk",nil,6000];
		if(__GETC__(life_coplevel) >= 3) then
		{
		_ret pushBack ["V_PlateCarrier1_blk",nil,7000];
		_ret pushBack ["V_PlateCarrierSpec_blk",nil,8000];
		};
	};
	
	//Backpacks
	case 4:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_ret pushBack ["B_Carryall_mcamo",nil,1000];
			_ret pushBack ["B_TacticalPack_mcamo",nil,2000];
			_ret pushBack ["B_Kitbag_mcamo",nil,2000];
			_ret pushBack ["B_Carryall_khk",nil,2000];
			_ret pushBack ["B_Parachute","Spadochron",2000];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
		_ret pushBack ["B_UAV_01_backpack_F","Dron",10000];
		};
	};
};

_ret;