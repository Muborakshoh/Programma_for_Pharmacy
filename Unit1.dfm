object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1042#1093#1086#1076
  ClientHeight = 285
  ClientWidth = 566
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 566
    Height = 285
    Align = alClient
    BorderStyle = bsSingle
    Caption = 'Panel1'
    Color = 15320237
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = -8
    object Panel2: TPanel
      Left = 45
      Top = 48
      Width = 466
      Height = 185
      BorderStyle = bsSingle
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      OnMouseMove = Panel2MouseMove
      object Label2: TLabel
        Left = 32
        Top = 64
        Width = 93
        Height = 22
        Caption = #1076#1086#1083#1078#1085#1086#1089#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 32
        Top = 104
        Width = 62
        Height = 22
        Caption = #1087#1072#1088#1086#1083#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 152
        Top = 101
        Width = 249
        Height = 27
        PasswordChar = '*'
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 152
        Top = 56
        Width = 249
        Height = 27
        KeyField = 'EmployeeID'
        ListField = 'Position'
        ListSource = DataSource1
        TabOrder = 1
      end
      object Button1: TButton
        Left = 34
        Top = 132
        Width = 91
        Height = 36
        Caption = #1074#1093#1086#1076
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnClick = Button1Click
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 460
        Height = 41
        Align = alTop
        Alignment = taLeftJustify
        Caption = ' '#1042#1093#1086#1076' '#1074' '#1089#1080#1089#1090#1077#1084#1091'...'
        Color = 8404992
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
      end
      object BitBtn4: TBitBtn
        Left = 152
        Top = 139
        Width = 153
        Height = 35
        Caption = #1042#1093#1086#1076
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn4Click
        OnMouseMove = BitBtn4MouseMove
      end
    end
    object BitBtn1: TBitBtn
      Left = 519
      Top = 6
      Width = 33
      Height = 25
      ImageIndex = 0
      Images = ImageList1
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 437
      Top = 6
      Width = 33
      Height = 25
      ImageIndex = 2
      Images = ImageList1
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn2: TBitBtn
      Left = 478
      Top = 6
      Width = 33
      Height = 25
      Enabled = False
      ImageIndex = 1
      Images = ImageList1
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=chemist;Data Source=LAPTOP-R11S7NBE'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 448
    Top = 344
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Employees'
    Left = 488
    Top = 345
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 536
    Top = 345
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Employees')
    Left = 400
    Top = 344
  end
  object ImageList1: TImageList
    Left = 344
    Top = 344
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFD5FF00FFFFFF00CCD5CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFD5FF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000414141000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000424242000000000000000000FFFFFF00FFD5FF00FFFFFF00FFFF
      FF00FFFFFF00CCD5CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040404000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004242420000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFD5FF00FFFFFF00CCD5CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000001D1D1D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001D1D1D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFD5FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFD5FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFD5FF0000000000FFD5FF00FFFFFF0000000000FFD5FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CCD5CC0000000000CCD5CC00FFFFFF00FFFFFF00CCD5CC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFD5FF00FFFFFF00FFFF
      FF0000000000332B3300FFFFFF00FFFFFF00FFFFFF00FFFFFF0033003300332B
      3300FFFFFF00FFFFFF00FFD5FF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00332B
      3300002B0000FFFFFF00CCFFCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00332B
      3300332B3300CCD5CC00CCFFCC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00332B3300332B
      3300FFFFFF00FFFFFF00FFD5FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003300330000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CCFFCC00FFD5FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CCFFCC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F3F3F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004141410000000000FFFFFF00CCD5CC00CCD5CC00FFFF
      FF00CCD5CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000001C1C1C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C1C1C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F3F3F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000404040000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF0000FFFF0000C0030000FFFF0000
      80010000C003000080010000C003000080010000C003000084210000C7E30000
      82410000C003000081810000C003000081810000C003000082410000C0030000
      84210000C003000080010000C003000080010000C003000080010000C0030000
      C0030000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
      000000000000}
  end
end
