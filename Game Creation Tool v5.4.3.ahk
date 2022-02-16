#SingleInstance Force
#Persistent
SetBatchLines, -1
 
;<========== | HOTKEYS | ==========>
Hotkey F9, Normall
Hotkey F10, Nightmarel
Hotkey F11, Helll
Hotkey +F9, Normalg
Hotkey +F10, Nightmareg
Hotkey +F11, Hellg
 
;<========== | GUI | ==========>
Gui,+AlwaysOnTop
Gui +LastFound +OwnDialogs +AlwaysOnTop
Gui, Font, s11
Gui, font, bold
Gui, Add, Button, x5 y5 w150 h50 gNormall , Normal - Lobby`n(F9)
Gui, Add, Button, x5 y60 w150 h50 gNightmarel , Nightmare - Lobby`n(F10)
Gui, Add, Button, x5 y115 w150 h50 gHelll , Hell - Lobby`n(F11)
Gui, Add, Button, x160 y5 w150 h50 gNormalg , Normal - Game`n(Shift+F9)
Gui, Add, Button, x160 y60 w150 h50 gNightmareg , Nightmare - Game`n(Shift+F10)
Gui, Add, Button, x160 y115 w150 h50 gHellg , Hell - Game`n(Shift+F11)
Gui, Font, s12
Gui, Add, Text, x8 y165 w135 h25, Games Created:
Gui, Add, Text, x8 y190 w110 h25, Game Name:
Gui, Font, cTeal
Gui, Add, Text, x118 y190 w200 h25 vGameNameTwo
Gui, Add, Text, x145 y165 w70 h25 vCounter
 
Gui, Font, cGreen
Gui, Add, Text, x245 y165 w100 h25 vNorm
Gui, Font, cOlive
Gui, Add, Text, x220 y165 w100 h25 vNM
Gui, Font, cRed
Gui, Add, Text, x270 y165 w100 h25 vHell
 
Gui, Show,w315 h215, v5.4.3
 
;<========== | WINDOW POSITION | ==========>
WinGetPos X, Y, Width, Height, A
MaxX := A_ScreenWidth - Width
MaxY := A_ScreenHeight - Height - 0
 
WinMove A, ,%MaxX%, %MaxY%
 
IniWrite,******************* OPEN PROGRAM *******************`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
 
;<========== | USER INPUT | ==========>
InputBox, gamename, Game Name,,,200, 100
InputBox, gamenumber, Game Number,,,200, 100
InputBox, gamepass, Game Password,,,200, 100
 
count = 0
 
SetFormat, Float, 03.0
gamenumber += 0.0
 
GuiControl,,Counter, %count%
GuiControl,,GameNameTwo, %gamename%%gamenumber%
 
;<========== |STORED VARIABLES | ==========>
diff = 0
 
;<========== | STORED COORDINATES | ==========>
normalx1 := 1295
normalx2 := 1405
nightmarex1 := 1418
nightmarex2 := 1520
hellx1 := 1540
hellx2 := 1645
y1 := 360
y2 := 395
 
;<========== | STORED CHAT VARIABLES | ==========>
lg1 = {ASC 0255}c1This will be the last game.
lg2 = {ASC 0255}c9This will be the last game.
lg3 = {ASC 0255}c1This will be the last game.
up = {ASC 0255}c8TP is up
hot = {ASC 0255}c1TP is HOT
safe = {ASC 0255}c2TP is SAFE
blank := ""
 
pause
 
;<========== | NORMAL [LOBBY] | ==========>
Normall:
If (diff = 664)
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,NM, %blank%
	GuiControl,,Hell, %blank%
	GuiControl,,Norm, Normal
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Normal 	 | Lobby   | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	diff = 664
	++gamenumber
}
 
else
	
loop 1
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,NM, %blank%
	GuiControl,,Hell, %blank%
	GuiControl,,Norm, Normal
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Normal 	 | Lobby   | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, %normalx1%, %normalx2%
	Random, y, %y1%, %y2%
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	++gamenumber
}
diff = 664
return
 
;<========== | NIGHTMARE [LOBBY] | ==========>
Nightmarel:
If (diff = 665)
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,Norm, %blank%
	GuiControl,,Hell, %blank%
	GuiControl,,NM, Nightmare
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Nightmare | Lobby   | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	diff = 665
	++gamenumber
}
 
else
	
loop 1
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,Norm, %blank%
	GuiControl,,Hell, %blank%
	GuiControl,,NM, Nightmare
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Nightmare | Lobby   | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, %nightmarex1%, %nightmarex2%
	Random, y, %y1%, %y2%
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	++gamenumber
}
diff = 665
return
 
;<========== | HELL [LOBBY] | ==========>
Helll:
If (diff = 666)
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,Norm, %blank%
	GuiControl,,NM, %blank%
	GuiControl,,Hell, Hell
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Hell 	 | Lobby   | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	diff = 666
	++gamenumber
}
 
else
	
loop 1
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,Norm, %blank%
	GuiControl,,NM, %blank%
	GuiControl,,Hell, Hell
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Hell 	 | Lobby   | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, %hellx1%, %hellx2%
	Random, y, %y1%, %y2%
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	++gamenumber
}
diff = 666
return
 
;<========== | NORMAL [IN-GAME] | ==========>
Normalg:
If (diff = 664)
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,NM, %blank%
	GuiControl,,Hell, %blank%
	GuiControl,,Norm, Normal
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Normal 	 | In-Game | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	Random, x, 20, 1490
	Random, y, 20, 825
	Send +{click, r , %x%, %y%}
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	send {esc}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 809, 1111 ;Save and Exit
	Random, y, 452, 497 ;Save and Exit
	Click, %x%, %y%
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	diff = 664
	++gamenumber
}
 
else
	
loop 1
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,NM, %blank%
	GuiControl,,Hell, %blank%
	GuiControl,,Norm, Normal
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Normal 	 | In-Game | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	Random, x, 20, 1490
	Random, y, 20, 825
	Send +{click, r , %x%, %y%}
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	send {esc}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 809, 1111 ;Save and Exit
	Random, y, 452, 497 ;Save and Exit
	Click, %x%, %y%
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, %normalx1%, %normalx2%
	Random, y, %y1%, %y2%
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	++gamenumber
}
diff = 664
return
 
;<========== | NIGHTMARE [IN-GAME] | ==========>
Nightmareg:
If (diff = 665)
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,Norm, %blank%
	GuiControl,,Hell, %blank%
	GuiControl,,NM, Nightmare
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Nightmare | In-Game | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	Random, x, 20, 1490
	Random, y, 20, 825
	Send +{click, r , %x%, %y%}
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	send {esc}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 809, 1111 ;Save and Exit
	Random, y, 452, 497 ;Save and Exit
	Click, %x%, %y%
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	diff = 665
	++gamenumber
}
 
else
	
loop 1
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,Norm, %blank%
	GuiControl,,Hell, %blank%
	GuiControl,,NM, Nightmare
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Nightmare | In-Game | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	Random, x, 20, 1490
	Random, y, 20, 825
	Send +{click, r , %x%, %y%}
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	send {esc}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 809, 1111 ;Save and Exit
	Random, y, 452, 497 ;Save and Exit
	Click, %x%, %y%
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, %nightmarex1%, %nightmarex2%
	Random, y, %y1%, %y2%
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	++gamenumber
}
diff = 665
return
 
;<========== | HELL [IN-GAME] | ==========>
Hellg:
If (diff = 666)
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,Norm, %blank%
	GuiControl,,NM, %blank%
	GuiControl,,Hell, Hell
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Hell 	 | In-Game | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	Random, x, 20, 1490
	Random, y, 20, 825
	Send +{click, r , %x%, %y%}
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	send {esc}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 809, 1111 ;Save and Exit
	Random, y, 452, 497 ;Save and Exit
	Click, %x%, %y%
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	diff = 666
	++gamenumber
}
 
else
	
loop 1
{
	++count
	
	SetFormat, Float, 03.0
	gamenumber += 0.0
	
	GuiControl,,Counter, %count%
	GuiControl,,GameNameTwo, %gamename%%gamenumber%
	GuiControl,,Norm, %blank%
	GuiControl,,NM, %blank%
	GuiControl,,Hell, Hell
	
	IniWrite,%A_Hour%:%A_Min%:%A_Sec% | Hell 	 | In-Game | %gamename%%gamenumber%`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	Random, x, 20, 1490
	Random, y, 20, 825
	Send +{click, r , %x%, %y%}
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	send {esc}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 809, 1111 ;Save and Exit
	Random, y, 452, 497 ;Save and Exit
	Click, %x%, %y%
	Random, SleepAmount, 600, 1000
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, 1190, 1360 ;Create Game Tab
	Random, y, 60, 95 ;Create Game Tab
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamename%%gamenumber%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send {tab}
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	CoordMode, Mouse, Screen
	Random, x, %hellx1%, %hellx2%
	Random, y, %y1%, %y2%
	Click, %x%, %y%
	Random, SleepAmount, 250, 600
	Sleep, %SleepAmount%
	send, {enter}
	++gamenumber
}
diff = 666
return
 
;<========== | EXIT PROGRAM | ==========>
GuiClose:
 
SetFormat, Float, 03.0
count += 0.0
 
IniWrite,%A_MM%/%A_DD%/%A_YYYY% [%A_Hour%:%A_Min%:%A_Sec%] | Games Created | %count%`n, %A_YYYY% - %A_MMM%.ini, Total Games Created
IniWrite,******************* EXIT PROGRAM *******************`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
MsgBox , 64, Thank You, Thank you for using my Game Creation Tool.`nMade by Gubna`nDiscord: Gubna#0001, 10
ExitApp
 
;<========== | RELOADS PROGRAM | ==========>
F12::
 
SetFormat, Float, 03.0
count += 0.0
 
IniWrite,%A_MM%/%A_DD%/%A_YYYY% [%A_Hour%:%A_Min%:%A_Sec%] | Games Created | %count%`n, %A_YYYY% - %A_MMM%.ini, Total Games Created
IniWrite,%A_Hour%:%A_Min%:%A_Sec% | <><><><><><><> RELOADED <><><><><><><><>`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
reload
 
;<========== | CHAT COMMANDS | ==========>
;Thanks people for joining current game
numpad5::
Sleep 50
Send, {enter}
Sleep 50
Send {ASC 0255}c3Thank you for joining %gamename%%gamenumber%
Sleep 50
Send {enter}
IniWrite,%A_Hour%:%A_Min%:%A_Sec% | --------- Thank You ---------`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
return
 
;Thanks people for joining current game and announces this will be last game
numpad6::
Sleep 50
Send, {enter}
Sleep 50
Send {ASC 0255}c3Thank you for joining %gamename%%gamenumber%
Sleep 50
Send {enter}
Sleep 50
Send {enter}
sleep 50
Sendinput %lg1%
Sleep 50
Send {enter}
Sleep 50
send {enter}
sleep 50
Sendinput %lg2%
sleep 50
send {enter}
Sleep 50
Send {enter}
sleep 50
Sendinput %lg3%
Sleep 50
Send {enter}
IniWrite,%A_Hour%:%A_Min%:%A_Sec% | --------- Last Game ---------`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
return
 
;TP is UP(orange text color)
numpad7::
Sleep 50
Send {enter}
Sleep 50
Sendinput %up%
Sleep 50
Send {enter}
IniWrite,%A_Hour%:%A_Min%:%A_Sec% | --------- TP Up     ---------`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
return
 
;TP is HOT(red text color)
numpad9::
Sleep 50
Send {enter}
Sleep 50
Sendinput %hot%
Sleep 50
Send {enter}
IniWrite,%A_Hour%:%A_Min%:%A_Sec% | --------- TP Hot    ---------`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
return
 
;TP is SAFE(green text color)
numpad8::
Sleep 50
Send {enter}
Sleep 50
Sendinput %safe%
Sleep 50
Send {enter}
IniWrite,%A_Hour%:%A_Min%:%A_Sec% | --------- TP Safe   ---------`n, %A_YYYY% - %A_MMM%.ini, Games Created | %A_MM%/%A_DD%/%A_YYYY%
return
