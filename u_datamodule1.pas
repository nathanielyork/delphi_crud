unit u_datamodule1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Data.FMTBcd,
  Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    T_delegue: TADOTable;
    DS_delegue: TDataSource;
    Q_delegue: TADOQuery;
    T_client: TADOTable;
    DS_client: TDataSource;
    T_produit: TADOTable;
    DS_produit: TDataSource;
    T_pharmacie: TADOTable;
    DS_pharmacie: TDataSource;
    Q_modifproduit: TADOQuery;
    DS_modifproduit: TDataSource;
    DS_modifpharmacie: TDataSource;
    Q_modifpharmacie: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Q_rechercheproduit: TADOQuery;
    DS_rechercheproduit: TDataSource;
    Q_Listeclients: TADOQuery;
    DataSource2: TDataSource;
    DS_sup_produit: TDataSource;
    Q_sup_produit: TADOQuery;
    DS_liste_produit: TDataSource;
    Q_liste_produit: TADOQuery;
    DS_recherchepharmacie: TDataSource;
    Q_recherchepharmacie: TADOQuery;
    Q_supprimerpharmacie: TADOQuery;
    DS_suppharmacie: TDataSource;
    Q_supclient: TADOQuery;
    DaS_supclient: TDataSource;
    Q_rechercheclient: TADOQuery;
    DS_rechercheclient: TDataSource;
    DS_modifclient: TDataSource;
    Q_modifclient: TADOQuery;
    DS_fichier: TDataSource;
    Q_fichier: TADOQuery;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
