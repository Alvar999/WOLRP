hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == DIALOG_BANCANSA) {
		if(response) {
			if(strval(inputtext) > 0) {
				if(PlayerInfo[playerid][pCanSa] >= strval(inputtext)) {
					new string[128];
					PlayerInfo[playerid][pCanSa] -= strval(inputtext);
					GivePlayerCash(playerid, strval(inputtext)*4500);
					format(string, 128, "Ban da ban %d tui can va nhan duoc $%d", strval(inputtext), strval(inputtext)*4500);
					SendClientMessage(playerid, -1, string);
				}
				else
					SendClientMessage(playerid, -1,"So luong khong hop le! hay kiem tra lai so luong cua ban");
			}
			else
				SendClientMessage(playerid, -1,"So luong can ban phai lon hon 0!");
		}
	}
	return 1;
}

hook OnGameModeInit() {
	DynamicCP_Harvest = CreateDynamicCP(-2664.5313, 238.9975, 3.9512, 1, .streamdistance = 2); // Ban
	return 1;
}

public OnPlayerEnterDynamicCP(playerid, checkpointid) {
	if(checkpointid == DynamicCP_Harvest) { // Ban can sa
		if(PlayerInfo[playerid][pCanSa] > 0) {
			new string[128];
			format(string, 128, "\nTui can sa cua ban: %d\nGia tien $%d/tui\nNhap so luong ban muon ban:", PlayerInfo[playerid][pCanSa], 4500);
			ShowPlayerDialog(playerid, DIALOG_BANCANSA, DIALOG_STYLE_INPUT, "Ban can sa", string,"Ban","Huy");
		}
		else
			SendClientMessage(playerid, -1,"Ban can phai co tui can sa de buoc vao day!");
	}
	return 1;
}
