logPath = C:\TimeKeeper
FormatTime, CurDate,, yyyy-MM-dd
FormatTime, CurTime,, hh:mm:ss
IfNotExist, %logPath%
	FileCreateDir, %logPath%

logFile = %CurDate%_TimeLog.txt

Gui, Add, Text, ,What have you been working on:
Gui, Add, ComboBox, vTaskItem, BAU|PROD Support|BizTalk|BPO|Compass|CRW|Data FeedData|Dual Track|MERS|Nightly Cycle|Report
Gui, Add, Button, Default, OK 
Gui, Add, Button, x+5, Cancel
Gui, Show, ,TimeSheet Task Logger
return

ButtonOK: 
Gui, Submit
FileAppend, %TaskItem%|%CurTime%, %logPath%\%logFile%
ExitApp

GuiClose:
ButtonCancel:
ExitApp