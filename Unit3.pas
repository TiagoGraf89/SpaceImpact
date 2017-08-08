unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, DB, DBTables, ExtCtrls, StdCtrls, Mask,
  DBCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    DataSource1: TDataSource;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    Table1: TTable;
    DBEdit1: TDBEdit;
    Timer1: TTimer;
    DBEdit2: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
form3.Close;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
Table1.Delete;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
Timer1.Enabled:=true;
DBEdit1.DataSource:=DataSource1;
DBEdit1.DataField:='Nome';
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
If (DBEdit1.Text='') and (DBEdit2.text='') then
SpeedButton2.Enabled:=false
else
SpeedButton2.Enabled:=true;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Timer1.Enabled:=false;
end;

end.
