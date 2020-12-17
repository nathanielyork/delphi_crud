object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 451
  Width = 551
  object DS_listedesclients: TDataSource
    DataSet = DataModule1.Q_Listeclients
    Left = 272
    Top = 208
  end
  object Q_listedesclients: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from client order by id;')
    Left = 272
    Top = 288
  end
end
