VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000007&
   Caption         =   "Form1"
   ClientHeight    =   10512
   ClientLeft      =   120
   ClientTop       =   456
   ClientWidth     =   12048
   LinkTopic       =   "Form1"
   ScaleHeight     =   10512
   ScaleWidth      =   12048
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command3 
      Caption         =   "Automatic"
      Height          =   612
      Left            =   10200
      TabIndex        =   4
      Top             =   3120
      Width           =   1572
   End
   Begin VB.CommandButton Command2 
      Caption         =   "3 Targets"
      Height          =   612
      Left            =   10200
      TabIndex        =   3
      Top             =   2280
      Width           =   1572
   End
   Begin VB.CommandButton Command1 
      Caption         =   "1 Target"
      Height          =   612
      Left            =   10200
      TabIndex        =   2
      Top             =   1320
      Width           =   1572
   End
   Begin VB.Timer Timer1 
      Left            =   840
      Top             =   8880
   End
   Begin VB.Label Label2 
      BackStyle       =   0  '透明
      Caption         =   "NOAA"
      BeginProperty Font 
         Name            =   "Broadway BT"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   972
      Left            =   960
      TabIndex        =   1
      Top             =   120
      Width           =   3372
   End
   Begin VB.Label Label1 
      Alignment       =   2  '置中對齊
      BackStyle       =   0  '透明
      Caption         =   "Label1"
      ForeColor       =   &H8000000B&
      Height          =   252
      Index           =   0
      Left            =   960
      TabIndex        =   0
      Top             =   1800
      Width           =   852
      WordWrap        =   -1  'True
   End
   Begin VB.Image Image1 
      Height          =   852
      Index           =   0
      Left            =   960
      Picture         =   "02++.frx":0000
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   852
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Max = -15
    mindex = 1
    For i = 1 To 99
        If Label1(i).Caption > Max Then
            Max = Label1(i).Caption
            mindex = i
        End If
    Next
    Image1(mindex).Picture = LoadPicture("3.jpg")
End Sub

Private Sub Command2_Click()
    Max = -15
    mindex1 = 1
    mindex2 = 1
    mindex3 = 1
    save1 = 1
    save2 = 1
    For i = 1 To 99
        If Label1(i).Caption > Max Then
            Max = Label1(i).Caption
            mindex1 = i
        End If
    Next
    save1 = Max
    Label1(mindex1).Caption = -15
    Max = -15
    For i = 1 To 99
        If Label1(i).Caption > Max Then
            Max = Label1(i).Caption
            mindex2 = i
        End If
    Next
    save2 = Max
    Label1(mindex2).Caption = -15
    Max = -15
    For i = 1 To 99
        If Label1(i).Caption > Max Then
            Max = Label1(i).Caption
            mindex3 = i
        End If
    Next
    Label1(mindex1).Caption = save1
    Label1(mindex2).Caption = save2
    Image1(mindex1).Picture = LoadPicture("3.jpg")
    Image1(mindex2).Picture = LoadPicture("3.jpg")
    Image1(mindex3).Picture = LoadPicture("3.jpg")
End Sub

Private Sub Command3_Click()
    Timer1.Interval = 1000
End Sub

Private Sub Form_Load()
    '這裡勿動，使用迴圈創造10*10的雷達圖，並利用亂數模擬衝擊波(<15)
    Randomize
    For i = 1 To 99
        Load Image1(i)
        Load Label1(i)
        If i Mod 10 = 0 Then
            Label1(i).Left = Label1(i - 10).Left
            Label1(i).Top = Label1(i - 10).Top + Image1(i - 10).Height
            Image1(i).Left = Image1(i - 10).Left
            Image1(i).Top = Image1(i - 10).Top + Image1(i - 10).Height
        Else
            Label1(i).Left = Label1(i - 1).Left + Label1(i - 1).Width
            Label1(i).Top = Label1(i - 1).Top
            Image1(i).Left = Image1(i - 1).Left + Image1(i - 1).Width
            Image1(i).Top = Image1(i - 1).Top
        End If
        Label1(i).Caption = Format(15 - Rnd * 20, "00.00")
        Label1(i).ZOrder vbBringToFront
        Label1(i).BackStyle = 0
        Label1(i).ForeColor = vbWhite
        Label1(i).Visible = True
        Image1(i).Picture = LoadPicture("1.jpg")
        Image1(i).Visible = True
    
    Next
    Label1(0).Caption = Format(15 - Rnd * 20, "00.00")

End Sub

Private Sub Timer1_Timer()
    Randomize
    For i = 1 To 99
        If i Mod 10 = 0 Then
            Label1(i).Left = Label1(i - 10).Left
            Label1(i).Top = Label1(i - 10).Top + Image1(i - 10).Height
            Image1(i).Left = Image1(i - 10).Left
            Image1(i).Top = Image1(i - 10).Top + Image1(i - 10).Height
        Else
            Label1(i).Left = Label1(i - 1).Left + Label1(i - 1).Width
            Label1(i).Top = Label1(i - 1).Top
            Image1(i).Left = Image1(i - 1).Left + Image1(i - 1).Width
            Image1(i).Top = Image1(i - 1).Top
        End If
        Label1(i).Caption = Format(15 - Rnd * 20, "00.00")
        Label1(i).ZOrder vbBringToFront
        Label1(i).BackStyle = 0
        Label1(i).ForeColor = vbWhite
        Label1(i).Visible = True
        Image1(i).Picture = LoadPicture("1.jpg")
        Image1(i).Visible = True
    
    Next
    Label1(0).Caption = Format(15 - Rnd * 20, "00.00")
    Max = -15
    mindex1 = 1
    mindex2 = 1
    mindex3 = 1
    save1 = 1
    save2 = 1
    For i = 1 To 99
        If Label1(i).Caption > Max Then
            Max = Label1(i).Caption
            mindex1 = i
        End If
    Next
    save1 = Max
    Label1(mindex1).Caption = -15
    Max = -15
    For i = 1 To 99
        If Label1(i).Caption > Max Then
            Max = Label1(i).Caption
            mindex2 = i
        End If
    Next
    save2 = Max
    Label1(mindex2).Caption = -15
    Max = -15
    For i = 1 To 99
        If Label1(i).Caption > Max Then
            Max = Label1(i).Caption
            mindex3 = i
        End If
    Next
    Label1(mindex1).Caption = save1
    Label1(mindex2).Caption = save2
    Image1(mindex1).Picture = LoadPicture("3.jpg")
    Image1(mindex2).Picture = LoadPicture("3.jpg")
    Image1(mindex3).Picture = LoadPicture("3.jpg")
End Sub
