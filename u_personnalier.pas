unit u_personnalier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tf_personnaliser = class(TForm)
    GroupBox2: TGroupBox;
    ColorDialog1: TColorDialog;
    Button5: TButton;
    FontDialog1: TFontDialog;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    GroupBox3: TGroupBox;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_personnaliser: Tf_personnaliser;

implementation

{$R *.dfm}

uses u_accueil, u_aide, u_apropos, u_client, u_connexion, u_datamodule1,
  u_datamodule2, u_etat, u_fichier, u_info, u_lesetats, u_pharmacie, u_produit;

procedure Tf_personnaliser.Button1Click(Sender: TObject);
begin
f_personnaliser.Color:=clblue;
f_connexion.Color:=clblue;
f_client.Color:=clblue;
f_produit.Color:=clblue;
f_pharmacie.Color:=clblue;
f_etat.Color:=clblue;
f_apropos.Color:=clblue;
f_aide.Color:=clblue;
f_accueil.Color:=clblue;
f_info.Color:=clblue;
end;

procedure Tf_personnaliser.Button2Click(Sender: TObject);
begin
f_personnaliser.Color:=clred;
f_connexion.Color:=clred;
f_client.Color:=clred;
f_produit.Color:=clred;
f_pharmacie.Color:=clred;
f_etat.Color:=clred;
f_apropos.Color:=clred;
f_aide.Color:=clred;
f_accueil.Color:=clred;
f_info.Color:=clred;
end;

procedure Tf_personnaliser.Button3Click(Sender: TObject);
begin
f_personnaliser.Color:=clyellow;
f_connexion.Color:=clyellow;
f_client.Color:=clyellow;
f_produit.Color:=clyellow;
f_pharmacie.Color:=clyellow;
f_etat.Color:=clyellow;
f_apropos.Color:=clyellow;
f_aide.Color:=clyellow;
f_accueil.Color:=clyellow;
f_info.Color:=clyellow;
end;

procedure Tf_personnaliser.Button4Click(Sender: TObject);
begin
f_personnaliser.Color:=clgreen;
f_connexion.Color:=clgreen;
f_client.Color:=clgreen;
f_produit.Color:=clgreen;
f_pharmacie.Color:=clgreen;
f_etat.Color:=clgreen;
f_apropos.Color:=clgreen;
f_aide.Color:=clgreen;
f_accueil.Color:=clgreen;
f_info.Color:=clgreen;
end;

procedure Tf_personnaliser.Button5Click(Sender: TObject);
begin
ColorDialog1.Execute;
f_personnaliser.Color:=ColorDialog1.Color;
f_connexion.Color:=ColorDialog1.Color;
f_client.Color:=ColorDialog1.Color;
f_produit.Color:=ColorDialog1.Color;
f_pharmacie.Color:=ColorDialog1.Color;
f_etat.Color:=ColorDialog1.Color;
f_apropos.Color:=ColorDialog1.Color;
f_aide.Color:=ColorDialog1.Color;
f_accueil.Color:=ColorDialog1.Color;
f_info.Color:=ColorDialog1.Color;

end;

procedure Tf_personnaliser.Button6Click(Sender: TObject);
begin
f_personnaliser.Hide;
f_accueil.Show;

end;

procedure Tf_personnaliser.Button7Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tf_personnaliser.Button8Click(Sender: TObject);
begin
FontDialog1.Execute;
f_personnaliser.Font:=FontDialog1.Font;
f_connexion.Font:=FontDialog1.Font;
f_client.Font:=FontDialog1.Font;
f_produit.Font:=FontDialog1.Font;
f_pharmacie.Font:=FontDialog1.Font;
f_etat.Font:=FontDialog1.Font;
f_apropos.Font:=FontDialog1.Font;
f_aide.Font:=FontDialog1.Font;
f_accueil.Font:=FontDialog1.Font;
f_info.Font:=FontDialog1.Font;

end;

end.
