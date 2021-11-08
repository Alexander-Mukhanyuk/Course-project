unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TForm2 = class(TForm)
    FonZagruzki: TImage;
    TimerZagruzki: TTimer;
    TextZagruzki: TImage;
    procedure TimerZagruzkiTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.TimerZagruzkiTimer(Sender: TObject);
begin
TimerZagruzki.Enabled:=False;
end;

end.
