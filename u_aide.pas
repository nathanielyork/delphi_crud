unit u_aide;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tf_aide = class(TForm)
    aide: TRichEdit;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_aide: Tf_aide;

implementation

{$R *.dfm}

end.
