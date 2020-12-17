object f_fichier: Tf_fichier
  Left = 0
  Top = 0
  Caption = 'f_fichier'
  ClientHeight = 518
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 857
    Height = 446
    DataSource = DataModule1.DS_fichier
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nom du delegue'
        PickList.Strings = (
          'BAYINA')
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
      end>
  end
  object GroupBox1: TGroupBox
    Left = 312
    Top = 8
    Width = 297
    Height = 50
    Caption = 'RECHERCHER'
    TabOrder = 1
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 136
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end
