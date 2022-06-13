answer = MsgBox("Must restart after first boot.  Do you want to restart now ?", vbQuestion + vbYesNo + vbDefaultButton2, "ItsMine Config")
If answer = vbYes Then
    Set objShell = WScript.CreateObject("WScript.Shell")
    objShell.Run "123.cmd"
Else
    Set objShell = WScript.CreateObject("WScript.Shell")
    objShell.Run "123n.cmd"
End If