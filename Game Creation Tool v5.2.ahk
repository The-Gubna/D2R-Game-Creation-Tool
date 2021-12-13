;Version 5.2
#SingleInstance Force
 
Hotkey F9, Normall
Hotkey F10, Nightmarel
Hotkey F11, Helll
Hotkey +F9, Normalg
Hotkey +F10, Nightmareg
Hotkey +F11, Hellg
 
Gui,+AlwaysOnTop
Gui +LastFound +OwnDialogs +AlwaysOnTop
Gui, Font, s11
Gui, font, bold
Gui, Add, Button, x5 y5 w200 h50 gNormall , Normal from Lobby`n(F9)
Gui, Font, s11
Gui, font, bold
Gui, Add, Button, x5 y60 w200 h50 gNightmarel , Nightmare from Lobby`n(F10)
Gui, Font, s11
Gui, font, bold
Gui, Add, Button, x5 y115 w200 h50 gHelll , Hell from Lobby`n(F11)
Gui, Font, s11
Gui, font, bold
Gui, Add, Button, x210 y5 w200 h50 gNormalg , Normal from In-Game`n(Shift+F9)
Gui, Font, s11
Gui, font, bold
Gui, Add, Button, x210 y60 w200 h50 gNightmareg , Nightmare from In-Game`n(Shift+F10)
Gui, Font, s11
Gui, font, bold
Gui, Add, Button, x210 y115 w200 h50 gHellg , Hell from In-Game`n(Shift+F11)
Gui, Font, s12
Gui, Add, Text, x145 y165 w70 h25 vCounter
Gui, Add, Text, x8 y165 w135 h25, Games Created:
Gui, Add, Text, x118 y190 w200 h25 vGameNameTwo
Gui, Add, Text, x8 y190 w110 h25, Game Name:
Gui, Font, s11
Gui, font, bold
Gui, Add, Link, x242 y168, <a href="http://www.gubna.link/ahk1">Link to Project Post</a>
Gui, Show,w415 h215, Game Creation Tool v5.1
 
WinGetPos X, Y, Width, Height, A
MaxX := A_ScreenWidth - Width
MaxY := A_ScreenHeight - Height - 0
 
WinMove A, ,%MaxX%, %MaxY%
 
InputBox, gamename, Game Name,,,200, 100
InputBox, gamenumber, Game Number,,,200, 100
InputBox, gamepass, Game Password,,,200, 100
var1 = %gamenumber%
 
normalx1 := 1295
normalx2 := 1405
nightmarex1 := 1418
nightmarex2 := 1520
hellx1 := 1540
hellx2 := 1645
y1 := 360
y2 := 395
 
pause
 
Normall:
++var1
++count
GuiControl,,Counter, %count%
GuiControl,,GameNameTwo, %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1190, 1360 ;Create Game Tab
Random, y, 60, 95 ;Create Game Tab
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, %normalx1%, %normalx2%
Random, y, %y1%, %y2%
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Password box
Random, y, 232, 250 ;Password box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Game Name box
Random, y, 164, 182 ;Game Name box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
send, {enter}
return
 
Nightmarel:
++var1
++count
GuiControl,,Counter, %count%
GuiControl,,GameNameTwo, %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1190, 1360 ;Create Game Tab
Random, y, 60, 95 ;Create Game Tab
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, %nightmarex1%, %nightmarex2%
Random, y, %y1%, %y2%
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Password box
Random, y, 232, 250 ;Password box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Game Name box
Random, y, 164, 182 ;Game Name box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
send, {enter}
return
 
Helll:
++var1
++count
GuiControl,,Counter, %count%
GuiControl,,GameNameTwo, %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1190, 1360 ;Create Game Tab
Random, y, 60, 95 ;Create Game Tab
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, %hellx1%, %hellx2%
Random, y, %y1%, %y2%
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Password box
Random, y, 232, 250 ;Password box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Game Name box
Random, y, 164, 182 ;Game Name box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
send, {enter}
return
 
Normalg:
++var1
++count
GuiControl,,Counter, %count%
GuiControl,,GameNameTwo, %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
Random, x, 20, 1490
Random, y, 20, 825
Send +{click, r , %x%, %y%}
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
Send, {esc}
Random, SleepAmount, 600, 1000
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
CoordMode, Mouse, Screen
Random, x, %normalx1%, %normalx2%
Random, y, %y1%, %y2%
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Password box
Random, y, 232, 250 ;Password box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Game Name box
Random, y, 164, 182 ;Game Name box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
send, {enter}
return
 
Nightmareg:
++var1
++count
GuiControl,,Counter, %count%
GuiControl,,GameNameTwo, %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
Random, x, 20, 1490
Random, y, 20, 825
Send +{click, r , %x%, %y%}
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
Send, {esc}
Random, SleepAmount, 600, 1000
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
CoordMode, Mouse, Screen
Random, x, %nightmarex1%, %nightmarex2%
Random, y, %y1%, %y2%
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Password box
Random, y, 232, 250 ;Password box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Game Name box
Random, y, 164, 182 ;Game Name box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
send, {enter}
return
 
Hellg:
++var1
++count
GuiControl,,Counter, %count%
GuiControl,,GameNameTwo, %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
Random, x, 20, 1490
Random, y, 20, 825
Send +{click, r , %x%, %y%}
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
Send, {esc}
Random, SleepAmount, 600, 1000
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
CoordMode, Mouse, Screen
Random, x, %hellx1%, %hellx2%
Random, y, %y1%, %y2%
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Password box
Random, y, 232, 250 ;Password box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamepass% ;can be left blank in pop-up window for public lobbies
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1290, 1645 ;Game Name box
Random, y, 164, 182 ;Game Name box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
sendinput %gamename%%var1%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
send, {enter}
return
 
GuiClose:
MsgBox , 64, Thank You, Thank you for using my Game Creation Tool.`nMade by Gubna`nDiscord: Gubna#0001, 10
ExitApp
 
F12::reload
 
;Thanks people for joining current game
numpad5::
Sleep 50
Send, {enter}
Sleep 50
Send {ASC 0255}c3Thank you for joining %gamename%%var1%
Sleep 50
Send {enter}
return
 
;Thanks people for joining current game and announces this will be last game
numpad6::
Sleep 50
Send, {enter}
Sleep 50
Send {ASC 0255}c3Thank you for joining %gamename%%var1%
Sleep 50
Send {enter}
Sleep 50
Send {enter}
sleep 50
Send {ASC 0255}c1This will be the last game.
Sleep 50
Send {enter}
return
 
;TP is UP(orange text color)
numpad7::
Sleep 50
Send {enter}
Sleep 50
Send {ASC 0255}c8TP is up
Sleep 50
Send {enter}
return
 
;TP is HOT(red text color)
numpad9::
Sleep 50
Send {enter}
Sleep 50
Send {ASC 0255}c1TP is HOT
Sleep 50
Send {enter}
return
 
;TP is SAFE(green text color)
numpad8::
Sleep 50
Send {enter}
Sleep 50
Send {ASC 0255}c2TP is SAFE
Sleep 50
Send {enter}
return