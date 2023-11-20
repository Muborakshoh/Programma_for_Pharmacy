unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Samples.Spin, Data.DB,
  Data.Win.ADODB;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
Form6.Close;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
Form6.Close;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
if spinEdit1.Value>0 then
begin
  Adoquery1.Close;
  adoquery1.SQL.Clear;
  adoquery1.SQL.Text:='update Products SET Quantity='+intToStr(Form2.DBGrid4.DataSource.DataSet.FieldByName('Quantity').AsInteger+spinEdit1.Value)+'where ProductName='''+Form2.DBGrid4.DataSource.DataSet.FieldByName('ProductName').AsString+''';';
  Adoquery1.ExecSQL;
  showmessage('Изменения внесены!');
  spinEdit1.Value:=0;
end;
end;
procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.ADOQuery4.Close;
Form2.ADOQuery4.Open;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
Edit1.Text:=Form2.DBGrid4.DataSource.DataSet.FieldByName('ProductName').AsString;
end;

end.
