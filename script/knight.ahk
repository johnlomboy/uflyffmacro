#SingleInstance force
#NoEnv
#MaxThreadsPerHotkey 2
;#IfWinActive, Flyff Universe - Google Chrome
SendMode, Input
SetTimer, attack_loop, 50
;SetTimer, partybuff, 302000
SetTimer, potions, 1000
toggle = 0
toggle2 = 0
toggle3 = 0

mp_counter = 0
bluestacks := "BlueStacks App Player ahk_exe HD-Player.exe"
zoldykBluestacks := "Zoldyck"
zoldykPID := "27192"
mercBluestacks := "Mercenary"
mercPID := "26480"

Gui, New
Gui, Add, Text,, zoldykPID
Gui, Add, Edit, vzoldykPID w100, % zoldykPID
Gui, Add, Text,, mercPID
Gui, Add, Edit, vmercPID w100, % mercPID
Gui, Add, Button, Default gOK, OK
Gui, Show, w200
return
OK:
Gui, Submit
return


attack_loop:
{
	ifEqual, toggle, 1
	{
		ControlSend,, 3, Flyff Universe - Google Chrome
	}
	Return
}

potions:
{
	ifEqual, toggle2, 1
	{
		ControlSend,, 1, Flyff Universe - Google Chrome
	}
	ifEqual, toggle3, 1
	{
		ControlSend,, 2, Flyff Universe - Google Chrome
	}
	Return
}

;partybuff:
;{
;	Loop, 10
;	{
;		ControlSend,, 0, Flyff Universe - Google Chrome
;		ControlSend,, 9, Flyff Universe - Google Chrome
;	}
;	ControlSend,, 8, Flyff Universe - Google Chrome
;	ControlSend,, 7, Flyff Universe - Google Chrome
;	Return
;}

*F1::
{
	if WinExist("Flyff Universe - Google Chrome")
		{
			ControlSend,, {LCtrl Down}{8}{LCtrl Up}, Flyff Universe - Google Chrome
		}
Return
}

*F8::
{
	if WinExist("Flyff Universe - Google Chrome")
		{
			ControlSend,, {LCtrl Down}{9}{LCtrl Up}, Flyff Universe - Google Chrome
			ControlSend,, {LCtrl Down}{0}{LCtrl Up}, Flyff Universe - Google Chrome
		}
Return
}

*F3::
{
if WinExist(zoldykBluestacks)
		{	
			ControlSend,, {LCtrl Down}{3}{LCtrl Up}, ahk_pid %zoldykPID%
		}
                if WinExist(mercBluestacks)
		{	
			ControlSend,, {LAlt Down}{1}{LAlt Up}, ahk_pid %mercPID%
		}
	if toggle = 0
	{
		
		if WinExist("Flyff Universe - Google Chrome")
		{
			toggle := !toggle
		}
		
	}
	else
	{	
		;if WinExist(zoldykBluestacks)
		;{	
		;	ControlSend,, {LCtrl Down}{2}{LCtrl Up}, %zoldykPID%
		;}
		if WinExist("Flyff Universe - Google Chrome")
		{
			toggle := !toggle
		}
	}
	Return
}

*F2::
{
	if WinExist(zoldykBluestacks)
		{	
			ControlSend,, {LCtrl Down}{2}{LCtrl Up}, ahk_pid %zoldykPID%
		}
        if WinExist(mercBluestacks)
		{	
			ControlSend,, {LAlt Down}{2}{LAlt Up}, ahk_pid %mercPID%
		}
Return
}


*F4::
{
	;if WinExist(zoldykBluestacks)
	;	{	
	;		ControlSend,, {LCtrl Down}{4}{LCtrl Up}, ahk_pid %zoldykPID%
	;	}
        if WinExist(mercBluestacks)
		{	
			ControlSend,, {LAlt Down}{3}{LAlt Up}, ahk_pid %mercPID%
		}
Return
}
*F5::
{
	if WinExist(zoldykBluestacks)
		{	
			ControlSend,, {LCtrl Down}z{LCtrl Up}, ahk_pid %zoldykPID%
		}
        if WinExist(mercBluestacks)
		{	
			ControlSend,, {LAlt Down}{5}{LAlt Up}, ahk_pid %mercPID%
		}
Return
}

*F6::
{
	if WinExist(zoldykBluestacks)
		{	
			ControlSend,, {LCtrl Down}f{LCtrl Up}, ahk_pid %zoldykPID%

		}
Return
}
;*F7::
;{
;	if WinExist(zoldykBluestacks)
;		{	
;			ControlSend,, {LCtrl Down}{0}{LCtrl Up}, ahk_pid %zoldykPID%
;		}
;Return
;}

3::
{
	if WinExist(zoldykBluestacks)
		{	
			ControlSend,, {LCtrl Down}{9}{LCtrl Up}, ahk_pid %zoldykPID%
		}
        if WinExist(mercBluestacks)
		{	
			ControlSend,, {LAlt Down}{4}{LAlt Up}, ahk_pid %mercPID%
		}
ControlSend,, 3, Flyff Universe - Google Chrome
Return
}

4::
{

	ifEqual, toggle, 1
	{
		toggle := !toggle

           	Loop, 5
           	{
            	ControlSend,, 4, Flyff Universe - Google Chrome
   		Sleep, 100
         	}
		
		toggle := !toggle
		
	}
	ControlSend,, 4, Flyff Universe - Google Chrome
	Return
}