VERSION 5.00
Begin VB.Form frmAdd 
   Caption         =   "Add"
   ClientHeight    =   2460
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4335
   Icon            =   "frmAdd.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2460
   ScaleWidth      =   4335
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   495
      Left            =   2280
      TabIndex        =   3
      Top             =   1200
      Width           =   1335
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   495
      Left            =   720
      TabIndex        =   2
      Top             =   1200
      Width           =   1335
   End
   Begin VB.TextBox tbFile 
      Height          =   375
      Left            =   1200
      TabIndex        =   1
      Top             =   330
      Width           =   2655
   End
   Begin VB.Label lblFile 
      Caption         =   "File Name:"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   1095
   End
End
Attribute VB_Name = "frmAdd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdOK_Click()
    Open "C:\Windows\FileLog.ini" For Append As #1
        Temp = ""
        For I = 1 To Len(tbFile.Text)
            T = Asc(Mid(tbFile.Text, I, 1))
            Temp = Temp + Chr(T + 100)
        Next I
        Print #1, Temp
    Close #1
    Me.Hide
    frmMain.Show
End Sub

Private Sub Form_Unload(Cancel As Integer)
    frmMain.Show
End Sub
