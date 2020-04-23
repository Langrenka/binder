loop
{
GetChatLine(0,pz)
	if RegExMatch(pz,"(.*): PizzaTime") {
		sleep 1000
		sendchat("Я люблю пиццу!")
		pz:=""
		sleep 3000
		}
		sleep 300
}
return