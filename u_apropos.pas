unit u_apropos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tf_apropos = class(TForm)
    RichEdit1: TRichEdit;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_apropos: Tf_apropos;

implementation

{$R *.dfm}

end.
