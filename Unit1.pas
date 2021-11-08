unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Menus,ShellAPI,MMSystem;

type
  TForm1 = class(TForm)
    Start: TButton;
    Exit: TButton;
    MainMenu: TMainMenu;
    C1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    FonMenu: TImage;
    N1: TMenuItem;
    procedure ExitClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure StartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.dfm}



procedure TForm1.ExitClick(Sender: TObject);
begin
Close;
end;

procedure TForm1.N2Click(Sender: TObject);
var developer:string;
    p:PChar;
begin
    developer:='О разработчике\Project1.exe';
    p:=PChar(developer);
    ShellExecute(Form1.Handle,'Open',p,nil,nil,SW_SHOW);
end;

procedure TForm1.N3Click(Sender: TObject);
var programm:string;
    p:PChar;
begin
    programm:='О программе\Project1.exe';
    p:=PChar(programm);
    ShellExecute(Form1.Handle,'Open',p,nil,nil,SW_SHOW);
end;


procedure TForm1.StartClick(Sender: TObject);
begin
   Form3.Show;
   hide;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
PlaySound(PChar('Музыка\Фоновая музыка.wav'),0,SND_ASYNC);
end;

 

procedure TForm1.N1Click(Sender: TObject);
begin
  SHellEXECUTE(Handle,'open','Справка\Справка.chm',nil,nil,SW_SHOWNORMAL);
end;

end.
