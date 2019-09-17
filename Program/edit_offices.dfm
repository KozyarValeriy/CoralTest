object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1086#1092#1080#1089#1086#1074
  ClientHeight = 361
  ClientWidth = 864
  Color = clBtnFace
  Constraints.MaxWidth = 880
  Constraints.MinHeight = 11
  Constraints.MinWidth = 880
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 22
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 239
    Height = 341
    Margins.Left = 10
    Margins.Top = 10
    Margins.Bottom = 10
    Align = alLeft
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
  object StringGrid1: TStringGrid
    Left = 255
    Top = 10
    Width = 549
    Height = 279
    Align = alCustom
    BevelOuter = bvRaised
    ColCount = 3
    FixedColor = clBackground
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientEndColor = clSilver
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
    ParentFont = False
    TabOrder = 1
    ColWidths = (
      31
      165
      206)
    RowHeights = (
      24
      24)
  end
  object Button1: TButton
    Left = 624
    Top = 303
    Width = 180
    Height = 50
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 814
    Top = 10
    Width = 40
    Height = 40
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 814
    Top = 60
    Width = 40
    Height = 40
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 128
    Top = 184
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID, Name FROM agencies;')
    Left = 48
    Top = 184
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID FROM agencies;')
    Left = 48
    Top = 248
  end
end
