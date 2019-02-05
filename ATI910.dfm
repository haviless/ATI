object FRegInfAtenc: TFRegInfAtenc
  Left = 208
  Top = 257
  BorderStyle = bsSingle
  Caption = 'Regulariza Informe de Atenci'#243'n'
  ClientHeight = 197
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    444
    197)
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodBarra: TLabel
    Left = 8
    Top = 32
    Width = 76
    Height = 13
    Caption = 'C'#243'digo de Barra'
  end
  object dbeCodBar: TwwDBEdit
    Left = 96
    Top = 24
    Width = 65
    Height = 21
    TabOrder = 0
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = dbeCodBarExit
  end
  object bbtnActCodBar: TBitBtn
    Left = 91
    Top = 56
    Width = 81
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Actualiza'
    TabOrder = 1
    OnClick = bbtnActCodBarClick
  end
  object edtNombreArt: TEdit
    Left = 168
    Top = 24
    Width = 263
    Height = 21
    Enabled = False
    TabOrder = 2
  end
end
