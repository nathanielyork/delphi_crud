unit u_pharmacie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.FileCtrl;

type
  Tf_pharmacie = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Edit8: TEdit;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_pharmacie: Tf_pharmacie;

implementation

{$R *.dfm}

uses u_accueil, u_aide, u_apropos, u_client, u_connexion, u_datamodule1, u_etat,
  u_fichier, u_info, u_produit;

procedure Tf_pharmacie.Button1Click(Sender: TObject);
begin
if (Edit1.Text='') then
    begin
      ShowMessage('remplir le(s) champ(s) vide(s)');
      Edit1.SetFocus;
      Abort;
    end
    else if (Edit2.Text='')then
    begin
      ShowMessage('remplir le(s) champ(s) vide(s)');
      Edit1.SetFocus;
      Abort;
    end
    else if (Edit3.Text='')then
    begin
      ShowMessage('remplir le(s) champ(s) vide(s)');
      Edit3.SetFocus;
      Abort;
    end
    else if (Edit4.Text='')then
    begin
      ShowMessage('remplir le(s) champ(s) vide(s)');
      Edit4.SetFocus;
      Abort;
    end
    else
    begin
      with DataModule1.T_pharmacie do
      begin
        Open;
        Insert;
        FieldByName('nom').AsString:=Edit1.Text;
        FieldByName('pr').AsString:=Edit2.Text;
        FieldByName('contact').AsString:=Edit3.Text;
        FieldByName('feedback').AsString:=Edit4.Text;
        Post;
        ShowMessage('ajout effectué!');
        Edit1.Clear;Edit2.Clear;Edit3.Clear;Edit4.Clear;
          DataModule1.Q_recherchepharmacie.Close;
          DataModule1.Q_recherchepharmacie.Open;
      end;
    end;

end;

procedure Tf_pharmacie.Button2Click(Sender: TObject);
begin
with DataModule1.Q_modifpharmacie do
begin
  Close;
  Parameters.ParamByName('p1').Value:=Edit1.Text;
  Parameters.ParamByName('p2').Value:=Edit2.Text;
  Parameters.ParamByName('p3').Value:=Edit3.Text;
  Parameters.ParamByName('p4').Value:=Edit4.Text;
  Parameters.ParamByName('p').Value:=DBGrid1.Fields[0].Value;

  ExecSQL;
end;
    ShowMessage('modification reussie');
    Edit1.Clear;Edit2.Clear;Edit3.Clear;Edit4.Clear;
    DataModule1.Q_recherchepharmacie.Close;
    DataModule1.Q_recherchepharmacie.Open;
end;

procedure Tf_pharmacie.Button3Click(Sender: TObject);
begin
if MessageDlg('Voulez-vous vraiment supprimer cet enregistrement ?', mtconfirmation,[mbNo,mbYes],0)=mryes then
begin
with DataModule1.Q_supprimerpharmacie do
begin
  close;
       Parameters.ParamByName('p').value:=DBGrid1.Fields[0].Value;
        ExecSQL;
      end;
      showmessage('Ligne supprimée avec succès !');
         Edit2.Clear;Edit4.Clear;Edit1.Clear; Edit3.Clear;
         DataModule1.Q_recherchepharmacie.Close;
         DataModule1.Q_recherchepharmacie.Open;
end;

end;

procedure Tf_pharmacie.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text:=DBGrid1.Fields[1].Value;
  Edit2.Text:=DBGrid1.Fields[2].Value;
  Edit3.Text:=DBGrid1.Fields[3].Value;
  Edit4.Text:=DBGrid1.Fields[4].Value;
end;

procedure Tf_pharmacie.Edit8Change(Sender: TObject);
begin
with DataModule1.Q_recherchepharmacie do
begin
  Close;
    SQL.Clear;
    SQL.Add('select id,nom,pr,contact,feedback');
    SQL.Add('from pharmacie');
    SQL.Add('where nom like:p');
    SQL.Add('order by nom');
    Parameters.ParamByName('p').Value:=Edit8.Text+'%';
    Open;
    DataModule1.Q_recherchepharmacie.Close;
    DataModule1.Q_recherchepharmacie.Open;
end;

end;

end.
