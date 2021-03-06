
instance DIA_PAL_7519_RITTER_EXIT(C_Info)
{
	npc = pal_7519_ritter;
	nr = 999;
	condition = dia_pal_7519_ritter_exit_condition;
	information = dia_pal_7519_ritter_exit_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int dia_pal_7519_ritter_exit_condition()
{
	return TRUE;
};

func void dia_pal_7519_ritter_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DIA_PAL_7519_RITTER_PEOPLE(C_Info)
{
	npc = pal_7519_ritter;
	nr = 3;
	condition = dia_pal_7519_ritter_people_condition;
	information = dia_pal_7519_ritter_people_info;
	permanent = TRUE;
	description = "Кто у вас командир?";
};


func int dia_pal_7519_ritter_people_condition()
{
	if(KAPITELORCATC == FALSE)
	{
		return TRUE;
	};
};

func void dia_pal_7519_ritter_people_info()
{
	AI_Output(other,self,"DIA_PAL_7519_RITTER_People_01_00");	//Кто у вас командир?
	AI_Output(self,other,"DIA_PAL_7519_RITTER_People_01_01");	//Нашим отрядом сейчас командует паладин Альберт.
	AI_Output(self,other,"DIA_PAL_7519_RITTER_PEOPLE_01_02");	//Ты найдешь его в глубине пещеры, что недалеко отсюда.
};


instance DIA_PAL_7519_RITTER_LOCATION(C_Info)
{
	npc = pal_7519_ritter;
	nr = 2;
	condition = dia_pal_7519_ritter_location_condition;
	information = dia_pal_7519_ritter_location_info;
	permanent = TRUE;
	description = "Что ты можешь рассказать о местности?";
};


func int dia_pal_7519_ritter_location_condition()
{
	if(KAPITELORCATC == FALSE)
	{
		return TRUE;
	};
};

func void dia_pal_7519_ritter_location_info()
{
	AI_Output(other,self,"DIA_PAL_7519_RITTER_LOCATION_01_00");	//Что ты можешь рассказать интересного об этой местности?
	AI_Output(self,other,"DIA_PAL_7519_RITTER_LOCATION_01_01");	//Наверху, над нами находится лагерь бывших каторжников.
	AI_Output(self,other,"DIA_PAL_7519_RITTER_LOCATION_01_02");	//Хотя они и не почитают Инноса, но однако с ними все же можно иметь дело.
	AI_Output(self,other,"DIA_PAL_7519_RITTER_LOCATION_01_03");	//За рекой достаточно опасный лес, но орков в нем нет!
	AI_Output(self,other,"DIA_PAL_7519_RITTER_LOCATION_01_04");	//Все они внизу, на побережье - у них там вроде лагеря.
};


instance DIA_PAL_7519_RITTER_STANDARD(C_Info)
{
	npc = pal_7519_ritter;
	nr = 1;
	condition = dia_pal_7519_ritter_standard_condition;
	information = dia_pal_7519_ritter_standard_info;
	permanent = TRUE;
	description = "Как обстановка?";
};


func int dia_pal_7519_ritter_standard_condition()
{
	if(KAPITELORCATC == FALSE)
	{
		return TRUE;
	};
};

func void dia_pal_7519_ritter_standard_info()
{
	AI_Output(other,self,"DIA_PAL_7519_RITTER_Standard_01_00");	//Как обстановка?
	AI_Output(self,other,"DIA_PAL_7519_RITTER_Standard_01_01");	//Пока все тихо.
};


instance DIA_PAL_7519_RITTER_GOTOKILLORCSLAVES(C_Info)
{
	npc = pal_7519_ritter;
	nr = 1;
	condition = dia_pal_7519_ritter_gotokillorcslaves_condition;
	information = dia_pal_7519_ritter_gotokillorcslaves_info;
	permanent = FALSE;
	important = TRUE;
};


func int dia_pal_7519_ritter_gotokillorcslaves_condition()
{
	if((MIS_ORCORDER == LOG_Running) && (GOTOKILLORCSLAVES == TRUE) && (GOTOKILLORCSLAVESDONE == FALSE))
	{
		return TRUE;
	};
};

func void dia_pal_7519_ritter_gotokillorcslaves_info()
{
	AI_Output(self,other,"DIA_PAL_7519_RITTER_GoToKillOrcSlaves_01_00");	//Альберт отдал мне распоряжение - отправиться с тобой на поиски отряда орков.
	AI_Output(other,self,"DIA_PAL_7519_RITTER_GoToKillOrcSlaves_01_01");	//Все верно. Лишняя помощь мне не помешает.
	AI_Output(self,other,"DIA_PAL_7519_RITTER_GoToKillOrcSlaves_01_02");	//Хорошо! Тогда мой меч в твоем распоряжении.
	AI_StopProcessInfos(self);
	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Npc_ExchangeRoutine(self,"FOLLOW");
	PALTWOORCSLAVE = TRUE;
};


instance DIA_PAL_7519_RITTER_GOTOKILLORCSLAVESDONE(C_Info)
{
	npc = pal_7519_ritter;
	nr = 1;
	condition = dia_pal_7519_ritter_gotokillorcslavesdone_condition;
	information = dia_pal_7519_ritter_gotokillorcslavesdone_info;
	permanent = FALSE;
	important = TRUE;
};


func int dia_pal_7519_ritter_gotokillorcslavesdone_condition()
{
	if((MIS_ORCORDER == LOG_Running) && (GOTOKILLORCSLAVES == TRUE) && (PALTWOORCSLAVE == TRUE) && (GOTOKILLORCSLAVESDONE == TRUE))
	{
		return TRUE;
	};
};

func void dia_pal_7519_ritter_gotokillorcslavesdone_info()
{
	AI_Output(self,other,"DIA_PAL_7519_RITTER_GoToKillOrcSlavesDone_01_00");	//Тебе нужно вернуться в лагерь - Альберт должен знать, что здесь произошло!
	AI_Output(other,self,"DIA_PAL_7519_RITTER_GoToKillOrcSlavesDone_01_01");	//Само собой.
	AI_StopProcessInfos(self);
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Npc_ExchangeRoutine(self,"AfterBattle");
};

