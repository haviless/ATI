object FControlParte: TFControlParte
  Left = 424
  Top = 202
  Width = 544
  Height = 371
  Caption = 'Retirar Parte de Equipo'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 0
    Top = 0
    Width = 536
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'RETIRAR PARTE DE EQUIPO'
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 44
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 16
    Top = 71
    Width = 24
    Height = 13
    Caption = 'Serie'
  end
  object Label4: TLabel
    Left = 16
    Top = 100
    Width = 25
    Height = 13
    Caption = 'Parte'
  end
  object Label5: TLabel
    Left = 16
    Top = 132
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label7: TLabel
    Left = 224
    Top = 44
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label6: TLabel
    Left = 16
    Top = 168
    Width = 60
    Height = 13
    Caption = 'Observaci'#243'n'
  end
  object pnlPie: TPanel
    Left = 0
    Top = 290
    Width = 536
    Height = 47
    Align = alBottom
    Color = 10207162
    TabOrder = 0
    object btnCancelar: TfcShapeBtn
      Left = 466
      Top = 6
      Width = 49
      Height = 38
      Cursor = crHandPoint
      Hint = 'Cancelar'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnCancelarClick
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 400
      Top = 6
      Width = 49
      Height = 38
      Cursor = crHandPoint
      Hint = 'Grabar '
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
  end
  object dbecodigo: TwwDBEdit
    Left = 72
    Top = 40
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeserie: TwwDBEdit
    Left = 72
    Top = 67
    Width = 217
    Height = 21
    Enabled = False
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeparte: TwwDBEdit
    Left = 72
    Top = 96
    Width = 305
    Height = 21
    Enabled = False
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeEstado: TwwDBEdit
    Left = 72
    Top = 128
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbefecha: TwwDBEdit
    Left = 264
    Top = 40
    Width = 121
    Height = 21
    Color = clMoneyGreen
    Enabled = False
    TabOrder = 5
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object mmObservacion: TMemo
    Left = 16
    Top = 192
    Width = 505
    Height = 89
    TabOrder = 6
  end
end
