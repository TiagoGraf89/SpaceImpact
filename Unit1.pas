unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, MPlayer;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Timer2: TTimer;
    Image5: TImage;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Label4: TLabel;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Timer7: TTimer;
    Image9: TImage;
    Timer8: TTimer;
    MediaPlayer1: TMediaPlayer;
    Timer9: TTimer;
    MediaPlayer2: TMediaPlayer;
    MediaPlayer3: TMediaPlayer;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Timer10: TTimer;
    Image21: TImage;
    Timer11: TTimer;
    Timer12: TTimer;
    Image22: TImage;
    Timer13: TTimer;
    Timer14: TTimer;
    Image23: TImage;
    MediaPlayer5: TMediaPlayer;
    MediaPlayer6: TMediaPlayer;
    Timer15: TTimer;
    Image24: TImage;
    Timer16: TTimer;
    Timer17: TTimer;
    Image25: TImage;
    Timer18: TTimer;
    Image26: TImage;
    Timer19: TTimer;
    Timer20: TTimer;
    MediaPlayer7: TMediaPlayer;
    MediaPlayer8: TMediaPlayer;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Timer21: TTimer;
    Timer22: TTimer;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer10Timer(Sender: TObject);
    procedure Timer11Timer(Sender: TObject);
    procedure Timer12Timer(Sender: TObject);
    procedure Timer13Timer(Sender: TObject);
    procedure Timer14Timer(Sender: TObject);
    procedure Timer15Timer(Sender: TObject);
    procedure Timer16Timer(Sender: TObject);
    procedure Timer17Timer(Sender: TObject);
    procedure Timer18Timer(Sender: TObject);
    procedure Timer19Timer(Sender: TObject);
    procedure Timer20Timer(Sender: TObject);
    procedure Timer21Timer(Sender: TObject);
    procedure Timer22Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  t,k,g,z,vida,FAZE:byte;
  w:integer;
  e:byte;
  p:integer;
  MOrreu:boolean;
  Form1: TForm1;

implementation

uses Unit2, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
if key=37 then
begin
image1.Left:= image1.Left-10;
image23.Left:=image23.left-10;
end;
if key=39 then
begin
image1.Left:= image1.Left+10;
image23.Left:=image23.left+10;
end;
if key=38 then
begin
image1.top:= image1.top-10;
image23.top:=image23.top-10;
end;
if key=40 then
begin
image1.top:= image1.top+10;
image23.top:=image23.top+10;
end;
If image1.top> 700 then
begin
image23.Top:=image23.top-10;
image1.Top:=image1.Top-10;
end;
If image1.top< 40 then
begin
image1.Top:=image1.Top+10;
image23.Top:=image23.Top+10;
end;
if image1.left<8 then
begin
image1.Left:= image1.Left+10;
image23.left:=image23.left+10;
end;
if image1.left>950 then
begin
image1.Left:= image1.Left-10;
image23.left:=image23.left-10;
end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
form1.Cursor:=crNone;
MediaPlayer1.FileName:=GetCurrentDir+'\sons\Musica.mp3';
MediaPlayer1.Open;
MediaPlayer1.Play;

image1.Left:=512;
image1.top:=650;

Image23.Left:=495;
image23.top:=640;

image2.Picture.LoadFromFile(GetCurrentDir+'\imagens\nave3.ico');
morreu:=true;
timer21.Enabled:=true;
Mediaplayer8.FileName:=getcurrentdir+'\sons\chef.wav';
mediaplayer8.open;

image1.Picture.LoadFromFile(GetCurrentDir+'\imagens\nave.ico');
Image3.Top:= 1;
Image4.Top:= 1;
Image5.Top:= 1;
image25.Left:=1024;
image26.Left:=1024;
image24.Picture.LoadFromFile(GetCurrentDir+'\imagens\chef.ico');
image22.Left:=1024;
timer4.Enabled:=true;

vida:=15;
MediaPlayer7.FileName:=GetCurrentDir+'\sons\missel.wav';
MediaPlayer7.Open;

image24.Left:=1024;

Timer15.Enabled:=true;

MediaPlayer6.FileName:=GetCurrentDir+'\sons\escudo.wav';
MediaPlayer6.Open;
MediaPlayer5.FileName:=GetCurrentDir+'\sons\vida.wav';
MediaPlayer5.Open;
Timer13.Enabled:=true;
E:=0;
IMAGE6.Visible:=TRUE;
IMAGE7.Visible:=TRUE;
IMAGE8.Visible:=TRUE;
If faze=0 then
P:=0;
Timer10.Enabled:=true;

Image3.Left:=1100;
image4.Left:=1100;
image5.Left:=1100;
timer7.Enabled:=true;
timer8.Enabled:=true;
timer9.Enabled:=true;
MediaPlayer2.FileName:=GetCurrentDir+'\sons\bomba.wav';
MediaPlayer2.Open;

MediaPlayer3.FileName:=GetCurrentDir+'\sons\explode.wav';
MediaPlayer3.Open;
Image9.Top:=-100;
Image9.Left:=random(1000);
Image10.left:=random(1000);
Image11.left:=random(1000);
Image12.left:=random(1000);
Image13.left:=random(1000);
Image14.left:=random(1000);
Image15.left:=random(1000);
Image16.left:=random(1000);
Image17.left:=random(1000);
Image18.left:=random(1000);
Image19.left:=random(1000);
Image20.left:=random(1000);

Image10.Top:=random(700);
Image11.Top:=random(700);
Image12.Top:=random(700);
Image13.Top:=random(700);
Image14.Top:=random(700);
Image15.Top:=random(700);
Image16.Top:=random(700);
Image17.Top:=random(700);
Image18.Top:=random(700);
Image19.Top:=random(700);
Image20.Top:=random(700);

image32.Top:=750;
image31.Top:=750;
image30.Top:=750;
label4.Top:=750;
timer4.Enabled:=true;
Randomize;
Image2.Left:=random(1000);
form1.Height:=Screen.Height;
form1.Width:=Screen.Width;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
var
a,b:boolean;
begin
if key = ' ' then
begin
a:=false;
b:=false;
If image3.Top < 5 then
begin
a:=true;
image30.Visible:=false;
MediaPlayer2.Stop;
MediaPlayer2.Position:=1;
MediaPlayer2.Play;
Image3.Left:=image1.Left+39;
image3.Top:=Image1.Top;
image3.Visible:=true;
Timer1.Enabled:=true;
end;

If (image4.Top < 5) and (a=false) then
begin
b:=true;
image31.Visible:=false;
MediaPlayer2.Stop;
MediaPlayer2.Position:=1;
MediaPlayer2.Play;
Image4.Left:=image1.Left+39;
image4.Top:=Image1.Top;
image4.Visible:=true;
Timer2.Enabled:=true;
end;

If (image5.Top < 5) and (a=false) and (b=false) then
begin
b:=true;
image32.Visible:=false;
MediaPlayer2.Stop;
MediaPlayer2.Position:=1;
MediaPlayer2.Play;
Image5.Left:=image1.Left+39;
image5.Top:=Image1.Top;
image5.Visible:=true;
Timer3.Enabled:=true;
end;

end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if image3.top< 5 then
image30.Visible:=true;
Image3.Top:=Image3.Top-3;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
Image4.Top:=Image4.Top-3;
if image4.top< 5 then
image31.Visible:=true;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
Image5.Top:=image5.Top-3;
if image5.top< 5 then
image32.Visible:=true;

end;

procedure TForm1.Timer4Timer(Sender: TObject);
var
a,b:Integer;
begin
label4.caption:=inttostr(p);
If k=0 then
k:=1;
image2.Top:=image2.Top+1+k;

        If (Image3.Left >= image2.Left-10) and (Image3.Left <= image2.Left+image2.Width)
        and (Image3.top >= image2.top) and (Image3.top <= image2.top+image2.Height) then
                begin
                image2.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
                MediaPlayer3.Stop;
                MediaPlayer3.Position:=1;
                MediaPlayer3.Play;
                randomize;
                a:=random(3);
                b:=random(3);
                image3.Visible:=false;
                p:=p+100;
                Image3.Left:=1024;
                image3.top:=-50;
                Timer5.Enabled:=true;
                end;
        If (Image4.Left >= image2.Left-10) and (Image4.Left <= image2.Left+image2.Width)
        and (Image4.top >= image2.top) and (Image4.top <= image2.top+image2.Height) then
                begin
                image2.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
                MediaPlayer3.Stop;
                MediaPlayer3.Position:=1;
                MediaPlayer3.Play;
                image4.Visible:=false;
                a:=random(3);
                b:=random(3);
                image4.top:=-50;
                p:=p+100;
                Image4.Left:=1024;
                Timer5.Enabled:=true;
                end;
        If (Image5.Left >= image2.Left-10) and (Image5.Left <= image2.Left+image2.Width)
        and (Image5.top >= image2.top) and (Image5.top <= image2.top+image2.Height) then
                begin
                p:=p+100;
                image2.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
                MediaPlayer3.Stop;
                MediaPlayer3.Position:=1;
                MediaPlayer3.Play;
                a:=random(3);
                b:=random(3);
                image5.Visible:=false;
                Image5.Left:=1024;
                image5.top:=-50;
                Timer5.Enabled:=true;
                end;
IF image2.Top >800 then
        begin
        image2.Top:=-50;
        image2.Left:=random(900)
        end;
IF (image2.top+image2.Width >= image1.Top) and (image2.top+image2.Width <= image1.top+image1.Height)
and (image2.Left+image2.Height >= image1.left) and (image2.Left <= image1.Left+image1.Width) then
        begin
        if image23.Visible=false then
        begin
        MediaPlayer3.Stop;
        MediaPlayer3.Position:=1;
        MediaPlayer3.Play;
        image2.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
        image1.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
        a:=random(5);
        b:=random(5);
        timer5.Enabled:=true;
        timer6.Enabled:=true;
        timer4.Enabled:=false;
        end;
        if image23.Visible=true then
        begin
        MediaPlayer3.Stop;
        MediaPlayer3.Position:=1;
        MediaPlayer3.Play;
        image2.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
        a:=random(5);
        b:=random(5);
        MediaPlayer6.Position:=1;
        MediaPlayer6.Play;
        timer5.Enabled:=true;
        image23.Visible:=false;
        timer4.Enabled:=false;
        end;
        end;

end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
randomize;
k:=random(4);
image2.visible:=false;
image2.Top:=-50;
randomize;
image2.Left:=random(900);
image2.Picture.LoadFromFile(GetCurrentDir+'\imagens\nave3.ico');
image2.Visible:=true;
timer4.Enabled:=true;
timer5.Enabled:=false;
end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin
e:=e+1;
If e = 4 then
begin
timer21.Enabled:=false;
timer18.Enabled:=false;
timer19.Enabled:=false;
timer20.Enabled:=false;
timer16.Enabled:=false;
timer17.Enabled:=false;
timer15.Enabled:=false;
timer10.Enabled:=false;
Timer1.Enabled:=false;
Timer2.Enabled:=false;
Timer3.Enabled:=false;
Timer4.Enabled:=false;
Timer5.Enabled:=false;
Timer6.Enabled:=false;
timer7.Enabled:=false;
timer8.Enabled:=false;
Timer13.Enabled:=false;
timer14.Enabled:=false;
showmessage('Game Over!! Pontuação: '+Label4.caption);
form4.showmodal;
end;

image1.Picture.LoadFromFile(GetCurrentDir+'\imagens\nave.ico');

IF e = 1 then
Image6.visible:=false;

IF e = 2 then
Image7.visible:=false;

IF e = 3 then
Image8.visible:=false;

timer4.Enabled:=true;
timer12.Enabled:=true;
Timer6.Enabled:=false;
end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
If Image10.Top >800 then
begin
image10.Left:=random(950);
Image10.Top:=0;
end;
Image10.top:=Image10.Top+15;
If Image11.Top >800 then
begin
image11.Left:=random(950);
Image11.Top:=0;
end;
Image11.top:=Image11.Top+15;
If Image12.Top >800 then
begin
image12.Left:=random(950);
Image12.Top:=0;
end;
Image12.top:=Image12.Top+25;
If Image13.Top >800 then
begin
image13.Left:=random(950);
Image13.Top:=0;
end;
Image13.top:=Image13.Top+25;
If Image14.Top >800 then
begin
image14.Left:=random(950);
Image14.Top:=0;
end;
Image14.top:=Image14.Top+25;
If Image15.Top >800 then
begin
image15.Left:=random(950);
Image15.Top:=0;
end;
Image15.top:=Image15.Top+55;
If Image16.Top >800 then
begin
image16.Left:=random(950);
Image16.Top:=0;
end;
Image16.top:=Image16.Top+55;
If Image17.Top >800 then
begin
image17.Left:=random(950);
Image17.Top:=0;
end;
Image17.top:=Image17.Top+55;
If Image18.Top >800 then
begin
image18.Left:=random(950);
Image18.Top:=0;
end;
Image18.top:=Image18.Top+50;
If Image19.Top >800 then
begin
image19.Left:=random(950);
Image19.Top:=0;
end;
Image19.top:=Image19.Top+50;
If Image20.Top >800 then
begin
image20.Left:=random(950);
Image20.Top:=0;
end;
Image20.top:=Image20.Top+50;
end;

procedure TForm1.Timer8Timer(Sender: TObject);
begin
If image9.Top >800 then
begin
image9.Top:=-100;
image9.Left:=random(1000);
end;
image9.Top:=image9.Top+2;
end;

procedure TForm1.Timer9Timer(Sender: TObject);
begin
If MediaPlayer1.TrackLength[0]>mediaPlayer1.Position-200 then
MediaPlayer1.Play;
If (strtoint(label4.Caption)=10000)  then
begin
MediaPlayer1.Stop;
end
else
MediaPlayer1.Resume;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form5.MediaPlayer1.play;
MediaPlayer1.Stop;
mediaplayer8.stop;
timer21.Enabled:=false;
timer18.Enabled:=false;
timer19.Enabled:=false;
timer20.Enabled:=false;
timer15.Enabled:=false;
Timer13.Enabled:=false;
timer10.Enabled:=false;
form2.Visible:=true;
MediaPlayer2.Stop;
MediaPlayer3.Stop;
Timer1.Enabled:=false;
Timer2.Enabled:=false;
Timer3.Enabled:=false;
Timer4.Enabled:=false;
Timer5.Enabled:=false;
Timer6.Enabled:=false;
Timer7.Enabled:=false;
Timer8.Enabled:=false;
Timer9.Enabled:=false;
end;

procedure TForm1.Timer10Timer(Sender: TObject);
begin
image21.Visible:=true;
timer12.Enabled:=false;
timer11.Enabled:=false;
randomize;
MediaPlayer7.Play;
Image21.Left:=image2.Left+10;
image21.Top:=image2.Top+image2.Height;
w:=random(3);
If image1.left<image2.Left then
begin
timer12.Enabled:=true;
timer11.Enabled:=false;
timer22.Enabled:=false;
end;
If image1.left+image1.Height > image2.Left+image2.Height then
begin
timer11.Enabled:=true;
timer12.Enabled:=false;
timer22.Enabled:=false;
end;
If (image1.left<image2.Left) and
   (image1.left+image1.Height > image2.Left+image2.Height) then
begin
timer11.Enabled:=false;
timer12.Enabled:=false;
timer22.Enabled:=true;
end;
end;

procedure TForm1.Timer11Timer(Sender: TObject);
begin
If (image21.left<=image1.Left+image1.Width) and
   (image21.left+image21.Width>=image1.Left) and
   (image21.top+image21.Height>=image1.top) and
   (image21.top<=image1.top+image1.Height) then
begin
If image23.Visible=false then
begin
MediaPlayer3.Stop;
MediaPlayer3.Play;
image1.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
image21.top:=800;
image21.left:=1024;
IF timer6.Enabled=false then
timer6.Enabled:=true;
timer11.Enabled:=false;
end;
If image23.Visible=true then
begin
MediaPlayer6.Play;
image23.Visible:=false;
image21.top:=800;
image21.left:=1024;
timer11.Enabled:=false;
end;

end;

image21.Top:=image21.top+5;
image21.Left:=image21.Left+2+w;
end;

procedure TForm1.Timer12Timer(Sender: TObject);
begin
If (image21.left<=image1.Left+image1.Width) and
   (image21.left+image21.Width>=image1.Left) and
   (image21.top+image21.Height>=image1.top) and
   (image21.top<=image1.top+image1.Height) then
begin
If image23.Visible=false then
begin
image21.top:=800;
image21.left:=1024;
MediaPlayer3.Stop;
MediaPlayer3.Play;
image1.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
IF timer6.Enabled=false then
timer6.Enabled:=true;
timer12.Enabled:=false;
end;
If image23.Visible=true then
begin
MediaPlayer6.Play;
image23.Visible:=false;
image21.top:=800;
image21.left:=1024;
timer12.Enabled:=false;
end;
end;


image21.Top:=image21.top+5;
image21.Left:=image21.Left-2-w;
end;

procedure TForm1.Timer13Timer(Sender: TObject);
begin
image22.Top:=-100;
image22.Left:=random(900);
timer14.Enabled:=true;
end;

procedure TForm1.Timer14Timer(Sender: TObject);
begin
image22.Top:=image22.top+3;
If (image22.left<=image1.Left+image1.Width) and
   (image22.left+image22.Width>=image1.Left) and
   (image22.top+image22.Height>=image1.top) and
   (image22.top<=image1.top+image1.Height) then
begin
If e=0 then
begin
image23.visible:=true;
e:=e+1;
end;
if e=1 then
Image6.Visible:=true;
if e=2 then
Image7.Visible:=true;
if e=3 then
Image8.Visible:=true;
MediaPlayer5.Play;
e:=e-1;
timer14.Enabled:=false;
image22.Top:=-100;
p:=p+1000;
end;
end;
procedure TForm1.Timer15Timer(Sender: TObject);
begin
t:=0;
Image25.Left:=Image24.Left+10;
image25.Top:=image24.Top+image24.Height;
Image26.Left:=Image24.Left+10;
image26.Top:=image24.Top+image24.Height;
timer18.Enabled:=true;
Timer16.Enabled:=true;
image24.Left:=100;
image24.top:=-100;
timer15.Enabled:=false;
end;

procedure TForm1.Timer16Timer(Sender: TObject);
begin
If image1.Top <500 then
begin
image1.Top:=image1.Top+10;
Image23.Top:=image23.top+10;
end;
If image2.top>=750 then
begin
timer4.Enabled:=false;
timer10.Enabled:=false;
image2.Left:=1024;
image21.Left:=1024;
end;
If image24.top < 200 then
Image24.Top:=image24.Top+3;

If image24.Top >= 200 then
begin
If image24.left < 900 then
begin
image24.Left:=image24.Left+3;
If (image3.left<=image24.Left+image24.Width) and
   (image3.left+image3.Width>=image24.Left) and
   (image3.top+image3.Height>=image24.top) and
   (image3.top<=image24.top+image24.Height) then
begin
p:=p+500;
Image3.Top:=-10;
image3.Left:=1024;
MediaPlayer3.Play;
Vida:=vida-1;
if vida=0 then
begin
p:=p+2000;
form1.Color:=clWhite;
Morreu:=false;
form1.Refresh;
image24.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
timer21.Enabled:=false;
Timer1.Enabled:=false;
Timer2.Enabled:=false;
Timer3.Enabled:=false;
Timer4.Enabled:=false;
Timer5.Enabled:=false;
Timer6.Enabled:=false;
Timer7.Enabled:=false;
Timer8.Enabled:=false;
Timer9.Enabled:=false;
Timer10.Enabled:=false;
Timer11.Enabled:=false;
Timer12.Enabled:=false;
Timer13.Enabled:=false;
Timer14.Enabled:=false;
Timer15.Enabled:=false;
Timer16.Enabled:=false;
Timer17.Enabled:=false;
Timer18.Enabled:=false;
Timer19.Enabled:=false;
Timer20.Enabled:=false;
FAZE:=faze+1;
If faze=1 then
form1.Color:=clblack;
if faze=2 then
form1.Color:=clBlue;
if faze=3 then
form1.Color:=clred;
showmessage('Missão '+inttostr(faze)+' Completada!');
form4.ShowModal;
end;
end;
If (image4.left<=image24.Left+image24.Width) and
   (image4.left+image4.Width>=image24.Left) and
   (image4.top+image4.Height>=image24.top) and
   (image4.top<=image24.top+image24.Height) then
begin
p:=p+500;
Image4.Top:=-10;
image4.Left:=1024;
MediaPlayer3.Play;
Vida:=vida-1;
if vida=0 then
begin
p:=p+2000;
form1.Color:=clWhite;
form1.Refresh;
label4.Refresh;
image24.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
Morreu:=false;
timer21.Enabled:=false;
Timer1.Enabled:=false;
Timer2.Enabled:=false;
Timer3.Enabled:=false;
Timer4.Enabled:=false;
Timer5.Enabled:=false;
Timer6.Enabled:=false;
Timer7.Enabled:=false;
Timer8.Enabled:=false;
Timer9.Enabled:=false;
Timer10.Enabled:=false;
Timer11.Enabled:=false;
Timer12.Enabled:=false;
Timer13.Enabled:=false;
Timer14.Enabled:=false;
Timer15.Enabled:=false;
Timer16.Enabled:=false;
Timer17.Enabled:=false;
Timer18.Enabled:=false;
Timer19.Enabled:=false;
Timer20.Enabled:=false;
FAZE:=faze+1;
If faze=1 then
form1.Color:=clblack;
if faze=2 then
form1.Color:=clBlue;
if faze=3 then
form1.Color:=clred;

showmessage('Missão '+inttostr(faze)+' Completada!');
form4.ShowModal;
end;
end;
If (image5.left<=image24.Left+image24.Width) and
   (image5.left+image5.Width>=image24.Left) and
   (image5.top+image5.Height>=image24.top) and
   (image5.top<=image24.top+image24.Height) then
begin
p:=p+500;
Image5.Top:=-10;
image5.Left:=1024;
MediaPlayer3.Play;
Vida:=vida-1;
if vida=0 then
begin
p:=p+2000;
label4.Refresh;
form1.Color:=clWhite;
form1.Refresh;
image24.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
Morreu:=false;
timer21.Enabled:=false;
Timer1.Enabled:=false;
Timer2.Enabled:=false;
Timer3.Enabled:=false;
Timer4.Enabled:=false;
Timer5.Enabled:=false;
Timer6.Enabled:=false;
Timer7.Enabled:=false;
Timer8.Enabled:=false;
Timer9.Enabled:=false;
Timer10.Enabled:=false;
Timer11.Enabled:=false;
Timer12.Enabled:=false;
Timer13.Enabled:=false;
Timer14.Enabled:=false;
Timer15.Enabled:=false;
Timer16.Enabled:=false;
Timer17.Enabled:=false;
Timer18.Enabled:=false;
Timer19.Enabled:=false;
Timer20.Enabled:=false;
FAZE:=faze+1;
If faze=1 then
form1.Color:=clblack;
if faze=2 then
form1.Color:=clBlue;
if faze=3 then
form1.Color:=clred;

showmessage('Missão '+inttostr(faze)+' Completada!');
form4.ShowModal;
end;
end;

end
else
begin
Timer17.Enabled:=true;
timer16.Enabled:=false;
end;
end;
end;

procedure TForm1.Timer17Timer(Sender: TObject);
begin
If image1.Top <500 then
image1.Top:=image1.Top+10;

If image24.Left > 100 then
begin
image24.left:=image24.left-3;
If (image3.left<=image24.Left+image24.Width) and
   (image3.left+image3.Width>=image24.Left) and
   (image3.top+image3.Height>=image24.top) and
   (image3.top<=image24.top+image24.Height) then
begin
p:=p+500;
Image3.Top:=-15;
image3.left:=1024;
MediaPlayer3.Play;
Vida:=vida-1;
if vida=0 then
begin
p:=p+2000;
label4.Refresh;
image24.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
form1.Color:=clWhite;
form1.Refresh;
Morreu:=false;
timer21.Enabled:=false;
Timer1.Enabled:=false;
Timer2.Enabled:=false;
Timer3.Enabled:=false;
Timer4.Enabled:=false;
Timer5.Enabled:=false;
Timer6.Enabled:=false;
Timer7.Enabled:=false;
Timer8.Enabled:=false;
Timer9.Enabled:=false;
Timer10.Enabled:=false;
Timer11.Enabled:=false;
Timer12.Enabled:=false;
Timer13.Enabled:=false;
Timer14.Enabled:=false;
Timer15.Enabled:=false;
Timer16.Enabled:=false;
Timer17.Enabled:=false;
Timer18.Enabled:=false;
Timer19.Enabled:=false;
Timer20.Enabled:=false;
FAZE:=faze+1;
If faze=1 then
form1.Color:=clblack;
if faze=2 then
form1.Color:=clBlue;
if faze=3 then
form1.Color:=clred;

showmessage('Missão '+inttostr(faze)+' Completada!');
form4.ShowModal;
end;
end;
If (image4.left<=image24.Left+image24.Width) and
   (image4.left+image4.Width>=image24.Left) and
   (image4.top+image4.Height>=image24.top) and
   (image4.top<=image24.top+image24.Height) then
begin
p:=p+500;
image4.Left:=1024;
Image4.Top:=-15;
MediaPlayer3.Play;
Vida:=vida-1;
if vida=0 then
begin
p:=p+2000;
label4.Refresh;
form1.Color:=clWhite;
form1.Refresh;
image24.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
Morreu:=false;
timer21.Enabled:=false;
Timer1.Enabled:=false;
Timer2.Enabled:=false;
Timer3.Enabled:=false;
Timer4.Enabled:=false;
Timer5.Enabled:=false;
Timer6.Enabled:=false;
Timer7.Enabled:=false;
Timer8.Enabled:=false;
Timer9.Enabled:=false;
Timer10.Enabled:=false;
Timer11.Enabled:=false;
Timer12.Enabled:=false;
Timer13.Enabled:=false;
Timer14.Enabled:=false;
Timer15.Enabled:=false;
Timer16.Enabled:=false;
Timer17.Enabled:=false;
Timer18.Enabled:=false;
Timer19.Enabled:=false;
Timer20.Enabled:=false;
FAZE:=faze+1;
If faze=1 then
form1.Color:=clblack;
if faze=2 then
form1.Color:=clBlue;
if faze=3 then
form1.Color:=clred;

showmessage('Missão '+inttostr(faze)+' Completada!');
form4.ShowModal;

end;
end;
If (image5.left<=image24.Left+image24.Width) and
   (image5.left+image5.Width>=image24.Left) and
   (image5.top+image5.Height>=image24.top) and
   (image5.top<=image24.top+image24.Height) then
begin
p:=p+500;
Image5.Top:=-10;
image5.Left:=1024;

MediaPlayer3.Play;
Vida:=vida-1;
if vida=0 then
begin
p:=p+2000;
label4.Refresh;
form1.Color:=clWhite;
form1.Refresh;
image24.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
Morreu:=false;
timer21.Enabled:=false;
Timer1.Enabled:=false;
Timer2.Enabled:=false;
Timer3.Enabled:=false;
Timer4.Enabled:=false;
Timer5.Enabled:=false;
Timer6.Enabled:=false;
Timer7.Enabled:=false;
Timer8.Enabled:=false;
Timer9.Enabled:=false;
Timer10.Enabled:=false;
Timer11.Enabled:=false;
Timer12.Enabled:=false;
Timer13.Enabled:=false;
Timer14.Enabled:=false;
Timer15.Enabled:=false;
Timer16.Enabled:=false;
Timer17.Enabled:=false;
Timer18.Enabled:=false;
Timer19.Enabled:=false;
Timer20.Enabled:=false;
FAZE:=faze+1;
If faze=1 then
form1.Color:=clblack;
if faze=2 then
form1.Color:=clBlue;
if faze=3 then
form1.Color:=clred;

showmessage('Missão '+inttostr(faze)+' Completada!');
form4.ShowModal;
end;
end;
end
else
begin
timer16.Enabled:=true;
timer17.Enabled:=false;
end;
end;

procedure TForm1.Timer18Timer(Sender: TObject);
begin
If image1.Top <500 then
image1.Top:=image1.Top+10;
mediaplayer8.Stop;
MediaPlayer8.Position:=1;
MediaPlayer8.Refresh;
mediaplayer8.play;
if t mod 2 = 0 then
begin
If image1.left>Image24.Left then
z:=1;
If image1.left<Image24.Left then
z:=2;
Timer19.Enabled:=true;
Image25.Left:=image24.Left+10;
Image25.top:=image24.top+Image24.Height;
end
else
begin
If image1.left>Image24.Left then
z:=1;
If image1.left<Image24.Left then
z:=2;
Image26.Left:=image24.Left+10;
Image26.top:=image24.top+Image24.Height;
timer20.Enabled:=true;
end;
t:=t+1;
randomize;
g:=random(7);
end;

procedure TForm1.Timer19Timer(Sender: TObject);
begin
If image25.top< 800 then
begin
If z=1 then
begin
If image25.left+10<image1.Left-40 then
image25.left:=image25.Left+g;
end;
if z=2 then
begin
If image25.left+10>image1.left+40 then
image25.Left:=image25.left-g;
end;
Image25.Top:=Image25.Top+4;
end;

If image25.top >= 800 then
begin
Image25.Top:=799;
image25.left:=1024;
timer19.Enabled:=false;
timer18.Enabled:=true;
end;

If (image25.left<=image1.Left+image1.Width) and
   (image25.left+image25.Width>=image1.Left) and
   (image25.top+image25.Height>=image1.top) and
   (image25.top<=image1.top+image1.Height) then
begin
if image23.Visible=false then
begin
MediaPlayer3.play;
image1.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
IF timer6.Enabled=false then
timer6.Enabled:=true;
image25.Left:=1024;
image25.top:=800;
timer19.Enabled:=false;
end;
If image23.Visible=true then
begin
MediaPlayer6.Play;
image25.top:=800;
image25.left:=1024;
image23.Visible:=false;
timer19.Enabled:=false;
end;

end;
end;

procedure TForm1.Timer20Timer(Sender: TObject);
begin
If image26.top<800 then
begin
If z=1 then
begin
If image26.left+10<image1.Left-40 then
image26.left:=image26.Left+g;
end;
if z=2 then
begin
If image26.left+10>image1.left+40 then
image26.Left:=image26.left-g;
end;
Image26.Top:=Image26.Top+4;
end;
If image26.top >= 800 then
begin
image26.left:=1024;
image26.top:=799;
timer20.Enabled:=false;
timer18.Enabled:=True;
end;

If (image26.left<=image1.Left+image1.Width) and
   (image26.left+image26.Width>=image1.Left) and
   (image26.top+image26.Height>=image1.top) and
   (image26.top<=image1.top+image1.Height) then
begin
If image23.Visible=false then
begin
mediaplayer3.play;
image1.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
IF timer6.Enabled=false then
timer6.Enabled:=true;
image26.Left:=1024;
image26.top:=800;
timer20.Enabled:=false;
end;
If image23.Visible=true then
begin
MediaPlayer6.Play;
image26.top:=800;
image26.left:=1024;
image23.Visible:=false;
timer20.Enabled:=false;
end;

end;
end;
procedure TForm1.Timer21Timer(Sender: TObject);
begin
If image27.Top > 800 then
begin
image27.Top:=-300;
image27.Left:=random(900);
end;
image27.Top:=image27.Top+2;

If image28.Top > 800 then
begin
image28.Top:=-300;
image28.Left:=random(900);
end;
image28.Top:=image28.Top+1;

If image29.Top > 800 then
begin
image29.Top:=-300;
image29.Left:=random(900);
end;
image29.Top:=image29.Top+3;


end;

procedure TForm1.Timer22Timer(Sender: TObject);
begin
If (image21.left<=image1.Left+image1.Width) and
   (image21.left+image21.Width>=image1.Left) and
   (image21.top+image21.Height>=image1.top) and
   (image21.top<=image1.top+image1.Height) then
begin
If image23.Visible=false then
begin
MediaPlayer3.Stop;
MediaPlayer3.Play;
image1.Picture.LoadFromFile(GetCurrentDir+'\imagens\Explosão.ico');
image21.top:=800;
image21.left:=1024;
IF timer6.Enabled=false then
timer6.Enabled:=true;
timer11.Enabled:=false;
end;
If image23.Visible=true then
begin
MediaPlayer6.Play;
image23.Visible:=false;
image21.top:=800;
image21.left:=1024;
timer11.Enabled:=false;
end;

end;
image21.Top:=image21.top+5;

end;

end.
