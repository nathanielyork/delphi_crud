unit u_etat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tf_etat = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_etat: Tf_etat;

implementation

{$R *.dfm}

uses u_datamodule1;

end.
