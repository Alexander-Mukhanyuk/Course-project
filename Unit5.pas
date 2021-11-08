unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, DB, ADODB, DBCtrls,ShellAPI;

type
  TForm5 = class(TForm)
    Fon_programms: TImage;
    Aconomiuy: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    dbtxtUserNamePersonal: TDBText;
    dbtxtUserFamilyPersonal: TDBText;
    dbtxtUserLastPersonal: TDBText;
    dbtxtUserBirthdayPersonal: TDBText;
    dbtxtUserSexPersonal: TDBText;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button6: TButton;
    BExit: TButton;
    Button7: TButton;
    Button4: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BExitClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure AconomiuyClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit3, Unit1,Unit6, Unit7;

{$R *.dfm}

procedure TForm5.FormShow(Sender: TObject);
begin
ADOQuery1.Active:=False;
ADOQuery1.Parameters.ParamByName('UserInt').Value:=Unit3.UserID+1;
ADOQuery1.ExecSQL;
ADOQuery1.Active:=True;

if dbtxtUserSexPersonal.Caption='0' then
begin
Label6.Caption:='Мужской';
end
else
begin
Label6.Caption:='Женский';
end;
end;

procedure TForm5.Button1Click(Sender: TObject);
var game:string;
    p:PChar;
begin
    game:='Игра Магазин\SuperMarket.exe';
    p:=PChar(game);
    ShellExecute(Form5.Handle,'Open',p,nil,nil,SW_SHOW);
end;

procedure TForm5.BExitClick(Sender: TObject);
begin
Form5.Hide;
Form1.Show;
Form3.EName.Text:='';
Form3.EPassword.Text:='';
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
form6.WebBrowser1.Navigate(ExtractFilePath(ParamStr(0))+'Информация\Категория продуктов.htm');
Form6.Show;
Form5.Hide;
end;

procedure TForm5.Button7Click(Sender: TObject);
var game1:string;
    p:PChar;
begin
    game1:='Игра Студенческий кошелёк\game.exe';
    p:=PChar(game1);
    ShellExecute(Form5.Handle,'Open',p,nil,nil,SW_SHOW);
end;

procedure TForm5.AconomiuyClick(Sender: TObject);
begin
form6.WebBrowser1.Navigate(ExtractFilePath(ParamStr(0))+'Информация\Бюджет Студента.htm');
Form6.Show;
Form5.Hide;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
 form6.WebBrowser1.Navigate(ExtractFilePath(ParamStr(0))+'Информация\Создание Бюджета.htm');
Form6.Show;
Form5.Hide;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  form6.WebBrowser1.Navigate(ExtractFilePath(ParamStr(0))+'Информация\Мелкие советы.htm');
Form6.Show;
Form5.Hide;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
Form5.Hide;
form7.show;
end;


end.
