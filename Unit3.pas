unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB, Vcl.DBCtrls,
  Vcl.Samples.Spin;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Panel4: TPanel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit13: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    SpinEdit1: TSpinEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn7Click(Sender: TObject);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
Form3.WindowState:=wsMinimized;
end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
if (edit1.Text='') or(edit2.Text='')or (edit3.Text='') or (edit4.Text='') then
begin
  showmessage('���������� ��������� ��� ����!');
end else
begin
  Adoquery1.Close;
  Adoquery1.sql.Clear;
  Adoquery1.SQL.Text:='insert into Suppliers (CompanyName, Addr, ContactPerson, PhoneNumber) values('''+Edit1.Text+''', '''+Edit2.Text+''', '''+Edit3.Text+''', '''+Edit4.Text+''');';
  Adoquery1.ExecSQL;
  showmessage('��������� ��������!');
  edit1.Clear;
  edit2.Clear;
  edit3.Clear;
  edit4.Clear;
end;
end;

procedure TForm3.BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
BitBtn4.Font.Color:=clGreen;
end;

procedure TForm3.BitBtn5Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
end;

procedure TForm3.BitBtn5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
BitBtn5.Font.Color:=clRed;
end;

procedure TForm3.BitBtn6Click(Sender: TObject);
begin
if (edit5.Text='') or(edit6.Text='')or (edit7.Text='') or (edit8.Text='') or (edit9.Text='')then
begin
  showmessage('���������� ��������� ��� ����!');
end else
if Length(Edit9.Text) < 8 then
begin
  showmessage('����� ������ ������ ��������� 7 ��������!');
end else
begin
  Adoquery1.Close;
  Adoquery1.sql.Clear;
  Adoquery1.SQL.Text:='insert into Employees (FirstName, LastName, Position, PhoneNumber, passw) values('''+Edit5.Text+''', '''+Edit6.Text+''', '''+Edit7.Text+''', '''+Edit8.Text+''', '''+Edit9.Text+''');';
  Adoquery1.ExecSQL;
  showmessage('��������� ��������!');
  edit5.Clear;
  edit6.Clear;
  edit7.Clear;
  edit8.Clear;
  edit9.Clear;
end;
end;

procedure TForm3.BitBtn6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
BitBtn6.Font.Color:=clGreen;
end;

procedure TForm3.BitBtn7Click(Sender: TObject);
begin
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
end;

procedure TForm3.BitBtn7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
BitBtn7.Font.Color:=clRed;
end;

procedure TForm3.BitBtn8Click(Sender: TObject);
var id: integer;
begin
if (edit10.Text='') or(edit11.Text='')or (edit13.Text='') then
begin
  showmessage('���������� ��������� ��� ����!');
end else
begin
  Adoquery1.Close;
  Adoquery1.sql.Clear;
  Adoquery1.SQL.Text:='insert into Products (ProductName, Descrip, Price, Quantity, SupID) values('''+Edit10.Text+''', '''+Edit11.Text+''', '+Edit13.Text+', '+IntToStr(SpinEdit1.Value)+', '+FloatToStr(DbLookupCombobox1.KeyValue)+');';
  Adoquery1.ExecSQL;

//  Adoquery1.Close;
//  Adoquery1.sql.Clear;
//  Adoquery1.SQL.Text:='insert into Reports (r.ProdID, r.dateOfReceipt, r.dateOfWriteOff) values';
//  Adoquery1.ExecSQL;

  showmessage('����� ��������!');
  edit10.Clear;
  edit11.Clear;
  edit13.Clear;
  SpinEdit1.Value:=0
end;
end;

procedure TForm3.BitBtn8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
BitBtn8.Font.Color:=clGreen;
end;

procedure TForm3.BitBtn9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 BitBtn9.Font.Color:=clRed;
end;

procedure TForm3.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
BitBtn4.Font.Color:=clBlack;
BitBtn5.Font.Color:=clBlack;
BitBtn6.Font.Color:=clBlack;
BitBtn7.Font.Color:=clBlack;
BitBtn8.Font.Color:=clBlack;
BitBtn9.Font.Color:=clBlack;
end;

procedure TForm3.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
BitBtn4.Font.Color:=clBlack;
BitBtn5.Font.Color:=clBlack;
BitBtn6.Font.Color:=clBlack;
BitBtn7.Font.Color:=clBlack;
BitBtn8.Font.Color:=clBlack;
BitBtn9.Font.Color:=clBlack;
end;

procedure TForm3.Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
BitBtn4.Font.Color:=clBlack;
BitBtn5.Font.Color:=clBlack;
BitBtn6.Font.Color:=clBlack;
BitBtn7.Font.Color:=clBlack;
BitBtn8.Font.Color:=clBlack;
BitBtn9.Font.Color:=clBlack;
end;

end.
