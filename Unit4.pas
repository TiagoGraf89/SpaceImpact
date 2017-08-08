unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit3, Unit1, Unit6;

{$R *.dfm}

procedure TForm4.FormActivate(Sender: TObject);
begin
Form3.Table1.Insert;
edit2.text:=inttostr(p);
edit3.Text:=inttostr(faze);
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
Form3.Table1.fieldbyname('Nome').AsString := edit1.text;
Form3.Table1.fieldbyname('Pontos').AsString := edit2.text;
Form3.Table1.fieldbyname('Fase').AsString := edit3.text;
Form3.Table1.Post;
If Morreu=true then
begin
Showmessage('Game Over');
form6.show;
form1.Close;
end;
If (faze=1) and (morreu=false) then
begin
form1.Color:=clBlue;
FORM1.Show;
end;
if (faze=2) and (morreu=false) then
begin
form1.Color:=clred;
form1.Show;
end;
If (faze=3) and (morreu=false) then
begin
showmessage('Game Over!');
form6.show;
form1.Close;

end;
form4.Close;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
form3.Table1.Cancel;
form1.Close;
form4.Close;
end;

procedure TForm4.DBEdit2Change(Sender: TObject);
begin
//DBEdit2.Text:=inttostr(p);
end;

procedure TForm4.DBEdit3Change(Sender: TObject);
begin
//DBEdit3.Text:=inttostr(faze);
end;

procedure TForm4.FormShow(Sender: TObject);
begin
{DBedit2.DataSource:=form3.datasource1;
DBedit2.DataField:='Pontos';
DBEdit1.DataSource:=form3.datasource1;
DBEdit1.DataField:='Nome';
DBEdit3.DataSource:=form3.DataSource1;
DBEdit3.DataField:='Fase';
Form3.Table1.Insert;
DBedit2.text:=inttostr(p);
DBEdit3.Text:=inttostr(faze);}
end;

end.
