object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 791
  Width = 786
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=alias' +
      'delegue'
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object T_delegue: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'delegues'
    Left = 152
    Top = 24
  end
  object DS_delegue: TDataSource
    DataSet = T_delegue
    Left = 224
    Top = 16
  end
  object Q_delegue: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select nom,pass from delegues;')
    Left = 192
    Top = 48
  end
  object T_client: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'client'
    Left = 376
    Top = 272
  end
  object DS_client: TDataSource
    DataSet = T_client
    Left = 336
    Top = 280
  end
  object T_produit: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'produit'
    Left = 560
    Top = 296
  end
  object DS_produit: TDataSource
    DataSet = T_produit
    Left = 616
    Top = 312
  end
  object T_pharmacie: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'pharmacie'
    Left = 232
    Top = 456
  end
  object DS_pharmacie: TDataSource
    DataSet = T_pharmacie
    Left = 304
    Top = 456
  end
  object Q_modifproduit: TADOQuery
    Connection = ADOConnection1
    DataSource = DS_produit
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Update produit set nom=:p1, descr=:p2, stock=:p3 where id=:p;')
    Left = 544
    Top = 464
  end
  object DS_modifproduit: TDataSource
    DataSet = Q_modifproduit
    Left = 600
    Top = 496
  end
  object DS_modifpharmacie: TDataSource
    DataSet = Q_modifpharmacie
    Left = 128
    Top = 384
  end
  object Q_modifpharmacie: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p4'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Update pharmacie set nom=:p1, pr=:p2, contact=:p3, feedback=:p4 ' +
        'where id=:p;  ')
    Left = 112
    Top = 448
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 288
    Top = 112
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 352
    Top = 112
  end
  object Q_rechercheproduit: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select id,nom,descr,stock from produit order by nom,descr;')
    Left = 424
    Top = 464
  end
  object DS_rechercheproduit: TDataSource
    DataSet = Q_rechercheproduit
    Left = 432
    Top = 504
  end
  object Q_Listeclients: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from client;')
    Left = 96
    Top = 128
  end
  object DataSource2: TDataSource
    DataSet = Q_Listeclients
    Left = 88
    Top = 184
  end
  object DS_sup_produit: TDataSource
    DataSet = Q_sup_produit
    Left = 680
    Top = 456
  end
  object Q_sup_produit: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'p'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'delete from produit where id=:p;')
    Left = 688
    Top = 536
  end
  object DS_liste_produit: TDataSource
    DataSet = Q_liste_produit
    Left = 376
    Top = 376
  end
  object Q_liste_produit: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from produit;')
    Left = 432
    Top = 384
  end
  object DS_recherchepharmacie: TDataSource
    DataSet = Q_recherchepharmacie
    Left = 520
    Top = 24
  end
  object Q_recherchepharmacie: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pharmacie order by nom;')
    Left = 608
    Top = 16
  end
  object Q_supprimerpharmacie: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'p'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'delete from pharmacie where id=:p;')
    Left = 568
    Top = 88
  end
  object DS_suppharmacie: TDataSource
    DataSet = Q_supprimerpharmacie
    Left = 656
    Top = 96
  end
  object Q_supclient: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'p'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'delete from client where id=:p;')
    Left = 88
    Top = 296
  end
  object DaS_supclient: TDataSource
    DataSet = Q_supclient
    Left = 168
    Top = 296
  end
  object Q_rechercheclient: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from client order by id;')
    Left = 552
    Top = 200
  end
  object DS_rechercheclient: TDataSource
    DataSet = Q_rechercheclient
    Left = 656
    Top = 208
  end
  object DS_modifclient: TDataSource
    DataSet = Q_modifclient
    Left = 728
    Top = 312
  end
  object Q_modifclient: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p4'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p5'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p6'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p7'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p8'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'p'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Update client set nom=:p1,prenom=:p2,contact=:p3,centre=:p4,quar' +
        'tier=:p5,specialite=:p6,titre=:p7,produit=:p8  where id=:p;')
    Left = 744
    Top = 368
  end
  object DS_fichier: TDataSource
    DataSet = Q_fichier
    Left = 240
    Top = 208
  end
  object Q_fichier: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from client;')
    Left = 280
    Top = 216
  end
end
