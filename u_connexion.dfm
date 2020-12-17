object f_connexion: Tf_connexion
  Left = 0
  Top = 0
  Caption = 'f_connexion'
  ClientHeight = 202
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 16
    Width = 20
    Height = 13
    Caption = 'nom'
  end
  object Label2: TLabel
    Left = 56
    Top = 96
    Width = 64
    Height = 13
    Caption = 'mot de passe'
  end
  object Edit1: TEdit
    Left = 200
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 199
    Top = 93
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 246
    Top = 168
    Width = 75
    Height = 25
    Caption = 'se connecter'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 56
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Quitter'
    TabOrder = 3
    OnClick = Button2Click
  end
end
