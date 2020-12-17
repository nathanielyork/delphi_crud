unit u_produit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.FileCtrl, Data.Win.ADODB, Vcl.DBCtrls;

type
  Tf_produit = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Edit8: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit8Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_produit: Tf_produit;

implementation

{$R *.dfm}

uses u_accueil, u_aide, u_apropos, u_client, u_connexion, u_datamodule1, u_etat,
  u_fichier, u_info, u_pharmacie;

procedure Tf_produit.Button1Click(Sender: TObject);
begin
 if (Edit1.Text='') then
  begin
   showMessage('Veuillez entrer le nom du formateur');
   Edit2.SetFocus;
   Abort;
  end
  else if (Edit2.Text='') then
    begin
      showMessage('Veuillez entrer le prénom du formateur');
      Edit3.SetFocus;
      Abort;
    end
    else if(Edit3.Text='') then
    begin
      ShowMessage('tffffffffffk');
      Edit3.SetFocus;
      Abort
    end
    else
    begin
        With DataModule1.T_produit do
        begin
          Open;
          Insert;
          FieldByName('nom').AsString:=Edit1.Text;
          FieldByName('descr').AsString:=Edit2.Text;
          FieldByName('stock').AsString:=Edit3.Text;
          Post;
          ShowMessage('ajout effectué!');
          Edit1.Clear;Edit2.Clear;Edit3.Clear;
          DataModule1.Q_rechercheproduit.Close;
          DataModule1.Q_rechercheproduit.Open;
        end;
    end;
end;

procedure Tf_produit.Button2Click(Sender: TObject);
begin
with DataModule1.Q_modifproduit do
begin
  Close;
          Parameters.ParamByName('p1').Value:=Edit1.Text;
          Parameters.ParamByName('p2').Value:=Edit2.Text;
          Parameters.ParamByName('p3').Value:=Edit3.Text;
          Parameters.ParamByName('p').Value:=DBGrid1.Fields[0].Value;
  ExecSQL;
end;
ShowMessage('mdification effectue avec succes!!');
Edit1.Clear; Edit2.Clear; Edit3.Clear;
DataModule1.Q_rechercheproduit.Close;
DataModule1.Q_rechercheproduit.Open;
end;

procedure Tf_produit.Button3Click(Sender: TObject);
begin
if MessageDlg('Voulez-vous vraiment supprimer cet enregistrement ?', mtconfirmation,[mbNo,mbYes],0)=mryes then
begin
with DataModule1.Q_sup_produit do
begin
  close;
       Parameters.ParamByName('p').value:=DBGrid1.Fields[0].Value;
        ExecSQL;
      end;
      showmessage('Ligne supprimée avec succès !');
         Edit2.Clear; Edit3.Clear;
         DataModule1.Q_rechercheproduit.Close;
         DataModule1.Q_rechercheproduit.Open;
end;
end;

procedure Tf_produit.Button4Click(Sender: TObject);
begin
//with DataModule1.liste_des_produits do
//begin
//
//end;
end;

procedure Tf_produit.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:=DBGrid1.Fields[1].Value;
Edit2.Text:=DBGrid1.Fields[2].Value;
Edit3.Text:=DBGrid1.Fields[3].Value;
end;

procedure Tf_produit.Edit8Change(Sender: TObject);
begin
with DataModule1.Q_rechercheproduit do
begin
  Close;
    SQL.Clear;
    SQL.Add('select id,nom,descr, stock');
    SQL.Add('from produit');
    SQL.Add('where nom like:p');
    SQL.Add('order by nom,descr');
    Parameters.ParamByName('p').Value:=Edit8.Text+'%';
    Open;
    DataModule1.Q_rechercheproduit.Close;
    DataModule1.Q_rechercheproduit.Open;
end;

end;

end.
