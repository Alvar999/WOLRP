
#include "ysi\y_hooks"


#define MAX_LEVELGUN 10

stock GetLevelGun(level)
{
	new name[82];
	switch(level)
	{
		case 0: name = "{bfbfbf}Normal{ffffff}";
		case 1: name = "{00ff00}Iron{ffffff}";
		case 2: name = "{3333ff}Gold{ffffff}";
		case 3: name = "{800080}Rare{ffffff}";
		case 4: name = "{fff81f}Epic{ffffff}";
		case 5: name = "{ff6a00}Unique{ffffff}";
		case 6: name = "{9900FF}Super Unique{ffffff}";
        case 7: name = "{ff6a00}Legendary{ffffff}";
		case 8: name = "{f00000}God{ffffff}";
		case 9: name = "{00FFCC}Mystic{ffffff}";
		case 10: name = "{FF0099}Mystic S{ffffff}";
	}
	return name;
}

SendDamage(playerid, damagedid, Float:amount, weaponid)
{
	if(GetPVarInt(damagedid, "IsInArena") >= 0) return 1;
   	if(GetPVarInt(damagedid, "EventToken") != 0) return 1;

	new Float:TotalDamage, Float:Health, Float:Armor;
   	new PlayerVar;
   	if(weaponid == 24) // Deagle\nM4a1\nAK-47\nMP5\nShotgun
   	{
   		PlayerVar = PlayerInfo[playerid][pDeagle];
   		if(PlayerVar == 0) TotalDamage = 46.20;
		if(PlayerVar == 1) TotalDamage = 46.70;
		if(PlayerVar == 2) TotalDamage = 47;
		if(PlayerVar == 3) TotalDamage = 48;
		if(PlayerVar == 4) TotalDamage = 48.5;
		if(PlayerVar == 5) TotalDamage = 49.2;
		if(PlayerVar == 6) TotalDamage = 50.1;
		if(PlayerVar == 7) TotalDamage = 50.7;
		if(PlayerVar == 8) TotalDamage = 53.3;
		if(PlayerVar == 9) TotalDamage = 54.6;
		if(PlayerVar == 10) TotalDamage = 56;
		//TotalDamage = amount + PlayerVar;
   	}
    else if(weaponid == 30)
   	{
   		PlayerVar = PlayerInfo[playerid][pAK];
   		if(PlayerVar == 0) TotalDamage = 9.90;
		if(PlayerVar == 1) TotalDamage = 10.20;
		if(PlayerVar == 2) TotalDamage = 10.70;
		if(PlayerVar == 3) TotalDamage = 11.35;
		if(PlayerVar == 4) TotalDamage = 12;
		if(PlayerVar == 5) TotalDamage = 13;
		if(PlayerVar == 6) TotalDamage = 13.50;
		if(PlayerVar == 7) TotalDamage = 14.50;
		if(PlayerVar == 8) TotalDamage = 14.85;
		if(PlayerVar == 9) TotalDamage = 15.60;
		if(PlayerVar == 10) TotalDamage = 17.00;

   		//TotalDamage = amount + PlayerVar;
   	}
  	else if(weaponid == 34)
   	{
   		PlayerVar = PlayerInfo[playerid][pVanvu];
   		if(PlayerVar == 0) TotalDamage = 9.90;
		if(PlayerVar == 1) TotalDamage = 10.20;
		if(PlayerVar == 2) TotalDamage = 10.70;
		if(PlayerVar == 3) TotalDamage = 11.35;
		if(PlayerVar == 4) TotalDamage = 12;
		if(PlayerVar == 5) TotalDamage = 13;
		if(PlayerVar == 6) TotalDamage = 13.50;
		if(PlayerVar == 7) TotalDamage = 14.50;
		if(PlayerVar == 8) TotalDamage = 14.85;
		if(PlayerVar == 9) TotalDamage = 15.60;
		if(PlayerVar == 10) TotalDamage = 17.00;
		
   		//TotalDamage = amount + PlayerVar;
   	}
   	/*else if(weaponid == 27)
   	{
   		PlayerVar = PlayerInfo[playerid][pSpas12];
   		if(PlayerVar == 0) TotalDamage = 10;
		if(PlayerVar == 1) TotalDamage = 11.5;
		if(PlayerVar == 2) TotalDamage = 12;
		if(PlayerVar == 3) TotalDamage = 13.5;
		if(PlayerVar == 4) TotalDamage = 14;
		if(PlayerVar == 5) TotalDamage = 15.7;
		if(PlayerVar == 6) TotalDamage = 16;
		if(PlayerVar == 7) TotalDamage = 17.3;
		if(PlayerVar == 8) TotalDamage = 18.9;
		if(PlayerVar == 9) TotalDamage = 19;
		if(PlayerVar == 10) TotalDamage = 20.8;
   		//TotalDamage = amount + PlayerVar;
   	}*/
  	else if(weaponid == 31)
   	{
   		PlayerVar = PlayerInfo[playerid][pM4];
   		if(PlayerVar == 0) TotalDamage = 9.90;
		if(PlayerVar == 1) TotalDamage = 10.20;
		if(PlayerVar == 2) TotalDamage = 10.70;
		if(PlayerVar == 3) TotalDamage = 11.35;
		if(PlayerVar == 4) TotalDamage = 12;
		if(PlayerVar == 5) TotalDamage = 13;
		if(PlayerVar == 6) TotalDamage = 13.50;
		if(PlayerVar == 7) TotalDamage = 14.50;
		if(PlayerVar == 8) TotalDamage = 14.85;
		if(PlayerVar == 9) TotalDamage = 15.60;
		if(PlayerVar == 10) TotalDamage = 17.00;
   		//TotalDamage = amount + PlayerVar;
   	}
  	else if(weaponid == 29)
   	{
   		PlayerVar = PlayerInfo[playerid][pMP5];
   		if(PlayerVar == 0) TotalDamage = 8.26;
		if(PlayerVar == 1) TotalDamage = 8.70;
		if(PlayerVar == 2) TotalDamage = 9.00;
		if(PlayerVar == 3) TotalDamage = 10.60;
		if(PlayerVar == 4) TotalDamage = 10.80;
		if(PlayerVar == 5) TotalDamage = 11.10;
		if(PlayerVar == 6) TotalDamage = 11.80;
		if(PlayerVar == 7) TotalDamage = 12.20;
		if(PlayerVar == 8) TotalDamage = 12.80;
		if(PlayerVar == 9) TotalDamage = 13.60;
		if(PlayerVar == 10) TotalDamage = 14.50;
   		//TotalDamage = amount + PlayerVar;
   	}
   	else if(weaponid == 25)
   	{
   		PlayerVar = PlayerInfo[playerid][pShotgun];
   		if(PlayerVar == 0) TotalDamage = 11.10;
		if(PlayerVar == 1) TotalDamage = 12.50;
		if(PlayerVar == 2) TotalDamage = 13.10;
		if(PlayerVar == 3) TotalDamage = 14.50;
		if(PlayerVar == 4) TotalDamage = 15.20;
		if(PlayerVar == 5) TotalDamage = 16.10;
		if(PlayerVar == 6) TotalDamage = 17.20;
		if(PlayerVar == 7) TotalDamage = 18.50;
		if(PlayerVar == 8) TotalDamage = 19.00;
		if(PlayerVar == 9) TotalDamage = 19.5;
		if(PlayerVar == 10) TotalDamage = 20.1;

   		//TotalDamage = amount + PlayerVar;
   	}
   	else TotalDamage = amount;
   	GetPlayerHealth(damagedid, Health);
   	GetPlayerArmour(damagedid, Armor);
   	if(Health > TotalDamage && Armor < 1)
	{
		SetPlayerHealth(damagedid, Health - TotalDamage);
	}
	if(Armor > TotalDamage)
	{
		SetPlayerArmour(damagedid, Armor - TotalDamage);
	}
	else
	{
	 	SetPlayerArmour(damagedid, 0);
	 	SetPlayerHealth(damagedid, (Health - TotalDamage) + Armor);
	}
	SendHistory(playerid, damagedid , TotalDamage , weaponid , PlayerVar);
	return 1;
}

SendHistory(playerid, playerid1 , Float:amount , weapon , Levelgun)
{
	new string[155], string1[155], Namex[MAX_PLAYER_NAME];
	GetWeaponName(weapon, Namex, MAX_PLAYER_NAME);
	format(string, 155, "[CHIEN DAU] [{00FF00}+%.02f{00FF00}] [{FF6600}%s{FFFFFF}] [{99FF00}%s (%s)] ", amount ,GetPlayerNameEx(playerid1), Namex, GetLevelGun(Levelgun));
	format(string1, 155, "[CHIEN DAU] [{FF0000}-%.02f{FF0000}] [{FFCC33}%s{FFFFFF}] [{339966}%s (%s)] ", amount ,GetPlayerNameEx(playerid), Namex, GetLevelGun(Levelgun));
	//format(string, 155, "[{ff0033}+%.02f{ffffff}] [{FF6600}%s{FFFFFF}] [{99FF00}%s %s] ", amount ,GetPlayerNameEx(playerid1), Namex, GetLevelGun(Levelgun));
	//format(string1, 155, "[{ff0000}-%.02f{ffffff}] [{FFCC33}%s{FFFFFF}] [{339966}%s %s] ", amount ,GetPlayerNameEx(playerid), Namex, GetLevelGun(Levelgun));
	SendClientMessage(playerid, -1, string);
	SendClientMessage(playerid1, -1, string1);
	PlayerPlaySound(playerid, 17804, 0, 0, 0);
}



hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	new string[500];
	if(dialogid == DIALOG_NANGCAPSUNG && response)
	{
		new UpdateWeapons;
		if(listitem == 0)
		{
			if(PlayerInfo[playerid][pDeagle] == MAX_LEVELGUN) return SendClientMessage(playerid, -1, "[!] : Sung cua ban da max cap do");
			UpdateWeapons = (PlayerInfo[playerid][pDeagle] + 1) * 2;

			format(string, sizeof string, "\n{ffffff}Sung : Deagle\n\nBFinn : {66ff33}%d ${66ff33}\n\nCap tiep theo : Deagle %s\n", UpdateWeapons , GetLevelGun(PlayerInfo[playerid][pDeagle]+1));
			SetPVarInt(playerid, "GunID?", 24);
		}
		if(listitem == 1)
		{
			if(PlayerInfo[playerid][pM4] == MAX_LEVELGUN) return SendClientMessage(playerid, -1, "[!] : Sung cua ban da max cap do");
			UpdateWeapons = (PlayerInfo[playerid][pM4] + 1) * 2; // sam
			format(string, sizeof string, "\n{ffffff}Sung : M4A1\n\nBFinn : {66ff33}%d ${66ff33}\n\nCap tiep theo : M4A1 %s\n", UpdateWeapons , GetLevelGun(PlayerInfo[playerid][pM4]+1));
			SetPVarInt(playerid, "GunID?", 31);
		}
		if(listitem == 2)
		{
			if(PlayerInfo[playerid][pAK] == MAX_LEVELGUN) return SendClientMessage(playerid, -1, "[!] : Sung cua ban da max cap do");
			UpdateWeapons = (PlayerInfo[playerid][pAK] + 1) * 2;
			format(string, sizeof string, "\n{ffffff}Sung : Sniper\n\nBFinn : {66ff33}%d ${66ff33}\n\nCap tiep theo : Sniper %s\n", UpdateWeapons , GetLevelGun(PlayerInfo[playerid][pAK]+1));
			SetPVarInt(playerid, "GunID?", 34);
		}
		if(listitem == 3)
		{
			if(PlayerInfo[playerid][pMP5] == MAX_LEVELGUN) return SendClientMessage(playerid, -1, "[!] : Sung cua ban da max cap do");
			UpdateWeapons = (PlayerInfo[playerid][pMP5] + 1) * 2;
			format(string, sizeof string, "\n{ffffff}Sung : MP5\n\nBFinn : {66ff33}%d ${66ff33}\n\nCap tiep theo : MP5 %s\n", UpdateWeapons , GetLevelGun(PlayerInfo[playerid][pMP5]+1));
			SetPVarInt(playerid, "GunID?", 29);
		}
		if(listitem == 4)
		{
			if(PlayerInfo[playerid][pShotgun] == MAX_LEVELGUN) return SendClientMessage(playerid, -1, "[!] : Sung cua ban da max cap do");
			UpdateWeapons = (PlayerInfo[playerid][pShotgun] + 1) * 2;
			format(string, sizeof string, "\n{ffffff}Sung : Shotgun\n\nBFinn : {66ff33}%d ${66ff33}\n\nCap tiep theo : Shotgun %s\n", UpdateWeapons , GetLevelGun(PlayerInfo[playerid][pShotgun]+1));
			SetPVarInt(playerid, "GunID?", 25);
		}
		if(listitem == 5)
		{
			if(PlayerInfo[playerid][pSpas12] == MAX_LEVELGUN) return SendClientMessage(playerid, -1, "[!] : Sung cua ban da max cap do");
			UpdateWeapons = (PlayerInfo[playerid][pSpas12] + 1) * 2;
			format(string, sizeof string, "\n{ffffff}Sung : Spas-12\n\nBFinn : {66ff33}%d ${66ff33}\n\nCap tiep theo : Spas12 %s\n", UpdateWeapons , GetLevelGun(PlayerInfo[playerid][pSpas12]+1));
			SetPVarInt(playerid, "GunID?", 27);
		}
		SetPVarInt(playerid, "PriceUp?", UpdateWeapons);
		ShowPlayerDialog(playerid, DIALOG_NANGCAPSUNG1, DIALOG_STYLE_MSGBOX, "Nang cap sung", string, "Nang", "Huy");
	}
	if(dialogid == DIALOG_NANGCAPSUNG1)
	{
		if(response)
		{
			new gunid = GetPVarInt(playerid, "GunID?") , price = GetPVarInt(playerid, "PriceUp?");
			if(price > PlayerInfo[playerid][pBitFinn]) return SendClientMessage(playerid, -1, "Ban khong co du BFINN de nang cap vu khi");
			if(gunid == 24)
			{
				PlayerInfo[playerid][pDeagle]++;
				PlayerInfo[playerid][pBitFinn] -= price;
				format(string, sizeof string, "[NANG CAP SUNG] : Deagle %s > Deagle %s", GetLevelGun(PlayerInfo[playerid][pDeagle]-1), GetLevelGun(PlayerInfo[playerid][pDeagle]));
			}
			if(gunid == 34)
			{
				PlayerInfo[playerid][pAK]++;
				PlayerInfo[playerid][pBitFinn] -= price;
				format(string, sizeof string, "[NANG CAP SUNG] : Sniper %s > Sniper %s", GetLevelGun(PlayerInfo[playerid][pAK]-1), GetLevelGun(PlayerInfo[playerid][pAK]));
			}
			if(gunid == 31)
			{
				PlayerInfo[playerid][pM4]++;
				PlayerInfo[playerid][pBitFinn] -= price;
				format(string, sizeof string, "[NANG CAP SUNG] : M4A1 %s > M4A1 %s", GetLevelGun(PlayerInfo[playerid][pM4]-1), GetLevelGun(PlayerInfo[playerid][pM4]));
			}
			if(gunid == 29)
			{
				PlayerInfo[playerid][pMP5]++;
				PlayerInfo[playerid][pBitFinn] -= price;
				format(string, sizeof string, "[NANG CAP SUNG] : MP5 %s > MP5 %s", GetLevelGun(PlayerInfo[playerid][pMP5]-1), GetLevelGun(PlayerInfo[playerid][pMP5]));
			}
			if(gunid == 25)
			{
				PlayerInfo[playerid][pShotgun]++;
				PlayerInfo[playerid][pBitFinn] -= price;
				format(string, sizeof string, "[NANG CAP SUNG] : SHOTGUN %s > SHOTGUN %s", GetLevelGun(PlayerInfo[playerid][pShotgun]-1), GetLevelGun(PlayerInfo[playerid][pShotgun]));
			} // pS9mm
			if(gunid == 27)
			{
				PlayerInfo[playerid][pSpas12]++;
				PlayerInfo[playerid][pCash] -= price;
				format(string, sizeof string, "[NANG CAP SUNG] : SPAS-12 %s > SPAS-12 %s", GetLevelGun(PlayerInfo[playerid][pSpas12]-1), GetLevelGun(PlayerInfo[playerid][pSpas12]));
			}
			SendClientMessage(playerid, -1, string);
		}
		else
		{
			DeletePVar(playerid, "GunID?");
   			DeletePVar(playerid, "PriceUp?");
		}
	}
	return 1;
}

hook OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart)
{
	SendDamage(playerid, damagedid, amount, weaponid);
	return 1;
}
IsAblePedAnimation(playerid)
{
    if(GetPVarInt(playerid, "PlayerCuffed") != 0 || GetPVarInt(playerid, "Injured") == 1 || GetPVarInt(playerid, "IsFrozen") == 1)
	{
   		SendClientMessage(playerid, COLOR_GRAD2, "ban khong the lam dieu do vao thoi diem nay!");
   		return 0;
	}
    if(IsPlayerInAnyVehicle(playerid) == 1)
    {
		SendClientMessage(playerid, COLOR_GRAD2, "Doi hoi ban phai o ben ngoai 1 chiec xe.");
		return 0;
	}
	return 1;
}
PlayAnim(playerid, animlib[], animname[], Float:fDelta, loop, lockx, locky, freeze, time, forcesync)
{
	ApplyAnimation(playerid, animlib, animname, fDelta, loop, lockx, locky, freeze, time, forcesync);
}

//============================================================================//

