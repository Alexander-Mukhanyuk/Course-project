unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, DB, ADODB;

type
  TForm3 = class(TForm)
    Fon_registr: TImage;
    BRegistr: TButton;
    BVxod: TButton;
    EName: TEdit;
    EPassword: TEdit;
    LName: TLabel;
    LPassword: TLabel;
    ADOConnection: TADOConnection;
    ADODataSet: TADODataSet;
    DataSource: TDataSource;
    Proverka: TLabel;
    TExit: TButton;
    procedure BRegistrClick(Sender: TObject);
    procedure BVxodClick(Sender: TObject);
    procedure TExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  UserID:integer;

implementation

uses Unit4, Unit5, Unit1;

{$R *.dfm}

procedure TForm3.BRegistrClick(Sender: TObject);
begin
   Form4.Show;
   Form3.Close;
end;

procedure TForm3.BVxodClick(Sender: TObject);
var LogPassword:array of string;
I,J,count:Integer;
Login,Password,ResultLogPass:string;
begin
  SetLength(LogPassword,800);
ADODataSet.Active:=True;
ADODataSet.First;
for i:=0 to ADODataSet.RecordCount-1 do
begin
LogPassword[i]:=ADODataSet.FieldValues['UserName'] + ''+ ADODataSet.FieldValues['UserPassword'];
ADODataSet.Next;
Inc(count);
end;
ResultLogPass:=Trim(EName.Text)+''+Trim(EPassword.Text);

for j:=0 to count-1 do
begin
if ResultLogPass = LogPassword[j] then
begin
UserID:=j;
hide;
Form5.Show;
end
else
Proverka.caption:='Неверный логин или пароль'
end;
end;


procedure TForm3.TExitClick(Sender: TObject);
begin
Form3.Hide;
Form1.Show;
end;

end.
 