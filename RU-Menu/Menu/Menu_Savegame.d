
instance MENU_SAVEGAME_LOAD(C_MENU_DEF)
{
	backPic = MENU_SAVELOAD_BACK_PIC;
	items[0] = "MENUITEM_LOAD_HEADLINE";
	items[1] = "MENUITEM_LOADSAVE_THUMBPIC";
	items[2] = "MENUITEM_LOADSAVE_DATETIME";
	items[3] = "MENUITEM_LOADSAVE_DATETIME_VALUE";
	items[4] = "MENUITEM_LOADSAVE_GAMETIME";
	items[5] = "MENUITEM_LOADSAVE_GAMETIME_VALUE";
	items[6] = "MENUITEM_LOADSAVE_LEVELNAME";
	items[7] = "MENUITEM_LOADSAVE_LEVELNAME_VALUE";
	items[8] = "MENUITEM_LOADSAVE_PLAYTIME_VALUE";
	items[9] = "MENUITEM_LOAD_SLOT1";
	items[10] = "MENUITEM_LOAD_SLOT2";
	items[11] = "MENUITEM_LOAD_SLOT3";
	items[12] = "MENUITEM_LOAD_SLOT4";
	items[13] = "MENUITEM_LOAD_SLOT5";
	items[14] = "MENUITEM_LOAD_SLOT6";
	items[15] = "MENUITEM_LOAD_SLOT7";
	items[16] = "MENUITEM_LOAD_SLOT8";
	items[17] = "MENUITEM_LOAD_SLOT9";
	items[18] = "MENUITEM_LOAD_SLOT10";
	items[19] = "MENUITEM_LOAD_SLOT11";
	items[20] = "MENUITEM_LOAD_SLOT12";
	items[21] = "MENUITEM_LOAD_SLOT13";
	items[22] = "MENUITEM_LOAD_SLOT14";
	items[23] = "MENUITEM_LOAD_SLOT15";
	items[24] = "MENUITEM_LOAD_SLOT16";
	items[25] = "MENUITEM_LOAD_SLOT17";
	items[26] = "MENUITEM_LOAD_SLOT18";
	items[27] = "MENUITEM_LOAD_SLOT19";
	items[28] = "MENUITEM_LOAD_SLOT20";
	items[29] = "MENUITEM_LOAD_BACK";
	flags = flags | MENU_SHOW_INFO | MENU_DONTSCALE_DIM | MENU_NOANI;
};

instance MENU_SAVEGAME_SAVE(C_MENU_DEF)
{
	backPic = MENU_SAVELOAD_BACK_PIC;
	items[0] = "MENUITEM_SAVE_HEADLINE";
	items[1] = "MENUITEM_LOADSAVE_THUMBPIC";
	items[2] = "MENUITEM_LOADSAVE_DATETIME";
	items[3] = "MENUITEM_LOADSAVE_DATETIME_VALUE";
	items[4] = "MENUITEM_LOADSAVE_GAMETIME";
	items[5] = "MENUITEM_LOADSAVE_GAMETIME_VALUE";
	items[6] = "MENUITEM_LOADSAVE_LEVELNAME";
	items[7] = "MENUITEM_LOADSAVE_LEVELNAME_VALUE";
	items[8] = "MENUITEM_LOADSAVE_PLAYTIME_VALUE";
	items[9] = "MENUITEM_SAVE_SLOT1";
	items[10] = "MENUITEM_SAVE_SLOT2";
	items[11] = "MENUITEM_SAVE_SLOT3";
	items[12] = "MENUITEM_SAVE_SLOT4";
	items[13] = "MENUITEM_SAVE_SLOT5";
	items[14] = "MENUITEM_SAVE_SLOT6";
	items[15] = "MENUITEM_SAVE_SLOT7";
	items[16] = "MENUITEM_SAVE_SLOT8";
	items[17] = "MENUITEM_SAVE_SLOT9";
	items[18] = "MENUITEM_SAVE_SLOT10";
	items[19] = "MENUITEM_SAVE_SLOT11";
	items[20] = "MENUITEM_SAVE_SLOT12";
	items[21] = "MENUITEM_SAVE_SLOT13";
	items[22] = "MENUITEM_SAVE_SLOT14";
	items[23] = "MENUITEM_SAVE_SLOT15";
	items[24] = "MENUITEM_SAVE_SLOT16";
	items[25] = "MENUITEM_SAVE_SLOT17";
	items[26] = "MENUITEM_SAVE_SLOT18";
	items[27] = "MENUITEM_SAVE_SLOT19";
	items[28] = "MENUITEM_SAVE_SLOT20";
	items[29] = "MENUITEM_SAVE_BACK";
	flags = flags | MENU_SHOW_INFO | MENU_DONTSCALE_DIM | MENU_NOANI;
};


const int SAVEGAME_X1 = 1200;
const int SAVEGAME_X2 = 5400;
const int SAVEGAME_Y = 1200;
const int SAVEGAME_DY = 275;
const int SAVEGAME_DX1 = 3500;
const int SAVEGAME_DX2 = 1000;

instance MENUITEM_LOAD_HEADLINE(C_MENU_ITEM_DEF)
{
	text[0] = "";
	type = MENU_ITEM_TEXT;
	posx = SAVEGAME_X1;
	posy = 700;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_SAVE_HEADLINE(C_MENU_ITEM_DEF)
{
	text[0] = "";
	type = MENU_ITEM_TEXT;
	posx = SAVEGAME_X1;
	posy = 700;
	flags = flags | IT_CHROMAKEYED | IT_TRANSPARENT;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_LOADSAVE_THUMBPIC(C_MENU_ITEM_DEF)
{
	backPic = "";
	posx = SAVEGAME_X2;
	posy = 1350;
	dimx = 2048;
	dimy = 2048;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_LOADSAVE_LEVELNAME(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_TEXT;
	text[0] = "Локация:";
	posx = SAVEGAME_X2;
	posy = 3960;
	fontname = MENU_FONT_SMALL;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_LOADSAVE_LEVELNAME_VALUE(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_TEXT;
	text[0] = "";
	posx = SAVEGAME_X2;
	posy = 3960 + 320;
	dimx = 8192 - posx;
	dimy = 350;
	fontname = MENU_FONT_SMALL;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_LOADSAVE_DATETIME(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_TEXT;
	text[0] = "Сохранено";
	posx = SAVEGAME_X2;
	posy = 4900;
	fontname = MENU_FONT_SMALL;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_LOADSAVE_DATETIME_VALUE(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_TEXT;
	text[0] = "";
	posx = SAVEGAME_X2;
	posy = 4900 + 320;
	dimx = 8192 - posx;
	dimy = 350;
	fontname = MENU_FONT_SMALL;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_LOADSAVE_GAMETIME(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_TEXT;
	text[0] = "Время:";
	posx = SAVEGAME_X2;
	posy = 6200;
	fontname = MENU_FONT_SMALL;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_LOADSAVE_GAMETIME_VALUE(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_TEXT;
	text[0] = "";
	posx = SAVEGAME_X2;
	posy = 6200 + 320;
	dimx = 8192 - posx;
	dimy = 350;
	fontname = MENU_FONT_SMALL;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_LOADSAVE_PLAYTIME_VALUE(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_TEXT;
	text[0] = "";
	posx = SAVEGAME_X2;
	posy = 6200 + (320 * 2);
	dimx = 8192 - posx;
	dimy = 350;
	fontname = MENU_FONT_SMALL;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_SAVE_BACK(C_MENU_ITEM_DEF)
{
	text[0] = "...вернуться в главное меню";
	text[1] = "...вернуться в главное меню";
	fontname = MENU_FONT_SMALL;
	posx = SAVEGAME_X1 - 100;
	posy = SAVEGAME_Y + (21 * SAVEGAME_DY);
};

instance MENUITEM_LOAD_BACK(C_MENU_ITEM_DEF)
{
	text[0] = "...вернуться в главное меню";
	fontname = MENU_FONT_SMALL;
	posx = SAVEGAME_X1 - 100;
	posy = SAVEGAME_Y + (21 * SAVEGAME_DY);
};

instance MENUITEM_SAVE_SLOT1(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (0 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT1";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT2(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (1 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT2";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT3(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (2 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT3";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT4(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (3 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT4";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT5(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (4 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT5";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT6(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (5 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT6";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT7(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (6 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT7";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT8(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (7 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT8";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT9(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (8 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT9";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT10(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (9 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT10";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT11(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (10 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT11";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT12(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (11 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT12";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT13(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (12 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT13";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT14(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (13 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT14";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT15(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (14 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT15";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT16(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (15 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT16";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT17(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (16 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT17";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT18(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (17 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT18";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT19(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (18 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT19";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_SAVE_SLOT20(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (19 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_STARTITEM;
	onselaction_s[0] = "MENUITEM_SAVE_SLOT20";
	onselaction[1] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SAVEGAME_SAVE";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT1(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (0 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT2(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (1 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT3(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (2 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT4(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (3 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT5(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (4 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT6(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (5 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT7(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (6 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT8(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (7 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT9(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (8 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT10(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (9 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT11(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (10 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT12(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (11 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT13(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (12 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT14(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (13 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT15(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (14 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT16(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (15 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT17(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (16 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT18(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (17 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT19(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (18 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

instance MENUITEM_LOAD_SLOT20(C_MENU_ITEM_DEF)
{
	text[0] = "_";
	text[1] = "";
	posx = SAVEGAME_X1;
	posy = SAVEGAME_Y + (19 * SAVEGAME_DY);
	dimx = SAVEGAME_DX1;
	dimy = SAVEGAME_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "SAVEGAME_LOAD";
	fontname = MENU_FONT_SMALL;
};

