unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ComCtrls, DB, ADODB;

type
  TForm4 = class(TForm)
    ENicName: TEdit;
    EPassword: TEdit;
    EName: TEdit;
    EFamily: TEdit;
    EOtchestvo: TEdit;
    FonRegistr: TImage;
    LNicName: TLabel;
    LPassword: TLabel;
    LFamily: TLabel;
    Label2: TLabel;
    LOtchestvo: TLabel;
    CBPol: TComboBox;
    DTPBirthday: TDateTimePicker;
    BClose: TButton;
    BRegistr: TButton;
    LBirthday: TLabel;
    ADOQuery: TADOQuery;
    procedure BCloseClick(Sender: TObject);
    procedure BRegistrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm4.BCloseClick(Sender: TObject);
begin
   Form3.Show;
   Form4.Hide;
end;

procedure TForm4.BRegistrClick(Sender: TObject);
begin
if (ENicName.Text<>'')and(EPassword.text<>'')and(EFamily.Text<>'')and(EName.text<>'')and(EOtchestvo.Text<>'')and(CBPol.ItemIndex<>-1)and(DTPBirthday.Date<>0) then
 begin
 ADOQuery.Parameters.ParamByName('Username').Value:=ENicName.Text;
 ADOQuery.Parameters.ParamByName('Userpassword').Value:=EPassword.Text;
 ADOQuery.Parameters.ParamByName('UserNamePersonal').Value:=EName.Text;
 ADOQuery.Parameters.ParamByName('Userfamilypersonal').Value:=EFamily.Text;
 ADOQuery.Parameters.ParamByName('Userlastpersonal').Value:=EOtchestvo.Text;
 ADOQuery.Parameters.ParamByName('Usersexpersonal').Value:=CBPol.ItemIndex;
 ADOQuery.Parameters.ParamByName('Userbirthdaypersonal').Value:=DTPBirthday.Date;
 ADOQuery.ExecSQL;
ShowMessage('Регистрация прошла успешна.');
Form4.Hide;
Form3.Show;
end
else
ShowMessage('Вы не зарегистрированы! Пожалуйста заполните все поля!');
end;
end.

