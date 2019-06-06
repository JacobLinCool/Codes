VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7200
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   15252
   LinkTopic       =   "Form1"
   ScaleHeight     =   7200
   ScaleWidth      =   15252
   StartUpPosition =   3  '�t�ιw�]��
   Begin VB.TextBox Text3 
      Height          =   852
      Left            =   8640
      TabIndex        =   7
      Top             =   4440
      Width           =   6492
   End
   Begin VB.CommandButton Command4 
      Caption         =   "�۰ʸѽX"
      Height          =   732
      Left            =   8640
      TabIndex        =   6
      Top             =   3360
      Width           =   1932
   End
   Begin VB.TextBox Text2 
      Height          =   852
      Left            =   9600
      TabIndex        =   5
      Top             =   2040
      Width           =   5532
   End
   Begin VB.TextBox Text1 
      Height          =   852
      Left            =   720
      TabIndex        =   3
      Top             =   960
      Width           =   7812
   End
   Begin VB.CommandButton Command3 
      Caption         =   "�s�X"
      Height          =   612
      Left            =   720
      TabIndex        =   2
      Top             =   3840
      Width           =   7212
   End
   Begin VB.CommandButton Command2 
      Caption         =   "clear"
      Height          =   612
      Index           =   0
      Left            =   720
      Style           =   1  '�Ϥ��~�[
      TabIndex        =   1
      Top             =   4680
      Width           =   612
   End
   Begin VB.CommandButton Command1 
      Caption         =   "clear"
      Height          =   612
      Index           =   0
      Left            =   720
      Style           =   1  '�Ϥ��~�[
      TabIndex        =   0
      Top             =   1920
      Width           =   612
   End
   Begin VB.Image Image1 
      Height          =   840
      Left            =   8520
      Picture         =   "02+.frx":0000
      Stretch         =   -1  'True
      Top             =   2040
      Width           =   972
   End
   Begin VB.Label Label1 
      Caption         =   "�� enigma"
      BeginProperty Font 
         Name            =   "�L�n������"
         Size            =   25.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   732
      Left            =   720
      TabIndex        =   4
      Top             =   120
      Width           =   5052
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command2_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Command1(Index).BackColor = vbRed
    Command2(Index).BackColor = vbRed
End Sub

Private Sub Command2_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Command1(Index).BackColor = &H8000000F
    Command2(Index).BackColor = &H8000000F
End Sub

Private Sub Command3_Click()
    '�Ĥ@�D�A�ƻs�å��äW����L
    Randomize
    For i = 1 To 26
        Command1(i).Caption = Command2(i).Caption
    Next
    For i = 1 To 26
        X = Int(Rnd() * 26) + 1
        t = Command1(i).Caption
        Command1(i).Caption = Command1(X).Caption
        Command1(X).Caption = t
    Next
End Sub
Private Sub Command2_Click(Index As Integer)
    '�Ĥ@�D�A��X�K�X��TEXT1
    If Index <> 0 Then
        Text1 = Text1 + Command1(Index).Caption
    ElseIf Len(Text1) >= 1 Then
        Text1 = Mid(Text1, 1, Len(Text1) - 1)
    End If
End Sub

Private Sub Command1_Click(Index As Integer)
    '�ĤG�D�A���W��ü���L�A��X���X��TEXT2
    If Index <> 0 Then
        Text2 = Text2 + Command2(Index).Caption
    ElseIf Len(Text2) >= 1 Then
        Text2 = Mid(Text2, 1, Len(Text2) - 1)
    End If
End Sub

Private Sub Command4_Click()
    '�ĤT�D�A�ϥΰj��۰ʸѱK�X�A��X��TEXT3
    
End Sub

Private Sub Form_Load()
    '���B�ŰʡA���J�����L
    Randomize
    For i = 1 To 27
        Load Command1(i)
        Load Command2(i)
        If i Mod 10 = 0 Then
            Command1(i).Left = Command1(i - 10).Left
            Command1(i).Top = Command1(i - 10).Top + Command2(i - 10).Height
            Command2(i).Left = Command2(i - 10).Left
            Command2(i).Top = Command2(i - 10).Top + Command2(i - 10).Height
        Else
            Command1(i).Left = Command1(i - 1).Left + Command1(i - 1).Width
            Command1(i).Top = Command1(i - 1).Top
            Command2(i).Left = Command2(i - 1).Left + Command2(i - 1).Width
            Command2(i).Top = Command2(i - 1).Top
        End If
        Command2(i).Caption = Chr(i - 1 + Asc("A"))
 

        Command1(i).Visible = True
        Command2(i).Visible = True
    Next
    Command1(27).Caption = " "  'space
    Command2(27).Caption = " "  'space
    Text1 = ""
End Sub
