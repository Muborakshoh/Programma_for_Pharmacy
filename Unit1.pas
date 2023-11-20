unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Buttons, System.ImageList, Vcl.ImgList;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    ImageList1: TImageList;
    Button1: TButton;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit4;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
 //
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
    Form1.WindowState:=wsMinimized;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
AdoQuery1.SQL.Clear;
AdoQuery1.SQL.Text:='select * from Employees where  passw='''+edit1.Text+''';';
AdoQuery1.ExecSQL;
AdoQuery1.Open;
if Adoquery1.RecordCount = 0 then
begin
  showmessage('¬ведЄн неверный пароль!' );
  edit1.Text:='';
end else
begin
  if DBlookupCombobox1.KeyValue=1 then
begin
form1.Visible:=false;
Edit1.Clear;
  Form2.ShowModal;

end else
begin
  form1.Visible:=false;
  Edit1.Clear;
  Form4.ShowModal;
end;
end;


end;

procedure TForm1.BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 BitBtn4.Font.Color:=clBlue;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
AdoQuery1.SQL.Clear;
AdoQuery1.SQL.Text:='select * from Employees where  passw='''+edit1.Text+''';';
AdoQuery1.ExecSQL;
AdoQuery1.Open;
if Adoquery1.RecordCount = 0 then
begin
  showmessage('¬ведЄн неверный пароль!' );
  edit1.Text:='';
end else
begin
  if DBlookupCombobox1.KeyValue=1 then
begin
form1.Visible:=false;
Edit1.Clear;
  Form2.ShowModal;

end;
end;


end;

procedure TForm1.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 BitBtn4.Font.Color:=clBlack;
end;

end.
