unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls;

type
  TForm6 = class(TForm)
    Animate1: TAnimate;
    Image1: TImage;
    Image2: TImage;
    Timer1: TTimer;
    Image3: TImage;
    procedure FormActivate(Sender: TObject);
    procedure Animate1Stop(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TForm6.FormActivate(Sender: TObject);
begin
Form5.mediaplayer1.Position:=1;
Form5.mediaplayer1.play;
image2.Top:=1000;
Timer1.Enabled:=true;
image3.Top:=-100;
form6.Width:=Screen.Width;
form6.Height:=Screen.Height;
Animate1.Play(1,Animate1.FrameCount,1);
end;

procedure TForm6.Animate1Stop(Sender: TObject);
begin
form6.Close;
end;

procedure TForm6.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If key=13 then
begin
Animate1.Stop;;
form6.Close;
end;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
Animate1.Cursor:=crNone;
form6.Cursor:=crNone;
Animate1.FileName:=GetCurrentDir+'\sons\Creditos.avi';
end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
if (image2.top>200) and (image2.top<900) then
image2.Top:=image2.Top-1;
If image2.top>500 then
image2.Top:=image2.Top-15;
if (image2.top<=200) and (image2.top>-100) then
image2.Top:=image2.Top-15;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Timer1.Enabled:=false;
end;

end.
