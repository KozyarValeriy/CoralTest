object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1040#1075#1077#1085#1089#1090#1074#1072
  ClientHeight = 398
  ClientWidth = 780
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 260
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 22
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 8
    Width = 774
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = #1044#1072#1085#1085#1099#1077' '#1087#1086' '#1072#1075#1077#1085#1090#1089#1090#1074#1072#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 0
    ExplicitTop = 5
    ExplicitWidth = 780
  end
  object Button1: TButton
    Left = 590
    Top = 339
    Width = 180
    Height = 50
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 44
    Width = 760
    Height = 289
    Margins.Left = 10
    Margins.Right = 10
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
    TabOrder = 1
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
      'SELECT'
      '    agencies.Name, '
      '    agencies.Phone_number as Phone,'
      '    agencies.Email,'
      '    agencies.Name_of_GD,'
      '    cities.City'
      'FROM agencies, cities'
      'WHERE agencies.City_id = cities.City_id;')
    Left = 176
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 248
    Top = 208
  end
end
