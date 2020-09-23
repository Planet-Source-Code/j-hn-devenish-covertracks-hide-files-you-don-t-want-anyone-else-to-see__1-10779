VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "CoverTracks v1.00"
   ClientHeight    =   2175
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4695
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2175
   ScaleWidth      =   4695
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdClear 
      Caption         =   "&Clear list"
      Height          =   495
      Left            =   1200
      TabIndex        =   2
      Top             =   840
      Width           =   1935
   End
   Begin VB.CommandButton cmdQuit 
      Caption         =   "&Quit"
      Height          =   495
      Left            =   1200
      TabIndex        =   1
      Top             =   1440
      Width           =   1935
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Add a file"
      Height          =   495
      Left            =   1200
      TabIndex        =   0
      Top             =   240
      Width           =   1935
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAdd_Click()
    Me.Hide
    frmAdd.Show
End Sub

Private Sub cmdClear_Click()
    If MsgBox("Warning: This will clear your log file, leaving all your existing 'unwanted' files vulnerable!!! Are you SURE you want to do this?", vbYesNo + vbQuestion, "WARNING") = vbYes Then
        Open "C:\Windows\FileLog.ini" For Output As #1
        Close #1
        MsgBox "The log has been cleared.", vbOKCancel + vbInformation, ""
    End If
End Sub

Private Sub cmdQuit_Click()
    End
End Sub
