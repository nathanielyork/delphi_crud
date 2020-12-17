object f_pharmacie: Tf_pharmacie
  Left = 0
  Top = 0
  Caption = 'f_pharmacie'
  ClientHeight = 515
  ClientWidth = 783
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
    Left = 64
    Top = 35
    Width = 20
    Height = 13
    Caption = 'nom'
  end
  object Label2: TLabel
    Left = 64
    Top = 104
    Width = 95
    Height = 13
    Caption = 'Personne ressource'
  end
  object Label3: TLabel
    Left = 64
    Top = 168
    Width = 36
    Height = 13
    Caption = 'contact'
  end
  object Label4: TLabel
    Left = 64
    Top = 232
    Width = 44
    Height = 13
    Caption = 'feedback'
  end
  object Edit1: TEdit
    Left = 208
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 208
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 208
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 208
    Top = 224
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 64
    Top = 320
    Width = 75
    Height = 25
    Caption = 'AJOUTER'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 320
    Width = 75
    Height = 25
    Caption = 'MODIFIER'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 360
    Top = 320
    Width = 75
    Height = 25
    Caption = 'SUPPRIMER'
    TabOrder = 6
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 544
    Top = 96
    Width = 185
    Height = 105
    Caption = 'RECHERCHE PAR NOM'
    TabOrder = 7
    object Edit8: TEdit
      Left = 32
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit8Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 387
    Width = 721
    Height = 120
    DataSource = DataModule1.DS_recherchepharmacie
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
end
