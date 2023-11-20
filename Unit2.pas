unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.jpeg;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ImageList1: TImageList;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    DBGrid4: TDBGrid;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    Image1: TImage;
    Button6: TButton;
    DataSource5: TDataSource;
    DBGrid5: TDBGrid;
    ADOQuery5: TADOQuery;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit6;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
 Form2.Close;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
if Form2.WindowState<>wsMaximized then
begin
  Form2.WindowState:=wsMaximized;
  form2.BitBtn1.Left:=   form2.Width div 2+form2.Width div 4+form2.Width div 8+form2.Width div 16+form2.Width div 32-8;
  form2.BitBtn2.Left:=   form2.BitBtn1.Left-58;
end else
begin
  Form2.WindowState:=wsNormal;
  Form2.Height:=700;
  form2.Width:=1200;
  Form2.Position:= poScreenCenter;
//  Form2.Left:=400;
//  Form2.top:=
  form2.BitBtn1.Left:=   form2.left+form2.Width div 2+176;
  form2.BitBtn2.Left:=   form2.BitBtn1.Left-58;

end;

end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
Form2.WindowState:=wsMinimized;
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 BitBtn4.Font.Color:=clRed;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Adoquery1.Close;
Adoquery1.Open;
bitbtn3.Visible:=false;
bitbtn5.Visible:=false;
DBGrid2.Visible:=false;
DBGrid4.Visible:=false;
DBGrid3.Visible:=false;
DBGrid5.Visible:=false;
DBGrid1.Visible:=true;
button7.Visible:=true;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Adoquery2.Close;
Adoquery2.Open;
bitbtn3.Visible:=false;
bitbtn5.Visible:=false;
DBGrid1.Visible:=false;
DBGrid3.Visible:=false;
DBGrid5.Visible:=false;
DBGrid4.Visible:=false;
DBGrid2.Visible:=true;
button7.Visible:=true;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Adoquery3.Close;
Adoquery3.Open;
bitbtn3.Visible:=false;
bitbtn5.Visible:=false;
DBGrid2.Visible:=false;
DBGrid1.Visible:=false;
DBGrid4.Visible:=false;
DBGrid5.Visible:=false;
DBGrid3.Visible:=true;
button7.Visible:=true;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
bitbtn3.Visible:=false;
bitbtn5.Visible:=false;
DBGrid1.Visible:=false;
DBGrid2.Visible:=false;
DBGrid3.Visible:=false;
DBGrid5.Visible:=false;
DBGrid4.Visible:=true;
button7.Visible:=false;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  DBGrid1.Visible:=false;
DBGrid2.Visible:=false;
DBGrid3.Visible:=false;
button7.Visible:=false;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
DBGrid2.Visible:=false;
DBGrid4.Visible:=false;
DBGrid3.Visible:=false;
DBGrid1.Visible:=false;
bitbtn3.Visible:=true;
bitbtn5.Visible:=true;
DBGrid5.Visible:=true;
button7.Visible:=false;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
if DBGrid1.Visible = true then
begin
  Form3.Panel2.Visible:=true;
  Form3.Panel3.Visible:=false;
  Form3.Panel4.Visible:=false;
  Form3.Height:=41+246+115;
  Form3.Panel2.Align:=alClient;
end;
if DBGrid2.Visible = true then
begin
  Form3.Panel2.Visible:=false;
  Form3.Panel3.Visible:=true;
  Form3.Panel4.Visible:=false;
  Form3.Height:=41+280+110+65;
  Form3.Panel3.Align:=alClient;
end;
if DBGrid3.Visible = true then
begin
  Form3.Panel2.Visible:=false;
  Form3.Panel3.Visible:=false;
  Form3.Panel4.Visible:=true;
  Form3.Height:=41+285+110+70;
  Form3.Panel4.Align:=alClient;
end;
form3.showmodal;
end;

procedure TForm2.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 BitBtn4.Font.Color:=clBlack;
end;

procedure TForm2.DBGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
BitBtn4.Font.Color:=clBlack;
end;

procedure TForm2.DBGrid3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
BitBtn4.Font.Color:=clBlack;
end;

procedure TForm2.DBGrid4CellClick(Column: TColumn);
begin
Form6.showmodal;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Form1.Visible:=true;
 Form2.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
DbGrid1.Visible:=false;
DbGrid2.Visible:=false;
DbGrid3.Visible:=false;
DbGrid4.Visible:=false;
DbGrid5.Visible:=false;
bitbtn3.Visible:=false;
bitbtn5.Visible:=false;
Button7.Visible:=false;
end;

procedure TForm2.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 BitBtn4.Font.Color:=clBlack;
end;

procedure TForm2.FormResize(Sender: TObject);
begin
DbGrid1.Height:=Panel2.Height-10;
DbGrid1.Height:=panel2.Width-10;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  button7.Visible:=false;
  DBGrid1.Visible:=false;
  DBGrid2.Visible:=false;
  DBGrid3.Visible:=false;
end;

procedure TForm2.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 BitBtn4.Font.Color:=clBlack;
end;

procedure TForm2.Panel3Click(Sender: TObject);
begin
 BitBtn4.Font.Color:=clBlack;
end;

procedure TForm2.Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 BitBtn4.Font.Color:=clBlack;
end;

end.
