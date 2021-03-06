
instance DJG_735_ToterDrachenjaeger(Npc_Default)
{
	name[0] = NAME_ToterDrachenjaeger;
	guild = GIL_DJG;
	id = 735;
	voice = 6;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	B_SetAttributesToChapter(self,5);
	aivar[AIV_MM_RestStart] = TRUE;
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_2h_Sld_Sword);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Psionic",Face_N_Richter,BodyTex_N,itar_djg_l);
	Mdl_SetModelFatness(self,1);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,65);
	daily_routine = Rtn_Start_735;
};


func void Rtn_Start_735()
{
	TA_Sit_Bench(8,0,23,0,"OW_DRAGONSWAMP_023");
	TA_Sit_Bench(23,0,8,0,"OW_DRAGONSWAMP_023");
};

