object FAcceso: TFAcceso
  Left = 222
  Top = 207
  BorderStyle = bsDialog
  Caption = 'Registro de Usuario'
  ClientHeight = 192
  ClientWidth = 340
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 49
    Top = 43
    Width = 69
    Height = 16
    Caption = 'USUARIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 13
    Top = 77
    Width = 105
    Height = 16
    Caption = 'CONTRASE'#209'A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object E_nombre: TEdit
    Left = 124
    Top = 37
    Width = 193
    Height = 25
    BevelInner = bvSpace
    BevelKind = bkSoft
    BevelOuter = bvNone
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object E_pass: TEdit
    Left = 124
    Top = 71
    Width = 193
    Height = 25
    BevelInner = bvSpace
    BevelKind = bkSoft
    BevelOuter = bvNone
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = 'x'
    TabOrder = 1
    OnExit = E_passExit
    OnKeyDown = E_passKeyDown
  end
  object BLogin_Entrada: TfcShapeBtn
    Left = 39
    Top = 132
    Width = 114
    Height = 45
    Cursor = crHandPoint
    Hint = 'Reporte'
    Caption = 'Ingresar'
    Color = 10207162
    DitherColor = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -4
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
      BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
      BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
      BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
      BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
      EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
      EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
      EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
      EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
    Layout = blGlyphRight
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentFont = False
    ParentShowHint = False
    RoundRectBias = 25
    ShadeColors.BtnFocus = clNavy
    ShadeStyle = fbsHighlight
    Shape = bsRoundRect
    ShowHint = True
    TabOrder = 2
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = BLogin_EntradaClick
  end
  object BLogin_Salir: TfcShapeBtn
    Left = 183
    Top = 132
    Width = 114
    Height = 45
    Cursor = crHandPoint
    Hint = 'Reporte'
    Caption = 'Salir'
    Color = 10207162
    DitherColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -4
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    Layout = blGlyphRight
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentFont = False
    ParentShowHint = False
    RoundRectBias = 25
    ShadeColors.BtnFocus = clNavy
    ShadeStyle = fbsHighlight
    Shape = bsRoundRect
    ShowHint = True
    TabOrder = 3
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = BLogin_SalirClick
  end
end
