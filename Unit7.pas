unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MPlayer, StdCtrls,MMSystem;

type
  TForm7 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses Unit1, Unit5;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
MediaPlayer1.FileName:='Âèäåî\ÊÀÊ-ÒĞÀÒÈÒÜ-ÌÅÍÜØÅ_-ÅÑËÈ-ÒÛ-ÑÒÓÄÅÍÒ.wmv';
MediaPlayer1.Display:=Panel1;
MediaPlayer1.Open;
MediaPlayer1.Play;
PlaySound(nil,0,SND_ASYNC);
end;



procedure TForm7.Button2Click(Sender: TObject);
begin
Form7.Hide;
PlaySound(PChar('Ìóçûêà\Ôîíîâàÿ ìóçûêà.wav'),0,SND_ASYNC);
Form5.Show;
end;

end.
