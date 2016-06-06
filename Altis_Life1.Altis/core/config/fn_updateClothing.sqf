/*

	Updates player clothing by replacing vanilla by custom ones

*/

/* =================Cops================= */
/* Streife */
if(playerSide == west && {uniform player == "U_B_CombatUniform_mcam"}) then {
	player setObjectTextureGlobal [0,"textures\uniforms\2.jpg"];
};
/* Einsatz */
if(playerSide == west && {uniform player == "U_B_CombatUniform_mcam_worn"}) then {
	player setObjectTextureGlobal [0,"textures\uniforms\5.jpg"];
};
/* SEK */
if(playerSide == west && {uniform player == "U_B_CombatUniform_mcam_vest"}) then {
	player setObjectTextureGlobal [0,"textures\uniforms\5.jpg"];
};
/* HideBackpack */
if(playerSide == west && {backpack player != ""}) then {
	unitBackpack player setObjectTextureGlobal [0,""];
};

/* =================Medics================= */
/* Normal */
if(playerSide == independent && {uniform player == "U_I_HeliPilotCoveralls"}) then {
	player setObjectTextureGlobal [0,"textures\uniforms\medic_uniform.paa"];
};
if(playerSide == independent && {uniform player == "U_Rangemaster"}) then {
	player setObjectTextureGlobal [0,"textures\uniforms\adac_uniform.paa"];
};

/* MedicBackpack */
if(playerSide == independent && {backpack player == "B_Kitbag_sgg"}) then {
	unitBackpack player setObjectTextureGlobal [0,"textures\uniforms\medic_backpack.paa"];
};

/* HideBackpack */
if(playerSide == independent && {backpack player == "B_Carryall_mcamo"}) then {
	unitBackpack player setObjectTextureGlobal [0,""];
};

/* =================ASF================= */
/* Normal */
if(playerSide == east && {uniform player == "U_B_CombatUniform_mcam_vest"}) then {
	player setObjectTextureGlobal [0,"textures\uniforms\ASF_uniform.paa"];
};

if(playerSide == east && {backpack player != ""}) then {
	unitBackpack player setObjectTextureGlobal [0,""];
};

/* =================CIV================= */
if(side player == civilian) then {
	// Prisoner 
	if(side player == civilian && uniform player == "U_C_WorkerCoveralls") then {
	player setObjectTextureGlobal [0, "textures\prisoner.jpg"];
	};
};