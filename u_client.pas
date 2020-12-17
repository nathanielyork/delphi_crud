unit u_client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  Tf_client = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    GroupBox1: TGroupBox;
    Edit8: TEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label8: TLabel;
    Edit9: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_client: Tf_client;

implementation

{$R *.dfm}

uses u_accueil, u_aide, u_apropos, u_connexion, u_datamodule1, u_etat,
  u_fichier, u_info, u_pharmacie, u_produit;

procedure Tf_client.Button2Click(Sender: TObject);
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
    else if (Edit5.Text='')then
    begin
      ShowMessage('remplir le(s) champ(s) vide(s)');
      Edit5.SetFocus;
      Abort;
    end
      else if (Edit6.Text='')then
    begin
      ShowMessage('remplir le(s) champ(s) vide(s)');
      Edit6.SetFocus;
      Abort;
    end
    else if (Edit7.Text='')then
    begin
      ShowMessage('remplir le(s) champ(s) vide(s)');
      Edit7.SetFocus;
      Abort;
    end
    else if (Edit9.Text='')then
    begin
      ShowMessage('remplir le(s) champ(s) vide(s)');
      Edit9.SetFocus;
      Abort;
    end
    else
    begin
      with DataModule1.T_client do
      begin
        Open;
        Insert;
        FieldByName('nom').AsString:=Edit1.Text;
        FieldByName('prenom').AsString:=Edit2.Text;
        FieldByName('contact').AsString:=Edit3.Text;
        FieldByName('centre').AsString:=Edit4.Text;
        FieldByName('quartier').AsString:=Edit5.Text;
        FieldByName('specialite').AsString:=Edit6.Text;
        FieldByName('titre').AsString:=Edit7.Text;
        FieldByName('produit').AsString:=Edit9.Text;
        Post;
        ShowMessage('ajout effectué!');
        Edit1.Clear;Edit2.Clear;Edit3.Clear;Edit4.Clear;Edit5.Clear;Edit6.Clear;Edit7.Clear;
        DataModule1.Q_rechercheclient.Close;
        DataModule1.Q_rechercheclient.Open;
      end;
    end;

end;

procedure Tf_client.Button3Click(Sender: TObject);
begin
with DataModule1.Q_modifclient do
begin
  Close;
          Parameters.ParamByName('p1').Value:=Edit1.Text;
          Parameters.ParamByName('p2').Value:=Edit2.Text;
          Parameters.ParamByName('p3').Value:=Edit3.Text;
          Parameters.ParamByName('p4').Value:=Edit4.Text;
          Parameters.ParamByName('p5').Value:=Edit5.Text;
          Parameters.ParamByName('p6').Value:=Edit6.Text;
          Parameters.ParamByName('p7').Value:=Edit7.Text;
          Parameters.ParamByName('p8').Value:=Edit9.Text;
          Parameters.ParamByName('p').Value:=DBGrid1.Fields[0].Value;
  ExecSQL;
end;
ShowMessage('mdification effectue avec succes!!');
           Edit1.Clear;
           Edit2.Clear;
           Edit4.Clear;
           Edit3.Clear;
           Edit5.Clear;
           Edit6.Clear;
           Edit7.Clear;
           Edit9.Clear;
DataModule1.Q_rechercheclient.Close;
DataModule1.Q_rechercheclient.Open;
end;

procedure Tf_client.Button4Click(Sender: TObject);
begin
if MessageDlg('Voulez-vous vraiment supprimer cet enregistrement ?', mtconfirmation,[mbNo,mbYes],0)=mryes then
begin
with DataModule1.Q_supclient do
begin
  close;
       Parameters.ParamByName('p').value:=DBGrid1.Fields[0].Value;
        ExecSQL;
      end;
      showmessage('Ligne supprimée avec succès !');
         Edit1.Clear;
          Edit2.Clear;
          Edit4.Clear;
           Edit3.Clear;
           Edit5.Clear;
           Edit6.Clear;
           Edit7.Clear;
           Edit9.Clear;
           Edit1.SetFocus;
         DataModule1.Q_rechercheclient.Close;
         DataModule1.Q_rechercheclient.Open;
end;

end;

procedure Tf_client.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:=DBGrid1.Fields[1].Value;
Edit2.Text:=DBGrid1.Fields[2].Value;
Edit3.Text:=DBGrid1.Fields[3].Value;
Edit4.Text:=DBGrid1.Fields[4].Value;
Edit5.Text:=DBGrid1.Fields[5].Value;
Edit6.Text:=DBGrid1.Fields[6].Value;
Edit7.Text:=DBGrid1.Fields[7].Value;
//Edit8.Text:=DBGrid1.Fields[8].Value;
Edit9.Text:=DBGrid1.Fields[9].Value;
end;

procedure Tf_client.Edit8Change(Sender: TObject);
begin
with DataModule1.Q_rechercheclient do
begin
  Close;
    SQL.Clear;
    SQL.Add('select id,nom,prenom,prenom,contact,centre,quartier,specialite,titre');
    SQL.Add('from client');
    SQL.Add('where nom like:p');
    SQL.Add('order by nom');
    Parameters.ParamByName('p').Value:=Edit8.Text+'%';
    Open;
    DataModule1.Q_rechercheclient.Close;
    DataModule1.Q_rechercheclient.Open;
end;

end;

end.
