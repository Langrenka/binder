; ####################
; #### SAMP UDF R15.1 ####
; SAMP Version: 0.3.7
; Written by Chuck_Floyd 
; https://github.com/FrozenBrain
; Modified by Suchty112
; https://github.com/Suchty112
; Modified by: paul-phoenix
; https://github.com/paul-phoenix
; Modified by: Agrippa1994
; https://github.com/agrippa1994
; Modified by: RawDev and ELon
; Modified by: democrazy
; Обновление от 04.07.2017
; Дополнял: MurKotik
; http://murkot.tk
; Дополнял: McFree
; Дополнял: aknqkzxlcs
; Дополнял: Godarck
; Дополнял: Слюнявчик
; Дополнял: MrGPro
; Дополнял: Phoenixxx_Czar
; Дополнял: Dworkin
; Дополнял: Ghost29
; Перевёл: I_Qwerty_I
; Do not remove these lines.
; Не удаляйте пожалуйста авторов
; ####################
; DLL API библиотека: https://yadi.sk/d/WYNP9ryTxXuDf
; Samp Dop Function: https://yadi.sk/d/rWFgksjc3KexSA
; Библиотека dx9_overlay: https://yadi.sk/d/6iQMTa043FFAZ6


; Samp-udf-addon
global ADDR_SET_POSITION                    := 0xB7CD98
global ADDR_SET_POSITION_OFFSET             := 0x14
global ADDR_SET_POSITION_X_OFFSET           := 0x30
global ADDR_SET_POSITION_Y_OFFSET           := 0x34
global ADDR_SET_POSITION_Z_OFFSET           := 0x38
global ADDR_SET_INTERIOR_OFFSET             := 0xB72914
global SAMP_SZIP_OFFSET                     := 0x20
;~ global SAMP_SZHOSTNAME_OFFSET               := 0x121
global SAMP_INFO_SETTINGS_OFFSET            := 0x3C5
global SAMP_DIALOG_LINENUMBER_OFFSET        := 0x140

; ErrorLevels
global ERROR_OK                             := 0
global ERROR_PROCESS_NOT_FOUND              := 1
global ERROR_OPEN_PROCESS                   := 2
global ERROR_INVALID_HANDLE                 := 3
global ERROR_MODULE_NOT_FOUND               := 4
global ERROR_ENUM_PROCESS_MODULES           := 5
global ERROR_ZONE_NOT_FOUND                 := 6
global ERROR_CITY_NOT_FOUND                 := 7
global ERROR_READ_MEMORY                    := 8
global ERROR_WRITE_MEMORY                   := 9
global ERROR_ALLOC_MEMORY                   := 10
global ERROR_FREE_MEMORY                    := 11
global ERROR_WAIT_FOR_OBJECT                := 12
global ERROR_CREATE_THREAD                  := 13
            
; GTA Addresses         
global ADDR_ZONECODE                        := 0xA49AD4      ;Player Zone
global ADDR_POSITION_X                      := 0xB6F2E4      ;Player X Position
global ADDR_POSITION_Y                      := 0xB6F2E8      ;Player Y Position
global ADDR_POSITION_Z                      := 0xB6F2EC      ;Player Z Position
global ADDR_CPED_PTR                        := 0xB6F5F0      ;Player CPED Pointer
global ADDR_CPED_HPOFF                      := 0x540         ;Player Health
global ADDR_CPED_ARMOROFF                   := 0x548         ;Player Armour
global ADDR_CPED_MONEY                      := 0x0B7CE54     ;Player Money
global ADDR_CPED_INTID                      := 0xA4ACE8      ;Player Interior-ID
global ADDR_CPED_SKINIDOFF                  := 0x22          ;Player Skin-ID
;           
global ADDR_VEHICLE_PTR                     := 0xBA18FC      ;Vehicle CPED Pointer
global ADDR_VEHICLE_HPOFF                   := 0x4C0         ;Vehicle Health
global ADDR_VEHICLE_DOORSTATE               := 0x4F8         ;Vehicle Door Status
global ADDR_VEHICLE_ENGINESTATE             := 0x428         ;Vehicle Engine Status
global ADDR_VEHICLE_SIRENSTATE              := 0x1069 
global ADDR_VEHICLE_SIRENSTATE2             := 0x1300 
global ADDR_VEHICLE_LIGHTSTATE              := 0x584         ;Vehicle Light Status
global ADDR_VEHICLE_MODEL                   := 0x22          ;Vehicle Car-ID & Car-Name
global ADDR_VEHICLE_TYPE                    := 0x590         ;Vehicle Typ-ID (1 = Car)
global ADDR_VEHICLE_DRIVER                  := 0x460         ;Vehicle Driver
global ADDR_VEHICLE_X                       := 0x44          ;Vehicle Speed X
global ADDR_VEHICLE_Y                       := 0x48          ;Vehicle Speed Y
global ADDR_VEHICLE_Z                       := 0x4C          ;Vehicle Speed Z
global oAirplaneModels := [417, 425, 447, 460, 469, 476, 487, 488, 497, 511, 512, 513, 519, 520, 548, 553, 563, 577, 592, 593]
global oBikeModels := [481,509,510]
global ovehicleNames := ["Landstalker","Bravura","Buffalo","Linerunner","Perrenial","Sentinel","Dumper","Firetruck","Trashmaster","Stretch","Manana","Infernus","Voodoo","Pony","Mule","Cheetah","Ambulance","Leviathan","Moonbeam","Esperanto","Taxi","Washington","Bobcat","Whoopee","BFInjection","Hunter","Premier","Enforcer","Securicar","Banshee","Predator","Bus","Rhino","Barracks","Hotknife","Trailer","Previon","Coach","Cabbie","Stallion","Rumpo","RCBandit","Romero","Packer","Monster","Admiral","Squalo","Seasparrow","Pizzaboy","Tram","Trailer","Turismo","Speeder","Reefer","Tropic","Flatbed","Yankee","Caddy","Solair","Berkley'sRCVan","Skimmer","PCJ-600","Faggio","Freeway","RCBaron","RCRaider","Glendale","Oceanic","Sanchez","Sparrow","Patriot","Quad","Coastguard","Dinghy","Hermes","Sabre","Rustler","ZR-350","Walton","Regina","Comet","BMX","Burrito","Camper","Marquis","Baggage","Dozer","Maverick","NewsChopper","Rancher","FBIRancher","Virgo","Greenwood","Jetmax","Hotring","Sandking","BlistaCompact","PoliceMaverick","Boxvillde","Benson","Mesa","RCGoblin","HotringRacerA","HotringRacerB","BloodringBanger","Rancher","SuperGT","Elegant","Journey","Bike","MountainBike","Beagle","Cropduster","Stunt","Tanker","Roadtrain","Nebula","Majestic","Buccaneer","Shamal","hydra","FCR-900","NRG-500","HPV1000","CementTruck","TowTruck","Fortune","Cadrona","FBITruck","Willard","Forklift","Tractor","Combine","Feltzer","Remington","Slamvan","Blade","Freight","Streak","Vortex","Vincent","Bullet","Clover","Sadler","Firetruck","Hustler","Intruder","Primo","Cargobob","Tampa","Sunrise","Merit","Utility","Nevada","Yosemite","Windsor","Monster","Monster","Uranus","Jester","Sultan","Stratum","Elegy","Raindance","RCTiger","Flash","Tahoma","Savanna","Bandito","FreightFlat","StreakCarriage","Kart","Mower","Dune","Sweeper","Broadway","Tornado","AT-400","DFT-30","Huntley","Stafford","BF-400","NewsVan","Tug","Trailer","Emperor","Wayfarer","Euros","Hotdog","Club","FreightBox","Trailer","Andromada","Dodo","RCCam","Launch","PoliceCar","PoliceCar","PoliceCar","PoliceRanger","Picador","S.W.A.T","Alpha","Phoenix","GlendaleShit","SadlerShit","Luggage","Luggage","Stairs","Boxville","Tiller","UtilityTrailer"]
global oweaponNames := ["Fist","Brass Knuckles","Golf Club","Nightstick","Knife","Baseball Bat","Shovel","Pool Cue","Katana","Chainsaw","Purple Dildo","Dildo","Vibrator","Silver Vibrator","Flowers","Cane","Grenade","Tear Gas","Molotov Cocktail", "", "", "", "9mm","Silenced 9mm","21Desert Eagle","Shotgun","Sawnoff Shotgun","Combat Shotgun","Micro SMG/Uzi","MP5","AK-47","M4","Tec-9","Country Rifle","Sniper Rifle","RPG","HS Rocket","Flamethrower","Minigun","Satchel Charge","Detonator","Spraycan","Fire Extinguisher","Camera","Night Vis Goggles","Thermal Goggles","Parachute"]
global oradiostationNames := ["Playback FM", "K Rose", "K-DST", "Bounce FM", "SF-UR", "Radio Los Santos", "Radio X", "CSR 103.9", "K-JAH West", "Master Sounds 98.3", "WCTR Talk Radio", "User Track Player", "Radio Off"]
global oweatherNames := ["EXTRASUNNY_LA", "SUNNY_LA", "EXTRASUNNY_SMOG_LA", "SUNNY_SMOG_LA", "CLOUDY_LA", "SUNNY_SF", "EXTRASUNNY_SF", "CLOUDY_SF", "RAINY_SF", "FOGGY_SF", "SUNNY_VEGAS", "EXTRASUNNY_VEGAS", "CLOUDY_VEGAS", "EXTRASUNNY_COUNTRYSIDE", "SUNNY_COUNTRYSIDE", "CLOUDY_COUNTRYSIDE", "RAINY_COUNTRYSIDE", "EXTRASUNNY_DESERT", "SUNNY_DESERT", "SANDSTORM_DESERT", "UNDERWATER", "EXTRACOLOURS_1", "EXTRACOLOURS_2"]

; SAMP Адреса
global ADDR_SAMP_INCHAT_PTR                 := 0x21a10c
global ADDR_SAMP_INCHAT_PTR_OFF             := 0x55
global ADDR_SAMP_USERNAME                   := 0x219A6F
global FUNC_SAMP_SENDCMD                    := 0x65c60
global FUNC_SAMP_SENDSAY                    := 0x57f0
global FUNC_SAMP_ADDTOCHATWND               := 0x64520
global ADDR_SAMP_CHATMSG_PTR                := 0x21a0e4
global FUNC_SAMP_SHOWGAMETEXT               := 0x9c2c0
global FUNC_SAMP_PLAYAUDIOSTR               := 0x62da0
global FUNC_SAMP_STOPAUDIOSTR               := 0x629a0
; ########################## Стили Диалога ##########################
global DIALOG_STYLE_MSGBOX			        := 0
global DIALOG_STYLE_INPUT 			        := 1
global DIALOG_STYLE_LIST			        := 2
global DIALOG_STYLE_PASSWORD		        := 3
global DIALOG_STYLE_TABLIST			        := 4
global DIALOG_STYLE_TABLIST_HEADERS	        := 5
; ######################### Структуры диалога #########################
global SAMP_DIALOG_STRUCT_PTR				:= 0x21A0B8
global SAMP_DIALOG_PTR1_OFFSET				:= 0x1C
global SAMP_DIALOG_LINES_OFFSET 			:= 0x44C
global SAMP_DIALOG_INDEX_OFFSET				:= 0x443
global SAMP_DIALOG_BUTTON_HOVERING_OFFSET	:= 0x465
global SAMP_DIALOG_BUTTON_CLICKED_OFFSET	:= 0x466
global SAMP_DIALOG_PTR2_OFFSET 				:= 0x20
global SAMP_DIALOG_LINECOUNT_OFFSET			:= 0x150
global SAMP_DIALOG_OPEN_OFFSET				:= 0x28
global SAMP_DIALOG_STYLE_OFFSET				:= 0x2C
global SAMP_DIALOG_ID_OFFSET				:= 0x30
global SAMP_DIALOG_TEXT_PTR_OFFSET			:= 0x34
global SAMP_DIALOG_CAPTION_OFFSET			:= 0x40
global FUNC_SAMP_SHOWDIALOG				 	:= 0x6B9C0
global FUNC_SAMP_CLOSEDIALOG				:= 0x6C040
global FUNC_UPDATESCOREBOARD                := 0x8A10
global SAMP_INFO_OFFSET                     := 0x21A0F8
global ADDR_SAMP_CRASHREPORT 				:= 0x5CF2C
global SAMP_PPOOLS_OFFSET                   := 0x3CD
global SAMP_PPOOL_PLAYER_OFFSET             := 0x18
global SAMP_SLOCALPLAYERID_OFFSET           := 0x4
global SAMP_ISTRLEN_LOCALPLAYERNAME_OFFSET  := 0x1A
global SAMP_SZLOCALPLAYERNAME_OFFSET        := 0xA
global SAMP_PSZLOCALPLAYERNAME_OFFSET       := 0xA
global SAMP_PREMOTEPLAYER_OFFSET            := 0x2E
global SAMP_ISTRLENNAME___OFFSET            := 0x1C
global SAMP_SZPLAYERNAME_OFFSET             := 0xC
global SAMP_PSZPLAYERNAME_OFFSET            := 0xC
global SAMP_ILOCALPLAYERPING_OFFSET         := 0x26
global SAMP_ILOCALPLAYERSCORE_OFFSET        := 0x2A
global SAMP_IPING_OFFSET                    := 0x28
global SAMP_ISCORE_OFFSET                   := 0x24
global SAMP_ISNPC_OFFSET                    := 0x4
global SAMP_PLAYER_MAX                      := 1004
global SAMP_KILLSTAT_OFFSET                 := 0x21A0EC
global multVehicleSpeed_tick                := 0
global CheckpointCheck 						:= 0xC7DEEA
global rmaddrs 								:= [0xC7DEC8, 0xC7DECC, 0xC7DED0]

; Sizes
global SIZE_SAMP_CHATMSG                    := 0xFC
; Internal
global hGTA                                 := 0x0
global dwGTAPID                             := 0x0
global dwSAMP                               := 0x0
global pMemory                              := 0x0
global pParam1                              := 0x0
global pParam2                              := 0x0
global pParam3                              := 0x0
global pParam4                              := 0x0
global pParam5                              := 0x0
global pInjectFunc                          := 0x0
global nZone                                := 1
global nCity                                := 1
global bInitZaC                             := 0
global iRefreshScoreboard                   := 0
global oScoreboardData                      := ""
global iRefreshHandles                      := 0
global iUpdateTick                          := 2500 ; Время в мс, используемое в функциях getPlayerNameById и др. для обновления данных. По умолчанию 2500 (2.5 сек)
; ###############################################################################################################################
; # 														                                                                    #
; # Функции для взаимодействия с клиентом SAMP                                                                                  #
; #     - IsSAMPAvailable()                         - Возвращает состояние SAMP (0 - Запущен, 1 - Выключен)                     #
; #     - isInChat()                                - Проверяет открыт ли чат (0 - нет, 1 - да)                                 #
; #     - getUsername()                             - Возвращает ник локального игрока                                          #
; #     - getId()                                   - Возвращает id локального игрока                                           #
; #     - SendChat(wText)                           - Отправка сообщения/команды серверу                                        #
; #     - addChatMessage(wText)                     - Локальное сообдещие в чат                                                 #
; #     - showGameText(wText, dwTime, dwTextsize)   - Отоброжение Game Text                                                     #
; #     - playAudioStream(wUrl)                     - Воспроизведение аудиопотока                                               #
; #     - stopAudioStream()                         - Остановка аудиопотока                                                     #
; #	    - GetChatLine(Line, Output)		            - Вывод строки из чат лога (0 - Последняя строка)                           #
; # 	- blockChatInput() 					        - Блокировка отправления сообщений серверу                                  #
; # 	- unBlockChatInput() 						- Разблокировка отправлений сообщений серверу                               #
; # 														                                                                    #
; # --------------------------------------------------------------------------------------------------------------------------- #
; # 														                                                                    #
; #     - getServerName()                           - Возвращает название сервера                       						#
; #     - getServerIP()                             - Возвращает IP сервера      						    			        #
; #     - getServerPort()                           - Возвращает порт сервера              									    #
; #     - CountOnlinePlayers()                      - Возвращает текущий онлайн на сервере                                      #
; # 														                                                                    #
; # --------------------------------------------------------------------------------------------------------------------------- #
; # 														                                                                    #
; #	    - getWeatherID()			                - Возвращает ID текущей погоды                                              #
; #	    - getWeatherName()			                - Возвращает название текущей погоды                                        #
; # 														                                                                    #
; # --------------------------------------------------------------------------------------------------------------------------- #
; # 														                                                                    #
; #     - patchRadio()                              - Включает патч для аудиопотока                                             #
; #     - unPatchRadio()                            - Выключает патч для аудиопотока 		                                    #
; # 														                                                                    #
; ###############################################################################################################################
; # Функции для взаимодействия с диалогами (v.0.3.7)	        											                    #
; # --------------------------------------------------------------------------------------------------------------------------- #
; #	    - isDialogOpen()                            - Проверяет открыт ли диалог                       	                       	#
; #	    - getDialogStyle()                          - Возвращает id стиля диалога                              					#
; #	    - getDialogID()                             - Возвращает id диалога (исходя из данных сервера)                  		#
; #	    - setDialogID(id)                           - Изменение ID диалога          				                        	#
; #	    - getDialogCaption()                        - Возвращает заголовок диалога           			                        #
; #	    - getDialogText()                           - Возвращает текст диалога                                                  #
; #	    - getDialogLineCount()                      - Возвращает количество строк диалога                                       #
; #	    - getDialogLine(index)                      - Возвращает содержимое строки по номеру           	                       	#
; #	    - getDialogLines()                          - Возвращает массив строк диалога  	     	        	                   	#
; #     - getDialogStructPtr()                      - Возвращает указатель на структуру диалога                                	#
; #	    - showDialog(style, caption, text, button1, button2, id) - Создание локального диалога         	                       	#
; ###############################################################################################################################
; # 														                                                                    #
; # Функции для взаимодействия с игроками                                                                                       #
; #	    - getTargetPed(dwPED)   			        - Возвращает PED ID, по таргету                                             #
; #     - getPedById(dwId)                          - Возвращает PED ID по id игрока                                            #
; #     - getIdByPed(dwId)                          - Возвращает id игрока по PED                                               #
; #     - getStreamedInPlayersInfo()                - Возвращает объект, хранящий информацию об игроках в зоне стрима           #
; #     - callFuncForAllStreamedInPlayers(cfunc)    - Вызывает функцию отображающую всю информации о игроках в зоне стрима      #
; #	    - getDist(pos1, pos2)   			        - Возвращает растояние между двумя точками                                  #
; #     - getClosestPlayerPed()                     - Возвращает PED ID ближайшего игрока                                       #
; #     - getClosestPlayerId()                      - Возвращает id ближайшего игрока                                           #
; #	    - getPedCoordinates(dwPED)   			    - Возвращает кординаты (в зоне стрима) по PED ID                            #
; #     - getTargetPosById(dwId)                    - Возвращает позицию игрока по id                                           #
; #     - getTargetPlayerSkinIdByPed(dwPED)         - Возвращает id скина по PED ID                                             #
; #     - getTargetPlayerSkinIdById(dwId)           - Возвращает id скина по id игрока                                          #
; #     - calcScreenCoors(fX,fY,fZ)                 - Возвращает массив координат [fX,fY,fZ] относительно экрана                #
; # 														                                                                    #
; # Функции для взаимодействия с транспортом:                                                                                   #
; #	    - getVehiclePointerByPed(dwPED)   			- Возвращает указатель на транспорт по PED ID                               #
; #	    - getVehiclePointerById(dwId)   			- Возвращает указатель на транспорт по id игрока                            #
; #     - isTargetInAnyVehicleByPed(dwPED)          - Проверяет находится ли игрок в транспорте по PED ID                       #
; #     - isTargetInAnyVehicleById(dwId)            - Проверяет находится ли игрок в транспорте по id игрока                    #
; #     - getTargetVehicleHealthByPed(dwPED)        - Возвращает hp транспорта по PED ID                                        #
; #     - getTargetVehicleHealthById(dwId)          - Возвращает hp транспорта по id игрока                                     #
; #     - getTargetVehicleTypeByPed(dwPED)          - Возвращает тип транспорта по PED ID (возвращает число, а не название)     #
; #     - getTargetVehicleTypeById(dwId)            - Возвращает тип транспорта по id игрока (возвращает число, а не название)  #
; #     - getTargetVehicleModelIdByPed(dwPED)       - Возвращает номер модели транспорта по PED ID                              #
; #     - getTargetVehicleModelIdById(dwId)         - Возвращает номер модели транспорта по id игрока                           #
; #     - getTargetVehicleModelNameByPed(dwPED)     - Возвращает название модели транспорта по PED ID 				            #
; #     - getTargetVehicleModelNameById(dwId)       - Возвращает название модели транспорта по id игрока 				        #
; #     - getTargetVehicleLightStateByPed(dwPED)    - Возвращает состояние света транспорта по PED ID (вкл./выкл.)			    #
; #     - getTargetVehicleLightStateById(dwId)      - Возвращает состояние света транспорта по id игрока (вкл./выкл.)		    #
; #     - getTargetVehicleEngineStateByPed(dwPED)   - Возвращает состояние мотора транспорта по PED ID (вкл./выкл.)			    #
; #     - getTargetVehicleEngineStateById(dwId)     - Возвращает состояние мотора транспорта по id игрока (вкл./выкл.) 			#
; #     - getTargetVehicleLockStateByPed(dwPED)     - Возвращает состояние дверей транспорта по PED ID (закрыты/открыты) 	    #
; #     - getTargetVehicleLockStateById(dwId)       - Возвращает состояние дверей транспорта по id игрока (закрыты/открыты)     #
; #     - getTargetVehicleColor1ByPed(dwPED)        - Возвращает 1-й цвет транспорта по PED ID 			                        #
; #     - getTargetVehicleColor1ById(dwId)          - Возвращает 1-й цвет транспорта по id игрока			                    #
; #     - getTargetVehicleColor2ByPed(dwPED)        - Возвращает 2-й цвет транспорта по PED ID 			                        #
; #     - getTargetVehicleColor2ById(dwId)          - Возвращает 2-й цвет транспорта по id игрока 			                    #
; #     - getTargetVehicleSpeedByPed(dwPED)         - Возвращает текущую скорость транспорта по PED ID			                #
; #     - getTargetVehicleSpeedById(dwId)           - Возвращает текущую скорость транспорта по id игрока		                #
; # 														                                                                    #
; ###############################################################################################################################
; # 														                                                                    #
; # Функции для взаимодейтвия с общим списком игроков (Tab):                                                                    #
; #     - getPlayerScoreById(dwId)                  - Возвращает уровень игрока по id                                           #
; #     - getPlayerPingById(dwId)                   - Возвращает ping игрока по id                                              #
; #     - getPlayerNameById(dwId)                   - Возвращает ник игрока по id                                               #
; #     - getPlayerIdByName(wName)                  - Возвращает id игрока по нику                                              #
; #     - updateScoreboardDataEx()                  - Обновление данных Tab'a                                                   #
; #     - updateOScoreboardData()                   - Обновление данных игроков на сервере                                      #
; #	    - isNPCById(dwId)   			            - Проверяет является ли персонаж NPC по id		                            #
; # 														                                                                    #
; ###############################################################################################################################
; # 														                                                                    #
; # Функции для взаимодействия с локальным игроком:                                                                             #
; #     - getPlayerHealth()                         - Возвращает hp локального игрока                                           #
; #     - getPlayerArmour()                         - Возвращает количество брони локального игрока                             #
; # 	- getPlayerInteriorId()			            - Возвращает id интерьера 		                                            #
; # 	- getPlayerSkinId()			                - Возвращает id скина локального игрока          		                    #
; # 	- getPlayerMoney() 			                - Возвращает количество денег на руках у локального игрока                  #
; #	    - getPlayerWanteds()			            - Возвращает уровень розыска локального игрока                              #
; #	    - getPlayerWeaponId()			            - Возвращает id оружия в руках у локального игрока                          #
; #	    - getPlayerWeaponName()			            - Возвращает название оружия в руках у локального игрока                    #
; #	    - getPlayerState()			                - Возвращает состояние локального игрока (возвращает число)                 #
; #	    - getPlayerMapPosX()			            - Возвращает X позицию на карте (Esc > Карта) локального игрока             #
; #	    - getPlayerMapPosY()			            - Возвращает Y позицию на карте (Esc > Карта) локального игрока             #
; #	    - getPlayerMapZoom()			            - Возвращает коэф. увеличения карты (Esc > Карта) локального игрока         #
; #	    - IsPlayerFreezed()			                - Проверяет заморожен ли локальний игрок                                    #
; # 														                                                                    #
; ###############################################################################################################################
; # 														                                                                    #
; # Функции для взаимодействия с текущим транспортом:                                                                           #
; #     - isPlayerInAnyVehicle()                    - Проверяет находится ли локальный игрок в транспорте (любом)               #
; #     - getVehicleHealth()                        - Возвращает hp текущего транспорта                                         #
; # 	- isPlayerDriver() 			                - Проверяет является ли локальный игрок водителем		                    #
; # 	- getVehicleType() 			                - Возвращает тип текущего транспорта                                        #
; # 	- getVehicleModelId()			            - Возвращает номер модели текущего транспорта 				                #
; # 	- getVehicleModelName() 		            - Возвращает название модели текущего транспорта 				            #
; # 	- getVehicleLightState() 		            - Возвращает состояние света текущего транспорта (вкл./выкл.) 			    #
; # 	- getVehicleEngineState() 		            - Возвращает состояние мотора текущего транспорта (вкл./выкл.)			    #
; # 	- getVehicleLockState() 		            - Возвращает состояние дверей текущего транспорта 			                #
; # 	- getVehicleColor1() 		                - Возвращает 1-й цвет текущего транспорта   			                    #
; # 	- getVehicleColor2() 		                - Возвращает 2-й цвет текущего транспорта   			                    #
; # 	- getVehicleSpeed() 		                - Возвращает текущую скорость текущего транспорта   			            #
; # 	- getPlayerRadiostationID() 		        - Возвращает номер радиостанции текущего транспорта   			            #
; # 	- getPlayerRadiostationName() 		        - Возвращает название радиостанции текущего транспорта   			        #
; # 														                                                                    #
; ###############################################################################################################################
; # 														                                                                    #
; # Функции для взаимодействия с координатами:                                                                                  #
; #     - getCoordinates()                          - Возвращает массив координат [fX,fY,fZ] локального игрока                  #
; #	    - getPlayerPos(X,Y,Z) 			            - Возвращает координаты локального игрока в указанные перменные             #
; # 														                                                                    #
; # --------------------------------------------------------------------------------------------------------------------------- #
; # 														                                                                    #
; #     - initZonesAndCities()                      - Инициализация районов и городов карты                                     #
; #     - calculateZone(X, Y, Z)                    - Возвращает название района по координатам                                 #
; #     - calculateCity(X, Y, Z)                    - Возвращает название города по координатам                                 #
; #     - getCurrentZonecode()                      - ..:: НЕ РАБОТАЕТ ::..                                                     #
; #     - AddZone(Name, X1, Y1, Z1, X2, Y2, Z2)     - Добавление нового района                                                  #
; #     - AddCity(Name, X1, Y1, Z1, X2, Y2, Z2)     - Добавление нового города                                                  #
; #	    - IsPlayerInRangeOfPoint(X, Y, Z, Radius)   - Проверяет находится ли локальный игрок в радиусе 3D координат             #
; #	    - IsIsPlayerInRangeOfPoint2D(X, Y, Radius)  - Проверяет находится ли локальный игрок в радиусе 2D координат             #
; #	    - getPlayerZone()                   		- Возвращает название района локального игрока		                        #
; #	    - getPlayerCity()                   		- Возвращает название района локального игрока			                    #
; # 														                                                                    #
; ###############################################################################################################################
; # Sonstiges:                                                                                                                  #
; #     - checkHandles()                                                                                                        #
; #     - AntiCrash()								- AntiCrash                                                                 #
; ###############################################################################################################################
; # Функции для взаимодействия с памятью (внутренние функции):                                                                  #
; #     - checkHandles()                                                                                                        #
; #     - refreshGTA()                                                                                                          #
; #     - refreshSAMP()                                                                                                         #
; #     - refreshMemory()                                                                                                       #
; #     - getPID(szWindow)                                                                                                      #
; #     - openProcess(dwPID, dwRights)                                                                                          #
; #     - closeProcess(hProcess)                                                                                                #
; #     - getModuleBaseAddress(sModule, dwPID)                                                                                  #
; #     - readString(hProcess, dwAddress, dwLen)                                                                                #
; #     - readFloat(hProcess, dwAddress)                                                                                        #
; #     - readDWORD(hProcess, dwAddress)                                                                                        #
; #     - readMem(hProcess, dwAddress, dwLen=4, type="UInt")                                                                    #
; #     - writeString(hProcess, dwAddress, wString)                                                                             #
; #     - writeRaw(hProcess, dwAddress, data, dwLen)                                                                            #
; #     - Memory_ReadByte(process_handle, address)                                                                              #
; #     - callWithParams(hProcess, dwFunc, aParams, bCleanupStack = true)                                                       #
; #     - virtualAllocEx(hProcess, dwSize, flAllocationType, flProtect)                                                         #
; #     - virtualFreeEx(hProcess, lpAddress, dwSize, dwFreeType)                                                                #
; #     - createRemoteThread(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter,                            #
; #     - dwCreationFlags, lpThreadId)                                                                                          #
; #     - waitForSingleObject(hThread, dwMilliseconds)                                                                          #
; #     - __ansiToUnicode(sString, nLen = 0)                                                                                    #
; #     - __unicodeToAnsi(wString, nLen = 0)                                                                                    #
; ###############################################################################################################################
; # by MurKotik                                                                                                                 #
; #     - setCoordinates(x, y, z, Interior)         - Изменяет координаты локальному игроку                                     #
; #     - setIP(IP)                                 - Изменяет IP сервера (Не доработано)                                       #
; #     - setUsername(username)                     - Изменяет ник (Не доработано)                                              #
; #     - colorhud(color)                           - Изменяет зелёный цвет в игре на указаный                                  #
; #	    - setTime(hour)	                            - Изменяет времени на сервере (визуально)                                   #
; #	    - getSkinID()   	                        - Возвращает ID Скина локального игрока                                     #
; #	    - getDialogTitle() 	                        - Возвращает заголовок последнего диалога                                   #
; #	    - getPlayerColor(id)                        - Возвращает ID цвета ника игрока по id игрока                              #
; #	    - setPlayerColor(id,color)                  - Изменяет цвет ника игроку по id игрока                                    #
; #	    - colorToStr(color)	                        - Конвертация цвета из десятичной в шестнадцатиричную систему измерения     #
; #	    - getWeaponId() 	                        - Возвращает ID оружия локального персонажа                                 #
; #     - restartGameEx()                           - Рестарт игры (Не отключает от сервера)                                    #
; #     - setrestart()                              - Изменяет состояние игрока на Restart (Переподключение к серверу)          #
; #     - disconnectEx()                            - Отключение от сервера                                                     #
; #     - WriteProcessMemory(title,addresse,wert,size) - Работа с пресетам                                                      #
; #     - FloatToHex(value)                         - Перевод из Float в Hex                                                    #
; #     - IntToHex(int)                             - Перевод из Int в Hex                                                      #
; #     - HexToDec(str)                             - Перевод из Hex в Dec (Строковых значений)                                 #
; #     - addChatMessageEx(Color, wText)            - Локальное сообщение с изменением цвета timestamp'a                        #
; #     - connect(IP)                               - Подключение к серверу по IP (Пока что без смены Порта)                    #
; #     - setWeather(id)                            - Изменяет погоду (визуально)                                               #
; #     - setPlayerFreeze(status)                   - Изменяет статус заморозки (0 - разморозка, 2 - заморозка)                #    
; # by McFree                                                                                                                   #
; #     - getPlayerPosById(dwId)                    - Возвращает позицию игрока по id игрока                                    #
; #     - HexToDecOne(Hex)                          - Перевод из Hex в Dec                                                      #
; #     - HexToDecTwo(Hex)                          - Перевод шестнадцатиричного числа в десятичное                             #
; #     - hex2rgb(CR)                               - Перевод шестнадцатиричного цвета в rgb строку (255,255,255)               #
; #     - rgb2hex(R, G, B)                          - Перевод RGB цвета в шестнадцатиричное значение (FFFFFF)                   #
; #     - ProcessWriteMemory(Str ,addresse, process, Str, byte) - Запись в память                                               #
; #     - ProcessReadMemory(address, processIDorName, type, numBytes) - Чтение из памяти                                        #
; #     - GetCoordsSamp(ByRef ResX, ByRef ResY)     - Перевод кординат монитора на кординаты SA-MP                              #
; #     - getZoneByName(zName, ByRef CurZone)       - Возвращает координаты зоны по имени                                       #
; #     - getCenterPointToZone(zName, ByRef PointPos)- Возвращает координаты центра зоны по имени                               #
; # by Godarck                                                                                                                  #
; #     - GetInterior()                             - Проверяет находится ли персонаж в интерьере (true/false)                  #
; #     - getVehicleSirenState()                    - Проверяет в ключена ли сирена (true/false)                                #
; #     - CoordsFromRedmarker()                     - Возвращает координаты метки с карты.                                      #
; #     - NearPlayerInCar(dist)                     - Определяет игрока в автомобиле рядом                                      #
; #     - isTargetDriverbyId(dwId)                  - Проверяет является ли игрок водителем т/с по id                           #
; #     - ConvertCarColor(Color)                    - Конвертация цвета в RGB для getVehicleColor1() и getVehicleColor2()       #
; # By Unknown                                                                                                                  #
; #     - disableCheckpoint()                       - Отключает маркер на карте (Disable RED Marker on map)                     #
; #     - setCheckpoint(xpos,ypos,zpos,Radius)      - Устанавливает маркер на карте                                             #
; # By MrGPro                                                                                                                   #
; #     - getServerHour()                           - Возвращает минуты по серверному времени (Только серверах где отображается)#
; #     - getServerMinute()                         - Возвращает часы по серверному времени (Только серверах где отображается)  #
; #     - getVehicleIdServer()                      - Возвращает ID транспорта на сервере в который сидит локальный игрок       #
; # By Слюнявчик                                                                                                                #
; #     - IsInAFK()                                 - Проверяет находится ли локальный игрока в AFK                             #
; #                                                      (1 - AFK, 0 - не AFK, -1 - Игра закрыта)                               #
; # By Phoenixxx_Czar                                                                                                           #
; #     - isPlayerStreamebyid(id, dist)             - Определяет есть ли игрок на заданной дистации от вас                      #
; #     - getDialogLineNumber()                     - Замена, в случае не работоспособности getDialogIndex()                    #
; #     - getsexbyskin(skin)                        - Выдает пол по иду скина (0 - Ошибка, 1 - Мужской, 2 - Женский)            #
; # By aknqkzxlcs                                                                                                               #
; #     - setPlayerName(playerid, newnick)          - Визуальная смена Ника игрока по id (над головой и в табе)                 #
; #     - getDialogIndex()                          - Возвращает индекс выбранной строки, начиная с 1                           #
; #     - isDialogButtonSelected(Button id)         - Наведена ли мышка на кнопку или была ли кнопка нажата (id: 1 или 2)       #
; #     - set_player_armed_weapon_to(weaponid)      - Меняет оружие в руках на указанное путем перелистывания                   #
; #     - setPlayerHealth(float)                    - Установить уровень ХП персонажу      (Пример данных: float := 50.0)       #
; #     - setPlayerArmor(float)                     - Установить уровень брони персонажу                                        #
; #     - setVehicleHealth(float)                   - Установить уровень ХП автомобилю                                          #
; #     - getPlayerAnim()                           - Возвращает ID текущей анимации                                            #
; #     - toggleUnlimitedAmmo()                     - Бесконечные патроны                                                       #
; #     - toggleNoReload()                          - Стрельба без перезарядки                                                  #
; #     - toggleNoRecoil()                          - Стрельба без отдачи                                                       #
; #     - getKillStat()                             - Возвращает киллстат в виде массива из 5 строк                             #
; #     - getLastDamagePed(playerid, weapon)        - Получить ид того игрока, который тебя дамажил последним                   #
; #     - toggleAntiBikeFall()                      - не падать с байка                                                         #
; #     - toggleAntiCarEject()                      - вас не могут выкинуть из машины                                           #
; #     - toggleNoAnimations()                      - анимации не отображаются                                                  #
; #     - toggleObjectDrawMode()                    - курсор для отображения информации о streamer объектах на сервере          #
; #     - toggleMotionBlur()                        - размытость при движении на большой скорости как в сингле                  #
; #     - toggleNoDamageByWeapon()                  - вкл/выкл невосприимчивость к пулям                                        #
; #     - toggleInvulnerability()                   - вкл/выкл неуязвимость                                                     #
; #     - isPlayerCrouch()                          - Положение персонажа (1 - сидит, 0 - стоит)                                #
; #     - multVehicleSpeed(1.1)                     - Спидхак, ставится в цикл. Чем выше цифра, тем сильнее пинок под зад       #
; #     - setFireImmunity(state)                    - Установить иммунитет к огню (0 - выкл, 1 - не гореть в огне)              #
; #     - setInfiniteRun(state)                     - бесконечный бег (0 выкл / 1 вкл)                                          #
; #     - isMarkerSetup()                           - Установлена ли метка на карте                                             #
; #     - setDialogState(state)                     - Свернуть / развернуть диалог 0 - Скрыть 1 - Развернуть                    #
; #     - blurlevel()                               - Выдаёт / устанавливает уровень размытости пример - blurlevel(level)       #
; #     - getWeaponAmmo()                           - Возвращает общее количество патрон в текущем оружии                       #
; #     - gmpatch()                                 - by FYP, отключает встроенный клиентский античит на бессмертие             #
; #     - getVehicleMaxPassengers()                 - Максимальное количество пассажирских мест в текущем транспорте            #
; #     - getVehiclePassenger(место)                - Возвращает CPed pointer пассажира/водителя                                #
; #     - getVehiclePassengerId(место)              - возвращает id пассажира/водителя места: 0 водительское, 1-8 пассажирские  #
; #     - writeBytes(hProcess, dwAddress, bytes)    - записать несколько байтов по адресу (служебная функция)                   #
; #     - setChatState(state)                       - установить состояние чату (от 0 до 2)                                     #
; #     - getChatState()                            - состояние видимости чата (0 - спрятан, 1 - без контура, 2 - с контуром)   #
; #     - getChatLineEx(line = 0)                   - Читает чат из памяти, а не из чатлога                                     #
; #     - removeChatLine(line = 0)                  - Удаляет строку из чата                                                    #
; #     - NOP_SetPlayerPos()                        - Если включен, то сервер не может вас телепортировать куда-либо            #
; # By Dworkin                                                                                                                  #
; #     - getCameraCoordinates()                    - Получение координаты вашей камеры                                         #
; #     - GetBonePosition(ped,boneId)               - Получение координат костей по педу.                                       #
; # By Ghost29                                                                                                                  #
; #     - togglekillstat(state)                     - Переключает киллстат. (1 - вкл, 0 - выкл)                                 #
; #     - setkillstatwidth(width)                   - Ширина между строками киллстата                                           #
; #     - movekillstat(x)                           - Двигает киллстат по Х                                                     #
; #     - setdistkillstat(int)                      - Расстояние между правым столбиком и иконкой гана                          #
; #     - PrintLow(text, time)                      - Выводит текст внизу экрана. Поддерживает форматирование типа ~g~ / ~n~    #
; ###############################################################################################################################



; # Аргументы для функции getWeaponAmmo(Ammo, Clip, Slot = -1)
; # [1] Ammo - возвращает в указанную переменную общее количество патрон текущего оружия
; # [2] Clip (необязательный) - возвращает в переменную количество патрон в магазине текущего оружия
; # [3] Slot (необязательный) - если не указан, то возвращает количество патрон текущего оружия, иначе патроны оружия из указанного слота
; # Подробнее: http://wiki.sa-mp.com/wiki/Weapons

getWeaponAmmo(ByRef Ammo := "", ByRef Clip := "", slot := -1)
{
    if(!checkHandles())
        return -1
    if(!CPed := readDWORD(hGTA, ADDR_CPED_PTR))
        return -1
    if slot not between 0 and 12
    {
        VarSetCapacity(slot, 1)
        DllCall("ReadProcessMemory", "UInt", hGTA, "UInt", CPed + 0x718, "Str", slot, "UInt", 1, "UInt*", 0)
        slot := NumGet(slot, 0, "short")
        if slot >= 12544
            slot -= 12544
    }
    struct := CPed + 0x5AC
    VarSetCapacity(Ammo, 4)
    VarSetCapacity(Clip, 4)
    DllCall("ReadProcessMemory", "UInt", hGTA, "UInt", struct + (0x1C * slot), "Str", Ammo, "UInt", 4, "UInt*", 0)
    DllCall("ReadProcessMemory", "UInt", hGTA, "UInt", struct + (0x1C * slot) - 0x4, "Str", Clip, "UInt", 4, "UInt*", 0)
    Ammo := NumGet(Ammo, 0, "int")
    Clip := NumGet(Clip, 0, "int")
    return Ammo
}

NOP_SetPlayerPos(tog := -1)
{
    if(!checkHandles())
        return -1
    dwAddress := dwSAMP+0x15970
    byte := readMem(hGTA, dwAddress, 1, "byte")
    if((tog == -1 && byte != 195) || tog == true || tog == 1)
    {
        writeBytes(hGTA, dwAddress, "C390")
        return true
    } else if((tog == -1 && byte == 195) || !tog)
    {
        writeBytes(hGTA, dwAddress, "E910")
        return false
    }
    return -1
}

removeChatLine(line := 0)
{
    if(!checkHandles())
        return false
    if(!dwAddress := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR))
        return false
    loop % 100 - line
    {
        a := ""
        dwLine := dwAddress + 0x132 + ( (99 - A_Index - line) * 0xFC )
        loop 0xFC
        {
            byte := substr(inttohex(Memory_ReadByte(hGTA, dwLine++)), 3)
            a .= (strlen(byte) == 1 ? "0" : "") byte
        }
        dwLine := dwAddress + 0x132 + ( (100 - A_Index - line) * 0xFC )
        writeBytes(hGTA, dwLine, a)
    }
    sendinput {f7 3} ; 3 - без соба, 4 - есть собейт
    return true
}

getChatLineEx(line := 0) {
    ; 0x152 - offset for first message
    ; 0xFC - size of a message
    ; 99 - max count of a messages
    if(!checkHandles())
        return
    dwPtr := dwSAMP + ADDR_SAMP_CHATMSG_PTR
    dwAddress := readDWORD(hGTA, dwPtr)
    if(ErrorLevel)
        return
    msg := readString(hGTA, dwAddress + 0x152 + ( (99-line) * 0xFC), 0xFC)
    if(ErrorLevel)
        return
    return msg
}

PrintLow(text, time) {
    ;0x69F1E0 = PrintLowPriorityMessage(const char* text, int time_in_ms, int unknown1 = 1, int unknown2 = 1);
    if(!checkHandles())
        return -1
    dwFunc := 0x69F1E0
    callwithparams(hGta, dwFunc, [["s",text], ["i", time], ["i", 1], ["i", 1]], true)
}

getChatState(state := -1)
{
    if(!checkHandles())
        return false
    dwAddr := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR) + 8
    if state between 0 and 2
    {
        writeByte(hGTA, dwAddr, state)
        sendinput {f7 3}
    }
    return Memory_ReadByte(hGTA, dwAddr)
}

GetBonePosition(ped,boneId){
    callWithParamsBonePos(0x5E4280, [["i", ped],["i", pParamBonePos1],["i",boneId],["i", 1]], false, true)
    return [readFloat(hGTA, pParamBonePos1), readFloat(hGTA, pParamBonePos1 + 4), readFloat(hGTA, pParamBonePos1 + 8)]
}
    callWithParamsBonePos(dwFunc, aParams, bCleanupStack = true,  thiscall = false) {
    validParams := 0
    i := aParams.MaxIndex()
    dwLen := i * 5 + 5 + 1
    if(bCleanupStack)
    dwLen += 3
    VarSetCapacity(injectData, i * 5 + 5 + 3 + 1, 0)
    i_ := 1
    while(i > 0) {
    if(aParams[i][1] != "") {
        dwMemAddress := 0x0
    if(aParams[i][1] == "p") {
        dwMemAddress := aParams[i][2]
    } else if(aParams[i][1] == "s") {
        if(i_>3)
            return false
        dwMemAddress := pParamBonePos%i_%
        writeString(hGTA,dwMemAddress, aParams[i][2])
        if(ErrorLevel)
            return false
        i_ += 1
        } else if(aParams[i][1] == "i") {
            dwMemAddress := aParams[i][2]
        } else {
            return false
        }
            NumPut((thiscall && i == 1 ? 0xB9 : 0x68), injectData, validParams * 5, "UChar")
            NumPut(dwMemAddress, injectData, validParams * 5 + 1, "UInt")
            validParams += 1
        }
            i -= 1
        }
            offset := dwFunc - ( pInjectFuncBonePos + validParams * 5 + 5 )
            NumPut(0xE8, injectData, validParams * 5, "UChar")
            NumPut(offset, injectData, validParams * 5 + 1, "Int")
            if(bCleanupStack) {
            NumPut(0xC483, injectData, validParams * 5 + 5, "UShort")
            NumPut(validParams*4, injectData, validParams * 5 + 7, "UChar")
            NumPut(0xC3, injectData, validParams * 5 + 8, "UChar")
            } else {
                NumPut(0xC3, injectData, validParams * 5 + 5, "UChar")
            }
            writeRaw(hGTA, pInjectFuncBonePos, &injectData, dwLen)
            if(ErrorLevel)
                return false
            hThread := createRemoteThread(hGTA, 0, 0, pInjectFuncBonePos, 0, 0, 0)
            if(ErrorLevel)
                return false
            waitForSingleObject(hThread, 0xFFFFFFFF)
            closeProcess(hThread)
            return true
        }
getVehicleMaxPassengers()
{
    if(!checkHandles())
        return -1
    if(!CVeh := readDWORD(hGTA, ADDR_VEHICLE_PTR))
        return -1
    return readMem(hGTA, CVeh + 0x488, 1, "byte")
}

getVehiclePassenger(place)
{
    ; возвращает указатель на игрока
    ; 0 - водитель, от 1 до 8 - пассажирские места
    if(!checkHandles())
        return -1
    if(!CVeh := readDWORD(hGTA, ADDR_VEHICLE_PTR))
        return -1
    return readDWORD(hGTA, CVeh + 0x460 + (place * 4))
}

getVehiclePassengerId(place)
{
    CPed := getVehiclePassenger(place)
    return getIdByPed(CPed)
}

getLastDamagePed(ByRef Ped := "", ByRef Weapon := "")
{
    if(!checkHandles())
        return -1
    if(!CPed := readDWORD(hGTA, ADDR_CPED_PTR))
        return -1
    if(!dwPed := readDWORD(hGTA, CPed + 0x764))
        return -1
    Ped := getIdByPed(dwPed)
    Weapon := readMem(hGTA, CPed + 0x760, 4, "int")
    return Ped
}

getKillStat(ByRef IsEnabled := "")
{
    if(!checkHandles())
        return false
    a := []
    klist := readDWORD(hGTA, dwSAMP + 0x21A0EC)
    isEnabled := readMem(hGTA, klist, 4, "int")
    klist += 4
    loop 5
    {
        szKiller := readString(hGTA, klist, 25)
        szVictim := readString(hGTA, (klist += 25), 25)
        clKillerColor := inttohex(readMem(hGTA, (klist += 25), 4, "uint"))
        clVictimColor := inttohex(readMem(hGTA, (klist += 4), 4, "uint"))
        byteType := Memory_ReadByte(hGTA, (klist += 4))
        klist++
        a.Insert([szKiller, szVictim, clKillerColor, clVictimColor, byteType])
    }
    return a
}

setFireImmunity(state)
{
    if(!checkHandles())
        return
    writeMemory(hGTA, 0xB7CEE6, (state ? 1 : 0), 1, "byte")
}

setInfiniteRun(state)
{
    if(!checkHandles())
        return
    writeMemory(hGTA, 0xB7CEE4, (state ? 1 : 0), 1, "byte")
}

isMarkerSetup()
{
    if(!checkHandles())
        return -1
    return readMem(hGTA, 0xBA6774, 1, "byte")
}

multVehicleSpeed(MultValue := 1.01, SleepTime := 10, MaxSpeedX := 2.0, MaxSpeedY := 2.0)
{
    if(multVehicleSpeed_tick + SleepTime > A_TickCount)
        return false
    multVehicleSpeed_tick := A_TickCount
    
    if(!checkHandles())
        return false
    if(!dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR))
        return false
    
    if(!MultValue)
    {
        writeFloat(hGTA, dwAddr + ADDR_VEHICLE_X, 0.0)
        writeFloat(hGTA, dwAddr + ADDR_VEHICLE_Y, 0.0)
        return true
    }
    
    fSpeedX := readMem(hGTA, dwAddr + ADDR_VEHICLE_X, 4, "float")
    fSpeedY := readMem(hGTA, dwAddr + ADDR_VEHICLE_Y, 4, "float")
    
    if(abs(fSpeedX) <= MaxSpeedX)
        writeFloat(hGTA, dwAddr + ADDR_VEHICLE_X, fSpeedX * MultValue)
    if(abs(fSpeedY) <= MaxSpeedY)
        writeFloat(hGTA, dwAddr + ADDR_VEHICLE_Y, fSpeedY * MultValue)
    
    return true
}


togglekillstat(state) 
{
    if(!checkHandles())
        return false
    dwKillptr := readDWORD(hGTA, dwSAMP + SAMP_KILLSTAT_OFFSET)
    if(ErrorLevel || dwKillptr == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    
    writeBytes(hGTA, dwKillptr, state)
    if(ErrorLevel) {
  ErrorLevel := ERROR_WRITE_MEMORY
  return -1
    }
    return true
}

setkillstatwidth(width)
{
   if(!checkHandles())
        return false
        
    dwKillptr := readDWORD(hGTA, dwSAMP + SAMP_KILLSTAT_OFFSET)
    if(ErrorLevel || dwKillptr == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    
    writeBytes(hGTA, dwKillptr + 0x133, width)
    if(ErrorLevel) {
  ErrorLevel := ERROR_WRITE_MEMORY
  return false
    }
    return true
}

movekillstat(x)
{
    if(!checkHandles())
        return false
        
    dwKillptr := readDWORD(hGTA, dwSAMP + SAMP_KILLSTAT_OFFSET)
    if(ErrorLevel || dwKillptr == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    
    writeBytes(hGTA, dwKillptr + 0x12B, x)
    if(ErrorLevel) {
  ErrorLevel := ERROR_WRITE_MEMORY
  return false
    }
    return true
}

setdistkillstat(int)
{
        if(!checkHandles())
        return false
        
    dwKillptr := readDWORD(hGTA, dwSAMP + SAMP_KILLSTAT_OFFSET)
    if(ErrorLevel || dwKillptr == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    
    writeBytes(hGTA, dwKillptr + 0x12F, int)
    if(ErrorLevel) {
  ErrorLevel := ERROR_WRITE_MEMORY
  return false
    }
    return true
}

getWeaponSlotById(id)
{
    if id between 2 and 9
        slot := 1
    if id between 10 and 15
        slot := 10
    if id in 16,17,18,39
        slot := 8
    if id between 22 and 24
        slot := 2
    if id between 25 and 27
        slot := 3
    if id in 28,29,32
        slot := 4
    if id in 30,31
        slot := 5
    if id in 33,34
        slot := 6
    if id between 35 and 38
        slot := 7
    if id == 40
        slot := 12
    if id between 41 and 43
        slot := 9
    if id between 44 and 46
        slot := 11
}

isPlayerCrouch()
{
    if(!checkHandles())
        return -1
    if(!CPed := readDWORD(hGTA, ADDR_CPED_PTR))
        return -1
    state := readMem(hGTA, CPed + 0x46F, 1, "byte")
    if(state == 132)
        return 1
    if(state == 128)
        return 0
    return -1
}

setDialogState(tog)
{
    if(!checkHandles())
        return false
    
    dwPointer := getDialogStructPtr()
    if(ErrorLevel || !dwPointer)
        return false
    
    writeMemory(hGTA, dwPointer + 0x28, (tog ? 1 : 0), 1, "byte")
    if(!tog)
        Send {f6}{esc}
    return true
}

toggleObjectDrawMode(tog := -1)
{
    if(!checkHandles())
        return -1
    byte := readMem(hGTA, dwSAMP + 0x69529, 1, "byte")
    if((tog == -1 && byte == 15) || tog == true || tog == 1)
    {
        writeBytes(hGTA, dwSAMP + 0x69529, "909090909090")
        return true
    } else if((tog == -1 && byte == 144) || !tog)
    {
        writeBytes(hGTA, dwSAMP + 0x69529, "0F84AE000000")
        Send {f6}{esc}
        return false
    }
    return -1
}

blurlevel(level := -1)
{
    if(!checkHandles())
        return -1
    if level between 0 and 255
        writeMemory(hGTA, 0x8D5104, level, 1, "byte")
    blur := readMem(hGTA, 0x8D5104, 1, "byte")
    return blur
}

toggleNoDamageByWeapon(tog := -1)
{
    if(!checkHandles())
        return -1
    byte := readMem(hGTA, 0x60A5BA, 1, "byte")
    if((tog == -1 && byte == 216) || tog == true || tog == 1)
    {
        writeBytes(hGTA, 0x60A5BA, "909090")
        return true
    } else if((tog == -1 && byte == 144) || !tog)
    {
        writeBytes(hGTA, 0x60A5BA, "D95E18")
        return false
    }
    addChatMessageEx(0xCC0000, "only for gta_sa.exe 1.0 us")
    return -1
}

toggleInvulnerability(tog := -1)
{
    if(!checkHandles())
        return -1
    byte := readMem(hGTA, 0x60A5BA, 1, "byte")
    if((tog == -1 && byte == 217) || tog == true || tog == 1)
    {
        writeBytes(hGTA, 0x4B3314, "909090")
        return true
    } else if((tog == -1 && byte == 144) || !tog)
    {
        writeBytes(hGTA, 0x4B3314, "D86504")
        return false
    }
    addChatMessageEx(0xCC0000, "only for gta_sa.exe 1.0 us")
    return -1
}

gmpatch()
{
    if(!checkHandles())
        return false
    a := writeMemory(hGTA, 0x4B35A0, 0x560CEC83, 4, "int")
    b := writeMemory(hGTA, 0x4B35A4, 0xF18B, 2, "byte")
    return (a && b)
}

toggleUnlimitedAmmo(tog := -1)
{
    if(!checkHandles())
        return -1
    byte := readMem(hGTA, 0x7428E6, 1, "byte")
    if((tog == -1 && byte == 255) || tog == true || tog == 1)
    {
        writeBytes(hGTA, 0x7428E6, "909090")
        return true
    } else if((tog == -1 && byte == 144) || !tog)
    {
        writeBytes(hGTA, 0x7428E6, "FF4E0C")
        return false
    }
    addChatMessageEx(0xCC0000, "only for gta_sa.exe 1.0 us")
    return -1
}

toggleNoReload(tog := -1)
{
    if(!checkHandles())
        return -1
    byte := readMem(hGTA, 0x7428B0, 1, "byte")
    if((tog == -1 && byte == 137) || tog == true || tog == 1)
    {
        writeBytes(hGTA, 0x7428B0, "909090")
        return true
    } else if((tog == -1 && byte == 144) || !tog)
    {
        writeBytes(hGTA, 0x7428B0, "894608")
        return false
    }
    addChatMessageEx(0xCC0000, "only for gta_sa.exe 1.0 us")
    return -1
}

toggleNoRecoil(tog := -1)
{
    if(!checkHandles())
        return -1
    byte := readMem(hGTA, 0x740450, 1, "byte")
    if((tog == -1 && byte == 216) || tog == true || tog == 1)
    {
        writeBytes(hGTA, 0x740450, "90909090909090909090")
        return true
    } else if((tog == -1 && byte == 144) || !tog)
    {
        writeBytes(hGTA, 0x740450, "D80D3C8B8500D84C241C")
        return false
    }
    addChatMessageEx(0xCC0000, "only for gta_sa.exe 1.0 us")
    return -1
}

toggleAntiBikeFall(tog := -1)
{
    if(!checkHandles())
        return -1
    byte := readMem(hGTA, 0x4BA3B9, 1, "byte")
    if((tog == -1 && byte == 15) || tog == true || tog == 1)
    {
        writeBytes(hGTA, 0x4BA3B9, "E9A703000090")
        return true
    } else if((tog == -1 && byte == 233) || !tog)
    {
        writeBytes(hGTA, 0x4BA3B9, "0F84A6030000")
        return false
    }
    addChatMessageEx(0xCC0000, "only for gta_sa.exe 1.0 us")
    return -1
}

toggleAntiCarEject(tog := -1)
{
    if(!checkHandles())
        return -1
    byte := readMem(hGTA, dwSAMP + 0x146E0, 1, "byte")
    if((tog == -1 && byte == 233) || tog == true || tog == 1)
    {
        writeBytes(hGTA, dwSAMP + 0x146E0, "C390909090")
        return true
    } else if((tog == -1 && byte == 195) || !tog)
    {
        writeBytes(hGTA, dwSAMP + 0x146E0, "E9D7722700")
        return false
    }
    return -1
}

toggleNoAnimations(tog := -1)
{
    if(!checkHandles())
        return -1
    byte := readMem(hGTA, dwSAMP + 0x16FA0, 1, "byte")
    if((tog == -1 && byte == 85) || tog == true || tog == 1)
    {
        writeMemory(hGTA, dwSAMP + 0x16FA0, 0xC3, 1, "byte")
        return true
    } else if((tog == -1 && byte == 195) || !tog)
    {
        writeMemory(hGTA, dwSAMP + 0x16FA0, 0x55, 1, "byte")
        return false
    }
    return -1
}

toggleMotionBlur(tog := -1)
{
    if(!checkHandles())
        return -1
    byte := readMem(hGTA, 0x704E8A, 1, "byte")
    if((tog == -1 && byte == 144) || tog == true || tog == 1)
    {
        writeBytes(hGTA, 0x704E8A, "E811E2FFFF")
        return true
    } else if((tog == -1 && byte == 232) || !tog)
    {
        writeBytes(hGTA, 0x704E8A, "9090909090")
        return false
    }
    addChatMessageEx(0xCC0000, "only for gta_sa.exe 1.0 us")
    return -1
}

writeBytes(handle, address, bytes)
{
    length := strlen(bytes) / 2
    VarSetCapacity(toInject, length, 0)
    Loop %length%
    {
        byte := "0x" substr(bytes, ((A_Index - 1) * 2) + 1, 2)
        NumPut(byte, toInject, A_Index - 1, "uchar")
    }
    return writeRaw(handle, address, &toInject, length)
}

setPlayerFreeze(status) {
    if(!checkHandles())
        return -1
    
    dwCPed := readDWORD(hGTA, 0xB6F5F0)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    dwAddr := dwCPed + 0x42 
	writeString(hGTA, dwAddr, status)
	if(ErrorLevel) {
		ErrorLevel := ERROR_WRITE_MEMORY
		return -1		
	}     
    ErrorLevel := ERROR_OK
    return true
}

getPlayerAnim()
{
    if(!checkHandles())
        return false
    dwPointer := readDWORD(hGTA, dwSAMP + 0x13D190)
    anim := readMem(hGTA, dwPointer + 0x2F4C, 2, "byte")
    return anim
}

setPlayerHealth(amount) {
    if(!checkHandles())
        return -1
    
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    dwAddr := dwCPedPtr + ADDR_CPED_HPOFF
    writeFloat(hGTA, dwAddr, amount)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return true
}

setPlayerArmor(amount) {
    if(!checkHandles())
        return -1
    
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    dwAddr := dwCPedPtr + ADDR_CPED_ARMOROFF
    writeFloat(hGTA, dwAddr, amount)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return true
}

setVehicleHealth(amount) {
    if(!checkHandles())
        return -1
    
    dwVehPtr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    dwAddr := dwVehPtr + ADDR_VEHICLE_HPOFF
    writeFloat(hGTA, dwAddr, amount)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return true
}

getDialogIndex() {
    dwPointer := getDialogStructPtr()
    if (ErrorLevel || !dwPointer)
        return false
    
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR2_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    index := readMem(hGTA, dwPointer + 0x143, 1, "Byte")
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    
    ErrorLevel := ERROR_OK
    return index + 1
}

isDialogButtonSelected(btn := 1) {
    dwPointer := getDialogStructPtr()
    if (ErrorLevel || !dwPointer)
        return false
    
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR2_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    offset := (btn == 1 ? 0x165 : 0x2C5)
    sel := readMem(hGTA, dwPointer + offset, 1, "Byte")
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    
    ErrorLevel := ERROR_OK
    return sel
}

getServerHour() {
    if(!checkHandles())
        return -1
    
    dwGTA := getModuleBaseAddress("gta_sa.exe", hGTA)
    Hour := readMem(hGTA, 0xB70153, 1, "Int")
    if (Hour <= 9) {
        FixHour = 0%Hour%
        return FixHour
    }
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK    
    return Hour
}
getsexbyskin(skin) 
{ 
if skin in 1,2,3,4,5,6,7,8,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,32,33,34,35,36,37,42,43,44,45,46,47,48,49,50,51,52,57,58,59,60,61,62,66,67,68,70,71,72,73,79,80,81,82,83,84,86,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,132,133,134,135,136,137,142,143,144,146,147,149,153,154,155,156,158,159,160,161,162,163,164,165,166,167,168,170,171,173,174,175,176,177,179,180,181,182,183,184,185,186,187,188,189,200,202,203,204,206,208,209,210,212,213,217,220,221,222,223,227,228,229,230,234,235,236,239,240,241,242,247,248,249,250,252,253,254,255,258,259,260,261,262,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,299,300,301,302,303,304,305,310,311
    return 1 
if skin in 9,10,11,12,13,31,38,39,40,41,53,54,55,56,63,64,65,69,75,76,77,85,87,88,89,90,91,92,93,129,130,131,138,139,140,141,143,144,145,148,150,151,152,157,169,172,178,190,191,192,193,194,195,196,197,198,199,201,205,207,211,214,215,216,218,219,224,225,226,231,232,233,237,238,243,244,245,246,251,256,257,263,298,306,307,308,309 
    return 2 
else 
    return 0 
}

set_player_armed_weapon_to(weaponid)
{
    c := getPlayerWeaponId()
    WinGet, gtapid, List, GTA:SA:MP
    SendMessage, 0x50,, 0x4090409,, GTA:SA:MP
    Loop
    {
        ControlSend,, {E down}, ahk_id %gtapid1%
        Sleep, 5
        ControlSend,, {E up}, ahk_id %gtapid1%
        if(getPlayerWeaponId() == c || getPlayerWeaponId() == weaponid)
            break
    }
}

getZoneByName(zName, ByRef CurZone ) { 
    if ( bInitZaC == 0 ) 
    { 
        initZonesAndCities() 
        bInitZaC := 1 
    } 
    Loop % nZone-1 
    { 
        if (zone%A_Index%_name == zName) 
        { 
            ErrorLevel := ERROR_OK 
            CurZone[1] := zone%A_Index%_name 
            CurZone[2] := %A_Index% 
            CurZone[3,1,1] := zone%A_Index%_x1 
            CurZone[3,1,2] := zone%A_Index%_y1 
            CurZone[3,1,3] := zone%A_Index%_z1 
            CurZone[3,2,1] := zone%A_Index%_x2 
            CurZone[3,2,2] := zone%A_Index%_y2 
            CurZone[3,2,3] := zone%A_Index%_z2 
            return true 
        } 
    } 
    ErrorLevel := ERROR_ZONE_NOT_FOUND 
    return "Unknown" 
} 
; PointPos[1] - X Point 
; PointPos[2] - Z Point 
getCenterPointToZone(zName, ByRef PointPos) { 
    getZoneByName(zName, CurZone) 
    PointPos[1] := 125 + CurZone[3,1,1] 
    PointPos[2] := 125 + CurZone[3,1,2] 
    return true 
}

getDialogLineNumber() {
    dwPointer := getDialogStructPtr()
    if (ErrorLevel || !dwPointer)
        return 0
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR2_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    count := readMem(hGTA, dwPointer + SAMP_DIALOG_LINENUMBER_OFFSET, 4, "UInt")
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    return count//16777216+1
}

getServerMinute() {
    if(!checkHandles())
        return -1
    
    dwGTA := getModuleBaseAddress("gta_sa.exe", hGTA)
    Minute := readMem(hGTA, 0xB70152, 1, "Int")
    if (Minute <= 9) {
        FixMinute = 0%Minute%
        return FixMinute
    }
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK    
    return Minute
}

getCameraCoordinates() {
    if(!checkHandles())
        return false

    fX := readFloat(hGTA, 0xB6F9CC)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    fY := readFloat(hGTA, 0xB6F9D0)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    fZ := readFloat(hGTA, 0xB6F9D4)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    ErrorLevel := ERROR_OK
    return [fX, fY, fZ]
}

getPlayerPosById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
        return ""
    
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
        {
   if(oScoreboardData[dwId].HasKey("PED"))
    return getPedCoordinates(oScoreboardData[dwId].PED)
   if(oScoreboardData[dwId].HasKey("MPOS"))
    return oScoreboardData[dwId].MPOS
  }
        return ""
    }
    
    if(!updateOScoreboardData())
        return ""
    
    if(oScoreboardData[dwId])
    {
  if(oScoreboardData[dwId].HasKey("PED"))
   return getPedCoordinates(oScoreboardData[dwId].PED)
  if(oScoreboardData[dwId].HasKey("MPOS"))
   return oScoreboardData[dwId].MPOS
    }
    return ""
}

HexToDecOne(Hex)
{
    if (InStr(Hex, "0x") != 1)
    Hex := "0x" Hex
    return, Hex + 0
}

HexToDecTwo(hex)
{
    VarSetCapacity(dec, 66, 0)
    , val := DllCall("msvcrt.dll\_wcstoui64", "Str", hex, "UInt", 0, "UInt", 16, "CDECL Int64")
    , DllCall("msvcrt.dll\_i64tow", "Int64", val, "Str", dec, "UInt", 10, "CDECL")
    return dec
}
hex2rgb(CR)
{
    NumPut((InStr(CR, "#") ? "0x" SubStr(CR, 2) : "0x") SubStr(CR, -5), (V := "000000"))
    return NumGet(V, 2, "UChar") "," NumGet(V, 1, "UChar") "," NumGet(V, 0, "UChar")
}
rgb2hex(R, G, B, H := 1)
{
    static U := A_IsUnicode ? "_wcstoui64" : "_strtoui64"
    static V := A_IsUnicode ? "_i64tow"    : "_i64toa"
    rgb := ((R << 16) + (G << 8) + B)
    H := ((H = 1) ? "#" : ((H = 2) ? "0x" : ""))
    VarSetCapacity(S, 66, 0)
    value := DllCall("msvcrt.dll\" U, "Str", rgb , "UInt", 0, "UInt", 10, "CDECL Int64")
    DllCall("msvcrt.dll\" V, "Int64", value, "Str", S, "UInt", 16, "CDECL")
    return H S
}
GetCoordsSamp(ByRef ResX, ByRef ResY) 
{
    MouseGetPos, PosX, PosY
    PosXProc := PosX * 100 / A_ScreenWidth
    PosYProc := PosY * 100 / A_ScreenHeight
    ResX := PosXProc * 8
    ResY := PosYProc * 6
}
getVehicleIdServer(address=0x13C298, datatype="int", length=4, offset=0)
{
    if (isPlayerDriver() != "-1" or isPlayerInAnyVehicle() != "0")
    {
    Process, Exist, gta_sa.exe
    PID_GTA := ErrorLevel
    VarSetCapacity(me32, 548, 0)
    NumPut(548, me32)
    snapMod := DllCall("CreateToolhelp32Snapshot", "Uint", 0x00000008, "Uint", PID_GTA)
    If (snapMod = -1)
        Return 0
    If (DllCall("Module32First", "Uint", snapMod, "Uint", &me32))
{
  Loop
        {
            If (!DllCall("lstrcmpi", "Str", "samp.dll", "UInt", &me32 + 32)) {
                DllCall("CloseHandle", "UInt", snapMod)
                key:= NumGet(&me32 + 20)
                WinGet, PID_SAMP, PID, GTA:SA:MP
                hwnd_samp := DllCall("OpenProcess","Uint",0x1F0FFF,"int",0,"int", PID_SAMP)
                VarSetCapacity(readvalue,length, 0)
                DllCall("ReadProcessMemory","Uint",hwnd_samp,"Uint",key+address+offset,"Str",readvalue,"Uint",length,"Uint *",0)
                finalvalue := NumGet(readvalue,0,datatype)
                DllCall("CloseHandle", "int", hwnd_samp)
                return finalvalue
            }
        }
    Until !DllCall("Module32Next", "Uint", snapMod, "UInt", &me32)
    }
    DllCall("CloseHandle", "Uint", snapMod)
    }
    else
        Return 0
}
; Визуально меняет ник любого игрока
setPlayerName(playerid, newnick) {
    if(!checkHandles() || !strlen(newnick))
        return 0

    dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    dwAddress := readDWORD(hGTA, dwAddress + SAMP_PPOOLS_OFFSET)
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    dwPlayers := readDWORD(hGTA, dwAddress + SAMP_PPOOL_PLAYER_OFFSET)
    if(ErrorLevel || dwPlayers==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }

    dwRemoteplayer := readDWORD(hGTA, dwPlayers+SAMP_PREMOTEPLAYER_OFFSET+playerid*4)      ;pRemotePlayer
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
        
    if(dwRemoteplayer==0)
        return 0
        
    dwTemp := readMem(hGTA, dwRemoteplayer + SAMP_ISTRLENNAME___OFFSET, 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    sUsername := ""
    if(dwTemp <= 0xf)
    {
        sUsername := readString(hGTA, dwRemoteplayer+SAMP_SZPLAYERNAME_OFFSET, 16)
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        writeString(hGTA, dwRemoteplayer+SAMP_SZPLAYERNAME_OFFSET, newnick)
    }
    else {
        dwAddress := readDWORD(hGTA, dwRemoteplayer + SAMP_PSZPLAYERNAME_OFFSET)
        if(ErrorLevel || dwAddress==0) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        sUsername := readString(hGTA, dwAddress, 25)
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        writeString(hGTA, dwAddress, newnick)
    }
    
    ErrorLevel := ERROR_OK
    return 1
}

HexToDec(str)
{   
   local newStr := ""
   static comp := {0:0, 1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7, 8:8, 9:9, "a":10, "b":11, "c":12, "d":13, "e":14, "f":15}
   StringLower, str, str
   str := RegExReplace(str, "^0x|[^a-f0-9]+", "")
   Loop, % StrLen(str)
       newStr .= SubStr(str, (StrLen(str)-A_Index)+1, 1)
   newStr := StrSplit(newStr, "")
   local ret := 0
   for i,char in newStr
       ret += comp[char]*(16**(i-1))
   return ret
}

addChatMessageEx(Color, wText) {
   wText := "" wText

   if(!checkHandles())
       return false
   
    VarSetCapacity(data2, 4, 0)
   NumPut(HexToDec(Color),data2,0,"Int")
    
   Addrr := readDWORD(hGTA, dwSAMP+ADDR_SAMP_CHATMSG_PTR)
   
   VarSetCapacity(data1, 4, 0)
   NumPut(readDWORD(hGTA, Addrr + 0x12A), data1,0,"Int") 
   
   WriteRaw(hGTA, Addrr + 0x12A, &data2, 4)
    
   dwFunc := dwSAMP + FUNC_SAMP_ADDTOCHATWND
   dwChatInfo := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR)
   if(ErrorLevel) {
       ErrorLevel := ERROR_READ_MEMORY
       return false
   }
   
   callWithParams(hGTA, dwFunc, [["p", dwChatInfo], ["s", wText]], true)
   WriteRaw(hGTA, Addrr + 0x12A, &data1, 4)
   
   ErrorLevel := ERROR_OK
    
   return true
}

connect(IP) {
    setIP(IP)
    restartGameEx()
    disconnectEx()
    Sleep 1000
    setrestart()
    Return
}

WriteProcessMemory(title,addresse,wert,size)  
{ 
	VarSetCapacity(idvar,32,0) 
	VarSetCapacity(processhandle,32,0) 
	VarSetCapacity(value, 32, 0) 
	NumPut(wert,value,0,Uint) 
	address=%addresse% 	
	WinGet ,idvar,PID,%title% 
	processhandle:=DllCall("OpenProcess","Uint",0x38,"int",0,"int",idvar) 
	Bvar:=DllCall("WriteProcessMemory","Uint",processhandle,"Uint",address+0,"Uint",&value,"Uint",size,"Uint",0) 
}

setCoordinates(x, y, z, Interior) {
    if(!checkHandles())
        return False

    dwAddress := readMem(hGTA, ADDR_SET_POSITION)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        Return False
    }

    dwAddress := readMem(hGTA, dwAddress + ADDR_SET_POSITION_OFFSET)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        Return False
    }

    Sleep 100

    writeByte(hGTA, ADDR_SET_INTERIOR_OFFSET, Interior)
    if(ErrorLevel) {
        ErrorLevel := ERROR_WRITE_MEMORY
        Return False
    }

    writeFloat(hGTA, dwAddress + ADDR_SET_POSITION_X_OFFSET, x)
    if(ErrorLevel) {
        ErrorLevel := ERROR_WRITE_MEMORY
        Return False
    }

    writeFloat(hGTA, dwAddress + ADDR_SET_POSITION_Y_OFFSET, y)
    if(ErrorLevel) {
        ErrorLevel := ERROR_WRITE_MEMORY
        Return False
    }

    writeFloat(hGTA, dwAddress + ADDR_SET_POSITION_Z_OFFSET, z)
    if(ErrorLevel) {
        ErrorLevel := ERROR_WRITE_MEMORY
        Return False
    }

    Return True
}
colorhud(colorhud) 
{ 
    VarSetCapacity(idvar,32,0) 
    VarSetCapacity(processhandle,32,0) 
    VarSetCapacity(value, 32, 0) 
    NumPut(colorhud,value,0,Uint) 
    address=0xBAB230
    WinGet ,idvar,PID,GTA:SA:MP
    processhandle:=DllCall("OpenProcess","Uint",0x38,"int",0,"int",idvar) 
    Bvar:=DllCall("WriteProcessMemory","Uint",processhandle,"Uint",address+0,"Uint",&value,"Uint","4","Uint",0) 
}

; Смена Ip Сервера
setIP(IP) {
    if(!checkHandles())
        return False

    dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return False
    }

    writeString(hGTA, dwAddress + SAMP_SZIP_OFFSET, IP)
    if(ErrorLevel) {
        ErrorLevel := ERROR_WRITE_MEMORY
        return False
    }

    return True
}

; set nickname
setUsername(Username) {
    if(!checkHandles())
        return False

    dwAddress := dwSAMP + ADDR_SAMP_USERNAME
    writeString(hGTA, dwAddress, Username)
    if(ErrorLevel) {
        ErrorLevel := ERROR_WRITE_MEMORY
        return False
    }

    ErrorLevel := ERROR_OK
    return True
}

setChatLine(line, msg) {
	if(!checkHandles())
		return -1

	dwPtr := dwSAMP + ADDR_SAMP_CHATMSG_PTR
	dwAddress := readDWORD(hGTA,dwPtr)
	if(ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
    }

	; 0x152, offset for first msg
	; 0xFC, size of a msg
	; 99, max msg
	writeString(hGTA, dwAddress + 0x152 + ( (99-line) * 0xFC), msg)
	if(ErrorLevel) {
		ErrorLevel := ERROR_WRITE_MEMORY
		return -1
    }
	
	sendinput {f7 3} ; 3 - без соба, 4 - есть собейт
	
	ErrorLevel := ERROR_OK
	return True
}

getTagNameDistance() {
	if(!checkHandles())
		return -1

	dwSAMPInfo := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
	if(ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
  }

	dwSAMPInfoSettings := readDWORD(hGTA, dwSAMPInfo + SAMP_INFO_SETTINGS_OFFSET)
	if(ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
  }

  distance := readFloat(hGTA, dwSAMPInfoSettings + 0x27)
	if(ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
  }

	ErrorLevel := ERROR_OK
	return distance
}

setTagNameDistance(status, distance) {
	if(!checkHandles())
		return -1

	status := status ? 1 : 0

	dwSAMPInfo := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
	if(ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
  }

	dwSAMPInfoSettings := readDWORD(hGTA, dwSAMPInfo + SAMP_INFO_SETTINGS_OFFSET)
	if(ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
  }

	writeByte(hGTA, dwSAMPInfoSettings + 0x38, 1)
	if(ErrorLevel) {
		ErrorLevel := ERROR_WRITE_MEMORY
		return -1
  }

	writeByte(hGTA, dwSAMPInfoSettings + 0x2F, status)
	if(ErrorLevel) {
		ErrorLevel := ERROR_WRITE_MEMORY
		return -1
  }

	writeFloat(hGTA, dwSAMPInfoSettings + 0x27, distance)
	if(ErrorLevel) {
		ErrorLevel := ERROR_WRITE_MEMORY
		return -1
  }

	ErrorLevel := ERROR_OK
	return
}

; sets the ingame hour (day/night)
setTime(hour)
{
	if(!checkHandles())
		return
	; disable gta setTime function
	VarSetCapacity(nop, 6, 0)
	Loop 6 {
		NumPut(0x90, nop, A_INDEX-1, "UChar")
	}
	writeRaw(hGTA, 0x52D168, &nop, 6)

	; set our own weather
	VarSetCapacity(time, 1, 0)
	NumPut(hour, time, 0, "Int")
	writeRaw(hGTA, 0xB70153, &time, 1)
}

; sets the weather
; @param weather id
setWeather(id)
{
	if(!checkHandles())
		return
	VarSetCapacity(weather, 1, 0)
	NumPut(id, weather, 0, "Int")
	writeRaw(hGTA, 0xC81320, &weather, 1)
	if(ErrorLevel)
		return false


	return true
}

; get the id of your skin
getSkinID() {
	if(!checkHandles())
		return -1

	dwAddress := readDWORD(hGTA, 0xB6F3B8)

	if(ErrorLevel || dwAddress==0) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
	}

	id := readMem(hGTA, dwAddress + 0x22, 2, "UShort")
	if(ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
	}
	ErrorLevel := ERROR_OK
	return id
}

; get the title of dialog
getDialogTitle()
{
	if(!checkHandles())
		return ""
	dwAddress := readDWORD(hGTA, dwSAMP + 0x21A0B8)
	if(ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return ""
	}
	text := readString(hGTA, dwAddress + 0x40, 128)
	if(ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return ""
	}

	ErrorLevel := ERROR_OK
	return text
}
; get the color of player
; @author democrazy
getPlayerColor(id)
{
    id += 0

    if(!checkHandles())
        return -1

    color := readDWORD(hGTA, dwSAMP + 0x216378 + 4*id)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    return color
}

; set the color of player
; @author democrazy
setPlayerColor(id,color)
{
    id += 0
    color +=0

    if(!checkHandles())
        return

    VarSetCapacity(bla, 4, 0)
    NumPut(color,bla,0,"UInt")

    writeRaw(hGTA, dwSAMP + 0x216378 + 4*id, &bla, 4)
}
; convert color from decimal into hex
; @author democrazy
colorToStr(color)
{
    color += 0
    color >>= 8
    color &= 0xffffff
    SetFormat, IntegerFast, hex
    color += 0
    color .= ""
    StringTrimLeft, color, color, 2
    SetFormat, IntegerFast, d
    if (StrLen(color) == 5)
       color := "0"color
    return "{" color "}"
}

; Get Interior param.
;;@autor Godarck

GetInterior()
{
    dwAddress := readDWORD(hGTA, ADDR_SET_INTERIOR_OFFSET)
    if (ErrorLevel || dwAddress == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }    
  return true
}

; get current weapon id
; @author AnalFatal
getWeaponId()
{
    If(!checkHandles())
    return 0

   c := readDWORD(hGTA, ADDR_CPED_PTR)
   If(ErrorLevel) {
   		ErrorLevel := ERROR_READ_MEMORY
   		return 0
   }
   id := readMem(hGTA, c + 0x740)
   If(ErrorLevel) {
   		ErrorLevel := ERROR_READ_MEMORY
   		return 0
   }

   return id
}
writeFloat(hProcess, dwAddress, wFloat) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return false
    }

    wFloat := FloatToHex(wFloat)

    dwRet := DllCall(   "WriteProcessMemory"
                        , "UInt", hProcess
                        , "UInt", dwAddress
                        , "UInt *", wFloat
                        , "UInt", 4
                        , "UInt *", 0)

    ErrorLevel := ERROR_OK
    return true
}

writeByte(hProcess, dwAddress, wInt) {
  if(!hProcess) {
      ErrorLevel := ERROR_INVALID_HANDLE
      return false
  }

  wInt := IntToHex(wInt)

	dwRet := DllCall(     "WriteProcessMemory"
	                      , "UInt", hProcess
	                      , "UInt", dwAddress
	                      , "UInt *", wInt
	                      , "UInt", 1
	                      , "UInt *", 0)
}

FloatToHex(value) {
   format := A_FormatInteger
   SetFormat, Integer, H
   result := DllCall("MulDiv", Float, value, Int, 1, Int, 1, UInt)
   SetFormat, Integer, %format%
   return, result
}

IntToHex(int)
{
	CurrentFormat := A_FormatInteger
	SetFormat, integer, hex
	int += 0
	SetFormat, integer, %CurrentFormat%
	return int
}

disconnectEx() {
	
	if(!checkHandles())
		return 0
	
	dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)			;g_SAMP
	if(ErrorLevel || dwAddress==0) {
		ErrorLevel := ERROR_READ_MEMORY
		return 0
	}
	
	dwAddress := readDWORD(hGTA, dwAddress + 0x3c9)			;pRakClientInterface
	if(ErrorLevel || dwAddress==0) {
		ErrorLevel := ERROR_READ_MEMORY
		return 0
	}
    
    ecx := dwAddress        ;this
	
	dwAddress := readDWORD(hGTA, dwAddress)         ;vtable
	if(ErrorLevel || dwAddress==0) {
		ErrorLevel := ERROR_READ_MEMORY
		return 0
	}
	
	
	
	VarSetCapacity(injectData, 24, 0) ;mov, call, retn
	
    NumPut(0xB9, injectData, 0, "UChar")	;mov ecx 	0+1
	NumPut(ecx, injectData, 1, "UInt")			;1+4
    
	NumPut(0xB8, injectData, 5, "UChar")	;mov eax 	5+1
	NumPut(dwAddress, injectData, 6, "UInt")			;6+4
	
	;NumPut(0x006A006A, injectData, 10, "UInt")  ; 2x push			10+4
    
    NumPut(0x68, injectData, 10, "UChar")		;10 + 1		;push style
	NumPut(0, injectData, 11, "UInt")		;11 + 4
    
    NumPut(0x68, injectData, 15, "UChar")		;15 + 1		;push style
	NumPut(500, injectData, 16, "UInt")		;16 + 4
    
    ;---
	
	NumPut(0x50FF, injectData, 20, "UShort")			;20 + 2
	NumPut(0x08, injectData, 22, "UChar")			;22 + 1
	
	NumPut(0xC3, injectData, 23, "UChar")	;retn		23+1
	
	writeRaw(hGTA, pInjectFunc, &injectData, 24)
	if(ErrorLevel)
		return false
	
	hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
	if(ErrorLevel)
		return false
	
	waitForSingleObject(hThread, 0xFFFFFFFF)

  closeProcess(hThread)

	return true
}
setrestart()
{
  VarSetCapacity(old, 4, 0)
  dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)			;g_SAMP
    if(ErrorLevel || dwAddress==0) {
      ErrorLevel := ERROR_READ_MEMORY
      return 0
  }

  NumPut(9,old,0,"Int")
  writeRaw(hGTA, dwAddress + 957, &old, 4)
}
restartGameEx() {
	
	if(!checkHandles())
		return -1
	
	dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)			;g_SAMP
	if(ErrorLevel || dwAddress==0) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
	}
	
	dwFunc := dwSAMP + 0xA060
	
	VarSetCapacity(injectData, 11, 0) ;mov, call, retn
	
	NumPut(0xB9, injectData, 0, "UChar")	;mov ecx 	0+1
	NumPut(dwAddress, injectData, 1, "UInt")			;1+4
	NumPut(0xE8, injectData, 5, "UChar")	;call 		5+1
	offset := dwFunc - (pInjectFunc + 10)
	NumPut(offset, injectData, 6, "Int")	;			6+4
    NumPut(0xC3, injectData, 10, "UChar")	;		10+1
	
	writeRaw(hGTA, pInjectFunc, &injectData, 11)
	if(ErrorLevel)
		return false

	hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
	if(ErrorLevel)
		return false

	waitForSingleObject(hThread, 0xFFFFFFFF)

  closeProcess(hThread)

	return true
}
; ##### SAMP-Funktionen #####
isPlayerStreamebyid(id, dist) { 
    if (getPlayerNameById(id)=="")
        return -1
    p := getStreamedInPlayersInfo()
    if(!p)
        return 0
    lpos := getCoordinates() 
    if(!lpos) 
        return 0
    For i, o in p 
    { 
        if(dist>getDist(lpos, o.POS))   
        { 
            if (id = o.ID) 
            return 1
        } 
        else 
        return 0
    }  
}
IsSAMPAvailable() {
    if(!checkHandles())
        return false
	
	dwChatInfo := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR)
	
	if(dwChatInfo == 0 || dwChatInfo == "ERROR")
	{
		return false
	}
	else
	{
		return true
	}
}
isInChat() {
    if(!checkHandles())
        return -1
    
    dwPtr := dwSAMP + ADDR_SAMP_INCHAT_PTR
    dwAddress := readDWORD(hGTA, dwPtr) + ADDR_SAMP_INCHAT_PTR_OFF
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    dwInChat := readDWORD(hGTA, dwAddress)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    if(dwInChat > 0) {
        return true
    } else {
        return false
    }
}

getUsername() {
    if(!checkHandles())
        return ""
    
    dwAddress := dwSAMP + ADDR_SAMP_USERNAME
    sUsername := readString(hGTA, dwAddress, 25)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    ErrorLevel := ERROR_OK
    return sUsername
}

getId() {
    s:=getUsername()
    return getPlayerIdByName(s)
}


SendChat(wText) {
     wText := "" wText
    
    if(!checkHandles())
        return false
    
    dwFunc:=0
    if(SubStr(wText, 1, 1) == "/") {
        dwFunc := dwSAMP + FUNC_SAMP_SENDCMD
    } else {
        dwFunc := dwSAMP + FUNC_SAMP_SENDSAY
    }
    
    callWithParams(hGTA, dwFunc, [["s", wText]], false)
    
    ErrorLevel := ERROR_OK
    return true
}
;=================================================[Работа с памятью]=========================================================
; Источник - http://dumpz.org/2345353/
ProcessReadMemory(address, processIDorName, type := "Int", numBytes := 4) {
    VarSetCapacity(buf, numBytes, 0)
    Process Exist, %processIDorName%
    if !processID := ErrorLevel
        return -1
        ;throw Exception("Invalid process name or process ID:`n`n""" . processIDorName . """")
    if !processHandle := DllCall("OpenProcess", "Int", 24, "UInt", 0, "UInt", processID, "Ptr")
        throw Exception("Failed to open process.`n`nError code:`t" . A_LastError)
    result := DllCall("ReadProcessMemory", "Ptr", processHandle, "Ptr", address, "Ptr", &buf, "Ptr", numBytes, "PtrP", numBytesRead, "UInt")
    if !DllCall("CloseHandle", "Ptr", processHandle, "UInt") && !result
        throw Exception("Failed to close process handle.`n`nError code:`t" . A_LastError)
    if !result
        throw Exception("Failed to read process memory.`n`nError code:`t" . A_LastError)
    if !numBytesRead
        throw Exception("Read 0 bytes from the`n`nprocess:`t" . processIDorName . "`naddress:`t" . address)
    return (type = "Str")
        ? StrGet(&buf, numBytes)
        : NumGet(buf, type)
}
ProcessWriteMemory(data, address, processIDorName, type := "Int", numBytes := 4) {
    VarSetCapacity(buf, numBytes, 0)
    (type = "Str")
        ? StrPut(data, &buf, numBytes)
        : NumPut(data, buf, type)
    Process Exist, %processIDorName%
    if !processID := ErrorLevel
        ;throw Exception("Invalid process name or process ID:`n`n""" . processIDorName . """")
        return
    if !processHandle := DllCall("OpenProcess", "Int", 40, "UInt", 0, "UInt", processID, "Ptr")
        throw Exception("Failed to open process.`n`nError code:`t" . A_LastError)
        result := DllCall("WriteProcessMemory", "Ptr", processHandle, "Ptr", address, "Ptr", &buf, "Ptr", numBytes, "UInt", 0, "UInt")
    if !DllCall("CloseHandle", "Ptr", processHandle, "UInt") && !result
        throw Exception("Failed to close process handle.`n`nError code:`t" . A_LastError)
    if !result
        ;throw Exception("Failed to write process memory.`n`nError code:`t" . A_LastError)
        return
    return result
}
;==================================================[Работа с памятью]==========================================================
addChatMessage(wText) {
    wText := "" wText

    if(!checkHandles())
        return false
    
    dwFunc := dwSAMP + FUNC_SAMP_ADDTOCHATWND
    dwChatInfo := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    
    callWithParams(hGTA, dwFunc, [["p", dwChatInfo], ["s", wText]], true)
    
    ErrorLevel := ERROR_OK
    return true
}

showGameText(wText, dwTime, dwSize) {
    wText := "" wText
    dwTime += 0
    dwTime := Floor(dwTime)
    dwSize += 0
    dwSize := Floor(dwSize)

    if(!checkHandles())
        return false
    
    dwFunc := dwSAMP + FUNC_SAMP_SHOWGAMETEXT
    
    callWithParams(hGTA, dwFunc, [["s", wText], ["i", dwTime], ["i", dwSize]], false)
    
    ErrorLevel := ERROR_OK
    return true
}

playAudioStream(wUrl) {
    wUrl := "" wUrl
    
    if(!checkHandles())
        return false
    
    dwFunc := dwSAMP + FUNC_SAMP_PLAYAUDIOSTR
    
    patchRadio()
    
    callWithParams(hGTA, dwFunc, [["s", wUrl], ["i", 0], ["i", 0], ["i", 0], ["i", 0], ["i", 0]], false)
    
    unPatchRadio()
    
    ErrorLevel := ERROR_OK
    return true
}

stopAudioStream() {
    if(!checkHandles())
        return false
    
    dwFunc := dwSAMP + FUNC_SAMP_STOPAUDIOSTR
    
    patchRadio()
    
    callWithParams(hGTA, dwFunc, [["i", 1]], false)
    
    unPatchRadio()
    
    ErrorLevel := ERROR_OK
    return true
}

patchRadio()
{
    if(!checkHandles())
        return false
    
    VarSetCapacity(nop, 4, 0)
    NumPut(0x90909090,nop,0,"UInt")
    
    dwFunc := dwSAMP + FUNC_SAMP_PLAYAUDIOSTR
    writeRaw(hGTA, dwFunc, &nop, 4)
    writeRaw(hGTA, dwFunc+4, &nop, 1)
    
    dwFunc := dwSAMP + FUNC_SAMP_STOPAUDIOSTR
    writeRaw(hGTA, dwFunc, &nop, 4)
    writeRaw(hGTA, dwFunc+4, &nop, 1)
    return true
}

unPatchRadio()
{
    if(!checkHandles())
        return false
    
    VarSetCapacity(old, 4, 0)
    
    dwFunc := dwSAMP + FUNC_SAMP_PLAYAUDIOSTR
    NumPut(0x74003980,old,0,"UInt")
    writeRaw(hGTA, dwFunc, &old, 4)
    NumPut(0x39,old,0,"UChar")
    writeRaw(hGTA, dwFunc+4, &old, 1)
    
    dwFunc := dwSAMP + FUNC_SAMP_STOPAUDIOSTR
    NumPut(0x74003980,old,0,"UInt")
    writeRaw(hGTA, dwFunc, &old, 4)
    NumPut(0x09,old,0,"UChar")
    writeRaw(hGTA, dwFunc+4, &old, 1)
    return true
}

blockChatInput() {
    if(!checkHandles())
        return false
    
    VarSetCapacity(nop, 2, 0)
    
    dwFunc := dwSAMP + FUNC_SAMP_SENDSAY
    NumPut(0x04C2,nop,0,"Short")
    writeRaw(hGTA, dwFunc, &nop, 2)
    
    dwFunc := dwSAMP + FUNC_SAMP_SENDCMD
    writeRaw(hGTA, dwFunc, &nop, 2)
    
    return true
}

unBlockChatInput() {
    if(!checkHandles())
        return false
    
    VarSetCapacity(nop, 2, 0)
    
    dwFunc := dwSAMP + FUNC_SAMP_SENDSAY
    NumPut(0xA164,nop,0,"Short")
    writeRaw(hGTA, dwFunc, &nop, 2)
    
    dwFunc := dwSAMP + FUNC_SAMP_SENDCMD
    writeRaw(hGTA, dwFunc, &nop, 2)
    
    return true
}

getServerName() {
    if(!checkHandles())
        return -1
    
    dwAdress := readMem(hGTA, dwSAMP + 0x21A0F8, 4, "int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    if(!dwAdress)
        return -1
    
    ServerName := readString(hGTA, dwAdress + 0x121, 200)
    
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return ServerName
}

getServerIP() {
    if(!checkHandles())
        return -1
    
    dwAdress := readMem(hGTA, dwSAMP + 0x21A0F8, 4, "int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    if(!dwAdress)
        return -1
    
    ServerIP := readString(hGTA, dwAdress + 0x20, 100)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return ServerIP
}

getServerPort() {
    if(!checkHandles())
        return -1
    
    dwAdress := readMem(hGTA, dwSAMP + 0x21A0F8, 4, "int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    if(!dwAdress)
        return -1
    
    ServerPort := readMem(hGTA, dwAdress + 0x225, 4, "int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return ServerPort
}

getWeatherID() {
    if(!checkHandles())
        return -1
    
    dwGTA := getModuleBaseAddress("gta_sa.exe", hGTA)
    WeatherID := readMem(hGTA, dwGTA + 0xC81320, 2, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK    
    return WeatherID
}

getWeatherName() {
    if(isPlayerInAnyVehicle() == 0)
        return -1
    
    if(id >= 0 && id < 23)
    {
        return oweatherNames[id-1]
    }
    return ""
}

; ##### Extra-Player-Funktionen #####
; by Godarck
isTargetDriverbyId(dwId) 
{ 
    if(!checkHandles()) 
    return -1 
    dwPedPointer := getPedById(dwId) 
    dwAddrVPtr := getVehiclePointerByPed(dwPedPointer) 
    if(ErrorLevel) { 
    ErrorLevel := ERROR_READ_MEMORY 
    return -1 
    } 
    dwVal := readDWORD(hGTA, dwAddrVPtr + ADDR_VEHICLE_DRIVER) 
    if(ErrorLevel) { 
    ErrorLevel := ERROR_READ_MEMORY 
    return -1 
    } 
    ErrorLevel := ERROR_OK 
    return (dwVal == dwPedPointer) 
}
getTargetPed() {
	if(!checkHandles())
        return 0
	
	dwAddress := readDWORD(hGTA, 0xB6F3B8)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
	if(!dwAddress)
		return 0
		
	dwAddress := readDWORD(hGTA, dwAddress+0x79C)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
	
	ErrorLevel := ERROR_OK
	return dwAddress
}

calcScreenCoors(fX,fY,fZ)
{
	if(!checkHandles())
		return false
	
	dwM := 0xB6FA2C
	
	m_11 := readFloat(hGTA, dwM + 0*4)
	if(ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return false
	}
	
	m_12 := readFloat(hGTA, dwM + 1*4)
	m_13 := readFloat(hGTA, dwM + 2*4)
	m_21 := readFloat(hGTA, dwM + 4*4)
	m_22 := readFloat(hGTA, dwM + 5*4)
	m_23 := readFloat(hGTA, dwM + 6*4)
	m_31 := readFloat(hGTA, dwM + 8*4)
	m_32 := readFloat(hGTA, dwM + 9*4)
	m_33 := readFloat(hGTA, dwM + 10*4)
	m_41 := readFloat(hGTA, dwM + 12*4)
	m_42 := readFloat(hGTA, dwM + 13*4)
	m_43 := readFloat(hGTA, dwM + 14*4)
	
	dwLenX := readDWORD(hGTA, 0xC17044)
	if(ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return false
	}
	dwLenY := readDWORD(hGTA, 0xC17048)
	
	frX := fZ * m_31 + fY * m_21 + fX * m_11 + m_41
	frY := fZ * m_32 + fY * m_22 + fX * m_12 + m_42
	frZ := fZ * m_33 + fY * m_23 + fX * m_13 + m_43
	
	fRecip := 1.0/frZ
	frX *= fRecip * dwLenX
	frY *= fRecip * dwLenY
    
    if(frX<=dwLenX && frY<=dwLenY && frZ>1)
        return [frX,frY,frZ]
}
ConvertCarColor(Color)
{
    ArrayRGB := ["0xF5F5F5FF", "0x2A77A1FF", "0x840410FF", "0x263739FF", "0x86446EFF", "0xD78E10FF", "0x4C75B7FF", "0xBDBEC6FF", "0x5E7072FF", "0x46597AFF", "0x656A79FF", "0x5D7E8DFF", "0x58595AFF", "0xD6DAD6FF", "0x9CA1A3FF", "0x335F3FFF", "0x730E1AFF", "0x7B0A2AFF", "0x9F9D94FF", "0x3B4E78FF", "0x732E3EFF", "0x691E3BFF", "0x96918CFF", "0x515459FF", "0x3F3E45FF", "0xA5A9A7FF", "0x635C5AFF", "0x3D4A68FF", "0x979592FF", "0x421F21FF", "0x5F272BFF", "0x8494ABFF", "0x767B7CFF", "0x646464FF", "0x5A5752FF", "0x252527FF", "0x2D3A35FF", "0x93A396FF", "0x6D7A88FF", "0x221918FF", "0x6F675FFF", "0x7C1C2AFF", "0x5F0A15FF", "0x193826FF", "0x5D1B20FF", "0x9D9872FF", "0x7A7560FF", "0x989586FF", "0xADB0B0FF", "0x848988FF", "0x304F45FF", "0x4D6268FF", "0x162248FF", "0x272F4BFF", "0x7D6256FF", "0x9EA4ABFF", "0x9C8D71FF", "0x6D1822FF", "0x4E6881FF", "0x9C9C98FF", "0x917347FF", "0x661C26FF", "0x949D9FFF", "0xA4A7A5FF", "0x8E8C46FF", "0x341A1EFF", "0x6A7A8CFF", "0xAAAD8EFF", "0xAB988FFF", "0x851F2EFF", "0x6F8297FF", "0x585853FF", "0x9AA790FF", "0x601A23FF", "0x20202CFF", "0xA4A096FF", "0xAA9D84FF", "0x78222BFF", "0x0E316DFF", "0x722A3FFF", "0x7B715EFF", "0x741D28FF", "0x1E2E32FF", "0x4D322FFF", "0x7C1B44FF", "0x2E5B20FF", "0x395A83FF", "0x6D2837FF", "0xA7A28FFF", "0xAFB1B1FF", "0x364155FF", "0x6D6C6EFF", "0x0F6A89FF", "0x204B6BFF", "0x2B3E57FF", "0x9B9F9DFF", "0x6C8495FF", "0x4D8495FF", "0xAE9B7FFF", "0x406C8FFF", "0x1F253BFF", "0xAB9276FF", "0x134573FF", "0x96816CFF", "0x64686AFF", "0x105082FF", "0xA19983FF", "0x385694FF", "0x525661FF", "0x7F6956FF", "0x8C929AFF", "0x596E87FF", "0x473532FF", "0x44624FFF", "0x730A27FF", "0x223457FF", "0x640D1BFF", "0xA3ADC6FF", "0x695853FF", "0x9B8B80FF", "0x620B1CFF", "0x5B5D5EFF", "0x624428FF", "0x731827FF", "0x1B376DFF", "0xEC6AAEFF", "0x000000FF"]
    ArrayRGBNew := ["0x177517FF", "0x210606FF", "0x125478FF", "0x452A0DFF", "0x571E1EFF", "0x010701FF", "0x25225AFF", "0x2C89AAFF", "0x8A4DBDFF", "0x35963AFF", "0xB7B7B7FF", "0x464C8DFF", "0x84888CFF", "0x817867FF", "0x817A26FF", "0x6A506FFF", "0x583E6FFF", "0x8CB972FF", "0x824F78FF", "0x6D276AFF", "0x1E1D13FF", "0x1E1306FF", "0x1F2518FF", "0x2C4531FF", "0x1E4C99FF", "0x2E5F43FF", "0x1E9948FF", "0x1E9999FF", "0x999976FF", "0x7C8499FF", "0x992E1EFF", "0x2C1E08FF", "0x142407FF", "0x993E4DFF", "0x1E4C99FF", "0x198181FF", "0x1A292AFF", "0x16616FFF", "0x1B6687FF", "0x6C3F99FF", "0x481A0EFF", "0x7A7399FF", "0x746D99FF", "0x53387EFF", "0x222407FF", "0x3E190CFF", "0x46210EFF", "0x991E1EFF", "0x8D4C8DFF", "0x805B80FF", "0x7B3E7EFF", "0x3C1737FF", "0x733517FF", "0x781818FF", "0x83341AFF", "0x8E2F1CFF", "0x7E3E53FF", "0x7C6D7CFF", "0x020C02FF", "0x072407FF", "0x163012FF", "0x16301BFF", "0x642B4FFF", "0x368452FF", "0x999590FF", "0x818D96FF", "0x99991EFF", "0x7F994CFF", "0x839292FF", "0x788222FF", "0x2B3C99FF", "0x3A3A0BFF", "0x8A794EFF", "0x0E1F49FF", "0x15371CFF", "0x15273AFF", "0x375775FF", "0x060820FF", "0x071326FF", "0x20394BFF", "0x2C5089FF", "0x15426CFF", "0x103250FF", "0x241663FF", "0x692015FF", "0x8C8D94FF", "0x516013FF", "0x090F02FF", "0x8C573AFF", "0x52888EFF", "0x995C52FF", "0x99581EFF", "0x993A63FF", "0x998F4EFF", "0x99311EFF", "0x0D1842FF", "0x521E1EFF", "0x42420DFF", "0x4C991EFF", "0x082A1DFF", "0x96821DFF", "0x197F19FF", "0x3B141FFF", "0x745217FF", "0x893F8DFF", "0x7E1A6CFF", "0x0B370BFF", "0x27450DFF", "0x071F24FF", "0x784573FF", "0x8A653AFF", "0x732617FF", "0x319490FF", "0x56941DFF", "0x59163DFF", "0x1B8A2FFF", "0x38160BFF", "0x041804FF", "0x355D8EFF", "0x2E3F5BFF", "0x561A28FF", "0x4E0E27FF", "0x706C67FF", "0x3B3E42FF", "0x2E2D33FF", "0x7B7E7DFF", "0x4A4442FF", "0x28344EFF"]
if (Color > 0) and (Color < 128)
  RGB := ArrayRGB[Color]
if (Color > 127) and (Color < 256)
{
  RGB := ArrayRGBNew[Color + 127]
}
StringLeft, RGBTemp, RGB, 8
StringRight, RGB, RGBTemp, 6
if Color = 0
   RGB := "000000"
return RGB
}
;--
getPedById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
        return 0
    
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
        {
            if(oScoreboardData[dwId].HasKey("PED"))
                return oScoreboardData[dwId].PED
        }
        return 0
    }
    
    if(!updateOScoreboardData())
        return 0
    
    if(oScoreboardData[dwId])
    {
        if(oScoreboardData[dwId].HasKey("PED"))
            return oScoreboardData[dwId].PED
    }
    return 0
}

getIdByPed(dwPed) {
    dwPed += 0
    dwPed := Floor(dwPed)
	if(!dwPed)
		return -1
	
	if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
		For i, o in oScoreboardData
        {
            if(o.HasKey("PED"))
            {
				if(o.PED==dwPed)
					return i
            }
        }
        return -1
    }
    
    if(!updateOScoreboardData())
        return -1
    
	For i, o in oScoreboardData
    {
        if(o.HasKey("PED"))
        {
			if(o.PED==dwPed)
				return i
        }
    }
    return -1
}
IsInAFK() {
    res := ProcessReadMemory(0xBA6748 + 0x5C, "gta_sa.exe")
    if (res==-1)
        return -1
    WinGet, win, MinMax, GTA:SA:MP
    if ((res=0) and (win=-1)) or res=1
        return 1
    return 0
}
getStreamedInPlayersInfo() {
    r:=[]
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        For i, o in oScoreboardData
        {
            if(o.HasKey("PED"))
            {
                p := getPedCoordinates(o.PED)
                if(p)
                {
                    o.POS := p
                    r[i] := o
                }
            }
        }
        return r
    }
    
    if(!updateOScoreboardData())
        return ""
    
    For i, o in oScoreboardData
    {
        if(o.HasKey("PED"))
        {
            p := getPedCoordinates(o.PED)
            if(p)
            {
                o.POS := p
                r[i] := o
            }
        }
    }
    return r
}

callFuncForAllStreamedInPlayers(cfunc,dist=0x7fffffff) {
    cfunc := "" cfunc
    dist += 0
    if(!IsFunc(cfunc))
        return false
    p := getStreamedInPlayersInfo()
    if(!p)
        return false
    if(dist<0x7fffffff)
    {
        lpos := getCoordinates()
        if(!lpos)
            return false
        For i, o in p
        {
            if(dist>getDist(lpos,o.POS))
                %cfunc%(o)
        }
    }
    else
    {
        For i, o in p
            %cfunc%(o)
    }
    return true
}

getDist(pos1,pos2) {
	if(!pos1 || !pos2)
		return 0
    return Sqrt((pos1[1]-pos2[1])*(pos1[1]-pos2[1])+(pos1[2]-pos2[2])*(pos1[2]-pos2[2])+(pos1[3]-pos2[3])*(pos1[3]-pos2[3]))
}
getClosestPlayerPed() {
    dist := 0x7fffffff              ;max int32
    p := getStreamedInPlayersInfo()
	if(!p)
		return -1
    lpos := getCoordinates()
    if(!lpos)
        return -1
	id := -1
    For i, o in p
    {
        t:=getDist(lpos,o.POS)
        if(t<dist)
        {
            dist := t
            id := i
        }
    }
    PED := getPedById(id)
    return PED
}

getClosestPlayerId() {
    dist := 0x7fffffff              ;max int32
    p := getStreamedInPlayersInfo()
	if(!p)
		return -1
    lpos := getCoordinates()
    if(!lpos)
        return -1
	id := -1
    For i, o in p
    {
        t:=getDist(lpos,o.POS)
        if(t<dist)
        {
            dist := t
            id := i
        }
    }
    return id
}

CountOnlinePlayers() {
if(!checkHandles())
return -1
dwOnline := readDWORD(hGTA, dwSAMP + 0x21A0B4)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
dwAddr := dwOnline + 0x4
OnlinePlayers := readDWORD(hGTA, dwAddr)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return OnlinePlayers
}

getPedCoordinates(dwPED) {
    dwPED += 0
    dwPED := Floor(dwPED)
    if(!dwPED)
        return ""
    
    if(!checkHandles())
        return ""

    dwAddress := readDWORD(hGTA, dwPED + 0x14)
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    fX := readFloat(hGTA, dwAddress + 0x30)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    fY := readFloat(hGTA, dwAddress + 0x34)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    fZ := readFloat(hGTA, dwAddress + 0x38)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    ErrorLevel := ERROR_OK
    return [fX, fY, fZ]
}

getTargetPos(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
        return ""
    
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
        {
			if(oScoreboardData[dwId].HasKey("PED"))
				return getPedCoordinates(oScoreboardData[dwId].PED)
			if(oScoreboardData[dwId].HasKey("MPOS"))
				return oScoreboardData[dwId].MPOS
		}
        return ""
    }
    
    if(!updateOScoreboardData())
        return ""
    
    if(oScoreboardData[dwId])
    {
		if(oScoreboardData[dwId].HasKey("PED"))
			return getPedCoordinates(oScoreboardData[dwId].PED)
		if(oScoreboardData[dwId].HasKey("MPOS"))
			return oScoreboardData[dwId].MPOS
	}
    return ""
}

getTargetPlayerSkinIdByPed(dwPED) {
    if(!checkHandles())
        return -1
    
    dwAddr := dwPED + ADDR_CPED_SKINIDOFF
    SkinID := readMem(hGTA, dwAddr, 2, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return SkinID
}

getTargetPlayerSkinIdById(dwId) {
    if(!checkHandles())
        return -1
    
    dwPED := getPedById(dwId)
    dwAddr := dwPED + ADDR_CPED_SKINIDOFF
    
    SkinID := readMem(hGTA, dwAddr, 2, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return SkinID
}

; ##### Extra-Player-Fahrzeug-Funktionenn #####

NearPlayerInCar(dist)
{
  TempDist := 100
  if not dist dist := TempDist
p := getStreamedInPlayersInfo()  ; streamedinplayers array
if(!p)
  return
lpos := getCoordinates() ; your position
if(!lpos)
  return
For i, o in p
{
  t:=getDist(lpos,o.POS)
  if(t<=dist)
  {
        
          if (t < TempDist) and ( t > 5 ) and getTargetVehicleModelNameById(i)      
          {
            TempId := i
            TempDist := t
          }
        }
      }        
return TempId
}

getVehiclePointerByPed(dwPED) {
    dwPED += 0
    dwPED := Floor(dwPED)
    if(!dwPED)
        return 0
	if(!checkHandles())
        return 0
	dwAddress := readDWORD(hGTA, dwPED + 0x58C)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
	ErrorLevel := ERROR_OK
	return dwAddress
}

getVehiclePointerById(dwId) {
    if(!dwId)
        return 0
	if(!checkHandles())
        return 0
    
    dwPed_By_Id := getPedById(dwId)
    
	dwAddress := readDWORD(hGTA, dwPed_By_Id + 0x58C)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
	ErrorLevel := ERROR_OK
	return dwAddress
}

isTargetInAnyVehicleByPed(dwPED)
{
    if(!checkHandles())
        return -1
    
    dwVehiclePointer := getVehiclePointerByPed(dwPedPointer)
    
    if(dwVehiclePointer > 0)
    {
        return 1
    }
    else if(dwVehiclePointer <= 0)
    {
        return 0
    }
    else
    {
        return -1
    }
}

isTargetInAnyVehiclebyId(dwId)
{
    if(!checkHandles())
        return -1
    
    dwPedPointer := getPedById(dwId)
    dwVehiclePointer := getVehiclePointerByPed(dwPedPointer)
    
    if(dwVehiclePointer > 0)
    {
        return 1
    }
    else if(dwVehiclePointer <= 0)
    {
        return 0
    }
    else
    {
        return -1
    }
}

getTargetVehicleHealthByPed(dwPed) {
    if(!checkHandles())
        return -1
    
    dwVehPtr := getVehiclePointerByPed(dwPed)    
    dwAddr := dwVehPtr + ADDR_VEHICLE_HPOFF
    fHealth := readFloat(hGTA, dwAddr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return Round(fHealth)
}

getTargetVehicleHealthById(dwId) 
{
    if(!checkHandles())
        return -1
    
    dwVehPtr := getVehiclePointerById(dwId)    
    dwAddr := dwVehPtr + ADDR_VEHICLE_HPOFF
    fHealth := readFloat(hGTA, dwAddr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return Round(fHealth)
}
getTargetVehicleTypeByPed(dwPED) {
    if(!checkHandles())
        return 0
    
    dwAddr := getVehiclePointerByPed(dwPED)
    
    if(!dwAddr)
        return 0
    
    cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_TYPE, 1, "Char")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    if(!cVal)
    {
        mid := getVehicleModelId()
        Loop % oAirplaneModels.MaxIndex()
        {
            if(oAirplaneModels[A_Index]==mid)
                return 5
        }
        return 1
    }
    else if(cVal==5)
        return 2
    else if(cVal==6)
        return 3
    else if(cVal==9)
    {
        mid := getVehicleModelId()
        Loop % oBikeModels.MaxIndex()
        {
            if(oBikeModels[A_Index]==mid)
                return 6
        }
        return 4
    }
    return 0
}

getTargetVehicleTypeById(dwId) {
    if(!checkHandles())
        return 0
    
    dwAddr := getVehiclePointerById(dwId)
    
    if(!dwAddr)
        return 0
    
    cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_TYPE, 1, "Char")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    if(!cVal)
    {
        mid := getVehicleModelId()
        Loop % oAirplaneModels.MaxIndex()
        {
            if(oAirplaneModels[A_Index]==mid)
                return 5
        }
        return 1
    }
    else if(cVal==5)
        return 2
    else if(cVal==6)
        return 3
    else if(cVal==9)
    {
        mid := getVehicleModelId()
        Loop % oBikeModels.MaxIndex()
        {
            if(oBikeModels[A_Index]==mid)
                return 6
        }
        return 4
    }
    return 0
}

getTargetVehicleModelIdByPed(dwPED) {
    if(!checkHandles())
        return 0
    
    dwAddr := getVehiclePointerByPed(dwPED)
    
    if(!dwAddr)
        return 0
    
    sVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_MODEL, 2, "Short")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return sVal
}

getTargetVehicleModelIdById(dwId) {
    if(!checkHandles())
        return 0
    
    dwAddr := getVehiclePointerById(dwId)
    
    if(!dwAddr)
        return 0
    
    sVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_MODEL, 2, "Short")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return sVal
}

getTargetVehicleModelNameByPed(dwPED) {
    id := getTargetVehicleModelIdByPed(dwPED)
    if(id > 400 && id < 611)
    {
        return ovehicleNames[id-399]
    }
    return ""
}

getTargetVehicleModelNameById(dwId) {
    id := getTargetVehicleModelIdById(dwId)
    if(id > 400 && id < 611)
    {
        return ovehicleNames[id-399]
    }
    return ""
}

getTargetVehicleLightStateByPed(dwPED) {
    if(!checkHandles())
        return -1
    
    dwAddr := getVehiclePointerByPed(dwPED)
    
    if(!dwAddr)
        return -1
    
    dwVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_LIGHTSTATE, 1, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return (dwVal>0)
}


getTargetVehicleLightStateById(dwId) {
    if(!checkHandles())
        return -1
    
    dwAddr := getVehiclePointerById(dwId)
    
    if(!dwAddr)
        return -1
    
    dwVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_LIGHTSTATE, 1, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return (dwVal>0)
}

getTargetVehicleLockStateByPed(dwPED) {
    if(!checkHandles())
        return -1
    
    dwAddr := getVehiclePointerByPed(dwPED)
    
    if(!dwAddr)
        return -1
    
    dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DOORSTATE)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return (dwVal==2)
}

getTargetVehicleLockStateById(dwId) {
    if(!checkHandles())
        return -1
    
    dwAddr := getVehiclePointerById(dwId)
    
    if(!dwAddr)
        return -1
    
    dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DOORSTATE)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return (dwVal==2)
}

getTargetVehicleColor1byPed(dwPED) {
    if(!checkHandles())
        return 0
    
    dwAddr := getVehiclePointerByPed(dwPED)
    
    if(!dwAddr)
        return 0
	
    sVal := readMem(hGTA, dwAddr + 1076, 1, "byte")
	
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return sVal
}

getTargetVehicleColor1byId(dwId) {
    if(!checkHandles())
        return 0
    
    dwAddr := getVehiclePointerById(dwId)
    
    if(!dwAddr)
        return 0
	
    sVal := readMem(hGTA, dwAddr + 1076, 1, "byte")
	
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return sVal
}

getTargetVehicleColor2byPed(dwPED) {
    if(!checkHandles())
        return 0
    
    dwAddr := getVehiclePointerByPed(dwPED)
    
    if(!dwAddr)
        return 0
	
    sVal := readMem(hGTA, dwAddr + 1077, 1, "byte")
	
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return sVal
}

getTargetVehicleColor2byId(dwId) {
    if(!checkHandles())
        return 0
    
    dwAddr := getVehiclePointerById(dwId)
    
    if(!dwAddr)
        return 0
	
    sVal := readMem(hGTA, dwAddr + 1077, 1, "byte")
	
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return sVal
}

getTargetVehicleSpeedByPed(dwPED) {
    if(!checkHandles())
        return -1
 
    dwAddr := getVehiclePointerByPed(dwPED)
    
    fSpeedX := readMem(hGTA, dwAddr + ADDR_VEHICLE_X, 4, "float")
    fSpeedY := readMem(hGTA, dwAddr + ADDR_VEHICLE_Y, 4, "float")
    fSpeedZ := readMem(hGTA, dwAddr + ADDR_VEHICLE_Z, 4, "float")
    
    fVehicleSpeed :=  sqrt((fSpeedX * fSpeedX) + (fSpeedY * fSpeedY) + (fSpeedZ * fSpeedZ))
    fVehicleSpeed := (fVehicleSpeed * 100) * 1.43           ;Der Wert "1.43" ist meistens auf jedem Server anders. Die Geschwindigkeit wird somit erhГѓВ¶ht bzw. verringert
 
	return fVehicleSpeed
}

getTargetVehicleSpeedById(dwId) {
    if(!checkHandles())
        return -1
 
    dwAddr := getVehiclePointerById(dwId)
    
    fSpeedX := readMem(hGTA, dwAddr + ADDR_VEHICLE_X, 4, "float")
    fSpeedY := readMem(hGTA, dwAddr + ADDR_VEHICLE_Y, 4, "float")
    fSpeedZ := readMem(hGTA, dwAddr + ADDR_VEHICLE_Z, 4, "float")
    
    fVehicleSpeed :=  sqrt((fSpeedX * fSpeedX) + (fSpeedY * fSpeedY) + (fSpeedZ * fSpeedZ))
    fVehicleSpeed := (fVehicleSpeed * 100) * 1.43           ;Der Wert "1.43" ist meistens auf jedem Server anders. Die Geschwindigkeit wird somit erhГѓВ¶ht bzw. verringert
 
	return fVehicleSpeed
}
; ##### Scoreboard-Funktionen #####

getPlayerNameById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
        return ""
    
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
            return oScoreboardData[dwId].NAME
        return ""
    }
    
    if(!updateOScoreboardData())
        return ""
    
    if(oScoreboardData[dwId])
        return oScoreboardData[dwId].NAME
    return ""
}

getPlayerIdByName(wName) {
    wName := "" wName
    if(StrLen(wName) < 1 || StrLen(wName) > 24)
        return -1
    
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        For i, o in oScoreboardData
        {
            if(InStr(o.NAME,wName)==1)
                return i
        }
        return -1
    }
    
    if(!updateOScoreboardData())
        return -1
    
    For i, o in oScoreboardData
    {
        if(InStr(o.NAME,wName)==1)
            return i
    }
    return -1
}

getPlayerScoreById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
        return ""
    
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
            return oScoreboardData[dwId].SCORE
        return ""
    }
    
    if(!updateOScoreboardData())
        return ""
    
    if(oScoreboardData[dwId])
        return oScoreboardData[dwId].SCORE
    return ""
}

getPlayerPingById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
        return -1
        
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
            return oScoreboardData[dwId].PING
        return -1
    }
    
    if(!updateOScoreboardData())
        return -1
    
    if(oScoreboardData[dwId])
        return oScoreboardData[dwId].PING
    return -1
}

isNPCById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
        return -1
    
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
            return oScoreboardData[dwId].ISNPC
        return -1
    }
    
    if(!updateOScoreboardData())
        return -1
    
    if(oScoreboardData[dwId])
        return oScoreboardData[dwId].ISNPC
    return -1
}

; internal stuff
updateScoreboardDataEx() {
    
    if(!checkHandles())
        return false
    
    dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)            ;g_SAMP
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    
    dwFunc := dwSAMP + FUNC_UPDATESCOREBOARD
    
    VarSetCapacity(injectData, 11, 0) ;mov + call + retn
    
    NumPut(0xB9, injectData, 0, "UChar")
    NumPut(dwAddress, injectData, 1, "UInt")
    
    NumPut(0xE8, injectData, 5, "UChar")
    offset := dwFunc - (pInjectFunc + 10)
    NumPut(offset, injectData, 6, "Int")
    NumPut(0xC3, injectData, 10, "UChar")
    
    writeRaw(hGTA, pInjectFunc, &injectData, 11)
    if(ErrorLevel)
        return false
    
    hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
    if(ErrorLevel)
        return false
    
    waitForSingleObject(hThread, 0xFFFFFFFF)
    
    closeProcess(hThread)
    
    return true
    
}

; internal stuff
updateOScoreboardData() {
    if(!checkHandles())
        return 0
    
    oScoreboardData := []
    
    if(!updateScoreboardDataEx())
        return 0
    
    iRefreshScoreboard := A_TickCount
    
    dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    dwAddress := readDWORD(hGTA, dwAddress + SAMP_PPOOLS_OFFSET)
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    dwPlayers := readDWORD(hGTA, dwAddress + SAMP_PPOOL_PLAYER_OFFSET)
    if(ErrorLevel || dwPlayers==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    wID := readMem(hGTA, dwPlayers + SAMP_SLOCALPLAYERID_OFFSET, 2, "Short")    ;sLocalPlayerID
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    dwPing := readMem(hGTA, dwPlayers + SAMP_ILOCALPLAYERPING_OFFSET, 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    dwScore := readMem(hGTA, dwPlayers + SAMP_ILOCALPLAYERSCORE_OFFSET, 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    dwTemp := readMem(hGTA, dwPlayers + SAMP_ISTRLEN_LOCALPLAYERNAME_OFFSET, 4, "Int")    ;iStrlen_LocalPlayerName
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    sUsername := ""
    if(dwTemp <= 0xf) {
        sUsername := readString(hGTA, dwPlayers + SAMP_SZLOCALPLAYERNAME_OFFSET, 16)       ;szLocalPlayerName
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
    }
    else {
        dwAddress := readDWORD(hGTA, dwPlayers + SAMP_PSZLOCALPLAYERNAME_OFFSET)        ;pszLocalPlayerName
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        sUsername := readString(hGTA, dwAddress, 25)
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
    }
    oScoreboardData[wID] := Object("NAME", sUsername, "ID", wID, "PING", dwPing, "SCORE", dwScore, "ISNPC", 0)
    
    Loop, % SAMP_PLAYER_MAX
    {
        i := A_Index-1
        
        dwRemoteplayer := readDWORD(hGTA, dwPlayers+SAMP_PREMOTEPLAYER_OFFSET+i*4)      ;pRemotePlayer
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        
        if(dwRemoteplayer==0)
            continue
        
        dwPing := readMem(hGTA, dwRemoteplayer + SAMP_IPING_OFFSET, 4, "Int")
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        
        dwScore := readMem(hGTA, dwRemoteplayer + SAMP_ISCORE_OFFSET, 4, "Int")
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        
        dwIsNPC := readMem(hGTA, dwRemoteplayer + SAMP_ISNPC_OFFSET, 4, "Int")
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        
        dwTemp := readMem(hGTA, dwRemoteplayer + SAMP_ISTRLENNAME___OFFSET, 4, "Int")
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        sUsername := ""
        if(dwTemp <= 0xf)
        {
            sUsername := readString(hGTA, dwRemoteplayer+SAMP_SZPLAYERNAME_OFFSET, 16)
            if(ErrorLevel) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
            }
        }
        else {
            dwAddress := readDWORD(hGTA, dwRemoteplayer + SAMP_PSZPLAYERNAME_OFFSET)
            if(ErrorLevel || dwAddress==0) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
            }
            sUsername := readString(hGTA, dwAddress, 25)
            if(ErrorLevel) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
            }
        }
        o := Object("NAME", sUsername, "ID", i, "PING", dwPing, "SCORE", dwScore, "ISNPC", dwIsNPC)
        oScoreboardData[i] := o
        
        dwRemoteplayerData := readDWORD(hGTA, dwRemoteplayer + 0x0)                ;pPlayerData
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        if(dwRemoteplayerData==0)		;this ever happen?
            continue
		
		dwAddress := readDWORD(hGTA, dwRemoteplayerData + 489)        ;iGlobalMarkerLoaded
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
		if(dwAddress)
		{
			ix := readMem(hGTA, dwRemoteplayerData + 493, 4, "Int")        ;x map
			if(ErrorLevel) {
				ErrorLevel := ERROR_READ_MEMORY
				return 0
			}
			iy := readMem(hGTA, dwRemoteplayerData + 497, 4, "Int")        ;y map
			if(ErrorLevel) {
				ErrorLevel := ERROR_READ_MEMORY
				return 0
			}
			iz := readMem(hGTA, dwRemoteplayerData + 501, 4, "Int")        ;z map
			if(ErrorLevel) {
				ErrorLevel := ERROR_READ_MEMORY
				return 0
			}
			o.MPOS := [ix, iy, iz]
		}
        
        dwpSAMP_Actor := readDWORD(hGTA, dwRemoteplayerData + 0x0)                ;pSAMP_Actor
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        if(dwpSAMP_Actor==0)               ;not streamed in
            continue

        dwPed := readDWORD(hGTA, dwpSAMP_Actor + 676)                ;pGTA_Ped_
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        if(dwPed==0)
            continue
        o.PED := dwPed
		
		fHP := readFloat(hGTA, dwRemoteplayerData + 444)
		if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
		fARMOR := readFloat(hGTA, dwRemoteplayerData + 440)
		if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
		o.HP := fHP
		o.ARMOR := fARMOR
    }
    ErrorLevel := ERROR_OK
    return 1
}


; ##### Sonstiges #####
; written by David_Luchs %
; returns nth message of chatlog (beggining from bottom)
; -1 = error
GetChatLine(Line, ByRef Output, timestamp=0, color=0){
	chatindex := 0
	FileRead, file, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
	loop, Parse, file, `n, `r
	{
		if(A_LoopField)
			chatindex := A_Index
	}
	loop, Parse, file, `n, `r
	{
		if(A_Index = chatindex - line){
			output := A_LoopField
			break
		}
	}
	file := ""
	if(!timestamp)
		output := RegExReplace(output, "U)^\[\d{2}:\d{2}:\d{2}\]")
	if(!color)
		output := RegExReplace(output, "Ui)\{[a-f0-9]{6}\}")
	return
} 

; ##### Spielerfunktionen #####
getPlayerHealth() {
    if(!checkHandles())
        return -1
    
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    dwAddr := dwCPedPtr + ADDR_CPED_HPOFF
    fHealth := readFloat(hGTA, dwAddr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return Round(fHealth)
}

getPlayerArmor() {
    if(!checkHandles())
        return -1
    
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    dwAddr := dwCPedPtr + ADDR_CPED_ARMOROFF
    fHealth := readFloat(hGTA, dwAddr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return Round(fHealth)
}

getPlayerInteriorId() {
    if(!checkHandles())
        return -1
    
    iid := readMem(hGTA, ADDR_CPED_INTID, 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return iid
}

getPlayerSkinID() {
    if(!checkHandles())
        return -1
    
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    dwAddr := dwCPedPtr + ADDR_CPED_SKINIDOFF
    SkinID := readMem(hGTA, dwAddr, 2, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return SkinID
}

getPlayerMoney() {
    if(!checkHandles())
        return ""
    
    money := readMem(hGTA, ADDR_CPED_MONEY, 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    ErrorLevel := ERROR_OK
    return money
}

getPlayerWanteds() {
    if(!checkHandles())
        return -1
 
    dwPtr := 0xB7CD9C
    dwPtr := readDWORD(hGTA, dwPtr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
 
    Wanteds := readDWORD(hGTA, dwPtr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
 
    ErrorLevel := ERROR_OK
    return Wanteds
}

getPlayerWeaponId() {
    if(!checkHandles())
        return 0
    
    WaffenId := readMem(hGTA, 0xBAA410, 4, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }

   return WaffenId
}

getPlayerWeaponName() {
    id := getPlayerWeaponId()
    if(id >= 0 && id < 44)
    {
        return oweaponNames[id+1]
    }
    return ""
}

getPlayerState() {
    if(!checkHandles())
        return -1
    
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    State := readDWORD(hGTA, dwCPedPtr + 0x530)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return State
}

IsPlayerInMenu() {
    if(!checkHandles())
        return -1
    
    IsInMenu := readMem(hGTA, 0xBA67A4, 4, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return IsInMenu
}

getPlayerMapPosX() {
    if(!checkHandles())
        return -1
    
    MapPosX := readFloat(hGTA, 0xBA67B8)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return MapPosX
}

getPlayerMapPosY() {
    if(!checkHandles())
        return -1
    
    MapPosY := readFloat(hGTA, 0xBA67BC)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return MapPosY
}

getPlayerMapZoom() {
    if(!checkHandles())
        return -1
    
    MapZoom := readFloat(hGTA, 0xBA67AC)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return MapZoom
}

IsPlayerFreezed() {
    if(!checkHandles())
        return -1
    
    dwGTA := getModuleBaseAddress("gta_sa.exe", hGTA)
    IPF := readMem(hGTA, dwGTA + 0x690495, 2, "byte")    
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK    
    return IPF
}

; ##### Fahrzeugfunktionen #####

isPlayerInAnyVehicle()
{
    if(!checkHandles())
        return -1
    
    dwVehPtr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    return (dwVehPtr > 0)
}

isPlayerDriver() {
    if(!checkHandles())
        return -1
    
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    if(!dwAddr)
        return -1
    
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DRIVER)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return (dwVal==dwCPedPtr)
}

getVehicleHealth() {
    if(!checkHandles())
        return -1
    
    dwVehPtr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    dwAddr := dwVehPtr + ADDR_VEHICLE_HPOFF
    fHealth := readFloat(hGTA, dwAddr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return Round(fHealth)
}

getVehicleType() {
    if(!checkHandles())
        return 0
    
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    if(!dwAddr)
        return 0
    
    cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_TYPE, 1, "Char")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    if(!cVal)
    {
        mid := getVehicleModelId()
        Loop % oAirplaneModels.MaxIndex()
        {
            if(oAirplaneModels[A_Index]==mid)
                return 5
        }
        return 1
    }
    else if(cVal==5)
        return 2
    else if(cVal==6)
        return 3
    else if(cVal==9)
    {
        mid := getVehicleModelId()
        Loop % oBikeModels.MaxIndex()
        {
            if(oBikeModels[A_Index]==mid)
                return 6
        }
        return 4
    }
    return 0
}

getVehicleModelId() {
    if(!checkHandles())
        return 0
    
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    if(!dwAddr)
        return 0
    
    sVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_MODEL, 2, "Short")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return sVal
}

getVehicleModelName() {
    id:=getVehicleModelId()
    if(id > 400 && id < 611)
    {
        return ovehicleNames[id-399]
    }
    return ""
}


getVehicleLightState() {
    if(!checkHandles())
        return -1
    
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    if(!dwAddr)
        return -1
    
    dwVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_LIGHTSTATE, 1, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return (dwVal>0)
}

getVehicleEngineState() {
    if(!checkHandles())
        return -1
    
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    if(!dwAddr)
        return -1
    
    cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_ENGINESTATE, 1, "Char")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return (cVal==24 || cVal==56 || cVal==88 || cVal==120)
}


getVehicleSirenState() {
    if(!checkHandles())
        return -1
    
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    if(!dwAddr)
        return -1

    cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_SIRENSTATE, 1, "Char")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return (cVal==-48)
}

getVehicleLockState() {
    if(!checkHandles())
        return -1
    
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    if(!dwAddr)
        return -1
    
    dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DOORSTATE)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    ErrorLevel := ERROR_OK
    return (dwVal==2)
}
getVehicleColor1() {
    if(!checkHandles())
        return 0
    
    dwAddr := readDWORD(hGTA, 0xBA18FC)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    if(!dwAddr)
        return 0
	
    sVal := readMem(hGTA, dwAddr + 1076, 1, "byte")
	
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return sVal
}

getVehicleColor2() {
    if(!checkHandles())
        return 0
    
    dwAddr := readDWORD(hGTA, 0xBA18FC)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    if(!dwAddr)
        return 0
	
    sVal := readMem(hGTA, dwAddr + 1077, 1, "byte")
	
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return sVal
}

getVehicleSpeed() {
    if(!checkHandles())
        return -1
 
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    fSpeedX := readMem(hGTA, dwAddr + ADDR_VEHICLE_X, 4, "float")
    fSpeedY := readMem(hGTA, dwAddr + ADDR_VEHICLE_Y, 4, "float")
    fSpeedZ := readMem(hGTA, dwAddr + ADDR_VEHICLE_Z, 4, "float")
    
    fVehicleSpeed :=  sqrt((fSpeedX * fSpeedX) + (fSpeedY * fSpeedY) + (fSpeedZ * fSpeedZ))
    fVehicleSpeed := (fVehicleSpeed * 100) * 1.43           ;Der Wert "1.43" ist meistens auf jedem Server anders. Die Geschwindigkeit wird somit erhГѓВ¶ht bzw. verringert
 
	return fVehicleSpeed
}

getPlayerRadiostationID() {
    if(!checkHandles())
        return -1
    
    if(isPlayerInAnyVehicle() == 0)
        return -1
    
    dwGTA := getModuleBaseAddress("gta_sa.exe", hGTA)
    RadioStationID := readMem(hGTA, dwGTA + 0x4CB7E1, 1, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    
    return RadioStationID
}

getPlayerRadiostationName() {
    if(isPlayerInAnyVehicle() == 0)
        return -1
    
    id := getPlayerRadiostationID()
    
    if(id == 0)
        return -1
    
    if(id >= 0 && id < 14)
    {
        return oradiostationNames[id]
    }
    return ""
}

; ##### Checkpointsachen #####
setCheckpoint(fX, fY, fZ, fSize ) {
    if(!checkHandles())
        return false
    dwFunc := dwSAMP + 0x9D340
    dwAddress := readDWORD(hGTA, dwSAMP + ADDR_SAMP_INCHAT_PTR) ;misc info
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    VarSetCapacity(buf, 16, 0)
    NumPut(fX, buf, 0, "Float")
    NumPut(fY, buf, 4, "Float")
    NumPut(fZ, buf, 8, "Float")
    NumPut(fSize, buf, 12, "Float")
    writeRaw(hGTA, pParam1, &buf, 16)
    dwLen := 31
    VarSetCapacity(injectData, dwLen, 0)
    NumPut(0xB9, injectData, 0, "UChar")
    NumPut(dwAddress, injectData, 1, "UInt")
    NumPut(0x68, injectData, 5, "UChar")
    NumPut(pParam1+12, injectData, 6, "UInt")
    NumPut(0x68, injectData, 10, "UChar")
    NumPut(pParam1, injectData, 11, "UInt")
    NumPut(0xE8, injectData, 15, "UChar")
    offset := dwFunc - (pInjectFunc + 20)
    NumPut(offset, injectData, 16, "Int")
    NumPut(0x05C7, injectData, 20, "UShort")
    NumPut(dwAddress+0x24, injectData, 22, "UInt")
    NumPut(1, injectData, 26, "UInt")
    NumPut(0xC3, injectData, 30, "UChar")
    writeRaw(hGTA, pInjectFunc, &injectData, dwLen)
    if(ErrorLevel)
        return false
    hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
    if(ErrorLevel)
        return false
    waitForSingleObject(hThread, 0xFFFFFFFF)
    closeProcess(hThread)
    ErrorLevel := ERROR_OK
    return true
}

disableCheckpoint()
{
    if(!checkHandles())
        return false
    dwAddress := readDWORD(hGTA, dwSAMP + ADDR_SAMP_INCHAT_PTR) ;misc info
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    VarSetCapacity(enablecp, 4, 0)
    NumPut(0,enablecp,0,"Int")
    writeRaw(hGTA, dwAddress+0x24, &enablecp, 4)
    ErrorLevel := ERROR_OK
    return true
}

IsMarkerCreated(){
    If(!checkHandles())
        return false
    active := readMem(hGTA, CheckpointCheck, 1, "byte")
    If(!active)
        return 0
    else return 1
}
CoordsFromRedmarker(){
    if(!checkhandles())
        return false
    for i, v in rmaddrs
    f%i% := readFloat(hGTA, v)
    return [f1, f2, f3]
}
; ##### Positionsbestimmung #####
getCoordinates() {
    if(!checkHandles())
        return ""
    
    fX := readFloat(hGTA, ADDR_POSITION_X)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    fY := readFloat(hGTA, ADDR_POSITION_Y)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    fZ := readFloat(hGTA, ADDR_POSITION_Z)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    
    ErrorLevel := ERROR_OK
    return [fX, fY, fZ]
}

GetPlayerPos(ByRef fX,ByRef fY,ByRef fZ) {
        if(!checkHandles())
                return 0
 
        fX := readFloat(hGTA, ADDR_POSITION_X)
        if(ErrorLevel) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
        }
 
        fY := readFloat(hGTA, ADDR_POSITION_Y)
        if(ErrorLevel) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
        }
 
        fZ := readFloat(hGTA, ADDR_POSITION_Z)
        if(ErrorLevel) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
        }
 
        ErrorLevel := ERROR_OK
}

; ######################### Dialog Functions #########################
getDialogStructPtr() {
	if (!checkHandles()) {
		ErrorLevel := ERROR_INVALID_HANDLE
		return false
	}

	dwPointer := readDWORD(hGTA, dwSAMP + SAMP_DIALOG_STRUCT_PTR)
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return false
	}

	ErrorLevel := ERROR_OK
	return dwPointer
}

isDialogOpen() {
	dwPointer := getDialogStructPtr()
	if (ErrorLevel || !dwPointer)
	return false

	dwIsOpen := readMem(hGTA, dwPointer + SAMP_DIALOG_OPEN_OFFSET, 4, "UInt")
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return false
	}
	
	ErrorLevel := ERROR_OK
	return dwIsOpen ? true : false
}

getDialogStyle() {
	dwPointer := getDialogStructPtr()
	if (ErrorLevel || !dwPointer)
		return -1

	style := readMem(hGTA, dwPointer + SAMP_DIALOG_STYLE_OFFSET, 4, "UInt")
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
	}

	ErrorLevel := ERROR_OK
	return style
}

getDialogID() {
	dwPointer := getDialogStructPtr()
	if (ErrorLevel || !dwPointer)
		return -1

	id := readMem(hGTA, dwPointer + SAMP_DIALOG_ID_OFFSET, 4, "UInt")
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
	}

	ErrorLevel := ERROR_OK
	return id
}

setDialogID(id) {
	dwPointer := getDialogStructPtr()
	if (ErrorLevel || !dwPointer)
		return false

	writeMemory(hGTA, dwPointer + SAMP_DIALOG_ID_OFFSET, id, "UInt", 4)
	if (ErrorLevel) {
		ErrorLevel := ERROR_WRITE_MEMORY
		return false
	}

	ErrorLevel := ERROR_OK
	return true
}

getDialogCaption() {
	dwPointer := getDialogStructPtr()
	if (ErrorLevel || !dwPointer)
		return ""

	text := readString(hGTA, dwPointer + SAMP_DIALOG_CAPTION_OFFSET, 64)
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return ""
	}

	ErrorLevel := ERROR_OK
	return text
}

getDialogTextSize(dwAddress) {
	i := 0
	Loop, 4096 {
		i := A_Index - 1
		byte := Memory_ReadByte(hGTA, dwAddress + i)
		if (!byte)
			break
	}

	return i
}

getDialogText() {
	dwPointer := getDialogStructPtr()
	if (ErrorLevel || !dwPointer)
		return ""

	dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_TEXT_PTR_OFFSET)
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return ""
	}

	text := readString(hGTA, dwPointer, 4096)
	if (ErrorLevel) {
		text := readString(hGTA, dwPointer, getDialogTextSize(dwPointer))
		if (ErrorLevel) {
			ErrorLevel := ERROR_READ_MEMORY
			return ""
		}
	}

	ErrorLevel := ERROR_OK
	return text
}

getDialogLineCount() {
	dwPointer := getDialogStructPtr()
	if (ErrorLevel || !dwPointer)
		return 0

	dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR2_OFFSET)
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return 0
	}

	count := readMem(hGTA, dwPointer + SAMP_DIALOG_LINECOUNT_OFFSET, 4, "UInt")
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return 0
	}

	ErrorLevel := ERROR_OK
	return count
}

getDialogLine__(index) {
	if (getDialogLineCount > index)
		return ""

	dwPointer := getDialogStructPtr()
	if (ErrorLevel || !dwPointer)
		return ""

	dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR1_OFFSET)
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return ""
	}

	dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_LINES_OFFSET)
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return ""
	}

	dwLineAddress := readDWORD(hGTA, dwPointer + (index - 1) * 0x4)
	line := readString(hGTA, dwLineAddress, 128)

	ErrorLevel := ERROR_OK
	return line
}

getDialogLine(index) {
	lines := getDialogLines()
	if (index > lines.Length())
		return ""

	if (getDialogStyle() == DIALOG_STYLE_TABLIST_HEADERS)
		index++

	return lines[index]
}

getDialogLines() {
	text := getDialogText()
	if (text == "")
		return -1

	lines := StrSplit(text, "`n")
	return lines
}


getDialogLines__() {
	count := getDialogLineCount()

	dwPointer := getDialogStructPtr()
	if (ErrorLevel || !dwPointer)
		return -1

	dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR1_OFFSET)
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
	}

	dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_LINES_OFFSET)
	if (ErrorLevel) {
		ErrorLevel := ERROR_READ_MEMORY
		return -1
	}

	lines := []
	Loop %count% {
		dwLineAddress := readDWORD(hGTA, dwPointer + (A_Index - 1) * 0x4)
		lines[A_Index] := readString(hGTA, dwLineAddress, 128)
	}

	ErrorLevel := ERROR_OK
	return lines
}

showDialog(style, caption, text, button1, button2 := "", id := 1) {
	style += 0
	style := Floor(style)
	id += 0
	id := Floor(id)
	caption := "" caption
	text := "" text
	button1 := "" button1
	button2 := "" button2

	if (id < 0 || id > 32767 || style < 0 || style > 5 || StrLen(caption) > 64 || StrLen(text) > 4096 || StrLen(button1) > 10 || StrLen(button2) > 10)
		return false

	if (!checkHandles())
		return false

	dwFunc := dwSAMP + FUNC_SAMP_SHOWDIALOG
    sleep 200
	dwAddress := readDWORD(hGTA, dwSAMP + SAMP_DIALOG_STRUCT_PTR)
	if (ErrorLevel || !dwAddress) {
		ErrorLevel := ERROR_READ_MEMORY
		return false
	}

	writeString(hGTA, pParam5, caption)
	if (ErrorLevel)
		return false
	writeString(hGTA, pParam1, text)
	if (ErrorLevel)
		return false
	writeString(hGTA, pParam5 + 512, button1)
	if (ErrorLevel)
		return false
	writeString(hGTA, pParam5+StrLen(caption) + 1, button2)
	if (ErrorLevel)
		return false

	;mov + 7 * push + call + retn
	dwLen := 5 + 7 * 5 + 5 + 1
	VarSetCapacity(injectData, dwLen, 0)

	NumPut(0xB9, injectData, 0, "UChar")							;0 + 1	;mov ecx
	NumPut(dwAddress, injectData, 1, "UInt")						;1 + 4
	NumPut(0x68, injectData, 5, "UChar")							;5 + 1	;push send
	NumPut(1, injectData, 6, "UInt")								;6 + 4
	NumPut(0x68, injectData, 10, "UChar")							;10 + 1	;push button2
	NumPut(pParam5 + StrLen(caption) + 1, injectData, 11, "UInt")	;11 + 4
	NumPut(0x68, injectData, 15, "UChar")							;15 + 1	;push button1
	NumPut(pParam5 + 512, injectData, 16, "UInt")					;16 + 4
	NumPut(0x68, injectData, 20, "UChar")							;20 + 1	;push text
	NumPut(pParam1, injectData, 21, "UInt")							;21 + 4
	NumPut(0x68, injectData, 25, "UChar")							;25 + 1	;push caption
	NumPut(pParam5, injectData, 26, "UInt")							;26 + 4
	NumPut(0x68, injectData, 30, "UChar")							;30 + 1	;push style
	NumPut(style, injectData, 31, "UInt")							;31 + 4
	NumPut(0x68, injectData, 35, "UChar")							;35 + 1	;push id
	NumPut(id, injectData, 36, "UInt")								;36 + 4

	NumPut(0xE8, injectData, 40, "UChar")							;40 + 1 ;call
	offset := dwFunc - (pInjectFunc + 45)
	NumPut(offset, injectData, 41, "Int")							;41 + 4
	NumPut(0xC3, injectData, 45, "UChar")							;45 + 1	;retn

	writeRaw(hGTA, pInjectFunc, &injectData, dwLen)
	if (ErrorLevel)
		return false

	hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
	if (ErrorLevel)
		return false

	waitForSingleObject(hThread, 0xFFFFFFFF)
	closeProcess(hThread)

	return true
}


initZonesAndCities() {
    AddCity("Las Venturas", 685.0, 476.093, -500.0, 3000.0, 3000.0, 500.0)
    AddCity("San Fierro", -3000.0, -742.306, -500.0, -1270.53, 1530.24, 500.0)
    AddCity("San Fierro", -1270.53, -402.481, -500.0, -1038.45, 832.495, 500.0)
    AddCity("San Fierro", -1038.45, -145.539, -500.0, -897.546, 376.632, 500.0)
    AddCity("Los Santos", 480.0, -3000.0, -500.0, 3000.0, -850.0, 500.0)
    AddCity("Los Santos", 80.0, -2101.61, -500.0, 1075.0, -1239.61, 500.0)
    AddCity("Tierra Robada", -1213.91, 596.349, -242.99, -480.539, 1659.68, 900.0)
    AddCity("Red County", -1213.91, -768.027, -242.99, 2997.06, 596.349, 900.0)
    AddCity("Flint County", -1213.91, -2892.97, -242.99, 44.6147, -768.027, 900.0)
    AddCity("Whetstone", -2997.47, -2892.97, -242.99, -1213.91, -1115.58, 900.0)
    
AddZone("A-1", -3000.000000,2750.000000,-500,-2750.000000,3000.000000,500)
AddZone("A-2", -2750.000000,2750.000000,-500,-2500.000000,3000.000000,500)
AddZone("A-3", -2500.000000,2750.000000,-500,-2250.000000,3000.000000,500)
AddZone("A-4", -2250.000000,2750.000000,-500,-2000.000000,3000.000000,500)
AddZone("A-5", -2000.000000,2750.000000,-500,-1750.000000,3000.000000,500)
AddZone("A-6", -1750.000000,2750.000000,-500,-1500.000000,3000.000000,500)
AddZone("A-7", -1500.000000,2750.000000,-500,-1250.000000,3000.000000,500)
AddZone("A-8", -1250.000000,2750.000000,-500,-1000.000000,3000.000000,500)
AddZone("A-9", -1000.000000,2750.000000,-500,-750.000000,3000.000000,500)
AddZone("A-10", -750.000000,2750.000000,-500,-500.000000,3000.000000,500)
AddZone("A-11", -500.000000,2750.000000,-500,-250.000000,3000.000000,500)
AddZone("A-12", -250.000000,2750.000000,-500,0.000000,3000.000000,500)
AddZone("A-13", 0.000000,2750.000000,-500,250.000000,3000.000000,500)
AddZone("A-14", 250.000000,2750.000000,-500,500.000000,3000.000000,500)
AddZone("A-15", 500.000000,2750.000000,-500,750.000000,3000.000000,500)
AddZone("A-16", 750.000000,2750.000000,-500,1000.000000,3000.000000,500)
AddZone("A-17", 1000.000000,2750.000000,-500,1250.000000,3000.000000,500)
AddZone("A-18", 1250.000000,2750.000000,-500,1500.000000,3000.000000,500)
AddZone("A-19", 1500.000000,2750.000000,-500,1750.000000,3000.000000,500)
AddZone("A-20", 1750.000000,2750.000000,-500,2000.000000,3000.000000,500)
AddZone("A-21", 2000.000000,2750.000000,-500,2250.000000,3000.000000,500)
AddZone("A-22", 2250.000000,2750.000000,-500,2500.000000,3000.000000,500)
AddZone("A-23", 2500.000000,2750.000000,-500,2750.000000,3000.000000,500)
AddZone("A-24", 2750.000000,2750.000000,-500,3000.000000,3000.000000,500)
AddZone("Б-1", -3000.000000,2500.000000,-500,-2750.000000,2750.000000,500)
AddZone("Б-2", -2750.000000,2500.000000,-500,-2500.000000,2750.000000,500)
AddZone("Б-3", -2500.000000,2500.000000,-500,-2250.000000,2750.000000,500)
AddZone("Б-4", -2250.000000,2500.000000,-500,-2000.000000,2750.000000,500)
AddZone("Б-5", -2000.000000,2500.000000,-500,-1750.000000,2750.000000,500)
AddZone("Б-6", -1750.000000,2500.000000,-500,-1500.000000,2750.000000,500)
AddZone("Б-7", -1500.000000,2500.000000,-500,-1250.000000,2750.000000,500)
AddZone("Б-8", -1250.000000,2500.000000,-500,-1000.000000,2750.000000,500)
AddZone("Б-9", -1000.000000,2500.000000,-500,-750.000000,2750.000000,500)
AddZone("Б-10", -750.000000,2500.000000,-500,-500.000000,2750.000000,500)
AddZone("Б-11", -500.000000,2500.000000,-500,-250.000000,2750.000000,500)
AddZone("Б-12", -250.000000,2500.000000,-500,0.000000,2750.000000,500)
AddZone("Б-13", 0.000000,2500.000000,-500,250.000000,2750.000000,500)
AddZone("Б-14", 250.000000,2500.000000,-500,500.000000,2750.000000,500)
AddZone("Б-15", 500.000000,2500.000000,-500,750.000000,2750.000000,500)
AddZone("Б-16", 750.000000,2500.000000,-500,1000.000000,2750.000000,500)
AddZone("Б-17", 1000.000000,2500.000000,-500,1250.000000,2750.000000,500)
AddZone("Б-18", 1250.000000,2500.000000,-500,1500.000000,2750.000000,500)
AddZone("Б-19", 1500.000000,2500.000000,-500,1750.000000,2750.000000,500)
AddZone("Б-20", 1750.000000,2500.000000,-500,2000.000000,2750.000000,500)
AddZone("Б-21", 2000.000000,2500.000000,-500,2250.000000,2750.000000,500)
AddZone("Б-22", 2250.000000,2500.000000,-500,2500.000000,2750.000000,500)
AddZone("Б-23", 2500.000000,2500.000000,-500,2750.000000,2750.000000,500)
AddZone("Б-24", 2750.000000,2500.000000,-500,3000.000000,2750.000000,500)
AddZone("В-1", -3000.000000,2250.000000,-500,-2750.000000,2500.000000,500)
AddZone("В-2", -2750.000000,2250.000000,-500,-2500.000000,2500.000000,500)
AddZone("В-3", -2500.000000,2250.000000,-500,-2250.000000,2500.000000,500)
AddZone("В-4", -2250.000000,2250.000000,-500,-2000.000000,2500.000000,500)
AddZone("В-5", -2000.000000,2250.000000,-500,-1750.000000,2500.000000,500)
AddZone("В-6", -1750.000000,2250.000000,-500,-1500.000000,2500.000000,500)
AddZone("В-7", -1500.000000,2250.000000,-500,-1250.000000,2500.000000,500)
AddZone("В-8", -1250.000000,2250.000000,-500,-1000.000000,2500.000000,500)
AddZone("В-9", -1000.000000,2250.000000,-500,-750.000000,2500.000000,500)
AddZone("В-10", -750.000000,2250.000000,-500,-500.000000,2500.000000,500)
AddZone("В-11", -500.000000,2250.000000,-500,-250.000000,2500.000000,500)
AddZone("В-12", -250.000000,2250.000000,-500,0.000000,2500.000000,500)
AddZone("В-13", 0.000000,2250.000000,-500,250.000000,2500.000000,500)
AddZone("В-14", 250.000000,2250.000000,-500,500.000000,2500.000000,500)
AddZone("В-15", 500.000000,2250.000000,-500,750.000000,2500.000000,500)
AddZone("В-16", 750.000000,2250.000000,-500,1000.000000,2500.000000,500)
AddZone("В-17", 1000.000000,2250.000000,-500,1250.000000,2500.000000,500)
AddZone("В-18", 1250.000000,2250.000000,-500,1500.000000,2500.000000,500)
AddZone("В-19", 1500.000000,2250.000000,-500,1750.000000,2500.000000,500)
AddZone("В-20", 1750.000000,2250.000000,-500,2000.000000,2500.000000,500)
AddZone("В-21", 2000.000000,2250.000000,-500,2250.000000,2500.000000,500)
AddZone("В-22", 2250.000000,2250.000000,-500,2500.000000,2500.000000,500)
AddZone("В-23", 2500.000000,2250.000000,-500,2750.000000,2500.000000,500)
AddZone("В-24", 2750.000000,2250.000000,-500,3000.000000,2500.000000,500)
AddZone("Г-1", -3000.000000,2000.000000,-500,-2750.000000,2250.000000,500)
AddZone("Г-2", -2750.000000,2000.000000,-500,-2500.000000,2250.000000,500)
AddZone("Г-3", -2500.000000,2000.000000,-500,-2250.000000,2250.000000,500)
AddZone("Г-4", -2250.000000,2000.000000,-500,-2000.000000,2250.000000,500)
AddZone("Г-5", -2000.000000,2000.000000,-500,-1750.000000,2250.000000,500)
AddZone("Г-6", -1750.000000,2000.000000,-500,-1500.000000,2250.000000,500)
AddZone("Г-7", -1500.000000,2000.000000,-500,-1250.000000,2250.000000,500)
AddZone("Г-8", -1250.000000,2000.000000,-500,-1000.000000,2250.000000,500)
AddZone("Г-9", -1000.000000,2000.000000,-500,-750.000000,2250.000000,500)
AddZone("Г-10", -750.000000,2000.000000,-500,-500.000000,2250.000000,500)
AddZone("Г-11", -500.000000,2000.000000,-500,-250.000000,2250.000000,500)
AddZone("Г-12", -250.000000,2000.000000,-500,0.000000,2250.000000,500)
AddZone("Г-13", 0.000000,2000.000000,-500,250.000000,2250.000000,500)
AddZone("Г-14", 250.000000,2000.000000,-500,500.000000,2250.000000,500)
AddZone("Г-15", 500.000000,2000.000000,-500,750.000000,2250.000000,500)
AddZone("Г-16", 750.000000,2000.000000,-500,1000.000000,2250.000000,500)
AddZone("Г-17", 1000.000000,2000.000000,-500,1250.000000,2250.000000,500)
AddZone("Г-18", 1250.000000,2000.000000,-500,1500.000000,2250.000000,500)
AddZone("Г-19", 1500.000000,2000.000000,-500,1750.000000,2250.000000,500)
AddZone("Г-20", 1750.000000,2000.000000,-500,2000.000000,2250.000000,500)
AddZone("Г-21", 2000.000000,2000.000000,-500,2250.000000,2250.000000,500)
AddZone("Г-22", 2250.000000,2000.000000,-500,2500.000000,2250.000000,500)
AddZone("Г-23", 2500.000000,2000.000000,-500,2750.000000,2250.000000,500)
AddZone("Г-24", 2750.000000,2000.000000,-500,3000.000000,2250.000000,500)
AddZone("Д-1", -3000.000000,1750.000000,-500,-2750.000000,2000.000000,500)
AddZone("Д-2", -2750.000000,1750.000000,-500,-2500.000000,2000.000000,500)
AddZone("Д-3", -2500.000000,1750.000000,-500,-2250.000000,2000.000000,500)
AddZone("Д-4", -2250.000000,1750.000000,-500,-2000.000000,2000.000000,500)
AddZone("Д-5", -2000.000000,1750.000000,-500,-1750.000000,2000.000000,500)
AddZone("Д-6", -1750.000000,1750.000000,-500,-1500.000000,2000.000000,500)
AddZone("Д-7", -1500.000000,1750.000000,-500,-1250.000000,2000.000000,500)
AddZone("Д-8", -1250.000000,1750.000000,-500,-1000.000000,2000.000000,500)
AddZone("Д-9", -1000.000000,1750.000000,-500,-750.000000,2000.000000,500)
AddZone("Д-10", -750.000000,1750.000000,-500,-500.000000,2000.000000,500)
AddZone("Д-11", -500.000000,1750.000000,-500,-250.000000,2000.000000,500)
AddZone("Д-12", -250.000000,1750.000000,-500,0.000000,2000.000000,500)
AddZone("Д-13", 0.000000,1750.000000,-500,250.000000,2000.000000,500)
AddZone("Д-14", 250.000000,1750.000000,-500,500.000000,2000.000000,500)
AddZone("Д-15", 500.000000,1750.000000,-500,750.000000,2000.000000,500)
AddZone("Д-16", 750.000000,1750.000000,-500,1000.000000,2000.000000,500)
AddZone("Д-17", 1000.000000,1750.000000,-500,1250.000000,2000.000000,500)
AddZone("Д-18", 1250.000000,1750.000000,-500,1500.000000,2000.000000,500)
AddZone("Д-19", 1500.000000,1750.000000,-500,1750.000000,2000.000000,500)
AddZone("Д-20", 1750.000000,1750.000000,-500,2000.000000,2000.000000,500)
AddZone("Д-21", 2000.000000,1750.000000,-500,2250.000000,2000.000000,500)
AddZone("Д-22", 2250.000000,1750.000000,-500,2500.000000,2000.000000,500)
AddZone("Д-23", 2500.000000,1750.000000,-500,2750.000000,2000.000000,500)
AddZone("Д-24", 2750.000000,1750.000000,-500,3000.000000,2000.000000,500)
AddZone("Ж-1", -3000.000000,1500.000000,-500,-2750.000000,1750.000000,500)
AddZone("Ж-2", -2750.000000,1500.000000,-500,-2500.000000,1750.000000,500)
AddZone("Ж-3", -2500.000000,1500.000000,-500,-2250.000000,1750.000000,500)
AddZone("Ж-4", -2250.000000,1500.000000,-500,-2000.000000,1750.000000,500)
AddZone("Ж-5", -2000.000000,1500.000000,-500,-1750.000000,1750.000000,500)
AddZone("Ж-6", -1750.000000,1500.000000,-500,-1500.000000,1750.000000,500)
AddZone("Ж-7", -1500.000000,1500.000000,-500,-1250.000000,1750.000000,500)
AddZone("Ж-8", -1250.000000,1500.000000,-500,-1000.000000,1750.000000,500)
AddZone("Ж-9", -1000.000000,1500.000000,-500,-750.000000,1750.000000,500)
AddZone("Ж-10", -750.000000,1500.000000,-500,-500.000000,1750.000000,500)
AddZone("Ж-11", -500.000000,1500.000000,-500,-250.000000,1750.000000,500)
AddZone("Ж-12", -250.000000,1500.000000,-500,0.000000,1750.000000,500)
AddZone("Ж-13", 0.000000,1500.000000,-500,250.000000,1750.000000,500)
AddZone("Ж-14", 250.000000,1500.000000,-500,500.000000,1750.000000,500)
AddZone("Ж-15", 500.000000,1500.000000,-500,750.000000,1750.000000,500)
AddZone("Ж-16", 750.000000,1500.000000,-500,1000.000000,1750.000000,500)
AddZone("Ж-17", 1000.000000,1500.000000,-500,1250.000000,1750.000000,500)
AddZone("Ж-18", 1250.000000,1500.000000,-500,1500.000000,1750.000000,500)
AddZone("Ж-19", 1500.000000,1500.000000,-500,1750.000000,1750.000000,500)
AddZone("Ж-20", 1750.000000,1500.000000,-500,2000.000000,1750.000000,500)
AddZone("Ж-21", 2000.000000,1500.000000,-500,2250.000000,1750.000000,500)
AddZone("Ж-22", 2250.000000,1500.000000,-500,2500.000000,1750.000000,500)
AddZone("Ж-23", 2500.000000,1500.000000,-500,2750.000000,1750.000000,500)
AddZone("Ж-24", 2750.000000,1500.000000,-500,3000.000000,1750.000000,500)
AddZone("З-1", -3000.000000,1250.000000,-500,-2750.000000,1500.000000,500)
AddZone("З-2", -2750.000000,1250.000000,-500,-2500.000000,1500.000000,500)
AddZone("З-3", -2500.000000,1250.000000,-500,-2250.000000,1500.000000,500)
AddZone("З-4", -2250.000000,1250.000000,-500,-2000.000000,1500.000000,500)
AddZone("З-5", -2000.000000,1250.000000,-500,-1750.000000,1500.000000,500)
AddZone("З-6", -1750.000000,1250.000000,-500,-1500.000000,1500.000000,500)
AddZone("З-7", -1500.000000,1250.000000,-500,-1250.000000,1500.000000,500)
AddZone("З-8", -1250.000000,1250.000000,-500,-1000.000000,1500.000000,500)
AddZone("З-9", -1000.000000,1250.000000,-500,-750.000000,1500.000000,500)
AddZone("З-10", -750.000000,1250.000000,-500,-500.000000,1500.000000,500)
AddZone("З-11", -500.000000,1250.000000,-500,-250.000000,1500.000000,500)
AddZone("З-12", -250.000000,1250.000000,-500,0.000000,1500.000000,500)
AddZone("З-13", 0.000000,1250.000000,-500,250.000000,1500.000000,500)
AddZone("З-14", 250.000000,1250.000000,-500,500.000000,1500.000000,500)
AddZone("З-15", 500.000000,1250.000000,-500,750.000000,1500.000000,500)
AddZone("З-16", 750.000000,1250.000000,-500,1000.000000,1500.000000,500)
AddZone("З-17", 1000.000000,1250.000000,-500,1250.000000,1500.000000,500)
AddZone("З-18", 1250.000000,1250.000000,-500,1500.000000,1500.000000,500)
AddZone("З-19", 1500.000000,1250.000000,-500,1750.000000,1500.000000,500)
AddZone("З-20", 1750.000000,1250.000000,-500,2000.000000,1500.000000,500)
AddZone("З-21", 2000.000000,1250.000000,-500,2250.000000,1500.000000,500)
AddZone("З-22", 2250.000000,1250.000000,-500,2500.000000,1500.000000,500)
AddZone("З-23", 2500.000000,1250.000000,-500,2750.000000,1500.000000,500)
AddZone("З-24", 2750.000000,1250.000000,-500,3000.000000,1500.000000,500)
AddZone("И-1", -3000.000000,1000.000000,-500,-2750.000000,1250.000000,500)
AddZone("И-2", -2750.000000,1000.000000,-500,-2500.000000,1250.000000,500)
AddZone("И-3", -2500.000000,1000.000000,-500,-2250.000000,1250.000000,500)
AddZone("И-4", -2250.000000,1000.000000,-500,-2000.000000,1250.000000,500)
AddZone("И-5", -2000.000000,1000.000000,-500,-1750.000000,1250.000000,500)
AddZone("И-6", -1750.000000,1000.000000,-500,-1500.000000,1250.000000,500)
AddZone("И-7", -1500.000000,1000.000000,-500,-1250.000000,1250.000000,500)
AddZone("И-8", -1250.000000,1000.000000,-500,-1000.000000,1250.000000,500)
AddZone("И-9", -1000.000000,1000.000000,-500,-750.000000,1250.000000,500)
AddZone("И-10", -750.000000,1000.000000,-500,-500.000000,1250.000000,500)
AddZone("И-11", -500.000000,1000.000000,-500,-250.000000,1250.000000,500)
AddZone("И-12", -250.000000,1000.000000,-500,0.000000,1250.000000,500)
AddZone("И-13", 0.000000,1000.000000,-500,250.000000,1250.000000,500)
AddZone("И-14", 250.000000,1000.000000,-500,500.000000,1250.000000,500)
AddZone("И-15", 500.000000,1000.000000,-500,750.000000,1250.000000,500)
AddZone("И-16", 750.000000,1000.000000,-500,1000.000000,1250.000000,500)
AddZone("И-17", 1000.000000,1000.000000,-500,1250.000000,1250.000000,500)
AddZone("И-18", 1250.000000,1000.000000,-500,1500.000000,1250.000000,500)
AddZone("И-19", 1500.000000,1000.000000,-500,1750.000000,1250.000000,500)
AddZone("И-20", 1750.000000,1000.000000,-500,2000.000000,1250.000000,500)
AddZone("И-21", 2000.000000,1000.000000,-500,2250.000000,1250.000000,500)
AddZone("И-22", 2250.000000,1000.000000,-500,2500.000000,1250.000000,500)
AddZone("И-23", 2500.000000,1000.000000,-500,2750.000000,1250.000000,500)
AddZone("И-24", 2750.000000,1000.000000,-500,3000.000000,1250.000000,500)
AddZone("К-1", -3000.000000,750.000000,-500,-2750.000000,1000.000000,500)
AddZone("К-2", -2750.000000,750.000000,-500,-2500.000000,1000.000000,500)
AddZone("К-3", -2500.000000,750.000000,-500,-2250.000000,1000.000000,500)
AddZone("К-4", -2250.000000,750.000000,-500,-2000.000000,1000.000000,500)
AddZone("К-5", -2000.000000,750.000000,-500,-1750.000000,1000.000000,500)
AddZone("К-6", -1750.000000,750.000000,-500,-1500.000000,1000.000000,500)
AddZone("К-7", -1500.000000,750.000000,-500,-1250.000000,1000.000000,500)
AddZone("К-8", -1250.000000,750.000000,-500,-1000.000000,1000.000000,500)
AddZone("К-9", -1000.000000,750.000000,-500,-750.000000,1000.000000,500)
AddZone("К-10", -750.000000,750.000000,-500,-500.000000,1000.000000,500)
AddZone("К-11", -500.000000,750.000000,-500,-250.000000,1000.000000,500)
AddZone("К-12", -250.000000,750.000000,-500,0.000000,1000.000000,500)
AddZone("К-13", 0.000000,750.000000,-500,250.000000,1000.000000,500)
AddZone("К-14", 250.000000,750.000000,-500,500.000000,1000.000000,500)
AddZone("К-15", 500.000000,750.000000,-500,750.000000,1000.000000,500)
AddZone("К-16", 750.000000,750.000000,-500,1000.000000,1000.000000,500)
AddZone("К-17", 1000.000000,750.000000,-500,1250.000000,1000.000000,500)
AddZone("К-18", 1250.000000,750.000000,-500,1500.000000,1000.000000,500)
AddZone("К-19", 1500.000000,750.000000,-500,1750.000000,1000.000000,500)
AddZone("К-20", 1750.000000,750.000000,-500,2000.000000,1000.000000,500)
AddZone("К-21", 2000.000000,750.000000,-500,2250.000000,1000.000000,500)
AddZone("К-22", 2250.000000,750.000000,-500,2500.000000,1000.000000,500)
AddZone("К-23", 2500.000000,750.000000,-500,2750.000000,1000.000000,500)
AddZone("К-24", 2750.000000,750.000000,-500,3000.000000,1000.000000,500)
AddZone("Л-1", -3000.000000,500.000000,-500,-2750.000000,750.000000,500)
AddZone("Л-2", -2750.000000,500.000000,-500,-2500.000000,750.000000,500)
AddZone("Л-3", -2500.000000,500.000000,-500,-2250.000000,750.000000,500)
AddZone("Л-4", -2250.000000,500.000000,-500,-2000.000000,750.000000,500)
AddZone("Л-5", -2000.000000,500.000000,-500,-1750.000000,750.000000,500)
AddZone("Л-6", -1750.000000,500.000000,-500,-1500.000000,750.000000,500)
AddZone("Л-7", -1500.000000,500.000000,-500,-1250.000000,750.000000,500)
AddZone("Л-8", -1250.000000,500.000000,-500,-1000.000000,750.000000,500)
AddZone("Л-9", -1000.000000,500.000000,-500,-750.000000,750.000000,500)
AddZone("Л-10", -750.000000,500.000000,-500,-500.000000,750.000000,500)
AddZone("Л-11", -500.000000,500.000000,-500,-250.000000,750.000000,500)
AddZone("Л-12", -250.000000,500.000000,-500,0.000000,750.000000,500)
AddZone("Л-13", 0.000000,500.000000,-500,250.000000,750.000000,500)
AddZone("Л-14", 250.000000,500.000000,-500,500.000000,750.000000,500)
AddZone("Л-15", 500.000000,500.000000,-500,750.000000,750.000000,500)
AddZone("Л-16", 750.000000,500.000000,-500,1000.000000,750.000000,500)
AddZone("Л-17", 1000.000000,500.000000,-500,1250.000000,750.000000,500)
AddZone("Л-18", 1250.000000,500.000000,-500,1500.000000,750.000000,500)
AddZone("Л-19", 1500.000000,500.000000,-500,1750.000000,750.000000,500)
AddZone("Л-20", 1750.000000,500.000000,-500,2000.000000,750.000000,500)
AddZone("Л-21", 2000.000000,500.000000,-500,2250.000000,750.000000,500)
AddZone("Л-22", 2250.000000,500.000000,-500,2500.000000,750.000000,500)
AddZone("Л-23", 2500.000000,500.000000,-500,2750.000000,750.000000,500)
AddZone("Л-24", 2750.000000,500.000000,-500,3000.000000,750.000000,500)
AddZone("М-1", -3000.000000,250.000000,-500,-2750.000000,500.000000,500)
AddZone("М-2", -2750.000000,250.000000,-500,-2500.000000,500.000000,500)
AddZone("М-3", -2500.000000,250.000000,-500,-2250.000000,500.000000,500)
AddZone("М-4", -2250.000000,250.000000,-500,-2000.000000,500.000000,500)
AddZone("М-5", -2000.000000,250.000000,-500,-1750.000000,500.000000,500)
AddZone("М-6", -1750.000000,250.000000,-500,-1500.000000,500.000000,500)
AddZone("М-7", -1500.000000,250.000000,-500,-1250.000000,500.000000,500)
AddZone("М-8", -1250.000000,250.000000,-500,-1000.000000,500.000000,500)
AddZone("М-9", -1000.000000,250.000000,-500,-750.000000,500.000000,500)
AddZone("М-10", -750.000000,250.000000,-500,-500.000000,500.000000,500)
AddZone("М-11", -500.000000,250.000000,-500,-250.000000,500.000000,500)
AddZone("М-12", -250.000000,250.000000,-500,0.000000,500.000000,500)
AddZone("М-13", 0.000000,250.000000,-500,250.000000,500.000000,500)
AddZone("М-14", 250.000000,250.000000,-500,500.000000,500.000000,500)
AddZone("М-15", 500.000000,250.000000,-500,750.000000,500.000000,500)
AddZone("М-16", 750.000000,250.000000,-500,1000.000000,500.000000,500)
AddZone("М-17", 1000.000000,250.000000,-500,1250.000000,500.000000,500)
AddZone("М-18", 1250.000000,250.000000,-500,1500.000000,500.000000,500)
AddZone("М-19", 1500.000000,250.000000,-500,1750.000000,500.000000,500)
AddZone("М-20", 1750.000000,250.000000,-500,2000.000000,500.000000,500)
AddZone("М-21", 2000.000000,250.000000,-500,2250.000000,500.000000,500)
AddZone("М-22", 2250.000000,250.000000,-500,2500.000000,500.000000,500)
AddZone("М-23", 2500.000000,250.000000,-500,2750.000000,500.000000,500)
AddZone("М-24", 2750.000000,250.000000,-500,3000.000000,500.000000,500)
AddZone("Н-1", -3000.000000,0.000000,-500,-2750.000000,250.000000,500)
AddZone("Н-2", -2750.000000,0.000000,-500,-2500.000000,250.000000,500)
AddZone("Н-3", -2500.000000,0.000000,-500,-2250.000000,250.000000,500)
AddZone("Н-4", -2250.000000,0.000000,-500,-2000.000000,250.000000,500)
AddZone("Н-5", -2000.000000,0.000000,-500,-1750.000000,250.000000,500)
AddZone("Н-6", -1750.000000,0.000000,-500,-1500.000000,250.000000,500)
AddZone("Н-7", -1500.000000,0.000000,-500,-1250.000000,250.000000,500)
AddZone("Н-8", -1250.000000,0.000000,-500,-1000.000000,250.000000,500)
AddZone("Н-9", -1000.000000,0.000000,-500,-750.000000,250.000000,500)
AddZone("Н-10", -750.000000,0.000000,-500,-500.000000,250.000000,500)
AddZone("Н-11", -500.000000,0.000000,-500,-250.000000,250.000000,500)
AddZone("Н-12", -250.000000,0.000000,-500,0.000000,250.000000,500)
AddZone("Н-13", 0.000000,0.000000,-500,250.000000,250.000000,500)
AddZone("Н-14", 250.000000,0.000000,-500,500.000000,250.000000,500)
AddZone("Н-15", 500.000000,0.000000,-500,750.000000,250.000000,500)
AddZone("Н-16", 750.000000,0.000000,-500,1000.000000,250.000000,500)
AddZone("Н-17", 1000.000000,0.000000,-500,1250.000000,250.000000,500)
AddZone("Н-18", 1250.000000,0.000000,-500,1500.000000,250.000000,500)
AddZone("Н-19", 1500.000000,0.000000,-500,1750.000000,250.000000,500)
AddZone("Н-20", 1750.000000,0.000000,-500,2000.000000,250.000000,500)
AddZone("Н-21", 2000.000000,0.000000,-500,2250.000000,250.000000,500)
AddZone("Н-22", 2250.000000,0.000000,-500,2500.000000,250.000000,500)
AddZone("Н-23", 2500.000000,0.000000,-500,2750.000000,250.000000,500)
AddZone("Н-24", 2750.000000,0.000000,-500,3000.000000,250.000000,500)
AddZone("О-1", -3000.000000,-250.000000,-500,-2750.000000,0.000000,500)
AddZone("О-2", -2750.000000,-250.000000,-500,-2500.000000,0.000000,500)
AddZone("О-3", -2500.000000,-250.000000,-500,-2250.000000,0.000000,500)
AddZone("О-4", -2250.000000,-250.000000,-500,-2000.000000,0.000000,500)
AddZone("О-5", -2000.000000,-250.000000,-500,-1750.000000,0.000000,500)
AddZone("О-6", -1750.000000,-250.000000,-500,-1500.000000,0.000000,500)
AddZone("О-7", -1500.000000,-250.000000,-500,-1250.000000,0.000000,500)
AddZone("О-8", -1250.000000,-250.000000,-500,-1000.000000,0.000000,500)
AddZone("О-9", -1000.000000,-250.000000,-500,-750.000000,0.000000,500)
AddZone("О-10", -750.000000,-250.000000,-500,-500.000000,0.000000,500)
AddZone("О-11", -500.000000,-250.000000,-500,-250.000000,0.000000,500)
AddZone("О-12", -250.000000,-250.000000,-500,0.000000,0.000000,500)
AddZone("О-13", 0.000000,-250.000000,-500,250.000000,0.000000,500)
AddZone("О-14", 250.000000,-250.000000,-500,500.000000,0.000000,500)
AddZone("О-15", 500.000000,-250.000000,-500,750.000000,0.000000,500)
AddZone("О-16", 750.000000,-250.000000,-500,1000.000000,0.000000,500)
AddZone("О-17", 1000.000000,-250.000000,-500,1250.000000,0.000000,500)
AddZone("О-18", 1250.000000,-250.000000,-500,1500.000000,0.000000,500)
AddZone("О-19", 1500.000000,-250.000000,-500,1750.000000,0.000000,500)
AddZone("О-20", 1750.000000,-250.000000,-500,2000.000000,0.000000,500)
AddZone("О-21", 2000.000000,-250.000000,-500,2250.000000,0.000000,500)
AddZone("О-22", 2250.000000,-250.000000,-500,2500.000000,0.000000,500)
AddZone("О-23", 2500.000000,-250.000000,-500,2750.000000,0.000000,500)
AddZone("О-24", 2750.000000,-250.000000,-500,3000.000000,0.000000,500)
AddZone("П-1", -3000.000000,-500.000000,-500,-2750.000000,-250.000000,500)
AddZone("П-2", -2750.000000,-500.000000,-500,-2500.000000,-250.000000,500)
AddZone("П-3", -2500.000000,-500.000000,-500,-2250.000000,-250.000000,500)
AddZone("П-4", -2250.000000,-500.000000,-500,-2000.000000,-250.000000,500)
AddZone("П-5", -2000.000000,-500.000000,-500,-1750.000000,-250.000000,500)
AddZone("П-6", -1750.000000,-500.000000,-500,-1500.000000,-250.000000,500)
AddZone("П-7", -1500.000000,-500.000000,-500,-1250.000000,-250.000000,500)
AddZone("П-8", -1250.000000,-500.000000,-500,-1000.000000,-250.000000,500)
AddZone("П-9", -1000.000000,-500.000000,-500,-750.000000,-250.000000,500)
AddZone("П-10", -750.000000,-500.000000,-500,-500.000000,-250.000000,500)
AddZone("П-11", -500.000000,-500.000000,-500,-250.000000,-250.000000,500)
AddZone("П-12", -250.000000,-500.000000,-500,0.000000,-250.000000,500)
AddZone("П-13", 0.000000,-500.000000,-500,250.000000,-250.000000,500)
AddZone("П-14", 250.000000,-500.000000,-500,500.000000,-250.000000,500)
AddZone("П-15", 500.000000,-500.000000,-500,750.000000,-250.000000,500)
AddZone("П-16", 750.000000,-500.000000,-500,1000.000000,-250.000000,500)
AddZone("П-17", 1000.000000,-500.000000,-500,1250.000000,-250.000000,500)
AddZone("П-18", 1250.000000,-500.000000,-500,1500.000000,-250.000000,500)
AddZone("П-19", 1500.000000,-500.000000,-500,1750.000000,-250.000000,500)
AddZone("П-20", 1750.000000,-500.000000,-500,2000.000000,-250.000000,500)
AddZone("П-21", 2000.000000,-500.000000,-500,2250.000000,-250.000000,500)
AddZone("П-22", 2250.000000,-500.000000,-500,2500.000000,-250.000000,500)
AddZone("П-23", 2500.000000,-500.000000,-500,2750.000000,-250.000000,500)
AddZone("П-24", 2750.000000,-500.000000,-500,3000.000000,-250.000000,500)
AddZone("Р-1", -3000.000000,-750.000000,-500,-2750.000000,-500.000000,500)
AddZone("Р-2", -2750.000000,-750.000000,-500,-2500.000000,-500.000000,500)
AddZone("Р-3", -2500.000000,-750.000000,-500,-2250.000000,-500.000000,500)
AddZone("Р-4", -2250.000000,-750.000000,-500,-2000.000000,-500.000000,500)
AddZone("Р-5", -2000.000000,-750.000000,-500,-1750.000000,-500.000000,500)
AddZone("Р-6", -1750.000000,-750.000000,-500,-1500.000000,-500.000000,500)
AddZone("Р-7", -1500.000000,-750.000000,-500,-1250.000000,-500.000000,500)
AddZone("Р-8", -1250.000000,-750.000000,-500,-1000.000000,-500.000000,500)
AddZone("Р-9", -1000.000000,-750.000000,-500,-750.000000,-500.000000,500)
AddZone("Р-10", -750.000000,-750.000000,-500,-500.000000,-500.000000,500)
AddZone("Р-11", -500.000000,-750.000000,-500,-250.000000,-500.000000,500)
AddZone("Р-12", -250.000000,-750.000000,-500,0.000000,-500.000000,500)
AddZone("Р-13", 0.000000,-750.000000,-500,250.000000,-500.000000,500)
AddZone("Р-14", 250.000000,-750.000000,-500,500.000000,-500.000000,500)
AddZone("Р-15", 500.000000,-750.000000,-500,750.000000,-500.000000,500)
AddZone("Р-16", 750.000000,-750.000000,-500,1000.000000,-500.000000,500)
AddZone("Р-17", 1000.000000,-750.000000,-500,1250.000000,-500.000000,500)
AddZone("Р-18", 1250.000000,-750.000000,-500,1500.000000,-500.000000,500)
AddZone("Р-19", 1500.000000,-750.000000,-500,1750.000000,-500.000000,500)
AddZone("Р-20", 1750.000000,-750.000000,-500,2000.000000,-500.000000,500)
AddZone("Р-21", 2000.000000,-750.000000,-500,2250.000000,-500.000000,500)
AddZone("Р-22", 2250.000000,-750.000000,-500,2500.000000,-500.000000,500)
AddZone("Р-23", 2500.000000,-750.000000,-500,2750.000000,-500.000000,500)
AddZone("Р-24", 2750.000000,-750.000000,-500,3000.000000,-500.000000,500)
AddZone("С-1", -3000.000000,-1000.000000,-500,-2750.000000,-750.000000,500)
AddZone("С-2", -2750.000000,-1000.000000,-500,-2500.000000,-750.000000,500)
AddZone("С-3", -2500.000000,-1000.000000,-500,-2250.000000,-750.000000,500)
AddZone("С-4", -2250.000000,-1000.000000,-500,-2000.000000,-750.000000,500)
AddZone("С-5", -2000.000000,-1000.000000,-500,-1750.000000,-750.000000,500)
AddZone("С-6", -1750.000000,-1000.000000,-500,-1500.000000,-750.000000,500)
AddZone("С-7", -1500.000000,-1000.000000,-500,-1250.000000,-750.000000,500)
AddZone("С-8", -1250.000000,-1000.000000,-500,-1000.000000,-750.000000,500)
AddZone("С-9", -1000.000000,-1000.000000,-500,-750.000000,-750.000000,500)
AddZone("С-10", -750.000000,-1000.000000,-500,-500.000000,-750.000000,500)
AddZone("С-11", -500.000000,-1000.000000,-500,-250.000000,-750.000000,500)
AddZone("С-12", -250.000000,-1000.000000,-500,0.000000,-750.000000,500)
AddZone("С-13", 0.000000,-1000.000000,-500,250.000000,-750.000000,500)
AddZone("С-14", 250.000000,-1000.000000,-500,500.000000,-750.000000,500)
AddZone("С-15", 500.000000,-1000.000000,-500,750.000000,-750.000000,500)
AddZone("С-16", 750.000000,-1000.000000,-500,1000.000000,-750.000000,500)
AddZone("С-17", 1000.000000,-1000.000000,-500,1250.000000,-750.000000,500)
AddZone("С-18", 1250.000000,-1000.000000,-500,1500.000000,-750.000000,500)
AddZone("С-19", 1500.000000,-1000.000000,-500,1750.000000,-750.000000,500)
AddZone("С-20", 1750.000000,-1000.000000,-500,2000.000000,-750.000000,500)
AddZone("С-21", 2000.000000,-1000.000000,-500,2250.000000,-750.000000,500)
AddZone("С-22", 2250.000000,-1000.000000,-500,2500.000000,-750.000000,500)
AddZone("С-23", 2500.000000,-1000.000000,-500,2750.000000,-750.000000,500)
AddZone("С-24", 2750.000000,-1000.000000,-500,3000.000000,-750.000000,500)
AddZone("Т-1", -3000.000000,-1250.000000,-500,-2750.000000,-1000.000000,500)
AddZone("Т-2", -2750.000000,-1250.000000,-500,-2500.000000,-1000.000000,500)
AddZone("Т-3", -2500.000000,-1250.000000,-500,-2250.000000,-1000.000000,500)
AddZone("Т-4", -2250.000000,-1250.000000,-500,-2000.000000,-1000.000000,500)
AddZone("Т-5", -2000.000000,-1250.000000,-500,-1750.000000,-1000.000000,500)
AddZone("Т-6", -1750.000000,-1250.000000,-500,-1500.000000,-1000.000000,500)
AddZone("Т-7", -1500.000000,-1250.000000,-500,-1250.000000,-1000.000000,500)
AddZone("Т-8", -1250.000000,-1250.000000,-500,-1000.000000,-1000.000000,500)
AddZone("Т-9", -1000.000000,-1250.000000,-500,-750.000000,-1000.000000,500)
AddZone("Т-10", -750.000000,-1250.000000,-500,-500.000000,-1000.000000,500)
AddZone("Т-11", -500.000000,-1250.000000,-500,-250.000000,-1000.000000,500)
AddZone("Т-12", -250.000000,-1250.000000,-500,0.000000,-1000.000000,500)
AddZone("Т-13", 0.000000,-1250.000000,-500,250.000000,-1000.000000,500)
AddZone("Т-14", 250.000000,-1250.000000,-500,500.000000,-1000.000000,500)
AddZone("Т-15", 500.000000,-1250.000000,-500,750.000000,-1000.000000,500)
AddZone("Т-16", 750.000000,-1250.000000,-500,1000.000000,-1000.000000,500)
AddZone("Т-17", 1000.000000,-1250.000000,-500,1250.000000,-1000.000000,500)
AddZone("Т-18", 1250.000000,-1250.000000,-500,1500.000000,-1000.000000,500)
AddZone("Т-19", 1500.000000,-1250.000000,-500,1750.000000,-1000.000000,500)
AddZone("Т-20", 1750.000000,-1250.000000,-500,2000.000000,-1000.000000,500)
AddZone("Т-21", 2000.000000,-1250.000000,-500,2250.000000,-1000.000000,500)
AddZone("Т-22", 2250.000000,-1250.000000,-500,2500.000000,-1000.000000,500)
AddZone("Т-23", 2500.000000,-1250.000000,-500,2750.000000,-1000.000000,500)
AddZone("Т-24", 2750.000000,-1250.000000,-500,3000.000000,-1000.000000,500)
AddZone("У-1", -3000.000000,-1500.000000,-500,-2750.000000,-1250.000000,500)
AddZone("У-2", -2750.000000,-1500.000000,-500,-2500.000000,-1250.000000,500)
AddZone("У-3", -2500.000000,-1500.000000,-500,-2250.000000,-1250.000000,500)
AddZone("У-4", -2250.000000,-1500.000000,-500,-2000.000000,-1250.000000,500)
AddZone("У-5", -2000.000000,-1500.000000,-500,-1750.000000,-1250.000000,500)
AddZone("У-6", -1750.000000,-1500.000000,-500,-1500.000000,-1250.000000,500)
AddZone("У-7", -1500.000000,-1500.000000,-500,-1250.000000,-1250.000000,500)
AddZone("У-8", -1250.000000,-1500.000000,-500,-1000.000000,-1250.000000,500)
AddZone("У-9", -1000.000000,-1500.000000,-500,-750.000000,-1250.000000,500)
AddZone("У-10", -750.000000,-1500.000000,-500,-500.000000,-1250.000000,500)
AddZone("У-11", -500.000000,-1500.000000,-500,-250.000000,-1250.000000,500)
AddZone("У-12", -250.000000,-1500.000000,-500,0.000000,-1250.000000,500)
AddZone("У-13", 0.000000,-1500.000000,-500,250.000000,-1250.000000,500)
AddZone("У-14", 250.000000,-1500.000000,-500,500.000000,-1250.000000,500)
AddZone("У-15", 500.000000,-1500.000000,-500,750.000000,-1250.000000,500)
AddZone("У-16", 750.000000,-1500.000000,-500,1000.000000,-1250.000000,500)
AddZone("У-17", 1000.000000,-1500.000000,-500,1250.000000,-1250.000000,500)
AddZone("У-18", 1250.000000,-1500.000000,-500,1500.000000,-1250.000000,500)
AddZone("У-19", 1500.000000,-1500.000000,-500,1750.000000,-1250.000000,500)
AddZone("У-20", 1750.000000,-1500.000000,-500,2000.000000,-1250.000000,500)
AddZone("У-21", 2000.000000,-1500.000000,-500,2250.000000,-1250.000000,500)
AddZone("У-22", 2250.000000,-1500.000000,-500,2500.000000,-1250.000000,500)
AddZone("У-23", 2500.000000,-1500.000000,-500,2750.000000,-1250.000000,500)
AddZone("У-24", 2750.000000,-1500.000000,-500,3000.000000,-1250.000000,500)
AddZone("Ф-1", -3000.000000,-1750.000000,-500,-2750.000000,-1500.000000,500)
AddZone("Ф-2", -2750.000000,-1750.000000,-500,-2500.000000,-1500.000000,500)
AddZone("Ф-3", -2500.000000,-1750.000000,-500,-2250.000000,-1500.000000,500)
AddZone("Ф-4", -2250.000000,-1750.000000,-500,-2000.000000,-1500.000000,500)
AddZone("Ф-5", -2000.000000,-1750.000000,-500,-1750.000000,-1500.000000,500)
AddZone("Ф-6", -1750.000000,-1750.000000,-500,-1500.000000,-1500.000000,500)
AddZone("Ф-7", -1500.000000,-1750.000000,-500,-1250.000000,-1500.000000,500)
AddZone("Ф-8", -1250.000000,-1750.000000,-500,-1000.000000,-1500.000000,500)
AddZone("Ф-9", -1000.000000,-1750.000000,-500,-750.000000,-1500.000000,500)
AddZone("Ф-10", -750.000000,-1750.000000,-500,-500.000000,-1500.000000,500)
AddZone("Ф-11", -500.000000,-1750.000000,-500,-250.000000,-1500.000000,500)
AddZone("Ф-12", -250.000000,-1750.000000,-500,0.000000,-1500.000000,500)
AddZone("Ф-13", 0.000000,-1750.000000,-500,250.000000,-1500.000000,500)
AddZone("Ф-14", 250.000000,-1750.000000,-500,500.000000,-1500.000000,500)
AddZone("Ф-15", 500.000000,-1750.000000,-500,750.000000,-1500.000000,500)
AddZone("Ф-16", 750.000000,-1750.000000,-500,1000.000000,-1500.000000,500)
AddZone("Ф-17", 1000.000000,-1750.000000,-500,1250.000000,-1500.000000,500)
AddZone("Ф-18", 1250.000000,-1750.000000,-500,1500.000000,-1500.000000,500)
AddZone("Ф-19", 1500.000000,-1750.000000,-500,1750.000000,-1500.000000,500)
AddZone("Ф-20", 1750.000000,-1750.000000,-500,2000.000000,-1500.000000,500)
AddZone("Ф-21", 2000.000000,-1750.000000,-500,2250.000000,-1500.000000,500)
AddZone("Ф-22", 2250.000000,-1750.000000,-500,2500.000000,-1500.000000,500)
AddZone("Ф-23", 2500.000000,-1750.000000,-500,2750.000000,-1500.000000,500)
AddZone("Ф-24", 2750.000000,-1750.000000,-500,3000.000000,-1500.000000,500)
AddZone("Х-1", -3000.000000,-2000.000000,-500,-2750.000000,-1750.000000,500)
AddZone("Х-2", -2750.000000,-2000.000000,-500,-2500.000000,-1750.000000,500)
AddZone("Х-3", -2500.000000,-2000.000000,-500,-2250.000000,-1750.000000,500)
AddZone("Х-4", -2250.000000,-2000.000000,-500,-2000.000000,-1750.000000,500)
AddZone("Х-5", -2000.000000,-2000.000000,-500,-1750.000000,-1750.000000,500)
AddZone("Х-6", -1750.000000,-2000.000000,-500,-1500.000000,-1750.000000,500)
AddZone("Х-7", -1500.000000,-2000.000000,-500,-1250.000000,-1750.000000,500)
AddZone("Х-8", -1250.000000,-2000.000000,-500,-1000.000000,-1750.000000,500)
AddZone("Х-9", -1000.000000,-2000.000000,-500,-750.000000,-1750.000000,500)
AddZone("Х-10", -750.000000,-2000.000000,-500,-500.000000,-1750.000000,500)
AddZone("Х-11", -500.000000,-2000.000000,-500,-250.000000,-1750.000000,500)
AddZone("Х-12", -250.000000,-2000.000000,-500,0.000000,-1750.000000,500)
AddZone("Х-13", 0.000000,-2000.000000,-500,250.000000,-1750.000000,500)
AddZone("Х-14", 250.000000,-2000.000000,-500,500.000000,-1750.000000,500)
AddZone("Х-15", 500.000000,-2000.000000,-500,750.000000,-1750.000000,500)
AddZone("Х-16", 750.000000,-2000.000000,-500,1000.000000,-1750.000000,500)
AddZone("Х-17", 1000.000000,-2000.000000,-500,1250.000000,-1750.000000,500)
AddZone("Х-18", 1250.000000,-2000.000000,-500,1500.000000,-1750.000000,500)
AddZone("Х-19", 1500.000000,-2000.000000,-500,1750.000000,-1750.000000,500)
AddZone("Х-20", 1750.000000,-2000.000000,-500,2000.000000,-1750.000000,500)
AddZone("Х-21", 2000.000000,-2000.000000,-500,2250.000000,-1750.000000,500)
AddZone("Х-22", 2250.000000,-2000.000000,-500,2500.000000,-1750.000000,500)
AddZone("Х-23", 2500.000000,-2000.000000,-500,2750.000000,-1750.000000,500)
AddZone("Х-24", 2750.000000,-2000.000000,-500,3000.000000,-1750.000000,500)
AddZone("Ц-1", -3000.000000,-2250.000000,-500,-2750.000000,-2000.000000,500)
AddZone("Ц-2", -2750.000000,-2250.000000,-500,-2500.000000,-2000.000000,500)
AddZone("Ц-3", -2500.000000,-2250.000000,-500,-2250.000000,-2000.000000,500)
AddZone("Ц-4", -2250.000000,-2250.000000,-500,-2000.000000,-2000.000000,500)
AddZone("Ц-5", -2000.000000,-2250.000000,-500,-1750.000000,-2000.000000,500)
AddZone("Ц-6", -1750.000000,-2250.000000,-500,-1500.000000,-2000.000000,500)
AddZone("Ц-7", -1500.000000,-2250.000000,-500,-1250.000000,-2000.000000,500)
AddZone("Ц-8", -1250.000000,-2250.000000,-500,-1000.000000,-2000.000000,500)
AddZone("Ц-9", -1000.000000,-2250.000000,-500,-750.000000,-2000.000000,500)
AddZone("Ц-10", -750.000000,-2250.000000,-500,-500.000000,-2000.000000,500)
AddZone("Ц-11", -500.000000,-2250.000000,-500,-250.000000,-2000.000000,500)
AddZone("Ц-12", -250.000000,-2250.000000,-500,0.000000,-2000.000000,500)
AddZone("Ц-13", 0.000000,-2250.000000,-500,250.000000,-2000.000000,500)
AddZone("Ц-14", 250.000000,-2250.000000,-500,500.000000,-2000.000000,500)
AddZone("Ц-15", 500.000000,-2250.000000,-500,750.000000,-2000.000000,500)
AddZone("Ц-16", 750.000000,-2250.000000,-500,1000.000000,-2000.000000,500)
AddZone("Ц-17", 1000.000000,-2250.000000,-500,1250.000000,-2000.000000,500)
AddZone("Ц-18", 1250.000000,-2250.000000,-500,1500.000000,-2000.000000,500)
AddZone("Ц-19", 1500.000000,-2250.000000,-500,1750.000000,-2000.000000,500)
AddZone("Ц-20", 1750.000000,-2250.000000,-500,2000.000000,-2000.000000,500)
AddZone("Ц-21", 2000.000000,-2250.000000,-500,2250.000000,-2000.000000,500)
AddZone("Ц-22", 2250.000000,-2250.000000,-500,2500.000000,-2000.000000,500)
AddZone("Ц-23", 2500.000000,-2250.000000,-500,2750.000000,-2000.000000,500)
AddZone("Ц-24", 2750.000000,-2250.000000,-500,3000.000000,-2000.000000,500)
AddZone("Ч-1", -3000.000000,-2500.000000,-500,-2750.000000,-2250.000000,500)
AddZone("Ч-2", -2750.000000,-2500.000000,-500,-2500.000000,-2250.000000,500)
AddZone("Ч-3", -2500.000000,-2500.000000,-500,-2250.000000,-2250.000000,500)
AddZone("Ч-4", -2250.000000,-2500.000000,-500,-2000.000000,-2250.000000,500)
AddZone("Ч-5", -2000.000000,-2500.000000,-500,-1750.000000,-2250.000000,500)
AddZone("Ч-6", -1750.000000,-2500.000000,-500,-1500.000000,-2250.000000,500)
AddZone("Ч-7", -1500.000000,-2500.000000,-500,-1250.000000,-2250.000000,500)
AddZone("Ч-8", -1250.000000,-2500.000000,-500,-1000.000000,-2250.000000,500)
AddZone("Ч-9", -1000.000000,-2500.000000,-500,-750.000000,-2250.000000,500)
AddZone("Ч-10", -750.000000,-2500.000000,-500,-500.000000,-2250.000000,500)
AddZone("Ч-11", -500.000000,-2500.000000,-500,-250.000000,-2250.000000,500)
AddZone("Ч-12", -250.000000,-2500.000000,-500,0.000000,-2250.000000,500)
AddZone("Ч-13", 0.000000,-2500.000000,-500,250.000000,-2250.000000,500)
AddZone("Ч-14", 250.000000,-2500.000000,-500,500.000000,-2250.000000,500)
AddZone("Ч-15", 500.000000,-2500.000000,-500,750.000000,-2250.000000,500)
AddZone("Ч-16", 750.000000,-2500.000000,-500,1000.000000,-2250.000000,500)
AddZone("Ч-17", 1000.000000,-2500.000000,-500,1250.000000,-2250.000000,500)
AddZone("Ч-18", 1250.000000,-2500.000000,-500,1500.000000,-2250.000000,500)
AddZone("Ч-19", 1500.000000,-2500.000000,-500,1750.000000,-2250.000000,500)
AddZone("Ч-20", 1750.000000,-2500.000000,-500,2000.000000,-2250.000000,500)
AddZone("Ч-21", 2000.000000,-2500.000000,-500,2250.000000,-2250.000000,500)
AddZone("Ч-22", 2250.000000,-2500.000000,-500,2500.000000,-2250.000000,500)
AddZone("Ч-23", 2500.000000,-2500.000000,-500,2750.000000,-2250.000000,500)
AddZone("Ч-24", 2750.000000,-2500.000000,-500,3000.000000,-2250.000000,500)
AddZone("Ш-1", -3000.000000,-2750.000000,-500,-2750.000000,-2500.000000,500)
AddZone("Ш-2", -2750.000000,-2750.000000,-500,-2500.000000,-2500.000000,500)
AddZone("Ш-3", -2500.000000,-2750.000000,-500,-2250.000000,-2500.000000,500)
AddZone("Ш-4", -2250.000000,-2750.000000,-500,-2000.000000,-2500.000000,500)
AddZone("Ш-5", -2000.000000,-2750.000000,-500,-1750.000000,-2500.000000,500)
AddZone("Ш-6", -1750.000000,-2750.000000,-500,-1500.000000,-2500.000000,500)
AddZone("Ш-7", -1500.000000,-2750.000000,-500,-1250.000000,-2500.000000,500)
AddZone("Ш-8", -1250.000000,-2750.000000,-500,-1000.000000,-2500.000000,500)
AddZone("Ш-9", -1000.000000,-2750.000000,-500,-750.000000,-2500.000000,500)
AddZone("Ш-10", -750.000000,-2750.000000,-500,-500.000000,-2500.000000,500)
AddZone("Ш-11", -500.000000,-2750.000000,-500,-250.000000,-2500.000000,500)
AddZone("Ш-12", -250.000000,-2750.000000,-500,0.000000,-2500.000000,500)
AddZone("Ш-13", 0.000000,-2750.000000,-500,250.000000,-2500.000000,500)
AddZone("Ш-14", 250.000000,-2750.000000,-500,500.000000,-2500.000000,500)
AddZone("Ш-15", 500.000000,-2750.000000,-500,750.000000,-2500.000000,500)
AddZone("Ш-16", 750.000000,-2750.000000,-500,1000.000000,-2500.000000,500)
AddZone("Ш-17", 1000.000000,-2750.000000,-500,1250.000000,-2500.000000,500)
AddZone("Ш-18", 1250.000000,-2750.000000,-500,1500.000000,-2500.000000,500)
AddZone("Ш-19", 1500.000000,-2750.000000,-500,1750.000000,-2500.000000,500)
AddZone("Ш-20", 1750.000000,-2750.000000,-500,2000.000000,-2500.000000,500)
AddZone("Ш-21", 2000.000000,-2750.000000,-500,2250.000000,-2500.000000,500)
AddZone("Ш-22", 2250.000000,-2750.000000,-500,2500.000000,-2500.000000,500)
AddZone("Ш-23", 2500.000000,-2750.000000,-500,2750.000000,-2500.000000,500)
AddZone("Ш-24", 2750.000000,-2750.000000,-500,3000.000000,-2500.000000,500)
AddZone("Я-1", -3000.000000,-3000.000000,-500,-2750.000000,-2750.000000,500)
AddZone("Я-2", -2750.000000,-3000.000000,-500,-2500.000000,-2750.000000,500)
AddZone("Я-3", -2500.000000,-3000.000000,-500,-2250.000000,-2750.000000,500)
AddZone("Я-4", -2250.000000,-3000.000000,-500,-2000.000000,-2750.000000,500)
AddZone("Я-5", -2000.000000,-3000.000000,-500,-1750.000000,-2750.000000,500)
AddZone("Я-6", -1750.000000,-3000.000000,-500,-1500.000000,-2750.000000,500)
AddZone("Я-7", -1500.000000,-3000.000000,-500,-1250.000000,-2750.000000,500)
AddZone("Я-8", -1250.000000,-3000.000000,-500,-1000.000000,-2750.000000,500)
AddZone("Я-9", -1000.000000,-3000.000000,-500,-750.000000,-2750.000000,500)
AddZone("Я-10", -750.000000,-3000.000000,-500,-500.000000,-2750.000000,500)
AddZone("Я-11", -500.000000,-3000.000000,-500,-250.000000,-2750.000000,500)
AddZone("Я-12", -250.000000,-3000.000000,-500,0.000000,-2750.000000,500)
AddZone("Я-13", 0.000000,-3000.000000,-500,250.000000,-2750.000000,500)
AddZone("Я-14", 250.000000,-3000.000000,-500,500.000000,-2750.000000,500)
AddZone("Я-15", 500.000000,-3000.000000,-500,750.000000,-2750.000000,500)
AddZone("Я-16", 750.000000,-3000.000000,-500,1000.000000,-2750.000000,500)
AddZone("Я-17", 1000.000000,-3000.000000,-500,1250.000000,-2750.000000,500)
AddZone("Я-18", 1250.000000,-3000.000000,-500,1500.000000,-2750.000000,500)
AddZone("Я-19", 1500.000000,-3000.000000,-500,1750.000000,-2750.000000,500)
AddZone("Я-20", 1750.000000,-3000.000000,-500,2000.000000,-2750.000000,500)
AddZone("Я-21", 2000.000000,-3000.000000,-500,2250.000000,-2750.000000,500)
AddZone("Я-22", 2250.000000,-3000.000000,-500,2500.000000,-2750.000000,500)
AddZone("Я-23", 2500.000000,-3000.000000,-500,2750.000000,-2750.000000,500)
AddZone("Я-24", 2750.000000,-3000.000000,-500,3000.000000,-2750.000000,500)

}

calculateZone(posX, posY, posZ) {
    
    if ( bInitZaC == 0 )
    {
        initZonesAndCities()
        bInitZaC := 1
    }
        
    Loop % nZone-1
    {
        if (posX >= zone%A_Index%_x1) && (posY >= zone%A_Index%_y1) && (posZ >= zone%A_Index%_z1) && (posX <= zone%A_Index%_x2) && (posY <= zone%A_Index%_y2) && (posZ <= zone%A_Index%_z2)
        {
            ErrorLevel := ERROR_OK
            return zone%A_Index%_name
        }
    }
    
    ErrorLevel := ERROR_ZONE_NOT_FOUND
    return "Unknown"
}

calculateCity(posX, posY, posZ) {
    
    if ( bInitZaC == 0 )
    {
        initZonesAndCities()
        bInitZaC := 1
    }
    smallestCity := "Unknown"
    currentCitySize := 0
    smallestCitySize := 0
    
    Loop % nCity-1
    {
        if (posX >= city%A_Index%_x1) && (posY >= city%A_Index%_y1) && (posZ >= city%A_Index%_z1) && (posX <= city%A_Index%_x2) && (posY <= city%A_Index%_y2) && (posZ <= city%A_Index%_z2)
        {
            currentCitySize := ((city%A_Index%_x2 - city%A_Index%_x1) * (city%A_Index%_y2 - city%A_Index%_y1) * (city%A_Index%_z2 - city%A_Index%_z1))
            if (smallestCity == "Unknown") || (currentCitySize < smallestCitySize)
            {
                smallestCity := city%A_Index%_name
                smallestCitySize := currentCitySize
            }
        }
    }
    
    if(smallestCity == "Unknown") {
        ErrorLevel := ERROR_CITY_NOT_FOUND
    } else {
        ErrorLevel := ERROR_OK
    }
    return smallestCity
}

/*
;do not work?
getCurrentZonecode() {
    if(!checkHandles())
        return ""
    
    return readString(hGTA, ADDR_ZONECODE, 5)
}
*/

AddZone(sName, x1, y1, z1, x2, y2, z2) {
    global
    zone%nZone%_name := sName
    zone%nZone%_x1 := x1
    zone%nZone%_y1 := y1
    zone%nZone%_z1 := z1
    zone%nZone%_x2 := x2
    zone%nZone%_y2 := y2
    zone%nZone%_z2 := z2
    nZone := nZone + 1
}

AddCity(sName, x1, y1, z1, x2, y2, z2) {
    global
    city%nCity%_name := sName
    city%nCity%_x1 := x1
    city%nCity%_y1 := y1
    city%nCity%_z1 := z1
    city%nCity%_x2 := x2
    city%nCity%_y2 := y2
    city%nCity%_z2 := z2
    nCity := nCity + 1
}

IsPlayerInRangeOfPoint(_posX, _posY, _posZ, _posRadius)
{
	GetPlayerPos(posX, posY, posZ)
	X := posX -_posX
	Y := posY -_posY
	Z := posZ -_posZ
	if(((X < _posRadius) && (X > -_posRadius)) && ((Y < _posRadius) && (Y > -_posRadius)) && ((Z < _posRadius) && (Z > -_posRadius)))
		return TRUE
	return FALSE
}
 
IsPlayerInRangeOfPoint2D(_posX, _posY, _posRadius)
{
 
	GetPlayerPos(posX, posY, posZ)
	X := posX - _posX
	Y := posY - _posY
	if(((X < _posRadius) && (X > -_posRadius)) && ((Y < _posRadius) && (Y > -_posRadius)))
		return TRUE
	return FALSE
}

getPlayerZone()
{
	aktPos := getCoordinates()
	return calculateZone(aktPos[1], aktPos[2], aktPos[3])
}

getPlayerCity()
{
	aktPos := getCoordinates()
	return calculateCity(aktPos[1], aktPos[2], aktPos[3])
}
AntiCrash(){
    If(!checkHandles())
        return false

    cReport := ADDR_SAMP_CRASHREPORT
    writeMemory(hGTA, dwSAMP + cReport, 0x90909090, 4)
    cReport += 0x4
    writeMemory(hGTA, dwSAMP + cReport, 0x90, 1)
    cReport += 0x9
    writeMemory(hGTA, dwSAMP + cReport, 0x90909090, 4)
    cReport += 0x4
    writeMemory(hGTA, dwSAMP + cReport, 0x90, 1)
}

writeMemory(hProcess,address,writevalue,length=4, datatype="int") {
  if(!hProcess) {
    ErrorLevel := ERROR_INVALID_HANDLE
    return false
  }

  VarSetCapacity(finalvalue,length, 0)
  NumPut(writevalue,finalvalue,0,datatype)
  dwRet :=  DllCall(  "WriteProcessMemory"
              ,"Uint",hProcess
              ,"Uint",address
              ,"Uint",&finalvalue
              ,"Uint",length
              ,"Uint",0)
  if(dwRet == 0) {
    ErrorLevel := ERROR_WRITE_MEMORY
    return false
  }

  ErrorLevel := ERROR_OK
  return true
}
; ##### Sonstiges #####
checkHandles() {
    if(iRefreshHandles+500>A_TickCount)
        return true
    iRefreshHandles:=A_TickCount
    if(!refreshGTA() || !refreshSAMP() || !refreshMemory()) {
        return false
    } else {
        return true
    }
    
    return true
}

; internal stuff
refreshGTA() {
    newPID := getPID("GTA:SA:MP")
    if(!newPID) {                            ; GTA not found
        if(hGTA) {                            ; open handle
            virtualFreeEx(hGTA, pMemory, 0, 0x8000)
            closeProcess(hGTA)
            hGTA := 0x0
        }
        dwGTAPID := 0
        hGTA := 0x0
        dwSAMP := 0x0
        pMemory := 0x0
        return false
    }
    
    if(!hGTA || (dwGTAPID != newPID)) {        ; changed PID, closed handle
        hGTA := openProcess(newPID)
        if(ErrorLevel) {                    ; openProcess fail
            dwGTAPID := 0
            hGTA := 0x0
            dwSAMP := 0x0
            pMemory := 0x0
            return false
        }
        dwGTAPID := newPID
        dwSAMP := 0x0
        pMemory := 0x0
        return true
    }
    return true
}

; internal stuff
refreshSAMP() {
    if(dwSAMP)
        return true
    
    dwSAMP := getModuleBaseAddress("samp.dll", hGTA)
    if(!dwSAMP)
        return false
    
    return true
}

; internal stuff
refreshMemory() {
    if(!pMemory) {
        pMemory     := virtualAllocEx(hGTA, 6144, 0x1000 | 0x2000, 0x40)
        if(ErrorLevel) {
            pMemory := 0x0
            return false
        }
        pParam1     := pMemory
        pParam2     := pMemory + 1024
        pParam3     := pMemory + 2048
        pParam4     := pMemory + 3072
        pParam5     := pMemory + 4096
        pInjectFunc := pMemory + 5120
    }
    return true
}

; internal stuff
getPID(szWindow) {
    local dwPID := 0
    WinGet, dwPID, PID, %szWindow%
    return dwPID
}

; internal stuff
openProcess(dwPID, dwRights = 0x1F0FFF) {
    hProcess := DllCall("OpenProcess"
                        , "UInt", dwRights
                        , "int",  0
                        , "UInt", dwPID
                        , "Uint")
    if(hProcess == 0) {
        ErrorLevel := ERROR_OPEN_PROCESS
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return hProcess
}

; internal stuff
closeProcess(hProcess) {
    if(hProcess == 0) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    
    dwRet := DllCall(    "CloseHandle"
                        , "Uint", hProcess
                        , "UInt")
    ErrorLevel := ERROR_OK
}

; internal stuff
getModuleBaseAddress(sModule, hProcess) {
    if(!sModule) {
        ErrorLevel := ERROR_MODULE_NOT_FOUND
        return 0
    }
    
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    
    dwSize = 1024*4                    ; 1024 * sizeof(HMODULE = 4)
    VarSetCapacity(hMods, dwSize)    
    VarSetCapacity(cbNeeded, 4)        ; DWORD = 4
    dwRet := DllCall(    "Psapi.dll\EnumProcessModules"
                        , "UInt", hProcess
                        , "UInt", &hMods
                        , "UInt", dwSize
                        , "UInt*", cbNeeded
                        , "UInt")
    if(dwRet == 0) {
        ErrorLevel := ERROR_ENUM_PROCESS_MODULES
        return 0
    }
    
    dwMods := cbNeeded / 4            ; cbNeeded / sizeof(HMDOULE = 4)
    i := 0
    VarSetCapacity(hModule, 4)        ; HMODULE = 4
    VarSetCapacity(sCurModule, 260)    ; MAX_PATH = 260
    while(i < dwMods) {
        hModule := NumGet(hMods, i*4)
        DllCall("Psapi.dll\GetModuleFileNameEx"
                , "UInt", hProcess
                , "UInt", hModule
                , "Str", sCurModule
                , "UInt", 260)
        SplitPath, sCurModule, sFilename
        if(sModule == sFilename) {
            ErrorLevel := ERROR_OK
            return hModule
        }
        i := i + 1
    }
    
    ErrorLevel := ERROR_MODULE_NOT_FOUND
    return 0
}

; internal stuff
readString(hProcess, dwAddress, dwLen) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    
    VarSetCapacity(sRead, dwLen)
    dwRet := DllCall(    "ReadProcessMemory"
                        , "UInt", hProcess
                        , "UInt", dwAddress
                        , "Str", sRead
                        , "UInt", dwLen
                        , "UInt*", 0
                        , "UInt")
    if(dwRet == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    if A_IsUnicode
        return __ansiToUnicode(sRead)
    return sRead
}

; internal stuff
readFloat(hProcess, dwAddress) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    
    VarSetCapacity(dwRead, 4)    ; float = 4
    dwRet := DllCall(    "ReadProcessMemory"
                        , "UInt",  hProcess
                        , "UInt",  dwAddress
                        , "Str",   dwRead
                        , "UInt",  4
                        , "UInt*", 0
                        , "UInt")
    if(dwRet == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return NumGet(dwRead, 0, "Float")
}

; internal stuff
readDWORD(hProcess, dwAddress) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    
    VarSetCapacity(dwRead, 4)    ; DWORD = 4
    dwRet := DllCall(    "ReadProcessMemory"
                        , "UInt",  hProcess
                        , "UInt",  dwAddress
                        , "Str",   dwRead
                        , "UInt",  4
                        , "UInt*", 0)
    if(dwRet == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return NumGet(dwRead, 0, "UInt")
}

; internal stuff
readMem(hProcess, dwAddress, dwLen=4, type="UInt") {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    
    VarSetCapacity(dwRead, dwLen)
    dwRet := DllCall(    "ReadProcessMemory"
                        , "UInt",  hProcess
                        , "UInt",  dwAddress
                        , "Str",   dwRead
                        , "UInt",  dwLen
                        , "UInt*", 0)
    if(dwRet == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return NumGet(dwRead, 0, type)
}

; internal stuff
writeString(hProcess, dwAddress, wString) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return false
    }
    
    sString := wString
    if A_IsUnicode
        sString := __unicodeToAnsi(wString)
    
    dwRet := DllCall(    "WriteProcessMemory"
                        , "UInt", hProcess
                        , "UInt", dwAddress
                        , "Str", sString
                        , "UInt", StrLen(wString) + 1
                        , "UInt", 0
                        , "UInt")
    if(dwRet == 0) {
        ErrorLEvel := ERROR_WRITE_MEMORY
        return false
    }
    
    ErrorLevel := ERROR_OK
    return true
}

; internal stuff
writeRaw(hProcess, dwAddress, pBuffer, dwLen) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return false
    }
    
    dwRet := DllCall(    "WriteProcessMemory"
                        , "UInt", hProcess
                        , "UInt", dwAddress
                        , "UInt", pBuffer
                        , "UInt", dwLen
                        , "UInt", 0
                        , "UInt")
    if(dwRet == 0) {
        ErrorLEvel := ERROR_WRITE_MEMORY
        return false
    }
    
    ErrorLevel := ERROR_OK
    return true
}

; internal stuff
Memory_ReadByte(process_handle, address) {
	VarSetCapacity(value, 1, 0)
	DllCall("ReadProcessMemory", "UInt", process_handle, "UInt", address, "Str", value, "UInt", 1, "UInt *", 0)
	return, NumGet(value, 0, "Byte")
}

; internal stuff
callWithParams(hProcess, dwFunc, aParams, bCleanupStack = true) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return false
    }
    validParams := 0
    
    i := aParams.MaxIndex()
    
    ;         i * PUSH + CALL + RETN
    dwLen := i * 5    + 5    + 1
    if(bCleanupStack)
        dwLen += 3
    VarSetCapacity(injectData, i * 5    + 5       + 3       + 1, 0)
    
    i_ := 1
    while(i > 0) {
        if(aParams[i][1] != "") {
            dwMemAddress := 0x0
            if(aParams[i][1] == "p") {
                dwMemAddress := aParams[i][2]
            } else if(aParams[i][1] == "s") {
                if(i_>3)
                    return false
                dwMemAddress := pParam%i_%
                writeString(hProcess, dwMemAddress, aParams[i][2])
                if(ErrorLevel)
                    return false
                i_ += 1
            } else if(aParams[i][1] == "i") {
                dwMemAddress := aParams[i][2]
            } else {
                return false
            }
            NumPut(0x68, injectData, validParams * 5, "UChar")
            NumPut(dwMemAddress, injectData, validParams * 5 + 1, "UInt")
            validParams += 1
        }
        i -= 1
    }
    
    offset := dwFunc - ( pInjectFunc + validParams * 5 + 5 )
    NumPut(0xE8, injectData, validParams * 5, "UChar")
    NumPut(offset, injectData, validParams * 5 + 1, "Int")
    
    if(bCleanupStack) {
        NumPut(0xC483, injectData, validParams * 5 + 5, "UShort")
        NumPut(validParams*4, injectData, validParams * 5 + 7, "UChar")
        
        NumPut(0xC3, injectData, validParams * 5 + 8, "UChar")
    } else {
        NumPut(0xC3, injectData, validParams * 5 + 5, "UChar")
    }
    
    writeRaw(hGTA, pInjectFunc, &injectData, dwLen)
    if(ErrorLevel)
        return false
    
    hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
    if(ErrorLevel)
        return false
    
    waitForSingleObject(hThread, 0xFFFFFFFF)
    
    closeProcess(hThread)
    
    return true
}

; internal stuff
virtualAllocEx(hProcess, dwSize, flAllocationType, flProtect) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    
    dwRet := DllCall(    "VirtualAllocEx"
                        , "UInt", hProcess
                        , "UInt", 0
                        , "UInt", dwSize
                        , "UInt", flAllocationType
                        , "UInt", flProtect
                        , "UInt")
    if(dwRet == 0) {
        ErrorLEvel := ERROR_ALLOC_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return dwRet
}

; internal stuff
virtualFreeEx(hProcess, lpAddress, dwSize, dwFreeType) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    
    dwRet := DllCall(    "VirtualFreeEx"
                        , "UInt", hProcess
                        , "UInt", lpAddress
                        , "UInt", dwSize
                        , "UInt", dwFreeType
                        , "UInt")
    if(dwRet == 0) {
        ErrorLEvel := ERROR_FREE_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return dwRet
}

; internal stuff
createRemoteThread(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpThreadId) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    
    dwRet := DllCall(    "CreateRemoteThread"
                        , "UInt", hProcess
                        , "UInt", lpThreadAttributes
                        , "UInt", dwStackSize
                        , "UInt", lpStartAddress
                        , "UInt", lpParameter
                        , "UInt", dwCreationFlags
                        , "UInt", lpThreadId
                        , "UInt")
    if(dwRet == 0) {
        ErrorLEvel := ERROR_ALLOC_MEMORY
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return dwRet
}

; internal stuff
waitForSingleObject(hThread, dwMilliseconds) {
    if(!hThread) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    
    dwRet := DllCall(    "WaitForSingleObject"
                        , "UInt", hThread
                        , "UInt", dwMilliseconds
                        , "UInt")
    if(dwRet == 0xFFFFFFFF) {
        ErrorLEvel := ERROR_WAIT_FOR_OBJECT
        return 0
    }
    
    ErrorLevel := ERROR_OK
    return dwRet
}

; internal stuff
__ansiToUnicode(sString, nLen = 0) {
   If !nLen
   {
      nLen := DllCall("MultiByteToWideChar"
      , "Uint", 0
      , "Uint", 0
      , "Uint", &sString
      , "int",  -1
      , "Uint", 0
      , "int",  0)
   }

   VarSetCapacity(wString, nLen * 2)

   DllCall("MultiByteToWideChar"
      , "Uint", 0
      , "Uint", 0
      , "Uint", &sString
      , "int",  -1
      , "Uint", &wString
      , "int",  nLen)
      
    return wString
}

; internal stuff
__unicodeToAnsi(wString, nLen = 0) {
   pString := wString + 1 > 65536 ? wString : &wString

   If !nLen
   {
      nLen := DllCall("WideCharToMultiByte"
      , "Uint", 0
      , "Uint", 0
      , "Uint", pString
      , "int",  -1
      , "Uint", 0
      , "int",  0
      , "Uint", 0
      , "Uint", 0)
   }

   VarSetCapacity(sString, nLen)

   DllCall("WideCharToMultiByte"
      , "Uint", 0
      , "Uint", 0
      , "Uint", pString
      , "int",  -1
      , "str",  sString
      , "int",  nLen
      , "Uint", 0
      , "Uint", 0)
    return sString
}
Utf8ToAnsi(ByRef Utf8String, CodePage = 1251)
{
    If (NumGet(Utf8String) & 0xFFFFFF) = 0xBFBBEF
        BOM = 3
    Else
        BOM = 0
    UniSize := DllCall("MultiByteToWideChar", "UInt", 65001, "UInt", 0
    , "UInt", &Utf8String + BOM, "Int", -1
    , "Int", 0, "Int", 0)
    VarSetCapacity(UniBuf, UniSize * 2)
    DllCall("MultiByteToWideChar", "UInt", 65001, "UInt", 0
    , "UInt", &Utf8String + BOM, "Int", -1
    , "UInt", &UniBuf, "Int", UniSize)
    AnsiSize := DllCall("WideCharToMultiByte", "UInt", CodePage, "UInt", 0
    , "UInt", &UniBuf, "Int", -1
    , "Int", 0, "Int", 0
    , "Int", 0, "Int", 0)
    VarSetCapacity(AnsiString, AnsiSize)
    DllCall("WideCharToMultiByte", "UInt", CodePage, "UInt", 0
    , "UInt", &UniBuf, "Int", -1
    , "Str", AnsiString, "Int", AnsiSize
    , "Int", 0, "Int", 0)
    Return AnsiString
}

getIdPassengers() 
{
	pp:=2
	SendMessage, 0x50,, 0x4190419,, A
	pas:=""
	n:=0
	pas:=" "getID()
	while n<=8 {
		ped:=getVehiclePassenger(n)
		id:=getIdByPed(ped)
		if (id <> -1) {
			;name:=getPlayerNameById(id)
			;Sname := RegExReplace(name, ".*_", "")
			if (pp=1){
				;pas.=" " . Sname . ""
				pas.=" " . id . ""
			} else if (pp>1) {
				;pas.=", " . Sname . ""
				pas.=", " . id . ""
			}
			pp++
		}
	n++
	}
	if (pas = ""){
		pas:=" Отсутствуют"
	}
	return pas
}

Change_to_normal(no_normal)
{
	if (no_normal = "q"){
	ch_letter:= "й"
	}if (no_normal = "a"){
	ch_letter:= "ф"
	}if (no_normal = "z"){
	ch_letter:= "я"
	}if (no_normal = "x"){
	ch_letter:= "ч"
	}if (no_normal = "s"){
	ch_letter:= "ы"
	}if (no_normal = "w"){
	ch_letter:= "ц"
	}if (no_normal = "e"){
	ch_letter:= "у"
	}if (no_normal = "d"){
	ch_letter:= "в"
	}if (no_normal = "c"){
	ch_letter:= "с"
	}if (no_normal = "v"){
	ch_letter:= "м"
	}if (no_normal = "f"){
	ch_letter:= "а"
	}if (no_normal = "r"){
	ch_letter:= "к"
	}if (no_normal = "t"){
	ch_letter:= "е"
	}if (no_normal = "g"){
	ch_letter:= "п"
	}if (no_normal = "b"){
	ch_letter:= "и"
	}if (no_normal = "n"){
	ch_letter:= "т"
	}if (no_normal = "h"){
	ch_letter:= "р"
	}if (no_normal = "y"){
	ch_letter:= "н"
	}if (no_normal = "u"){
	ch_letter:= "г"
	}if (no_normal = "j"){
	ch_letter:= "о"
	}if (no_normal = "m"){
	ch_letter:= "ь"
	}if (no_normal = ","){
	ch_letter:= "б"
	}if (no_normal = "k"){
	ch_letter:= "л"
	}if (no_normal = "i"){
	ch_letter:= "ш"
	}if (no_normal = "o"){
	ch_letter:= "щ"
	}if (no_normal = "l"){
	ch_letter:= "д"
	}if (no_normal = "."){
	ch_letter:= "ю"
	}if (no_normal = "/"){
	ch_letter:= "."
	}if (no_normal = ";"){
	ch_letter:= "ж"
	}if (no_normal = "p"){
	ch_letter:= "з"
	}if (no_normal = "["){
	ch_letter:= "х"
	}if (no_normal = "'"){
	ch_letter:= "э"
	}if (no_normal = "]"){
	ch_letter:= "ъ"
	}if (no_normal = " "){
	ch_letter:= " " 
	}else {
	ch_letter:= ""
	}
}

