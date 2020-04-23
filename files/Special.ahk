class Special
{	
	getBindKeys(n)
	{
		IniRead, T, settings\settings.ini, KEYS, Key%n%
		if (T<>"")and(T<>"ERROR"){
			return T
		}
	}
	
	getMyName()
	{
		IniRead, T, settings\settings.ini, NAMES, Name
		if (T<>"")and(T<>"ERROR"){
			return T
		}
	}
	
	getMyRank()
	{
		IniRead, T, settings\settings.ini, NAMES, Rank
		if (T<>"")and(T<>"ERROR"){
			return T
		}
	}
	
	getMyTag()
	{
		IniRead, T, settings\settings.ini, NAMES, Tag
		if (T<>"")and(T<>"ERROR"){
			return T
		}
	}
	
	getLeftTag()
	{
		IniRead, T, settings\settings.ini, NAMES, Left
		if (T="")or(T="ERROR"){
			T :="||"
		}
		return T
	}
	
	getRightTag()
	{
		IniRead, T, settings\settings.ini, NAMES, Right
		if (T="")or(T="ERROR"){
			T :="||"
		}
		return T
	}
	
	;RegExMatch(this.getRightTag(), "[*")
	getMyRealTag(TagName)
	{
		tag := this.getLeftTag()
		if (this.getLeftTag() <> "[") and (this.getLeftTag() <> "{") {
			tag .=" "
		}
		tag .= TagName
		if (!RegExMatch(this.getRightTag(), "](.*)")) and (!RegExMatch(this.getRightTag(), "}(.*)")) {
			tag .=" "
		}
		tag .= this.getRightTag()
		return tag
	}
	
	saveAll(var,n)
	{
		IniWrite, %var%, settings\settings.ini, KEYS,key%n%
		
	}
	
	saveHead(Name, Rank, Tag, Left, Right)
	{
		IniWrite, %Name%, settings\settings.ini, NAMES, name
		IniWrite, %Rank%, settings\settings.ini, NAMES, rank
		IniWrite, %Tag%, settings\settings.ini, NAMES, tag
		IniWrite, %Left%, settings\settings.ini, NAMES, Left
		IniWrite, %Right%, settings\settings.ini, NAMES, Right
	}
	
	getActiveKeys()
	{
		n:=1
		while(n<=24){
			S := this.getBindKeys(n)
			Hotkey, %S%, active%n%, on, useerrorlevel

		n++
		}
	}
	
	PizzaSkill()
	{
		loop
		{
		GetChatLine(0,pz)
			if RegExMatch(pz,"(.*): PizzaTime") {
			; ЧТО ХОЧЕШЬ!
				sleep 1000
				sendchat("Я люблю пиццу!")
				pz:=""
				sleep 3000
			; ДО СЮДА!
				}
			sleep 300
		}
	}
}
	