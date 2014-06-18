inputbox, pathToRename, Enter Path,Please enter the path the folder containing the files.
inputbox, oldText, Enter the portion of the name to remove/change.
inputbox, newText, Enter the new text to replace the old. 
if (pathtorename = nothing)
	exitapp
if (oldText = nothing)
	exitapp
stringright, rchar, pathToRename,1
if (rchar <> "/") and (rchar <> "\")
	pathToRename := pathToRename . "\"
filedelete, RenameLog.txt
wipcount = 0
loop, %pathToRename%*%oldText%*,,1 
{
wipcount +=1	
}
fileappend, %wipcount% Files found.`n------------------------------------`n, RenameLog.txt
loop, %pathToRename%*%oldText%*,,1 
{
wipcount -= 1
tooltip,--->%wipcount% files remain.,0,0
stringreplace, pathwithoutWIP,A_LoopFileFullPath,%oldText%,%newText%,all
FileMove, %A_LoopFileFullPath%, %pathwithoutWIP%, 1
if ErrorLevel
fileappend, Error moving %A_LoopFileFullPath%.`n, RenameLog.txt
else
fileappend, %A_LoopFileFullPath% <-- IS NOW --> %pathwithoutWIP% `n, RenameLog.txt
}
msgbox, Files Renamed.
exitapp