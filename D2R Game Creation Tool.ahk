index = 0
F11::
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1183, 1352 ;Create Game Tab
Random, y, 51, 86 ;Create Game Tab
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1531, 1625 ;Difficulty(Hell Default)
Random, y, 348, 375 ;Difficulty(Hell Default)
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1370, 1625 ;Password box
Random, y, 220, 238 ;Password box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
Send, gub
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
CoordMode, Mouse, Screen
Random, x, 1370, 1625 ;Game Name box
Random, y, 152, 168 ;Game Name box
Click, %x%, %y%
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
SendInput % "Gubna0" ++index
Random, SleepAmount, 250, 600
Sleep, %SleepAmount%
send, {enter}
return

F10::RELOAD