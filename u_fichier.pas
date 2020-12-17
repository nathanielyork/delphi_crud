unit u_fichier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  Tbu = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  bu: Tbu;

implementation

{$R *.dfm}

end.
