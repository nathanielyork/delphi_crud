unit u_accueil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.Samples.Calendar, Vcl.StdCtrls;

type
  Tf_accueil = class(TForm)
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    N1: TMenuItem;
    apropos1: TMenuItem;
    aide1: TMenuItem;
    clients1: TMenuItem;
    produits1: TMenuItem;
    pharmacies1: TMenuItem;
    quitter1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Calendar1: TCalendar;
    personnaliser1: TMenuItem;
    Timer1: TTimer;
    Label1: TLabel;
    procedure Etats1Click(Sender: TObject);
    procedure clients1Click(Sender: TObject);
    procedure produits1Click(Sender: TObject);
    procedure pharmacies1Click(Sender: TObject);
    procedure quitter1Click(Sender: TObject);
    procedure mesinfos1Click(Sender: TObject);
    procedure apropos1Click(Sender: TObject);
    procedure aide1Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure personnaliser1Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Monfichier1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_accueil: Tf_accueil;

implementation

{$R *.dfm}

uses u_client, u_connexion, u_datamodule1, u_etat, u_fichier, u_pharmacie,
  u_produit, u_info, u_aide, u_apropos, u_personnalier, u_fichier2;

procedure Tf_accueil.aide1Click(Sender: TObject);
begin
f_aide.ShowModal;
end;

procedure Tf_accueil.apropos1Click(Sender: TObject);
begin
f_apropos.ShowModal;
end;

procedure Tf_accueil.clients1Click(Sender: TObject);
begin
f_client.ShowModal
end;

procedure Tf_accueil.Etats1Click(Sender: TObject);
begin
f_etat.showModal;
end;

procedure Tf_accueil.mesinfos1Click(Sender: TObject);
begin
f_info.showModal;
end;

procedure Tf_accueil.Monfichier1Click(Sender: TObject);
begin
f_fichier.Show;
end;

procedure Tf_accueil.Panel1Click(Sender: TObject);
begin
f_accueil.Hide;
f_connexion.Show;
end;

procedure Tf_accueil.Panel2Click(Sender: TObject);
begin
f_client.Show;
end;

procedure Tf_accueil.Panel3Click(Sender: TObject);
begin
f_produit.Show;
end;

procedure Tf_accueil.Panel4Click(Sender: TObject);
begin
f_pharmacie.Show;
end;

procedure Tf_accueil.Panel5Click(Sender: TObject);
begin
Label1.Caption:=TimeToStr(Time);
end;

procedure Tf_accueil.personnaliser1Click(Sender: TObject);
begin
f_personnaliser.Show;
end;

procedure Tf_accueil.pharmacies1Click(Sender: TObject);
begin
f_pharmacie.Show;
end;

procedure Tf_accueil.produits1Click(Sender: TObject);
begin
f_produit.ShowModal;
end;

procedure Tf_accueil.quitter1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tf_accueil.Timer1Timer(Sender: TObject);
begin
Label1.Caption:=TimeToStr(Time);
end;

end.
