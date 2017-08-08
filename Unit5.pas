unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, MPlayer, ExtCtrls;

type
  TForm5 = class(TForm)
    Animate1: TAnimate;
    MediaPlayer1: TMediaPlayer;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure Animate1Stop(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm5.FormActivate(Sender: TObject);
begin
Form5.Width:=Screen.Width;
Form5.Height:=Screen.Height;
MediaPlayer1.FileName:=GetCurrentDir+'\sons\intro.mp3';
MediaPlayer1.Open;
MediaPlayer1.Play;
Cursor:=crNone;
Animate1.Cursor:=crNone;
Animate1.FileName:=GetCurrentDir+'\sons\Intro.avi';
Animate1.Play(1,Animate1.FrameCount,1);
end;

procedure TForm5.Animate1Stop(Sender: TObject);
begin
Form2.show;
end;

procedure TForm5.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
Form2.show;
end;

end.
