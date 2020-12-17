unit u_connexion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tf_connexion = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_connexion: Tf_connexion;

implementation

{$R *.dfm}

uses u_datamodule1, u_accueil;

procedure Tf_connexion.Button1Click(Sender: TObject);
begin
with DataModule1.Q_delegue do
begin
     Close;
     SQL.Clear;
     SQL.Add('select nom,pass from delegues');
     SQL.Add('where nom=:login');
     SQL.Add('and pass=:pass');
     parameters.ParamByName('login').value:=Edit1.Text;
     parameters.ParamByName('pass').value:=Edit2.Text;
     ExecSQL;
     Open;
     if(DataModule1.Q_delegue.RecordCount=1) then
     begin
       f_connexion.Hide;
       f_accueil.Show;

     end
     else
     begin
          ShowMessage('Connexion impossible veuillez verifier vos saisis');
          Edit1.Clear;
          Edit2.Clear;
          Edit1.SetFocus;
     end;
  end;
end;

procedure Tf_connexion.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
