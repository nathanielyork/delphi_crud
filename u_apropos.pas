unit u_apropos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tf_apropos = class(TForm)
    RichEdit1: TRichEdit;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_apropos: Tf_apropos;

implementation

{$R *.dfm}

end.
