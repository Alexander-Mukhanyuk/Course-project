unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Fon: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    LBudget: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LZatrat: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Label5: TLabel;
    Image2: TImage;
    Label6: TLabel;
    Image3: TImage;
    Label7: TLabel;
    Image4: TImage;
    Label8: TLabel;
    Image5: TImage;
    Label9: TLabel;
    Image6: TImage;
    Label10: TLabel;
    Image7: TImage;
    Label11: TLabel;
    Image8: TImage;
    Label12: TLabel;
    Image9: TImage;
    Label13: TLabel;
    Image10: TImage;
    Label14: TLabel;
    Image11: TImage;
    Label15: TLabel;
    Image12: TImage;
    Label16: TLabel;
    Image13: TImage;
    Label17: TLabel;
    Image14: TImage;
    Label18: TLabel;
    Image15: TImage;
    Label19: TLabel;
    Image16: TImage;
    Label20: TLabel;
    Image17: TImage;
    Label21: TLabel;
    Image18: TImage;
    Label22: TLabel;
    Image19: TImage;
    Label23: TLabel;
    Image20: TImage;
    Label24: TLabel;
    Image21: TImage;
    Label25: TLabel;
    Image22: TImage;
    Label26: TLabel;
    Image23: TImage;
    Label27: TLabel;
    Image24: TImage;
    Label28: TLabel;
    Image25: TImage;
    Label29: TLabel;
    Image26: TImage;
    Label30: TLabel;
    Image27: TImage;
    Label31: TLabel;
    Image28: TImage;
    Label32: TLabel;
    Image29: TImage;
    Label33: TLabel;
    Image30: TImage;
    Label34: TLabel;
    Image31: TImage;
    Label35: TLabel;
    Image32: TImage;
    Label36: TLabel;
    Image33: TImage;
    Label37: TLabel;
    Image34: TImage;
    Label38: TLabel;
    Image35: TImage;
    Label39: TLabel;
    Image36: TImage;
    Label40: TLabel;
    Image37: TImage;
    Label41: TLabel;
    Image38: TImage;
    Label42: TLabel;
    Image39: TImage;
    Label43: TLabel;
    Image40: TImage;
    Label44: TLabel;
    Image41: TImage;
    Label45: TLabel;
    Image42: TImage;
    Label46: TLabel;
    Image43: TImage;
    Label47: TLabel;
    Image44: TImage;
    Label48: TLabel;
    Image45: TImage;
    Label49: TLabel;
    Image46: TImage;
    Label50: TLabel;
    Image47: TImage;
    Label51: TLabel;
    Image48: TImage;
    Label52: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    Button1: TButton;
    Label53: TLabel;
    Number: TLabel;
    Button2: TButton;
    Button3: TButton;
    LTime: TLabel;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var summa:Double;
    n:Integer;
begin
  n:=0;
  summa:=0;
  if CheckBox1.Checked then
  begin
  summa:=summa+2.76;
  n:=n+1;
  end;
  if CheckBox2.Checked then
  begin
  summa:=summa+2.54;
  n:=n+1;
  end;
  if CheckBox3.Checked then
  begin
  summa:=summa+2.15;
  n:=n+1;
  end;
  if CheckBox4.Checked then
  begin
  summa:=summa+3.11;
  n:=n+1;
  end;
  if CheckBox5.Checked then
  begin
  summa:=summa+2.26;
  n:=n+1;
  end;
  if CheckBox6.Checked then
  begin
  summa:=summa+0.40;
  n:=n+1;
  end;
  if CheckBox7.Checked then
  begin
  summa:=summa+25;
  n:=n+1;
  end;
  if CheckBox8.Checked then
  begin
  summa:=summa+0.70;
  n:=n+1;
  end;
  if CheckBox9.Checked then
  begin
  summa:=summa+0.87;
  n:=n+1;
  end;
  if CheckBox10.Checked then
  begin
  summa:=summa+1.25;
  n:=n+1;
  end;
  if CheckBox11.Checked then
  begin
  summa:=summa+0.93;
  n:=n+1;
  end;
  if CheckBox12.Checked then
  begin
  summa:=summa+0.98;
  n:=n+1;
  end;
  if CheckBox13.Checked then
  begin
  summa:=summa+0.56;
  n:=n+1;
  end;
  if CheckBox14.Checked then
  begin
  summa:=summa+3.12;
  n:=n+1;
  end;
  if CheckBox15.Checked then
  begin
  summa:=summa+5;
  n:=n+1;
  end;
  if CheckBox16.Checked then
  begin
  summa:=summa+1.46;
  n:=n+1;
  end;
  if CheckBox17.Checked then
  begin
  summa:=summa+2.19;
  n:=n+1;
  end;
  if CheckBox18.Checked then
  begin
  summa:=summa+1.76;
  n:=n+1;
  end;
  if CheckBox19.Checked then
  begin
  summa:=summa+3.27;
  n:=n+1;
  end;
  if CheckBox20.Checked then
  begin
  summa:=summa+1.79;
  n:=n+1;
  end;
  if CheckBox21.Checked then
  begin
  summa:=summa+1.98;
  n:=n+1;
  end;
  if CheckBox22.Checked then
  begin
  summa:=summa+0.86;
  n:=n+1;
  end;
  if CheckBox23.Checked then
  begin
  summa:=summa+2.69;
  n:=n+1;
  end;
  if CheckBox24.Checked then
  begin
  summa:=summa+5.73;
  n:=n+1;
  end;
  if CheckBox25.Checked then
  begin
  summa:=summa+1.63;
  n:=n+1;
  end;
  if CheckBox26.Checked then
  begin
  summa:=summa+0.54;
  n:=n+1;
  end;
  if CheckBox27.Checked then
  begin
  summa:=summa+3.24;
  n:=n+1;
  end;
  if CheckBox28.Checked then
  begin
  summa:=summa+1.38;
  n:=n+1;
  end;
  if CheckBox29.Checked then
  begin
  summa:=summa+1.25;
  n:=n+1;
  end;
  if CheckBox30.Checked then
  begin
  summa:=summa+2.30;
  n:=n+1;
  end;
  if CheckBox31.Checked then
  begin
  summa:=summa+3;
  n:=n+1;
  end;
  if CheckBox32.Checked then
  begin
  summa:=summa+2.59;
  n:=n+1;
  end;
  if CheckBox33.Checked then
  begin
  summa:=summa+1.27;
  n:=n+1;
  end;
  if CheckBox34.Checked then
  begin
  summa:=summa+3.20;
  n:=n+1;
  end;
  if CheckBox35.Checked then
  begin
  summa:=summa+1.57;
  n:=n+1;
  end;
  if CheckBox36.Checked then
  begin
  summa:=summa+1.34;
  n:=n+1;
  end;
  if CheckBox37.Checked then
   begin
  summa:=summa+2.49;
  n:=n+1;
  end;
  if CheckBox38.Checked then
  begin
  summa:=summa+2.78;
  n:=n+1;
  end;
  if CheckBox39.Checked then
  begin
  summa:=summa+2.34;
  n:=n+1;
  end;
  if CheckBox40.Checked then
  begin
  summa:=summa+0.97;
  n:=n+1;
  end;
  if CheckBox41.Checked then
  begin
  summa:=summa+5.69;
  n:=n+1;
  end;
  if CheckBox42.Checked then
  begin
  summa:=summa+11.87;
  n:=n+1;
  end;
  if CheckBox43.Checked then
  begin
  summa:=summa+9.34;
  n:=n+1;
  end;
  if CheckBox44.Checked then
  begin
  summa:=summa+3.12;
  n:=n+1;
  end;
  if CheckBox45.Checked then
  begin
  summa:=summa+2.34;
  n:=n+1;
  end;
  if CheckBox46.Checked then
  begin
  summa:=summa+0.57;
  n:=n+1;
  end;
  if CheckBox47.Checked then
  begin
  summa:=summa+1.79;
  n:=n+1;
  end;
  if CheckBox48.Checked then
  begin
  summa:=summa+1.09;
  n:=n+1;
  end;
  LZatrat.Caption:=FloatToStr(summa);
  Number.Caption:=IntToStr(n)
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if StrToFloat(LZatrat.Caption)<StrToFloat(LBudget.Caption) then
   if (CheckBox9.Checked or CheckBox10.Checked  or CheckBox12.Checked or CheckBox13.Checked or CheckBox16.Checked) and (CheckBox1.Checked or CheckBox2.Checked or CheckBox3.Checked or CheckBox4.Checked or CheckBox5.Checked or CheckBox6.Checked or CheckBox8.Checked or CheckBox22.Checked or CheckBox23.Checked or CheckBox30.Checked or CheckBox40.Checked) and (CheckBox7.Checked or CheckBox24.Checked or CheckBox31.Checked) and (CheckBox19.Checked or CheckBox17.Checked or CheckBox20.Checked or CheckBox21.Checked) and ( CheckBox18.Checked or CheckBox15.Checked or CheckBox11.Checked or CheckBox25.Checked or CheckBox26.Checked or CheckBox27.Checked or CheckBox28.Checked or CheckBox46.Checked or CheckBox47.Checked or CheckBox48.Checked) and (CheckBox33.Checked or CheckBox34.Checked or CheckBox35.Checked or CheckBox36.Checked or CheckBox37.Checked or CheckBox38.Checked or CheckBox39.Checked) and (CheckBox41.Checked or CheckBox42.Checked or CheckBox43.Checked or CheckBox44.Checked) and CheckBox45.Checked then
   begin
     ShowMessage('Ты выйграл.')
     end
   else
      ShowMessage('Ты проиграл. Молодец ты вложился в бюджет, но не смог выбрать товоры из всех групп.')
else
    ShowMessage('Вы проиграли. Так как потратили денег больше чем ваш бюджет.');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Hide;
end;





procedure TForm1.Button4Click(Sender: TObject);
begin
LTime.Caption:=TimeToStr(Time);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
LTime.Caption:=TimeToStr(Time);
end;

procedure TForm1.N1Click(Sender: TObject);
begin
Form2.WebBrowser1.Navigate(ExtractFilePath(ParamStr(0))+'Инструкция к игре\Инструкция.htm');
Form2.Show;
end;

end.
