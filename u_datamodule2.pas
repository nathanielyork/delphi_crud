unit u_datamodule2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
    DS_listedesclients: TDataSource;
    Q_listedesclients: TADOQuery;
//    frxDBDataset1: TfrxDBDataset;
//    listeclient: TfrxReport;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses u_accueil, u_aide, u_apropos, u_client, u_connexion, u_datamodule1, u_etat,
  u_fichier, u_info, u_pharmacie, u_produit, u_fichier2, u_lesetats,
  u_personnalier;

{$R *.dfm}

end.
