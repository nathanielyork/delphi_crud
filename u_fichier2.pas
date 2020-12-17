unit u_fichier2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  Tf_fichier = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_fichier: Tf_fichier;

implementation

{$R *.dfm}

uses u_accueil, u_aide, u_apropos, u_client, u_connexion, u_datamodule1,
  u_datamodule2, u_etat, u_fichier, u_info, u_lesetats, u_personnalier,
  u_pharmacie, u_produit;

procedure Tf_fichier.Button1Click(Sender: TObject);
begin
//with DataModule2.listeclient do
begin
//         showReport();
end;
end;

end.
