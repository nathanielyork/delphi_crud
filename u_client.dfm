object f_client: Tf_client
  Left = 0
  Top = 0
  Caption = 'f_client'
  ClientHeight = 521
  ClientWidth = 753
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
    Left = 24
    Top = 11
    Width = 23
    Height = 13
    Caption = 'NOM'
  end
  object Label2: TLabel
    Left = 24
    Top = 51
    Width = 42
    Height = 13
    Caption = 'PRENOM'
  end
  object Label3: TLabel
    Left = 24
    Top = 100
    Width = 48
    Height = 13
    Caption = 'CONTACT'
  end
  object Label4: TLabel
    Left = 24
    Top = 144
    Width = 39
    Height = 13
    Caption = 'CENTRE'
  end
  object Label5: TLabel
    Left = 24
    Top = 189
    Width = 52
    Height = 13
    Caption = 'QUARTIER'
  end
  object Label6: TLabel
    Left = 24
    Top = 233
    Width = 57
    Height = 13
    Caption = 'SPECIALITE'
  end
  object Label7: TLabel
    Left = 24
    Top = 268
    Width = 29
    Height = 13
    Caption = 'TITRE'
  end
  object Label8: TLabel
    Left = 24
    Top = 308
    Width = 45
    Height = 13
    Caption = 'PRODUIT'
  end
  object Edit1: TEdit
    Left = 232
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 232
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 232
    Top = 92
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 232
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 232
    Top = 181
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 232
    Top = 230
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 232
    Top = 265
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 520
    Top = 8
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
    Left = 8
    Top = 384
    Width = 741
    Height = 121
    DataSource = DataModule1.DS_rechercheclient
    TabOrder = 8
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nom'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prenom'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contact'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'centre'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quartier'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'specialite'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'titre'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produit'
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 8
    Top = 344
    Width = 75
    Height = 25
    Caption = 'AJOUTER'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 144
    Top = 344
    Width = 75
    Height = 25
    Caption = 'MODIFIER'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 262
    Top = 344
    Width = 75
    Height = 25
    Caption = 'SUPPRIMER'
    TabOrder = 11
    OnClick = Button4Click
  end
  object Edit9: TEdit
    Left = 232
    Top = 305
    Width = 121
    Height = 21
    TabOrder = 12
  end
end
