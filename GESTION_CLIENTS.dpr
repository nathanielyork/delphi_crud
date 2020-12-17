program GESTION_CLIENTS;

uses
  Vcl.Forms,
  u_connexion in 'u_connexion.pas' {f_connexion},
  u_datamodule1 in 'u_datamodule1.pas' {DataModule1: TDataModule},
  u_accueil in 'u_accueil.pas' {f_accueil},
  u_client in 'u_client.pas' {f_client},
  u_produit in 'u_produit.pas' {f_produit},
  u_pharmacie in 'u_pharmacie.pas' {f_pharmacie},
  u_fichier in 'u_fichier.pas' {bu},
  u_etat in 'u_etat.pas' {f_etat},
  u_info in 'u_info.pas' {f_info},
  u_apropos in 'u_apropos.pas' {f_apropos},
  u_aide in 'u_aide.pas' {f_aide},
  Vcl.Themes,
  Vcl.Styles,
  u_datamodule2 in 'u_datamodule2.pas' {DataModule2: TDataModule},
  u_lesetats in 'u_lesetats.pas' {f_lesetats},
  u_personnalier in 'u_personnalier.pas' {f_personnaliser},
  u_fichier2 in 'u_fichier2.pas' {f_fichier};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_accueil, f_accueil);
  Application.CreateForm(Tf_connexion, f_connexion);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tf_client, f_client);
  Application.CreateForm(Tf_produit, f_produit);
  Application.CreateForm(Tf_pharmacie, f_pharmacie);
  Application.CreateForm(Tbu, bu);
  Application.CreateForm(Tf_etat, f_etat);
  Application.CreateForm(Tf_info, f_info);
  Application.CreateForm(Tf_apropos, f_apropos);
  Application.CreateForm(Tf_aide, f_aide);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(Tf_lesetats, f_lesetats);
  Application.CreateForm(Tf_personnaliser, f_personnaliser);
  Application.CreateForm(Tf_fichier, f_fichier);
  Application.Run;
end.
