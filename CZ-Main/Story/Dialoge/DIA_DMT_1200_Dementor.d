
instance DIA_BridgeDementor_EXIT(C_Info)
{
	npc = DMT_1200_Dementor;
	nr = 999;
	condition = DIA_BridgeDementor_EXIT_Condition;
	information = DIA_BridgeDementor_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_BridgeDementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_BridgeDementor_EXIT_Info()
{
	Wld_StopEffect("DEMENTOR_FX");
	B_SCIsObsessed(self);
	AI_StopProcessInfos(self);
	Npc_SetRefuseTalk(self,30);
	B_Attack(self,other,AR_KILL,1);
	Snd_Play("MFX_FEAR_CAST");
	self.aivar[AIV_EnemyOverride] = FALSE;
};


instance DIA_BridgeDementor(C_Info)
{
	npc = DMT_1200_Dementor;
	nr = 1;
	condition = DIA_BridgeDementor_Condition;
	information = DIA_BridgeDementor_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_BridgeDementor_Condition()
{
	if(Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_BridgeDementor_Info()
{
	var int randyspeech;

	randyspeech = Hlp_Random(2);

	if(randyspeech == FALSE)
	{
		Snd_Play("DEM_RITUAL_01");
	}
	else
	{
		Snd_Play("DEM_RITUAL_02");
	};

	//Wld_PlayEffect("DEMENTOR_FX",hero,hero,0,0,0,FALSE);
	Wld_PlayEffect("spellFX_Fear",self,self,0,0,0,FALSE);
	AI_PlayAni(self,"T_PRACTICEMAGIC5");

	AI_Output(self,other,"DIA_BridgeDementor_19_00");	//Věděl jsem, že přijdeš.
	AI_Output(self,other,"DIA_BridgeDementor_19_01");	//Můj Pán přivede celý svět pod svoji vládu.
	AI_Output(self,other,"DIA_BridgeDementor_19_02");	//Ty zatracený blázne! Měl jsem tušení že jsi proti nám a teď tě za to potrestám!
	Npc_SetRefuseTalk(self,30);

	if(SBMODE == TRUE)
	{
		Wld_SpawnNpcRange(hero,Skeleton_Dark,3,500);
	}
	else if(SBMODE == 2)
	{
		Wld_SpawnNpcRange(hero,Skeleton_Dark,2,500);
	}
	else
	{
		Wld_SpawnNpcRange(hero,Skeleton_Dark,1,500);
	};
};