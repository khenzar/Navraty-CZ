
instance STRF_1156_Leiche(Npc_Default)
{
	name[0] = NAME_Straefling;
	guild = GIL_STRF;
	id = 1156;
	voice = 8;
	flags = 0;
	npcType = NPCTYPE_OCMAIN;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 1;
	attribute[ATR_HITPOINTS] = 1;
	fight_tactic = FAI_HUMAN_COWARD;
	B_CreateAmbientInv(self);
	EquipItem(self,ItMw_StoneHammer);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_L_Tough02,BodyTex_L,ITAR_Bau_L_02);
	Mdl_SetModelFatness(self,2);
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,15);
	daily_routine = Rtn_Start_1156;
};


func void Rtn_Start_1156()
{
	TA_Stand_Guarding(8,0,23,0,"OW_MINE3_LEICHE_09");
	TA_Stand_Guarding(23,0,8,0,"OW_MINE3_LEICHE_09");
};

