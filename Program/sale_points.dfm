object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1058#1086#1095#1082#1080' '#1087#1088#1086#1076#1072#1078
  ClientHeight = 372
  ClientWidth = 808
  Color = clBtnFace
  Constraints.MinHeight = 380
  Constraints.MinWidth = 340
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Top = 5
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 22
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 8
    Width = 802
    Height = 22
    Align = alTop
    Alignment = taCenter
    Caption = #1057#1087#1080#1089#1086#1082' '#1090#1086#1095#1077#1082' '#1087#1088#1086#1076#1072#1078
    ExplicitWidth = 178
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 35
    Width = 788
    Height = 327
    Margins.Left = 10
    Margins.Top = 2
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      #9'agencies.Name,'
      #9'offices.Office_name,'
      #9'cities.City,'
      #9'offices.Adress,'
      #9'agencies.Name_of_GD,'
      #9'agencies.Phone_number,'
      #9'agencies.Email'
      'FROM agencies'
      #9'LEFT JOIN offices ON agencies.ID = offices.Agencies_id'
      #9'LEFT JOIN cities ON agencies.City_id = cities.City_id'
      'ORDER BY agencies.ID;')
    Left = 640
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 640
    Top = 184
  end
end
