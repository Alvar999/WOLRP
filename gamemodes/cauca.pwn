#include <YSI\y_hooks>

#define        MAX_FISH_SLOT      10
#define        DIALOG_LISTFISH 15022
#define       DIALOG_ACTORF 15023
#define         DIALOG_BANCA 15024
enum InventoryFish {
	pCanCau,
    pMoiCau,
	pFish[MAX_FISH_SLOT], // 10 loai ca'
}
new PlayerFInv[MAX_PLAYERS][InventoryFish];
enum fishvari {
	fishname[32],
	fishtype[40],
	fishprice,
}
new FishingStr[][fishvari] =
{
	{"None","None", 200}, // 0
	{"Ca ro","Nho", 30000},
	{"Ca ro","Nho", 30000},
	{"Ca ro","Nho", 30000},
	{"Ca ro","Nho", 30000}, // 0
	{"Ca sac","Nho", 30000}, // 1
	{"Ca linh","Nho", 40000}, // 2
	{"Ca Loc","vua", 100000}, // 2
	{"Ca Tra","Vua", 100000}, // 2
	{"Ca map","Lon", 500000} // 2
};
new ActorFish;
//new PlayerVehicleThue[MAX_PLAYERS] = INVALID_VEHICLE_ID;
 /*
CMD:tuica(playerid,params[]) {
	new string[500];
	string = "STT\tTen ca\tLoai ca\n";
	for(new i = 0; i <10 ; i++) {
		if(PlayerFInv[playerid][pFish][i] != 0) {
			printf("%d", PlayerFInv[playerid][pFish][i]);
			format(string, sizeof(string), "%s%d\t%s\t%s\n", string,i,FishingStr[PlayerFInv[playerid][pFish][i]][fishname],FishingStr[PlayerFInv[playerid][pFish][i]][fishtype]);
		}
	}
	ShowPlayerDialog(playerid, DIALOG_LISTFISH, DIALOG_STYLE_TABLIST_HEADERS, "Tui ca", string, "Xac nhan", "Thoat");
	return 1;
}
stock CheckEmptyTuiCa(playerid) {
	new check = 0;
	for(new i = 0; i < 10 ; i++ ) {
		if(PlayerFInv[playerid][pFish][i] == 0) {
			check = 1; 
			break;
		}
	}
	return check;
}
stock AddTuiCa(playerid, caid) {
	if(CheckEmptyTuiCa(playerid) == 0) return SendClientMessage(playerid,-1,"Tui ca da day");
	for(new i = 0; i < 10 ; i++ ) {
		if(PlayerFInv[playerid][pFish][i] == 0) {
			PlayerFInv[playerid][pFish][i] = caid;
			break ;
		}
	}
	return 1;
}
CMD:cauca(playerid,params[]) {
    if(IsPlayerInRangeOfPoint(playerid, 20,-1330.6273,804.2515,-0.6046)) {
    	if(IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1, "Hay xuong thuyen moi co the cau ca.");
    	SetPVarInt(playerid, "DangCauCa", 1);
        ApplyAnimation(playerid, "SAMP", "FishingIdle", 3.0,1,1,0,0,0);
        TogglePlayerControllable(playerid, true);
        SetPlayerAttachedObject( playerid, 9, 18632, 1, -0.091109, 0.255484, 0.018155, 94.362060, 312.328125, 190.418655, 1.000000, 1.000000, 1.000000 );
        SetTimerEx("FishingProd", 12000, 0, "d", playerid);
        GameTextForPlayer(playerid, "Dang cau ca...", 12000, 1);
    }
    else {
    	SendClientMessage(playerid, -1, "Ban khong o noi cau ca.");
    }
    return 1;
}
CMD:thuethuyen(playerid,params[]) {
	if(IsPlayerInRangeOfPoint(playerid, 5, -1482.5288,692.0466,1.3203)) {
		if(PlayerVehicleThue[playerid] != INVALID_VEHICLE_ID) return SendClientMessageEx(playerid,-1,"Ban da thue thuyen roi.");
		SendClientMessageEx(playerid,-1,"Ban da thue thuyen thanh cong.");
		SetPlayerPos(playerid,-1460.8247,719.1868,-0.2169);
		PlayerVehicleThue[playerid] = CreateVehicle(473, -1460.8247,719.1868,-0.2169, random(10), random(10), -1);
		PutPlayerInVehicle(playerid, PlayerVehicleThue[playerid], 0);
	}
	return 1;
}
hook OnGameModeInit() {
    ActorFish = CreateActor(23,-1482.5288,692.0466,1.3203,273.2589);
    Create3DTextLabel("Tuong tac NPC de mua dung cu", -1, -1482.5288,692.0466,1.3203,100, 0,0);
}
hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(IsPlayerInRangeOfActor(playerid, ActorFish))
	{
		ShowPlayerDialog(playerid, DIALOG_ACTORF, DIALOG_STYLE_LIST, "Mua dung cu", "Mua can cau\nMua moi cau\nThue thuyen", "Dong y", "Thoat");
	}
}*/
