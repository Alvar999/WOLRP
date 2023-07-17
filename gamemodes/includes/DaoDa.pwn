#include <YSI\y_hooks>

// DAO DA
// Credits : nDP
// Fb.com/nguyenduyphuong.dz

#define         DIALOG_JOBDAODA               (9711)
#define         DIALOG_SELLKIMCUONG           (9712)
#define         DIALOG_VATPHAMKC              (9713)

CMD:bankimcuong(playerid, params[])
{
    if(IsPlayerInRangeOfPoint(playerid, 3.0, -2158.7534, -264.4915, 34.1267))
    {
		ShowPlayerDialog(playerid, DIALOG_JOBDAODA, DIALOG_STYLE_LIST, "{ffffff} WOLRP.NET | SELL KIM CUONG", "BAN KIM CUONG\nDOI VAT PHAM", "Dong y", "Huy bo");
	}else SendClientMessageEx(playerid,COLOR_GREY,"Ban khong o noi ban kim cuong.");
	return 1;
}

CMD:xemkhoangsan(playerid, params[])
{
    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], name[1280];
	format(str1, sizeof(str), "TONG SO KHOANG SAN : %d", PlayerInfo[playerid][pKhoangSan]);
    format(str2, sizeof(str), "    + Khoang San Da : {404040}%d", PlayerInfo[playerid][pKSDa]);
    format(str3, sizeof(str), "    + Khoang San Sat : {bfbfbf}%d", PlayerInfo[playerid][pKSSat]);
    format(str4, sizeof(str), "    + Khoang San Dong : {995c00}%d", PlayerInfo[playerid][pKSDong]);
    format(str5, sizeof(str), "    + Khoang San Bac : {e6e6e6}%d", PlayerInfo[playerid][pKSBac]);
    format(str6, sizeof(str), "    + Khoang San Vang : {ffff00}%d", PlayerInfo[playerid][pKSVang]);
    format(str7, sizeof(str), "    + Khoang San Kim Cuong : {00ffff}%d", PlayerInfo[playerid][pKSKimCuong]);
    format(str8, sizeof(str), "    + Khoang San Platinum : {00ffff}%d", PlayerInfo[playerid][pKSPlatinum]);
    format(str, sizeof(str), "%s\n\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8);
    format(name, sizeof(name), "THONG TIN");
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_LIST, name, str, "Dong y", "");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_JOBDAODA)
	{
	    if(response)
	    {
			if(listitem == 0)
		    {
				ShowPlayerDialog(playerid, DIALOG_VATPHAMKC, DIALOG_STYLE_LIST, "{ffffff} WOLRP.NET | DOI VAT PHAM", "Deagle - 50 Kim Cuong\nMP5 - 30 Kim Cuong\nShotgun - 15 Kim Cuong\nAK-47 - 150 Kim Cuong\nM4a1 - 150 Kim Cuong", "Dong y", "Huy bo");
				return 1;
			}
		}
	}

	if(dialogid == DIALOG_VATPHAMKC)
	{
	    if(response)
	    {
			if(listitem == 0)
		    {
				if(PlayerInfo[playerid][pKimCuong] >= 50)
				{
				    GivePlayerValidWeapon(playerid, 24, 60000);
				    SendClientMessage(playerid, COLOR_YELLOW, "Ban da doi 50 Kim Cuong de lay mot cay {00ff00}Deagle.");
				    PlayerInfo[playerid][pKimCuong] -= 50;
				}else SendClientMessage(playerid, COLOR_GREEN, "Ban khong co du kim cuong.");
			}
			if(listitem == 1)
		    {
				if(PlayerInfo[playerid][pKimCuong] >= 30)
				{
				    GivePlayerValidWeapon(playerid, 29, 60000);
				    SendClientMessage(playerid, COLOR_YELLOW, "Ban da doi 30 Kim Cuong de lay mot cay {00ff00}MP5.");
				    PlayerInfo[playerid][pKimCuong] -= 30;
				}else SendClientMessage(playerid, COLOR_GREEN, "Ban khong co du kim cuong.");
			}
			if(listitem == 2)
		    {
				if(PlayerInfo[playerid][pKimCuong] >= 15)
				{
				    GivePlayerValidWeapon(playerid, 25, 60000);
				    SendClientMessage(playerid, COLOR_YELLOW, "Ban da doi 15 Kim Cuong de lay mot cay {00ff00}Shotgun.");
				    PlayerInfo[playerid][pKimCuong] -= 15;
				}else SendClientMessage(playerid, COLOR_GREEN, "Ban khong co du kim cuong.");
			}
			if(listitem == 3)
		    {
				if(PlayerInfo[playerid][pKimCuong] >= 150)
				{
				    GivePlayerValidWeapon(playerid, 30, 60000);
				    SendClientMessage(playerid, COLOR_YELLOW, "Ban da doi 100 Kim Cuong de lay mot cay {00ff00}AK-47.");
				    PlayerInfo[playerid][pKimCuong] -= 100;
				}else SendClientMessage(playerid, COLOR_GREEN, "Ban khong co du kim cuong.");
			}
			if(listitem == 4)
		    {
				if(PlayerInfo[playerid][pKimCuong] >= 150)
				{
				    GivePlayerValidWeapon(playerid, 31, 60000);
				    SendClientMessage(playerid, COLOR_YELLOW, "Ban da doi 100 Kim Cuong de lay mot cay {00ff00}M4a1.");
				    PlayerInfo[playerid][pKimCuong] -= 100;
				}else SendClientMessage(playerid, COLOR_GREEN, "Ban khong co du kim cuong.");
			}
		}
	}
    if(dialogid == DIALOG_SELLKIMCUONG && response == 3)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, DIALOG_JOBDAODA, DIALOG_STYLE_INPUT, "{ffffff} WOLRP.NET | SELL KIM CUONG", "BAN KIM CUONG\nDOI VAT PHAM", "Dong y", "Huy bo");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, DIALOG_JOBDAODA, DIALOG_STYLE_INPUT, "{ffffff} WOLRP.NET | SELL KIM CUONG", "BAN KIM CUONG\nDOI VAT PHAM", "Dong y", "Huy bo");
		}
		new kimcuong = strval(inputtext);
		new stringcc[1280];
		if(IsPlayerInRangeOfPoint(playerid, 3.0, -2158.7534, -264.4915, 34.1267))
		{
		    if(PlayerInfo[playerid][pKimCuong] > 0)
		    {
		        if(PlayerInfo[playerid][pKimCuong] >= kimcuong)
				{
			        PlayerInfo[playerid][pKimCuong] -= kimcuong;
			        PlayerInfo[playerid][pCash] += kimcuong * 0;
			        format(stringcc, sizeof(stringcc), "Ban vua ban thanh cong %d vien kim cuong va nhan duoc %d$", GetPlayerNameEx(playerid), kimcuong, kimcuong * 0);
			        //ProxDetectorWrap(playerid, stringcc, 92, 20.0, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
			        SendClientMessage(playerid, COLOR_GREEN, stringcc);
			        SendClientMessage(playerid, COLOR_GREEN, "Ban da mua thanh cong kimcuong.");
			        return 1;
		        }else SendClientMessage(playerid, COLOR_GREEN, "Ban khong co nhieu kim cuong den the.");
		    }else SendClientMessage(playerid, COLOR_GREEN, "Ban khong co vien kim cuong nao de ban'.");
		}
		SendClientMessage(playerid, COLOR_GREEN, "Chuc nang nay hien dang cap nhat.");
	}
	return 1;
}


CMD:daoda(playerid, params[])
{
    if(IsPlayerInRangeOfPoint(playerid, 15.0, -391.1754,4020.1929,30.8601))
    {
        if(DangDaoDa[playerid] == 0)
        {
            if(PlayerInfo[playerid][pLevel] >= 1)
            {
		        SetPlayerAttachedObject(playerid, ATTACH_INDEX, 19631, 6, 0.048, 0.029, 0.103, -80.0, 80.0, 0.0);
				TogglePlayerControllable(playerid, 0);
				SetPlayerArmedWeapon(playerid, 0);
				ApplyAnimation(playerid, "BASEBALL", "Bat_1", 4.1, 1, 0, 0, 1, 0, 1);

				DangDaoDa[playerid] = 1;
				SetPVarInt(playerid, "DaoDaTime_", 20);
				SetTimerEx("DaoDa_", 1000, 0, "d", playerid);
				return 1;
			}else SendClientMessageEx(playerid, COLOR_GREEN, "Ban da gioi han dao da' trong ngay hom nay 30 lan.");
		}else SendClientMessageEx(playerid, COLOR_GREEN, "Ban dang dao da' vui long doi.");
    }
	return 1;
}

forward DaoDa_(playerid);
public DaoDa_(playerid)
{
    SetPVarInt(playerid, "DaoDaTime_", GetPVarInt(playerid, "DaoDaTime_")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~Dang dao da");
    GameTextForPlayer(playerid, string, 1100, 3);
    ApplyAnimation(playerid, "BASEBALL", "Bat_1", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DaoDaTime_") > 0) SetTimerEx("DaoDa_", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DaoDaTime_") <= 0)
    {
        DeletePVar(playerid, "DaoDaTime_");
        DeletePVar(playerid, "DaoDa_");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

		if(IsPlayerInRangeOfPoint(playerid, 15.0, -391.1754,4020.1929,30.8601))
		{
   			new randomselect = random(99);
		    switch(randomselect)
		    {
				case 0..94:
				{
					SendClientMessageEx(playerid, COLOR_GREEN, "{00ff00}Ban nhan duoc 1 cuc da' , hay giao no den dia diem duoc danh dau tren ban do.");
	                DangDaoDa[playerid] = 1;
	                SetPlayerCheckpoint(playerid, -348.4955,4029.4265,30.6593, 3.0);
	                SetPVarInt(playerid, "GiaoDa", 1);
	                SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
					SetPlayerAttachedObject(playerid, 3, 2936, 5, 0.105, 0.086, 0.22, -80.3, 3.3, 28.7, 0.35, 0.35, 0.35, 0xAA3333AA);
		        }
				case 95..100:
				{
					SendClientMessageEx(playerid, COLOR_GREY, "Ban vua dao` duoc {00ff00}1 Kim Cuong{ff00ff}.");
	                DangDaoDa[playerid] = 0;
	                //SetPlayerCheckpoint(playerid, 618.3543,890.5537,-37.1285, 3.0);
					//SetPVarInt(playerid, "GiaoDa", 2);
					PlayerInfo[playerid][pKimCuong] += 1;
					DeletePVar(playerid, "GiaoDa");
			        DeletePVar(playerid, "DaoDaTime_");
			        DeletePVar(playerid, "DaoDa_");
			        DangDaoDa[playerid] = 0;

			        RemovePlayerAttachedObject(playerid, ATTACH_INDEX1);
					SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
	                //SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
					//SetPlayerAttachedObject(playerid, ATTACH_INDEX, 2936, 5, 0.105, 0.086, 0.22, -80.3, 3.3, 28.7, 0.35, 0.35, 0.35, 0xAA3333AA);
				}
			}
		}
	    //===
		TogglePlayerControllable(playerid, 1);
	   	DeletePVar(playerid, "DaoDaTime_");
        return 1;
    }
    return 1;
}

hook OnPlayerConnect(playerid)
{
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if(DangDaoDa[playerid] == 1)
	{
	    DeletePVar(playerid, "GiaoDa");
        DeletePVar(playerid, "DaoDaTime_");
        DeletePVar(playerid, "DaoDa_");
        DangDaoDa[playerid] = 0;

        RemovePlayerAttachedObject(playerid, ATTACH_INDEX1);
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
	}
	
	DeletePVar(playerid, "GiaoDa");
    DeletePVar(playerid, "KhaiThacTime");
    DeletePVar(playerid, "KhaiThac");
    DangDaoDa[playerid] = 0;
	return 1;
}

hook OnPlayerDeath(playerid, killerid, reason)
{
	if(DangDaoDa[playerid] == 1)
	{
	    DeletePVar(playerid, "GiaoDa");
        DeletePVar(playerid, "DaoDaTime_");
        DeletePVar(playerid, "DaoDa_");
        DangDaoDa[playerid] = 0;

        RemovePlayerAttachedObject(playerid, ATTACH_INDEX1);
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
	}
	if(DangDaoDaa[playerid] == 1)
	{
        DangDaoDa[playerid] = 0;

        RemovePlayerAttachedObject(playerid, ATTACH_INDEX1);
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
	}
	
	DeletePVar(playerid, "GiaoDa");
    DeletePVar(playerid, "KhaiThacTime");
    DeletePVar(playerid, "KhaiThac");
    DangDaoDa[playerid] = 0;
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid)
{
    if(GetPVarInt(playerid, "GiaoDa") == 1)
    {
        if(IsPlayerInRangeOfPoint(playerid, 3.0, -348.4955,4029.4265,30.6593))
        {
	        DisablePlayerCheckpoint(playerid);

	        SetPVarInt(playerid, "GiaoDa", 0);
	        DeletePVar(playerid, "GiaoDa");

	        DeletePVar(playerid, "DaoDaTime_");
	        DeletePVar(playerid, "DaoDa_");

	        DangDaoDa[playerid] = 0;

	        RemovePlayerAttachedObject(playerid, 3);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

			ApplyAnimation(playerid, "CARRY", "putdwn05", 4.1, 0, 1, 1, 0, 0, 1);
			ClearAnimations(playerid);
	        TogglePlayerControllable(playerid, 1);

			new money = 2500+random(1);
			PlayerInfo[playerid][pCash] += money;

			new string[1280];
			format(string, sizeof(string), "Ban da giao thanh cong mot cuc da' , va nhan duoc %d", money);
			SendClientMessageEx(playerid, COLOR_GREEN, string);

			PlayerInfo[playerid][pSLDaoDa] += 1;
	        return 1;
        }
    }
	return 1;
}

CMD:khaithac(playerid, params[])
{
	if(PlayerInfo[playerid][pJob] == 30 || PlayerInfo[playerid][pJob2] == 30)
	{
	    if(IsPlayerInRangeOfPoint(playerid, 100.0, 624.7720,878.5823,-42.9609))
		{
		    if(!IsPlayerInRangeOfPoint(playerid, 30.0, 589.7015,870.4734,-42.4973))
		    {
		        if(DangDaoDa[playerid] == 0)
	        	{
	        	    if(PlayerInfo[playerid][pKhoangSan] <= 50)
	        	    {
		        	    SetPlayerAttachedObject(playerid, ATTACH_INDEX, 19631, 6, 0.048, 0.029, 0.103, -80.0, 80.0, 0.0);
						TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, 0);
						ApplyAnimation(playerid, "BASEBALL", "Bat_1", 4.1, 1, 0, 0, 1, 0, 1);

						DangDaoDa[playerid] = 1;
						SetPVarInt(playerid, "KhaiThacTime", 20);
						SetTimerEx("KhaiThac", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GREEN, "Ban da dat so luong toi da 50 / 50 khoang san , hay di rua~ no.");
	        	}else SendClientMessageEx(playerid, COLOR_GREEN, "Ban dang khai thac roi , vui long doi.");
		    }else SendClientMessageEx(playerid, COLOR_GREEN, "Ban khong the dung o day va khai thac duoc.");
		}else SendClientMessageEx(playerid, COLOR_GREEN, "Ban khong o khu vuc khai thac.");
	}else SendClientMessageEx(playerid, COLOR_GREEN, "Ban can phai nhan cong viec khai thac khoang san mo co the /khaithac.");
	return 1;
}

forward KhaiThac(playerid);
public KhaiThac(playerid)
{
    SetPVarInt(playerid, "KhaiThacTime", GetPVarInt(playerid, "KhaiThacTime")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~Dang khai thac");
    GameTextForPlayer(playerid, string, 1100, 3);
    ApplyAnimation(playerid, "BASEBALL", "Bat_1", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "KhaiThacTime") > 0) SetTimerEx("KhaiThac", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "KhaiThacTime") <= 0)
    {
        DeletePVar(playerid, "KhaiThacTime");
        DeletePVar(playerid, "KhaiThac");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

		if(IsPlayerInRangeOfPoint(playerid, 100.0, 624.7720,878.5823,-42.9609))
		{
			new rand = random(100);
			switch(rand)
			{
				case 0..50:
				{
		   			SendClientMessageEx(playerid, COLOR_GREY, "Ban vua dao duoc mot cai gi do.");
		            DangDaoDa[playerid] = 0;

					PlayerInfo[playerid][pKhoangSan] += 1;
					DeletePVar(playerid, "GiaoDa");
			        DeletePVar(playerid, "KhaiThacTime");
			        DeletePVar(playerid, "KhaiThac");
			        DangDaoDa[playerid] = 0;

			        new str[1280];
				    format(str, sizeof(str), "%s vua khai thac duoc mot cai gi do.", GetPlayerNameEx(playerid));
					ProxDetector(30.0, playerid, str, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);

			        RemovePlayerAttachedObject(playerid, 3);
					SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
				}
				case 51..100:
				{
				    SendClientMessageEx(playerid, COLOR_GREY, "Ban vua khai thac duoc mot cuc cuc cho'.");
		            DangDaoDa[playerid] = 0;

					//PlayerInfo[playerid][pKhoangSan] += 1;
					DeletePVar(playerid, "GiaoDa");
			        DeletePVar(playerid, "KhaiThacTime");
			        DeletePVar(playerid, "KhaiThac");
			        DangDaoDa[playerid] = 0;

			        new str[1280];
				    format(str, sizeof(str), "%s vua khai thac duoc mot cai gi do.", GetPlayerNameEx(playerid));
					ProxDetector(30.0, playerid, str, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);

			        RemovePlayerAttachedObject(playerid, 3);
					SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
				}
			}
		}
	    //===
		TogglePlayerControllable(playerid, 1);
	   	DeletePVar(playerid, "KhaiThac");
        return 1;
    }
    return 1;
}

CMD:ruakhoangsan(playerid, params[])
{
	if(PlayerInfo[playerid][pJob] == 30 || PlayerInfo[playerid][pJob2] == 30)
	{
	    if(PlayerInfo[playerid][pKhoangSan] > 0)
	    {
	        if(IsPlayerInRangeOfPoint(playerid, 5.0, -1725.3140,227.3624,1.9609))
	        {
	            if(DangDaoDa[playerid] == 0)
	            {
		            DangDaoDa[playerid] = 1;
                    ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, 1, 0, 0, 1, 0, 1);
		            SetPVarInt(playerid, "KhoangSanTime", 20);
					SetTimerEx("KhoangSan", 1000, 0, "d", playerid);
		            return 1;
	            }else SendClientMessageEx(playerid, COLOR_GREY, "Ban dang rua khoang san roi , vui long doi.");
	        }else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong dung o noi rua khoang san.");
	    }else SendClientMessageEx(playerid, COLOR_GREY, "Hien tai ban chua co mot cuc khoang san nao de rua~ het.");
	}else SendClientMessageEx(playerid, COLOR_GREY, "Ban chua nhan cong viec Khai Thac Khoang San.");
	return 1;
}

forward KhoangSan(playerid);
public KhoangSan(playerid)
{
    SetPVarInt(playerid, "KhoangSanTime", GetPVarInt(playerid, "KhoangSanTime")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~Dang rua khoang san");
    GameTextForPlayer(playerid, string, 1100, 3);
    ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "KhoangSanTime") > 0) SetTimerEx("KhoangSan", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "KhoangSanTime") <= 0)
    {
        DeletePVar(playerid, "KhoangSanTime");
        DeletePVar(playerid, "KhoangSan");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

		if(IsPlayerInRangeOfPoint(playerid, 5.0, -1725.3140,227.3624,1.9609))
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban vua dao duoc mot cai gi do.");
            DangDaoDa[playerid] = 0;

			PlayerInfo[playerid][pKhoangSan] -= 1;
			DeletePVar(playerid, "GiaoDa");
	        DeletePVar(playerid, "KhoangSanTime");
	        DeletePVar(playerid, "KhoangSan");
	        DangDaoDa[playerid] = 0;

	        new str[1280];
		    format(str, sizeof(str), "%s vua rua~ thanh cong mot cuc khoang san..", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, str, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);

	        RemovePlayerAttachedObject(playerid, 3);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
			
			new rand = random(100);
			switch(rand)
			{
			    case 0..40: // dá,s?t, d?ng ,b?c ,vàng ,kim cuong ,platium
			    {
                    SendClientMessageEx(playerid, -1, "Ban vua rua thanh cong mot khoang san va nhan duoc 1 cuc {404040}DA");
                    PlayerInfo[playerid][pKSDa] += 1;
			    }
			    case 41..60: // dá,s?t, d?ng ,b?c ,vàng ,kim cuong ,platium
			    {
                    SendClientMessageEx(playerid, -1, "Ban vua rua thanh cong mot khoang san va nhan duoc 1 cuc {bfbfbf}SAT");
                    PlayerInfo[playerid][pKSSat] += 1;
			    }
			    case 61..70: // dá,s?t, d?ng ,b?c ,vàng ,kim cuong ,platium
			    {
                    SendClientMessageEx(playerid, -1, "Ban vua rua thanh cong mot khoang san va nhan duoc 1 cuc {995c00}DONG");
                    PlayerInfo[playerid][pKSDong] += 1;
			    }
			    case 71..80: // dá,s?t, d?ng ,b?c ,vàng ,kim cuong ,platium
			    {
                    SendClientMessageEx(playerid, -1, "Ban vua rua thanh cong mot khoang san va nhan duoc 1 cuc {e6e6e6}BAC");
                    PlayerInfo[playerid][pKSBac] += 1;
			    }
			    case 81..90: // dá,s?t, d?ng ,b?c ,vàng ,kim cuong ,platium
			    {
                    SendClientMessageEx(playerid, -1, "Ban vua rua thanh cong mot khoang san va nhan duoc 1 cuc {ffff00}VANG");
                    new strcc[1280];
		    		format(strcc, sizeof(strcc), "%s vua rua thanh cong mot khoang san va nhan duoc 1 cuc {ffff00}VANG", GetPlayerNameEx(playerid));
                    ProxDetector(30.0, playerid, strcc, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
                    PlayerInfo[playerid][pKSVang] += 1;
			    }
			    case 91..96: // dá,s?t, d?ng ,b?c ,vàng ,kim cuong ,platium
			    {
                    SendClientMessageEx(playerid, -1, "Ban vua rua thanh cong mot khoang san va nhan duoc 1 cuc {00ffff}KIM CUONG");
                    new strcc[1280];
		    		format(strcc, sizeof(strcc), "%s vua rua thanh cong mot khoang san va nhan duoc 1 cuc {00ffff}KIM CUONG", GetPlayerNameEx(playerid));
                    ProxDetector(30.0, playerid, strcc, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
                    PlayerInfo[playerid][pKSKimCuong] += 1;
			    }
			    case 97..100: // dá,s?t, d?ng ,b?c ,vàng ,kim cuong ,platium
			    {
                    SendClientMessageEx(playerid, -1, "Ban vua rua thanh cong mot khoang san va nhan duoc 1 cuc {00ffff}Platinum");
                    new strcc[1280];
		    		format(strcc, sizeof(strcc), "%s vua rua thanh cong mot khoang san va nhan duoc 1 cuc {ff00ff}Platinum", GetPlayerNameEx(playerid));
                    ProxDetector(30.0, playerid, strcc, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
                    PlayerInfo[playerid][pKSPlatinum] += 1;
			    }
			}
		}
        return 1;
    }
    return 1;
}
