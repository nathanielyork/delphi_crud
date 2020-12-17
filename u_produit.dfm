object f_produit: Tf_produit
  Left = 0
  Top = 0
  Caption = 'f_produit'
  ClientHeight = 531
  ClientWidth = 763
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
    Left = 40
    Top = 24
    Width = 20
    Height = 13
    Caption = 'nom'
  end
  object Label2: TLabel
    Left = 40
    Top = 100
    Width = 52
    Height = 13
    Caption = 'description'
  end
  object Label3: TLabel
    Left = 40
    Top = 170
    Width = 25
    Height = 13
    Caption = 'stock'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 287
    Width = 747
    Height = 236
    DataSource = DataModule1.DS_rechercheproduit
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 16
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nom'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descr'
        Width = 318
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stock'
        Width = 365
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 240
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 240
    Top = 97
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 240
    Top = 167
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 17
    Top = 248
    Width = 75
    Height = 25
    Caption = 'AJOUTER'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 248
    Width = 75
    Height = 25
    Caption = 'MODIFIER'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 262
    Top = 248
    Width = 75
    Height = 25
    Caption = 'SUPPRIMER'
    TabOrder = 6
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 520
    Top = 56
    Width = 193
    Height = 81
    Caption = 'RECHERCHE PAR NOM'
    TabOrder = 7
    object Edit8: TEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit8Change
    end
  end
end
