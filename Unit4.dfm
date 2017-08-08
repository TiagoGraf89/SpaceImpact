object Form4: TForm4
  Left = 420
  Top = 416
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Recordes'
  ClientHeight = 100
  ClientWidth = 282
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 47
    Height = 20
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 57
    Height = 20
    Caption = 'Pontos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 200
    Top = 8
    Width = 73
    Height = 25
    Caption = 'Comfirmar'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 200
    Top = 40
    Width = 73
    Height = 25
    Caption = 'Cancelar'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Label3: TLabel
    Left = 16
    Top = 72
    Width = 50
    Height = 20
    Caption = 'Fases'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 72
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 40
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 72
    Top = 72
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
end
