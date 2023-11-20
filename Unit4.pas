unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1, Unit5;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
Form4.Close;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
if Form4.WindowState<>wsMaximized then
begin
  Form4.WindowState:=wsMaximized;
  form4.BitBtn1.Left:=   form4.Width div 2+form4.Width div 4+form4.Width div 8+form4.Width div 16+form4.Width div 32-8;
  form4.BitBtn2.Left:=   form4.BitBtn1.Left-58;
end else
begin
  Form4.WindowState:=wsNormal;
  Form4.Height:=750;
  form4.Width:=1500;
  Form4.Position:= poScreenCenter;
  form4.BitBtn1.Left:=   form4.left+form4.Width div 2+465;
  form4.BitBtn2.Left:=   form4.BitBtn1.Left-58;

end;

end;

procedure TForm4.Button1Click(Sender: TObject);
begin
if Checkbox1.Checked then
begin
Adoquery1.Close;
AdoQuery1.SQL.Clear;
Adoquery1.SQL.Text:='select p.ProductName, p.Descrip, p.Price, p.Quantity, s.CompanyName  from Products as  p, Suppliers as  s where p.SupID=s.SupplierID and p.ProductName like'''+'%'+Edit1.Text+'%'+''' and p.Descrip like'''+'%'+Checkbox1.Caption+'%'+''' and p.Descrip like'''+'%'+Combobox1.Text+'%'+''';';
Adoquery1.ExecSQL;
Adoquery1.Open;
end else
begin
Adoquery1.Close;
AdoQuery1.SQL.Clear;
Adoquery1.SQL.Text:='select p.ProductName, p.Descrip, p.Price, p.Quantity, s.CompanyName  from Products as  p, Suppliers as  s where p.SupID=s.SupplierID and p.ProductName like'''+'%'+Edit1.Text+'%'+'''  and p.Descrip like'''+'%'+Combobox1.Text+'%'+''';';
Adoquery1.ExecSQL;
Adoquery1.Open;
end;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
Form5.showmodal;
end;

procedure TForm4.Edit1Change(Sender: TObject);
begin
Adoquery1.Close;
AdoQuery1.SQL.Clear;
Adoquery1.SQL.Text:='select p.ProductName, p.Descrip, p.Price, p.Quantity, s.CompanyName  from Products as  p, Suppliers as  s where p.SupID=s.SupplierID and p.ProductName like'''+'%'+Edit1.Text+'%'+''';';
Adoquery1.ExecSQL;
Adoquery1.Open;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Visible:=true;
 Form4.Close;
end;

end.
