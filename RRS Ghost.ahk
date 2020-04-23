#UseHook
#NoEnv
#SingleInstance force
#include files/Functions.ahk
#include files/Main_binds.ahk
#include files/Special.ahk
;========================================================MAIN======================================================================================
special := new Special()

SendMessage, 0x50,, 0x4190419,, A

While (n<=24) {
	k%n%:=special.getBindKeys(n)
	n++
	}

NameName:=special.getMyName()

RankName:=special.getMyRank()

TagName:=special.getMyTag()

MyTag:= special.getMyRealTag(TagName)

LeftSkobka := special.getLeftTag()

RightSkobka := special.getRightTag()

IfWinNotActive GTA:SA:MP
{
SendMessage, 0x50,, 0x4190419,, A
;=======================Шапка============================
Gui, Font, S14 CDefault Bold, Verdana
Gui, Add, Text, x452 y9 w170 h40 , RRS Ghost
Gui, Font, S8 CDefault, Verdana
Gui, Add, Edit, x2 y9 w170 h20 vName, %NameName%
Gui, Add, Edit, x2 y39 w170 h20 vRank, %RankName%
Gui, Add, Edit, x2 y69 w170 h20 vTag, %TagName%
Gui, Add, Text, x182 y9 w150 h20 , Name_Saname
Gui, Add, Text, x182 y39 w150 h20 , Звание
Gui, Add, Text, x182 y69 w120 h20 , Тэг без скобок ->
Gui, Add, Edit, x302 y69 w20 h20 vLeft, %LeftSkobka%
Gui, Add, Edit, x351 y69 w20 h20 vRight, %RightSkobka%
Gui, Add, Text, x323 y69 w27 h20 , TAG
Gui, Add, Button, x2 y99 w170 h30 gSaveShapka, Сохранить настройки
Gui, Add, Text, x2 y139 w470 h20 , =======================================================================================
Gui, Add, Text, x462 y139 w470 h20 , ====================
;=======================Клавиши============================
Gui, Add, Hotkey, x2 y169 w110 h20 vKey1, %k1%
Gui, Add, Hotkey, x2 y199 w110 h20 vKey2, %k2%
Gui, Add, Hotkey, x2 y229 w110 h20 vKey3, %k3%
Gui, Add, Hotkey, x2 y259 w110 h20 vKey4, %k4%
Gui, Add, Hotkey, x2 y289 w110 h20 vKey5, %k5%
Gui, Add, Hotkey, x2 y319 w110 h20 vKey6, %k6%
Gui, Add, Hotkey, x2 y349 w110 h20 vKey7, %k7%
Gui, Add, Hotkey, x2 y379 w110 h20 vKey8, %k8%
Gui, Add, Hotkey, x2 y409 w110 h20 vKey9, %k9%
Gui, Add, Hotkey, x2 y439 w110 h20 vKey10, %k10%
Gui, Add, Hotkey, x2 y469 w110 h20 vKey11, %k11%
Gui, Add, Hotkey, x2 y499 w110 h20 vKey12, %k12%
Gui, Add, Hotkey, x2 y529 w110 h20 vKey13, %k13%
Gui, Add, Hotkey, x2 y559 w110 h20 vKey14, %k14%
Gui, Add, Hotkey, x2 y589 w110 h20 vKey15, %k15%
Gui, Add, Hotkey, x282 y169 w110 h20 vKey16, %k16%
Gui, Add, Hotkey, x282 y199 w110 h20 vKey17, %k17%
Gui, Add, Hotkey, x282 y229 w110 h20 vKey18, %k18%
Gui, Add, Hotkey, x282 y259 w110 h20 vKey19, %k19%
Gui, Add, Hotkey, x282 y289 w110 h20 vKey20, %k20%
Gui, Add, Hotkey, x282 y319 w110 h20 vKey21, %k21%
Gui, Add, Hotkey, x282 y349 w110 h20 vKey22, %k22%
Gui, Add, Hotkey, x282 y379 w110 h20 vKey23, %k23%
Gui, Add, Hotkey, x282 y409 w110 h20 vKey24, %k24%
;=====================Кнопки==============================
Gui, Add, Button, x2 y619 w110 h30 gSave, Сохранить!!!!!
Gui, Add, Button, x342 y619 w110 h30 gNext, Свернуть
Gui, Add, Button, x462 y619 w120 h30 gClose, Выйти
Gui, Add, Progress, x122 y619 w210 h30 , %bar%
;=======================Расшифровки============================
Gui, Add, Text, x122 y169 w140 h20 , Указать тэг в рацию
Gui, Add, Text, x122 y199 w140 h20 , Принято`, работаем!
Gui, Add, Text, x122 y229 w140 h20 , /su
Gui, Add, Text, x122 y259 w140 h20 , Отыгровка /cuff
Gui, Add, Text, x122 y289 w140 h20 , Отыгровка /cput
Gui, Add, Text, x122 y319 w140 h20 , Отыгровка /ceject
Gui, Add, Text, x122 y349 w140 h20 , Отыгровка /follow
Gui, Add, Text, x122 y379 w140 h20 , Мегафон в погоне
Gui, Add, Text, x122 y409 w140 h20 , Надеть маску
Gui, Add, Text, x122 y439 w140 h20 , Снять маску
Gui, Add, Text, x122 y469 w140 h20 , Отыгровка /take
Gui, Add, Text, x122 y499 w140 h20 , Зачитать права
Gui, Add, Text, x122 y529 w140 h20 , Выезд в патруль
Gui, Add, Text, x122 y559 w140 h20 , Состояние патруля
Gui, Add, Text, x122 y589 w140 h20 , Завершение патруля
Gui, Add, Text, x402 y169 w140 h20 , СОС в рацию
Gui, Add, Text, x402 y199 w200 h20 , Сектор погони в рацию
Gui, Add, Text, x402 y229 w200 h20 , Ответ на предыдущее СМС
Gui, Add, Text, x402 y259 w200 h20 , Подача в ООП по ID
Gui, Add, Text, x402 y289 w200 h20 , /lock (полезно)
Gui, Add, Text, x402 y319 w200 h20 , /time +скрин (полезно)
Gui, Add, Text, x402 y349 w200 h20 , Представиться
Gui, Add, Text, x402 y379 w200 h20 , Отыгровка штрафа
Gui, Add, Text, x402 y409 w200 h20 , Розыск в перестрелке
;=====================Команды==============================
Gui, Font, S8 CRed, Verdana
Gui, Add, Text, x282 y439 w110 h20 , /bomb1
Gui, Add, Text, x282 y469 w110 h20 , /bomb2
Gui, Add, Text, x282 y499 w110 h20 , //UK 
Gui, Add, Text, x282 y529 w110 h20 , //AK 
Gui, Add, Text, x282 y559 w110 h20 , /helpGhost 
Gui, Add, Text, x282 y589 w30 h20 , F11
Gui, Add, Text, x427 y589 w30 h20 , F12
Gui, Font, S8 Cdefault, Verdana
Gui, Add, Text, x402 y439 w200 h20 , Разминирование таймер
Gui, Add, Text, x402 y469 w200 h20 , Разминирование дистанц
Gui, Add, Text, x402 y559 w200 h20 , Все кнопки
Gui, Add, Text, x402 y529 w200 h20 , Шпаргалка АК
Gui, Add, Text, x402 y499 w200 h20 , Шпаргалка УК 
Gui, Add, Text, x322 y589 w100 h20 , Развернуть
Gui, Add, Text, x462 y589 w100 h20 , Перезагрузить
;=====================================================
; Generated using SmartGUI Creator for SciTE
Gui, Show, w590 h658, Биндер для RRS Ghost
return

Close:
    ExitApp
return
;=====================Сохранение=======================
Save:
SendMessage, 0x50,, 0x4190419,, A
n:=1
bar:=0
while (n<=24) {
	Gui, Add, Progress, x122 y619 w210 h30 , %bar%
	GuiControlGet, key%n%
	var:=key%n%
	special.saveAll(var,n)
	n++
	bar:=bar+4
	}
SaveShapka:
	GuiControlGet, Name
	GuiControlGet, Rank
	GuiControlGet, Tag
	GuiControlGet, Left
	GuiControlGet, Right
	special.saveHead(Name, Rank, Tag, Left, Right)
	Gui, Add, Progress, x122 y619 w210 h30 , 95
	reload
return
} 
;==========================Назначение клавиш=============================
Next:
SendMessage, 0x50,, 0x4190419,, A
GuiClose:

binds := new Binds()

Gui, Submit
special.getActiveKeys()
special.PizzaSkill()
return

;============================Бинды===========================
f12::
	SendMessage, 0x50,, 0x4190419,, A
	IfWinActive GTA:SA:MP 
	{
		addChatMessage("{FFFF00} Вы успешно перезагрузили биндер.")
	}
	reload
return
f11::
	IfWinNotActive GTA:SA:MP
	{
	Gui, restore
	}
return
#IfWinActive GTA:SA:MP

active1:
	SendMessage, 0x50,, 0x4190419,, A
	binds.toR(MyTag)
return

active2:
	binds.getReady(MyTag)
return

active3:
	binds.toSU()
return

active4:
	binds.toCuff()
return

active5:
	binds.toCput()
return

active6:
	binds.toCeject()
return

active7:
	binds.toFollow()
return

active8:
	binds.toM()
return

active9:
	binds.getMask(TagName)
return

active10:
	binds.TakeOutMask(TagName)
return

active11:
	binds.toTake()
return

active12:
	binds.Miranda()
return

active13:
	binds.ToPatrol(MyTag)
return

active14:
	binds.InPatrol(MyTag)
return

active15:
	binds.OutPatrol(MyTag)
return
	
active16:
	binds.giveSOS()
return

active17:
	binds.giveCordPogon()
return

active18:
	binds.giveLastSMS()
return

active19:
	binds.toOOP()
return

active20:
	binds.toLock()
return

active21:
	binds.takeScreen()
return

active22:
	binds.GiveMyName(RankName, NameName, TagName)
return

active23:
	binds.toTicket()
return

active24:
	binds.FireSU()
return
;================================Команды======================================
:?:/bomb1::
	binds.bomb_time1()
return

:?:/bomb12::
	binds.bomb_time2()
return

:?:/bomb2::
	binds.bomb_dist()
return

:?://UK::
	binds.getUK()
return

:?:/helpGhost::
	binds.getKeys(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24)
return

:?://AK::
	binds.getAK()
return

:?://tens::
	binds.getTens()
return

;============================Пользовательские бинды====================================