object f_personnaliser: Tf_personnaliser
  Left = 0
  Top = 0
  Caption = 'f_personnaliser'
  ClientHeight = 325
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 240
    Top = 8
    Width = 278
    Height = 213
    Caption = 'COULEUR'
    TabOrder = 0
    object Button5: TButton
      Left = 48
      Top = 128
      Width = 139
      Height = 25
      Caption = 'AUTRES COULEURS'
      TabOrder = 0
      OnClick = Button5Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 40
    Top = 8
    Width = 169
    Height = 257
    Caption = 'COULEUR'
    TabOrder = 1
    object Button1: TButton
      Left = 56
      Top = 45
      Width = 75
      Height = 25
      Caption = 'BLEU'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 56
      Top = 104
      Width = 75
      Height = 25
      Caption = 'ROUGE'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 56
      Top = 160
      Width = 75
      Height = 25
      Caption = 'JAUNE'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 56
      Top = 208
      Width = 75
      Height = 25
      Caption = 'VERT'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object Button6: TButton
    Left = 40
    Top = 296
    Width = 97
    Height = 25
    Caption = 'RETOUR'
    TabOrder = 2
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 160
    Top = 296
    Width = 129
    Height = 25
    Caption = 'QUITTER'
    TabOrder = 3
    OnClick = Button7Click
  end
  object GroupBox3: TGroupBox
    Left = 306
    Top = 230
    Width = 153
    Height = 60
    Caption = 'FONT'
    TabOrder = 4
  end
  object Button8: TButton
    Left = 306
    Top = 248
    Width = 153
    Height = 25
    Caption = 'DEFINIR UNE POLICE'
    TabOrder = 5
    OnClick = Button8Click
  end
  object ColorDialog1: TColorDialog
    Left = 416
    Top = 88
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 240
    Top = 240
  end
end
