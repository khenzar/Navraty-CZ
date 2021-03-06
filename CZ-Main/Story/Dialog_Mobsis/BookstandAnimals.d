
var int Animals_1_permanent;
var int Animals_2_permanent;
var int Animals_3_permanent;

func void Use_BookstandAnimals1_S1()
{
	var C_Npc her;
	var int nDocID;
	var int rnd;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
		Doc_SetFont(nDocID,-1,Font_Book_New_Small);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"Lov a kořist");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"Z každého zvířete či nestvůry může schopný lovec získat nějakou trofej.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"Ten, kdo je v tomto umění zběhlý, by měl tyto trofeje nejen znát, ale měl by je i umět získat.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Vyjmutí zubů");
		Doc_PrintLines(nDocID,0,"Spousta šelem i ostatních tvorů používá jako zbraň zuby. Týká se to především vlků, chňapavců, stínových šelem, močálových žraloků a trolů - ode všech dokáže zdatný lovec získat zuby.");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"Stahování kůží");
		Doc_PrintLines(nDocID,1,"Zkušení lovci si také velmi cení kůží a kožešin spousty zvířat, například ovcí, vlků a stínových šelem.");
		Doc_PrintLines(nDocID,1,"Ten, kdo se v těchto věcech vyzná, dokáže stáhnout kůži i z močálových žraloků a číhavců.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"Vyjmutí drápů");
		Doc_PrintLines(nDocID,1,"Toto umění lze uplatnit na určitých ještěrech, chňapavcích, číhavcích a stínových šelmách.");
		Doc_Show(nDocID);
		if(Animals_1_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			Animals_1_permanent = TRUE;
			B_Say(self,self,"$HOWINTEREST");
			RankPoints = RankPoints + 1;

			if(RhetorikSkillValue[1] < 100)
			{
				RhetorikSkillValue[1] = RhetorikSkillValue[1] + 1;
				AI_Print("Rétorika + 1");
			};
		}
		else
		{
			rnd = Hlp_Random(100);
			if(rnd <= 30)
			{
				B_Say(self,self,"$NOTHINGNEW");
			}
			else if(rnd <= 60)
			{
				B_Say(self,self,"$NOTHINGNEW02");
			}
			else if(rnd <= 99)
			{
				B_Say(self,self,"$NOTHINGNEW03");
			};
		};
		if((BookBonus_90 == FALSE) && ((self.guild == GIL_KDF) || (self.guild == GIL_KDW) || (self.guild == GIL_KDM) || (self.guild == GIL_GUR) || (self.guild == GIL_NDM) || (self.guild == GIL_NDW) || (self.guild == GIL_NOV)))
		{
			ATR_INTELLECT += 1;
			Npc_SetTalentSkill(self,NPC_TALENT_INTELLECT,ATR_INTELLECT);
			AI_Print("Inteligence + 1");
			BookBonus_90 = TRUE;
		};
	};
};

func void Use_BookstandAnimals2_S1()
{
	var C_Npc her;
	var int nDocID;
	var int rnd;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
		Doc_SetFont(nDocID,-1,Font_Book_New_Small);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"Lov a kořist");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"Z každého zvířete či nestvůry může schopný lovec získat nějakou trofej, která mu přinese slávu i bohatství.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Krvavé mouchy");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"K vyvržení těchto létajících ďáblů je zapotřebí hned dvou dovedností:");
		Doc_PrintLines(nDocID,0,"vyjmutí křídel a extrakce žihadla.");
		Doc_PrintLines(nDocID,0,"Obě tyto dovednosti by měli používat pouze zkušení lovci.");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Polní škůdci a důlní červi útočí svými mocnými kusadly. Zvláště kusadla důlních");
		Doc_PrintLines(nDocID,1,"červů jsou cenné, neboť obsahují výměšek zvyšující magickou moc. Lze ho však");
		Doc_PrintLines(nDocID,1,"používat pouze v omezeném množství, neboť lidské tělo si na něj po čase zvykne a přestane jeho účinky přijímat.");
		Doc_PrintLines(nDocID,1,"Velké oblibě se těší i krunýře důlních červů, ze kterých se vyrábí kvalitní zbroj.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"");
		Doc_Show(nDocID);
		if(Animals_2_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			Animals_2_permanent = TRUE;
			B_Say(self,self,"$HOWINTEREST");
			RankPoints = RankPoints + 1;

			if(RhetorikSkillValue[1] < 100)
			{
				RhetorikSkillValue[1] = RhetorikSkillValue[1] + 1;
				AI_Print("Rétorika + 1");
			};
		}
		else
		{
			rnd = Hlp_Random(100);
			if(rnd <= 30)
			{
				B_Say(self,self,"$NOTHINGNEW");
			}
			else if(rnd <= 60)
			{
				B_Say(self,self,"$NOTHINGNEW02");
			}
			else if(rnd <= 99)
			{
				B_Say(self,self,"$NOTHINGNEW03");
			};
		};
		if((BookBonus_91 == FALSE) && ((self.guild == GIL_KDF) || (self.guild == GIL_KDW) || (self.guild == GIL_KDM) || (self.guild == GIL_GUR) || (self.guild == GIL_NDM) || (self.guild == GIL_NDW) || (self.guild == GIL_NOV)))
		{
			ATR_INTELLECT += 1;
			Npc_SetTalentSkill(self,NPC_TALENT_INTELLECT,ATR_INTELLECT);
			AI_Print("Inteligence + 1");
			BookBonus_91 = TRUE;
		};
	};
};

func void Use_BookstandAnimals3_S1()
{
	var C_Npc her;
	var int nDocID;
	var int rnd;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
		Doc_SetFont(nDocID,-1,Font_Book_New_Small);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"Lov a kořist");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"Z každého zvířete či nestvůry může schopný lovec získat nějakou trofej, která mu přinese slávu i bohatství.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Ohnivý ještěr");
		Doc_PrintLines(nDocID,0,"Tato šelma sice patří k ještěrům, ale dokáže každého, kdo se jí připlete do cesty, sežehnout palčivým ohněm.");
		Doc_PrintLines(nDocID,0,"Proto s těmito zrůdami mohou bojovat pouze ti, kteří se chrání před ohněm - a pak jim mohou vyříznout jazyky, které jsou velmi cenné.");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"Stínová šelma");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Stínová šelma je samotářský tvor ze starých časů, který se skrývá v lesích.");
		Doc_PrintLines(nDocID,1,"Už jich na světě moc nezůstalo, proto pro lidi nepředstavují žádnou větší hrozbu, pokud se nevetřou přímo do jejich teritoria.");
		Doc_PrintLines(nDocID,1,"Roh stínové šelmy představuje velmi cennou trofej. Lovec však musí vědět, jak ho správně vyjmout, aby ho nepoškodil");
		Doc_PrintLines(nDocID,1,"a nesnížil jeho cenu.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_Show(nDocID);
		if(Animals_3_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			Animals_3_permanent = TRUE;
			B_Say(self,self,"$HOWINTEREST");
			RankPoints = RankPoints + 1;

			if(RhetorikSkillValue[1] < 100)
			{
				RhetorikSkillValue[1] = RhetorikSkillValue[1] + 1;
				AI_Print("Rétorika + 1");
			};
		}
		else
		{
			rnd = Hlp_Random(100);
			if(rnd <= 30)
			{
				B_Say(self,self,"$NOTHINGNEW");
			}
			else if(rnd <= 60)
			{
				B_Say(self,self,"$NOTHINGNEW02");
			}
			else if(rnd <= 99)
			{
				B_Say(self,self,"$NOTHINGNEW03");
			};
		};
		if((BookBonus_92 == FALSE) && ((self.guild == GIL_KDF) || (self.guild == GIL_KDW) || (self.guild == GIL_KDM) || (self.guild == GIL_GUR) || (self.guild == GIL_NDM) || (self.guild == GIL_NDW) || (self.guild == GIL_NOV)))
		{
			ATR_INTELLECT += 1;
			Npc_SetTalentSkill(self,NPC_TALENT_INTELLECT,ATR_INTELLECT);
			AI_Print("Inteligence + 1");
			BookBonus_92 = TRUE;
		};
	};
};

