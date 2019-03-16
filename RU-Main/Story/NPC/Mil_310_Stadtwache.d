
instance Mil_310_Stadtwache(Npc_Default)
{
	name[0] = NAME_Stadtwache;
	guild = GIL_MIL;
	id = 310;
	voice = 7;
	flags = 0;
	npcType = npctype_main;
	aivar[AIV_NewsOverride] = TRUE;
	B_SetAttributesToChapter(self,6);
	fight_tactic = FAI_NAILED;
	EquipItem(self,ItMw_1h_Mil_Sword);
	EquipItem(self,ItRw_Mil_Crossbow);
	CreateInvItems(self,ItRw_Bolt,10);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Psionic",Face_N_Raven,BodyTex_N,ITAR_MIL_L);
	Mdl_SetModelFatness(self,1);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,100);
	daily_routine = Rtn_Start_310;
};


func void Rtn_Start_310()
{
	TA_Guard_Passage(8,0,22,0,"NW_CITY_ENTRANCE_GUARD_02");
	TA_Guard_Passage(22,0,8,0,"NW_CITY_ENTRANCE_GUARD_02");
};
