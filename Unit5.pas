unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB;

type
  TForm5 = class(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit4;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
Form5.Close;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
if spinEdit1.Value>Form4.DBGrid1.DataSource.DataSet.FieldByName('Quantity').AsInteger then
begin
  showmessage('Количество проданных превышает количество имеющегося товара!');
end else
begin
  Adoquery1.Close;
  adoquery1.SQL.Clear;
  adoquery1.SQL.Text:='update Products SET Quantity='+intToStr(Form4.DBGrid1.DataSource.DataSet.FieldByName('Quantity').AsInteger-spinEdit1.Value)+'where ProductName='''+Form4.DBGrid1.DataSource.DataSet.FieldByName('ProductName').AsString+''';';
  Adoquery1.ExecSQL;
  showmessage('Изменения внесены!');
  spinEdit1.Value:=0;
end;

end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Form5.Close;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form4.ADOQuery1.Close;
Form4.ADOQuery1.Open;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
Edit1.Text:=Form4.DBGrid1.DataSource.DataSet.FieldByName('ProductName').AsString;

end;

end.
