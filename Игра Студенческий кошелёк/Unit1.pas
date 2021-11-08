unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Menus;

type
  TForm1 = class(TForm)
    Fon: TImage;
    Panel1: TPanel;
    SRBall: TEdit;
    Step: TButton;
    Label1: TLabel;
    LBudget: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LZatrat: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    B1: TMenuItem;
    Image1: TImage;
    Obschaga: TCheckBox;
    Button1: TButton;
    Edit1: TEdit;
    Image2: TImage;
    Magazin: TCheckBox;
    EMagazin: TEdit;
    Image3: TImage;
    ETransport: TCheckBox;
    Edit2: TEdit;
    Image4: TImage;
    ComboBox1: TComboBox;
    edt1: TEdit;
    Help: TButton;
    Image5: TImage;
    Koncelur: TCheckBox;
    Edit3: TEdit;
    Image6: TImage;
    CheckBox1: TCheckBox;
    Image7: TImage;
    Club: TCheckBox;
    Edit5: TEdit;
    Image8: TImage;
    Otdeh: TCheckBox;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Image9: TImage;
    Promtovar: TCheckBox;
    Edit4: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    N1: TMenuItem;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure StepClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure HelpClick(Sender: TObject);
    procedure SRBallClick(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit14Click(Sender: TObject);
    procedure Edit15Click(Sender: TObject);
    procedure Edit16Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure MagazinClick(Sender: TObject);
    procedure ETransportClick(Sender: TObject);
    procedure KoncelurClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ClubClick(Sender: TObject);
    procedure OtdehClick(Sender: TObject);
    procedure PromtovarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  summa:Double;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.StepClick(Sender: TObject);
var ball:double;
begin
    ball:=StrToFloat(SRBall.Text);
 if ball<5.0 then
 Lbudget.Caption:='45';
 if (ball>=5.0) and(ball<6.0) then
 Lbudget.Caption:='56,54';
  if (ball>=6.0) and(ball<8.0) then
 Lbudget.Caption:='89,23';
 if (ball>=8.0) and(ball<9.0) then
 Lbudget.Caption:='102,31';
 if (ball>=9.0) and(ball<=10.0) then
 Lbudget.Caption:='113,69';

end;

procedure TForm1.Button1Click(Sender: TObject);

begin
 summa:=0;
 if Obschaga.Checked then
 summa:=summa+StrToFloat(Edit1.Text);
 if Magazin.Checked then
 begin
 summa:=summa+StrToFloat(EMagazin.Text);
 summa:=summa+StrToFloat(Edit7.Text);
 summa:=summa+StrToFloat(Edit8.Text);
 summa:=summa+StrToFloat(Edit9.Text);
 end;
 if ETransport.Checked then
 summa:=summa+StrToFloat(Edit2.Text);
 if Koncelur.Checked then
 summa:=summa+StrToFloat(Edit3.Text);
 if CheckBox1.Checked then
 begin
    summa:=summa+StrToFloat(Edit10.Text);
 end;
 if Club.Checked then
 summa:=summa+StrToFloat(Edit5.Text);
  if Otdeh.Checked then
 summa:=summa+StrToFloat(Edit6.Text);
  if Promtovar.Checked then
 begin
 summa:=summa+StrToFloat(Edit4.Text);
 summa:=summa+StrtoFloat(Edit14.Text);
 summa:=summa+StrToFloat(Edit15.Text);
 summa:=summa+StrToFloat(Edit16.Text);
 end;
 LZatrat.Caption:= FloatToStr(summa);
 Label7.Caption:=FloattoSTR(StrToFloat(Lbudget.Caption) - StrToFloat(LZatrat.Caption));
 if StrToFloat(LBudget.Caption)<StrToFloat(LZatrat.Caption)then
 ShowMessage('Ты не правильно распределил бюджет. Нужно что-то сократить и пересмотреть свои затраты! =) ');
end;

procedure TForm1.HelpClick(Sender: TObject);
begin
 if ComboBox1.ItemIndex = 0 then
 begin
   LBudget.Caption:=FloatToStr(StrToFloat(LBudget.Caption)+StrToFloat(edt1.Text));
   ShowMessage('Вот денюжка.Ты главное не голодай и трать с умом.');
 end;
  if ComboBox1.ItemIndex = 1 then
 begin
   LBudget.Caption:=FloatToStr(StrToFloat(LBudget.Caption)+StrToFloat(edt1.Text));
   ShowMessage('Мы что с мамой их печатаем!');
 end;
 if ComboBox1.ItemIndex = 2 then
 begin
   LBudget.Caption:=FloatToStr(StrToFloat(LBudget.Caption)+StrToFloat(edt1.Text));
   ShowMessage('Через маму отправила. Может тебе надо привезти еду, мы с дедушкой выезжаем!');
 end;
 if ComboBox1.ItemIndex = 3 then
 begin
   ShowMessage('Вся пенсия у бабушки звони ей!');
 end;
 if ComboBox1.ItemIndex = 4 then
 begin
   ShowMessage('У самого мышь в кошельке повесилась. Жду степендиии!');
 end;
 if ComboBox1.ItemIndex = 5 then
 begin
   LBudget.Caption:=FloatToStr(StrToFloat(LBudget.Caption)+StrToFloat(edt1.Text));
   ShowMessage('Работать иди уже, а не на моей с родителями шее сидишь!');
 end;
 if ComboBox1.ItemIndex = 6 then
 begin
   LBudget.Caption:=FloatToStr(StrToFloat(LBudget.Caption)+StrToFloat(edt1.Text));
   ShowMessage('Работать иди уже, а не на моей с родителями шее сидишь!');
end;
end;


procedure TForm1.SRBallClick(Sender: TObject);
begin
SRBall.Text:='';
end;


procedure TForm1.Edit4Click(Sender: TObject);
begin
Edit4.Text:='';
end;

procedure TForm1.Edit14Click(Sender: TObject);
begin
Edit14.Text:='';
end;

procedure TForm1.Edit15Click(Sender: TObject);
begin
Edit15.Text:='';
end;

procedure TForm1.Edit16Click(Sender: TObject);
begin
Edit16.Text:='';
end;

procedure TForm1.B1Click(Sender: TObject);
begin
form2.WebBrowser1.Navigate(ExtractFilePath(ParamStr(0))+'Инструкция к игре\Инструкция.htm');
Form2.Show;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.MagazinClick(Sender: TObject);
begin

EMagazin.Text:='0,0';
Edit7.Text:='0,0';
Edit8.Text:='0,0';
Edit9.Text:='0,0';

end;


procedure TForm1.ETransportClick(Sender: TObject);
begin
Edit2.Text:='0,0';
end;

procedure TForm1.KoncelurClick(Sender: TObject);
begin
Edit3.Text:='0,0';
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
Edit10.Text:='0,0';
end;

procedure TForm1.ClubClick(Sender: TObject);
begin
 Edit5.Text:='0,0';
end;

procedure TForm1.OtdehClick(Sender: TObject);
begin
Edit6.Text:='0,0';
end;

procedure TForm1.PromtovarClick(Sender: TObject);
begin
Edit4.Text:='0,0';
Edit14.Text:='0,0';
Edit15.Text:='0,0';
Edit16.Text:='0,0';
end;


end.
