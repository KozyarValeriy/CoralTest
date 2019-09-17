object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1054#1092#1080#1089#1099
  ClientHeight = 520
  ClientWidth = 810
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 630
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 10
  Padding.Top = 5
  Padding.Right = 10
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 22
  object Label1: TLabel
    AlignWithMargins = True
    Left = 13
    Top = 8
    Width = 784
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = #1054#1092#1080#1089#1099' '#1087#1088#1086#1076#1072#1078
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 0
    ExplicitTop = 5
    ExplicitWidth = 722
  end
  object Button1: TButton
    Left = 10
    Top = 400
    Width = 390
    Height = 50
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    Default = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 10
    Top = 460
    Width = 390
    Height = 50
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 410
    Top = 400
    Width = 390
    Height = 50
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 410
    Top = 460
    Width = 390
    Height = 50
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 10
    Top = 41
    Width = 790
    Height = 344
    Align = alTop
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnMouseWheel = DBGrid1MouseWheel
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM offices;')
    Left = 488
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 560
    Top = 104
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    DataSource = DataSource1
    Parameters = <>
    Left = 632
    Top = 96
  end
end
