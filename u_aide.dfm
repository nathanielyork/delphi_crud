object f_aide: Tf_aide
  Left = 0
  Top = 0
  Caption = 'f_aide'
  ClientHeight = 400
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object aide: TRichEdit
    Left = 8
    Top = 0
    Width = 745
    Height = 401
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -37
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    Lines.Strings = (
      
        '...................................aide.........................' +
        '..........'
      'pour avoir acces a cette application vous devez '
      'creer une compte(nom et mot de passe).'
      'Ceci vous donne droit a la page d'#39'accueil.'
      'de la pade d'#39'accueil vous pouvez migrer vers la '
      'fenetre client pour ajouter des clients ,les '
      'suprimer ou autres op'#233'rations.'
      'Vous avez aussi acces a la page des pharmacies '
      'et des produits qui vous donnent le droit a toute '
      'operations')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Zoom = 100
  end
end
