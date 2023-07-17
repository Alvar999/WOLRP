#pragma disablerecursion

#define SERVER_GM_TEXT "GSM.NET"

#include <a_samp>
#include <a_actor>
#include <a_mysql>	
#include <streamer>
#include <yom_buttons>
#include <ZCMD>
#include <sscanf2>
#include <foreach>
#include <YSI\y_timers>
#include <YSI\y_utils>
#include <keypad>
#include <sampvoice>

#if defined SOCKET_ENABLED
#include <socket>
#endif
#include "cuozginc/loading.pwn"
#include "cuozginc/textdraw.pwn"

#include "cauca.pwn"
#include "./includes/NGGnew.pwn"
#include "./includes/NCS.pwn"
#include "./includes/TX.pwn"
#include "./includes/DaoDa.pwn"
//#include "./includes/toglichsu.pwn"

main() {}

public OnGameModeInit()
{
	g_mysql_Init();
	gstream = SvCreateGStream(0xffff0000, "Global");
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
    if (gstream) SvDeleteStream(gstream);
	return 1;
}
