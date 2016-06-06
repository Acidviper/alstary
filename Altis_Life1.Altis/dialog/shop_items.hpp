class shops_menu {
	idd = 2400;
	name= "shops_menu";
	movingEnable = false;
	enableSimulation = true;	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.293698 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.412603 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.293698 * safezoneW + safezoneX;
			y = 0.3592 * safezoneH + safezoneY;
			w = 0.412603 * safezoneW;
			h = 0.33 * safezoneH;
		};
		
		class vasText : Life_RscText
		{
			idc = -1;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			text = "$STR_VS_SI";
			sizeEx = 0.04;
			x = 0.304013 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.154726 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class vasgText : Life_RscText
		{
			idc = -1;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			text = "$STR_VS_PI";
			sizeEx = 0.04;
			
			x = 0.54126 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.154726 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
	
	class controls {

		class itemList : Life_RscListBox 
		{
			idc = 2401;
			text = "";
			sizeEx = 0.030;
			
			x = 0.304013 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.154726 * safezoneW;
			h = 0.209 * safezoneH;
		};
		
		class pItemlist : Life_RscListBox 
		{
			idc = 2402;
			text = "";
			sizeEx = 0.030;
			
			x = 0.54126 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.154726 * safezoneW;
			h = 0.209 * safezoneH;
		};
			
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 2403;
			text = "";
			x = 0.293698 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.330083 * safezoneW;
			h = 0.022 * safezoneH;
		};

		class PlayersName : Title {
			idc = 601;
			style = 1;
			text = "";
		};
		
		class buyEdit : Life_RscEdit 
		{
			idc = 2404;
			
			text = "1";
			sizeEx = 0.030;
			x = 0.304013 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.154726 * safezoneW;
			h = 0.022 * safezoneH;
		};
			
		class ButtonAddbuy : Life_RscButtonMenu
		{
			idc = -1;
			text = "+1";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[0,0] spawn life_fnc_addsubstract;";
			
			x = 0.440172 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.0180514 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ButtonSubbuy : Life_RscButtonMenu
		{
			idc = -1;
			text = "-1";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[0,1] spawn life_fnc_addsubstract;";
			
			x = 0.305045 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.0180514 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class ButtonAddG : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_VS_BuyItem";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] call life_fnc_virt_buy;";
			
			x = 0.335474 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.0928357 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class sellEdit : Life_RscEdit 
		{
			idc = 2405;
			
			text = "1";
			sizeEx = 0.030;
			x = 0.54126 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.154726 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ButtonRemoveG : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_VS_SellItem";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] call life_fnc_virt_sell";
			
			x = 0.572721 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.0928357 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
				class ButtonAddSell : Life_RscButtonMenu
		{
			idc = -1;
			text = "+1";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[1,0] spawn life_fnc_addsubstract;";
			
			x = 0.677419 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.0180514 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ButtonSubSell : Life_RscButtonMenu
		{
			idc = -1;
			text = "-1";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[1,1] spawn life_fnc_addsubstract;";
			
			x = 0.54126 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.0180514 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class ButtonClose : Life_RscButtonMenu {
			idc = -1;
			//shortcuts[] = {0x00050000 + 2};
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.294214 * safezoneW + safezoneX;
			y = 0.69272 * safezoneH + safezoneY;
			w = 0.0644693 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};