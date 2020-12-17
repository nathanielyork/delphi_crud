object f_accueil: Tf_accueil
  Left = 0
  Top = 0
  Caption = 'f_accueil'
  ClientHeight = 292
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 131
    Top = 8
    Width = 3
    Height = 13
  end
  object Panel1: TPanel
    Left = 342
    Top = 0
    Width = 185
    Height = 41
    Caption = 'DECCONNEXION'
    TabOrder = 0
    OnClick = Panel1Click
  end
  object Panel2: TPanel
    Left = 342
    Top = 88
    Width = 185
    Height = 41
    Caption = 'CLIENTS'
    TabOrder = 1
    OnClick = Panel2Click
  end
  object Panel3: TPanel
    Left = 342
    Top = 177
    Width = 185
    Height = 41
    Caption = 'PRODUITS'
    TabOrder = 2
    OnClick = Panel3Click
  end
  object Panel4: TPanel
    Left = 342
    Top = 267
    Width = 185
    Height = 41
    Caption = 'PHARMACIES'
    TabOrder = 3
    OnClick = Panel4Click
  end
  object Calendar1: TCalendar
    Left = 8
    Top = 64
    Width = 328
    Height = 244
    StartOfWeek = 0
    TabOrder = 4
  end
  object MainMenu1: TMainMenu
    Left = 24
    object Fichier1: TMenuItem
      Caption = 'Fichier'
      object clients1: TMenuItem
        Caption = 'clients'
        OnClick = clients1Click
      end
      object produits1: TMenuItem
        Caption = 'produits'
        OnClick = produits1Click
      end
      object pharmacies1: TMenuItem
        Caption = 'pharmacies'
        OnClick = pharmacies1Click
      end
      object quitter1: TMenuItem
        Caption = 'quitter'
        OnClick = quitter1Click
      end
    end
    object personnaliser1: TMenuItem
      Caption = 'personnaliser'
      OnClick = personnaliser1Click
    end
    object N1: TMenuItem
      Caption = '?'
      object apropos1: TMenuItem
        Caption = 'a propos'
        OnClick = apropos1Click
      end
      object aide1: TMenuItem
        Caption = 'aide'
        OnClick = aide1Click
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 416
    Top = 56
  end
end
