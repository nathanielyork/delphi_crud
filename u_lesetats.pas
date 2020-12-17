unit u_lesetats;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tf_lesetats = class(TForm)
    Button1: TButton;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_lesetats: Tf_lesetats;

implementation

{$R *.dfm}

uses u_accueil, u_aide, u_apropos, u_client, u_connexion, u_datamodule1,
  u_datamodule2, u_etat, u_fichier, u_info, u_pharmacie, u_produit;

end.
