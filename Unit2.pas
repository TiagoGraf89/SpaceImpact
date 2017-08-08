unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, MPlayer;

type
  TForm2 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    Timer1: TTimer;
    Image2: TImage;
    MediaPlayer1: TMediaPlayer;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  h:byte;
  Form2: TForm2;

implementation

uses Unit1, Unit3, Unit5, Unit4, Unit6;

{$R *.dfm}

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
form5.MediaPlayer1.Stop;
Form1.Color:=clBlack;
Timer1.Enabled:=false;
form1.showmodal;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
MediaPlayer1.FileName:=GetCurrentDir+'\sons\button.wav';
MediaPlayer1.Open;
form2.Width:=Screen.Width;
form2.Height:=Screen.Height;
form3.Table1.DatabaseName:=GetCurrentDir;
form3.table1.TableName:='Recordes.db';
Form3.Table1.Active:=true;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin

if Form5.MediaPlayer1.Position>form5.MediaPlayer1.TrackLength[0]-1000 then
begin
Form1.MediaPlayer1.Position:=1;
form1.MediaPlayer1.Play;
end;
end;

procedure TForm2.SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
If h<>1 then
begin
MediaPlayer1.Position:=1;
MediaPlayer1.play;
end;
h:=1;
end;

procedure TForm2.SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
If h<>2 then
begin
MediaPlayer1.Position:=1;
MediaPlayer1.play;
end;
h:=2;
end;

procedure TForm2.SpeedButton3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
If h<>3 then
begin
MediaPlayer1.Position:=1;
MediaPlayer1.play;
end;
h:=3;
end;

procedure TForm2.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
h:=0 ;
end;

end.
