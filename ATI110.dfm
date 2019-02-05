object FRegEquipo: TFRegEquipo
  Left = 287
  Top = 163
  BorderStyle = bsDialog
  Caption = 'Modulo ATI'
  ClientHeight = 266
  ClientWidth = 401
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 45
    Width = 69
    Height = 13
    Caption = 'C'#243'd Inventario'
  end
  object Label2: TLabel
    Left = 7
    Top = 77
    Width = 70
    Height = 13
    Caption = 'Serie Activo TI'
  end
  object Label3: TLabel
    Left = 34
    Top = 109
    Width = 43
    Height = 13
    Caption = 'Activo TI'
  end
  object Label4: TLabel
    Left = 42
    Top = 141
    Width = 35
    Height = 13
    Caption = 'Modelo'
  end
  object Label5: TLabel
    Left = 47
    Top = 173
    Width = 30
    Height = 13
    Caption = 'Marca'
  end
  object Label6: TLabel
    Left = 0
    Top = 0
    Width = 401
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'TRASLADO DE ACTIVO DE TI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbeSerieEq: TwwDBEdit
    Left = 88
    Top = 73
    Width = 225
    Height = 21
    TabOrder = 0
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeEquipo: TwwDBEdit
    Left = 88
    Top = 105
    Width = 257
    Height = 21
    Enabled = False
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeModelo: TwwDBEdit
    Left = 88
    Top = 137
    Width = 129
    Height = 21
    Enabled = False
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeMarca: TwwDBEdit
    Left = 88
    Top = 169
    Width = 177
    Height = 21
    Enabled = False
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object pnlPie: TPanel
    Left = 0
    Top = 212
    Width = 401
    Height = 54
    Align = alBottom
    Color = 10207162
    TabOrder = 1
    object btnAcepta: TfcShapeBtn
      Left = 235
      Top = 9
      Width = 52
      Height = 38
      Cursor = crHandPoint
      Hint = 'Aceptar'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
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
      OnClick = btnAceptaClick
    end
    object btnCancela: TfcShapeBtn
      Left = 293
      Top = 10
      Width = 52
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
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnCancelaClick
    end
  end
  object artCodBarTxt: TEdit
    Left = 88
    Top = 40
    Width = 153
    Height = 21
    TabOrder = 5
    OnExit = artCodBarTxtExit
  end
end
