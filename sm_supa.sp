#include <sourcemod>
#define PLUGIN_VERSION "1.0"

public Plugin myinfo = 
{
    name = "Admin Name",
    author = "SupaDupaKjpski",
    description = "Admin Name Command",
    version = PLUGIN_VERSION,
    url = "http://www.sourcemod.net/"
};

public OnPluginStart
{
    RegConsoleCmd("sm_supa", Command_supa);
}

public Action:Command_Supa(client, args)
{
    if (CheckCommandAccess(client, "", ADMFLAG_CUSTOM2) || CheckCommandAccess(client, "", ADMFLAG_UNBAN))
    {
        PrintToChatAll("SupaDupaKjpski");
    }
    return Plugin_Handled
}
