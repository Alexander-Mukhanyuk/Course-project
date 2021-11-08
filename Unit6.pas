unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw;

type
  TForm6 = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
uses Unit5;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
Form5.Show;
Hide;
end;

end.
