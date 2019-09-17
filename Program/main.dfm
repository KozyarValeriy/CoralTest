object Form1: TForm1
  AlignWithMargins = True
  Left = 0
  Top = 20
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Coral'
  ClientHeight = 216
  ClientWidth = 274
  Color = clBtnFace
  Constraints.MaxHeight = 245
  Constraints.MaxWidth = 280
  Constraints.MinHeight = 245
  Constraints.MinWidth = 280
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 10
  Padding.Top = 5
  Padding.Right = 10
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 22
  object Label1: TLabel
    Left = 10
    Top = 5
    Width = 254
    Height = 22
    Margins.Top = 5
    Align = alTop
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Caption = #1052#1077#1085#1102
    ParentBiDiMode = False
    ExplicitWidth = 47
  end
  object Button1: TButton
    AlignWithMargins = True
    Left = 10
    Top = 29
    Width = 254
    Height = 50
    Margins.Left = 0
    Margins.Top = 2
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = #1040#1075#1077#1085#1089#1090#1074#1072
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    AlignWithMargins = True
    Left = 10
    Top = 89
    Width = 254
    Height = 50
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = #1054#1092#1080#1089#1099' '#1087#1088#1086#1076#1072#1078
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    AlignWithMargins = True
    Left = 10
    Top = 149
    Width = 254
    Height = 50
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = #1057#1087#1080#1089#1086#1082' '#1090#1086#1095#1077#1082' '#1087#1088#1086#1076#1072#1078
    TabOrder = 2
    WordWrap = True
    OnClick = Button3Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=main;Data Source=KOZYAR\SQL' +
      'EXPRESS;Initial File Name="";Server SPN=""'
    Provider = 'SQLNCLI11.1'
    Left = 216
    Top = 40
  end
end
