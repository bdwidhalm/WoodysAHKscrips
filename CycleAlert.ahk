Gui, Add, Text, cRed, *******  ALERT ALERT ALERT *******:
Gui, Add, Text, cRed, Nightly Cycle issues!
Gui, Add, Text, , Check to see if the Letter Cycle completed!
Gui, Add, Text, , Check if the CRW Nightly Process job completed!
Gui, Add, Text, , Check Build Online Customer job completed!
Gui, Add, Button, default, OK  ; The label ButtonOK (if it exists) will be run when the button is pressed.
Gui, Show, w350 h180 Center, *** NIGHTLY CYCLE ISSUES ***
return  ; End of auto-execute section. The script is idle until the user does something.

ButtonOK:
GuiClose:
ExitApp