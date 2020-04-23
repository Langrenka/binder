class Binds
{
	getUK()
	{
		UKK:="{8B0000}========================УК====================`n"
		loop, read, files/data/UK.txt
		{
		UKK.= A_LoopReadLine "`n"
		}
		showDialog(2, "УК", UKK, "Ок") ;
		UKK :=""
	}
	
	getAK()
	{
		AKK:="{8B0000}========================АК====================`n"
		loop, read, files/data/AK.txt
		{
		AKK.= A_LoopReadLine "`n"
		}
		showDialog(2, "АК", AKK, "Ок") ;
		AKK :=""
	}
	
	getTens()
	{
		tens:="{8B0000}========================TEN-CODE====================`n"
		loop, read, files/data/Tens.txt
		{
		tens.= A_LoopReadLine "`n"
		}
		showDialog(2, "TEN-CODE", tens, "Ок") ;
		tens :=""
	}
	
	bomb_time1()
	{
		loop, read, files/data/bomb1.txt
		{
		sendchat(A_LoopReadLine)
		sleep 2000
		}
		addChatMessage("{FFFF00}Если {1E90FF}НЕУДАЧНО {FFFF00}- введите {1E90FF}/bomb12")
	}
	
	bomb_time2()
	{
		loop, read, files/data/bomb12.txt
		{
		sendchat(A_LoopReadLine)
		sleep 2000
		}
		addChatMessage("{FFFF00}Если {1E90FF}НЕУДАЧНО {FFFF00}- введите {1E90FF}/bomb12")
	}

	bomb_dist()
	{
		loop, read, files/data/bomb2.txt
		{
		sendchat(A_LoopReadLine)
		sleep 2000
		}
	}
	
	ToPatrol(tag)
	{
		pas := getIdPassengers() 
		if (isPlayerInAnyVehicle()){
			sendinput {f6}/r %tag% Э:%pas%. 10-3
		}	
	}
	
	InPatrol(tag)
	{
		pas := getIdPassengers() 
		if (isPlayerInAnyVehicle()){
			sendinput {f6}/r %tag% Э:%pas%. 10-4 | Code 0
		}
	}
	
	OutPatrol(tag)
	{
		pas := getIdPassengers() 
		if (isPlayerInAnyVehicle()){
			sendinput {f6}/r %tag% Э:%pas%. 10-3R.{space} 
		}
	}
	
	getKeys(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24)
	{
		help:="{8B0000}========================Кнопки====================`n"
		help.="{FF0000}" k1 "{FFF8DC} - Указать Тэг в рацию`n"
		help.="{FF0000}" k2 "{FFF8DC} - Принято, работаем!`n"
		help.="{FF0000}" k3 "{FFF8DC} - /su`n"
		help.="{FF0000}" k4 "{FFF8DC} - Отыгровка /cuff`n"
		help.="{FF0000}" k5 "{FFF8DC} - Отыгровка /cput`n"
		help.="{FF0000}" k6 "{FFF8DC} - Отыгровка /ceject`n"
		help.="{FF0000}" k7 "{FFF8DC} - Отыгровка /follow`n"
		help.="{FF0000}" k8 "{FFF8DC} - Мегафон в погоне`n"
		help.="{FF0000}" k9 "{FFF8DC} - Надеть маску`n"
		help.="{FF0000}" k10 "{FFF8DC} - Снять маску`n"
		help.="{FF0000}" k11 "{FFF8DC} - Отыгровка /take`n"
		help.="{FF0000}" k12 "{FFF8DC} - Зачитать права`n"
		help.="{FF0000}" k13 "{FFF8DC} - Выезд в патруль`n"
		help.="{FF0000}" k14 "{FFF8DC} - Состояние патруля`n"
		help.="{FF0000}" k15 "{FFF8DC} - Завершение патруля`n"
		help.="{FF0000}" k16 "{FFF8DC} - СОС в рацию`n"
		help.="{FF0000}" k17 "{FFF8DC} - Квадрат погони в рацию`n"
		help.="{FF0000}" k18 "{FFF8DC} - Ответ на предыдущее СМС`n"
		help.="{FF0000}" k19 "{FFF8DC} - Подача в ООП по ID`n"
		help.="{FF0000}" k20 "{FFF8DC} - /lock`n"
		help.="{FF0000}" k21 "{FFF8DC} - /time + скрин`n"
		help.="{FF0000}" k22 "{FFF8DC} - Представиться`n"
		help.="{FF0000}" k23 "{FFF8DC} - Отыгровка штрафа`n"
		help.="{FF0000}" k24 "{FFF8DC} - Розыск в перестрелке`n"
		help.="{8B0000}========================Служебные==================`n"
		help.="{FF0000}F11{FFF8DC} - Открыть окно биндера`n"
		help.="{FF0000}F12{FFF8DC} - Перезагрузить`n"
		help.="{8B0000}========================Команды====================`n"
		help.="{FF0000}/Bomb1{FFF8DC} - Размин. бомб с таймером`n"
		help.="{FF0000}/Bomb2{FFF8DC} - Размин. бомб с дистанцион.`n"
		help.="{FF0000}//UK{FFF8DC} - Шпаргалка УК`n"
		help.="{FF0000}//AK{FFF8DC} - Шпаргался АК`n"
		help.="{FF0000}//Tens{FFF8DC} - Шпаргался TEN-CODES`n"
		help.="{FF0000}/helpGhost{FFF8DC} - Все кнопки и команды"
		showDialog(2, "Шпора", help, "Ок") 

	}
	
	toR(tag)
	{
		sendinput {f6}/r %tag%{space}
	}
	
	getReady(tag)
	{
		sendchat("/r " . tag . " Принято, работаем!")
	}
	
	toSU()
	{
		sendinput {f6}/su{space}
	}
	
	toCuff()
	{
		sendchat("/me снял(а) с пояса наручники")
		sendinput {f6}/cuff{space}
	}
	
	toCput()
	{
		sendchat("/me посадил(а) человека в автомобиль")
		sendinput {f6}/cput{space}
	}
	
	toCeject()
	{
		sendchat("/me высадил(а) человека из автомобиля")
		sendinput {f6}/ceject{space}
	}
	
	toFollow()
	{
		sendchat("/me прицепил(а) человека наручниками к себе")
		sendinput {f6}/follow{space}
	}
	
	toM()
	{
		sendchat("/m Водитель! Немедлено прижмитесь к обочине! Или мы откроем огонь!")
	}
	
	getMask(TagName)
	{
		sendchat("/clist 32")
		sleep 1000
		sendchat("/seeme надел(а) маску " . TagName . "")
	}
	
	TakeOutMask(TagName)
	{
		sendchat("/clist 0")
		sleep 1000
		sendchat("/seeme снял(а) маску " . TagName . "")
	}
	
	toTake()
	{
		sendchat("/me надел(а) резиновые перчатки")
		sendinput {f6}/take{space}
	}
	
	Miranda()
	{
		sendchat("Вы имеете право хранить молчание")
		sleep 3100
		sendchat("Все, что вы скажете, может и будет использовано против вас")
		sleep 3100
		sendchat("Также вы имеете право на адвоката за личные деньги")
	}
	
	giveSOS()
	{
		ag:=getPlayerZone() 
		sendchat("/r " . tag . " СОС " . ag . "")
	}
	
	giveCordPogon()
	{
		ag:=getPlayerZone() 
		sendchat("/r " . tag . " 10-55. " . ag . " 10-66")
	}
	
	giveLastSMS()
	{
		izi:="-1"
	File = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
	Loop, Read, %File%
	{
	if RegExMatch(A_LoopReadLine, "Отправитель:\s[A-Za-z_0-9]*?\[(\d+)\]", id)
      izi:=id1
	}
	if (izi!="-1")
		Sendinput {F6}/t %izi%{space}
	}
	
	toOOP()
	{
		SendMessage, 0x50,, 0x4190419,, A
		sendinput {f6}/oop{space}
		Input, oop, V,  {Enter}
		RegExMatch(oop,"(.*) (.*)", oop)
		oop_Name:=getPlayerNameById(oop1)
		if (oop1 >=0) and (oop1<=1000) and (oop_Name<>"") {
			oop_Pname := RegExReplace(oop_Name, "\_.*", "") ; Его имя
			oop_PSname := RegExReplace(oop_Name, ".*_", "") ; Его фамилия
			addChatMessage("{B22222}[Mayor] Код №" . oop1 . " " . oop_Pname . " " . oop_PSname . " - ООП по статье " . oop2 . " УК СА")
			sendinput {f6}/dep [Mayor] Дело №%oop1% %oop_Pname% %oop_PSname% - ООП по статье %oop2% УК СА
		} else {
			addChatMessage("Несуществующий ID или статья")
	}
	}
	
	toLock()
	{
		sendchat("/lock")
	}
	
	takeScreen()
	{
		sendchat("/time")
		sleep 500
		sendinput {f8}
	}
	
	giveMyName(RankName, NameName, TagName)
	{
		Pname := RegExReplace(NameName, "\_.*", "") 
		PSname := RegExReplace(NameName, ".*_", "")
		sendchat("" . RankName . " полиции Las-Venturas, " . Pname . " " . PSname . "")
		sleep 2000
		sendchat("/do На груди значок LVPD || " . TagName . "")
	}
	
	toTicket()
	{
		sendchat("/me достал(а) бланк для штрафа и ручку")
		sleep 2000
		sendchat("/me заполнил(а) бланк")
		sleep 500
		sendinput {f6}/ticket{space}
	}
	
	FireSU()
	{
		var := getIdByPed(getTargetPed()) 
		if (var >= 0) and (var <= 1000) {
			sendchat("/su " . var . " 4 2.2")
			addchatmessage("/su " . var . " 4 2.2")
		} else {
			addchatmessage("{1E90FF}[AHK]: {FF0000}Ошибка.")
		}
	}
}
	