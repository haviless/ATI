object FImpActivosTI: TFImpActivosTI
  Left = 103
  Top = 213
  BorderStyle = bsDialog
  Caption = 'FImpActivosTI'
  ClientHeight = 403
  ClientWidth = 910
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -9
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 336
    Width = 905
    Height = 65
    Color = 10207162
    TabOrder = 0
    object lbNumEqui: TLabel
      Left = 11
      Top = 26
      Width = 217
      Height = 24
      Caption = 'Activos TI por Importar:'
      Color = 10207162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblNroRegistros: TLabel
      Left = 235
      Top = 26
      Width = 12
      Height = 24
      Caption = '0'
      Color = 10207162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object z2bbtnAcepta: TfcShapeBtn
      Left = 704
      Top = 8
      Width = 126
      Height = 49
      Cursor = crHandPoint
      Hint = 'Reporte'
      Caption = 'Importar Activos TI'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -4
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        18000000000000030000C40E0000C40E0000000000000000000098E7FD9BE9FD
        9BE9FD9BE9FDA2DBE89CE8FB9BE9FD9BE9FD9BE9FD9BE9FD9BE9FD9BE9FD9BE9
        FD9BE9FD9BE9FDE9FDFF8BE5FD8DE6FD8DE6FD93D9EABE79518FE5FB8DE6FD8D
        E6FD8DE6FD8DE6FD8DE6FD8DE6FD8DE6FD8DE6FD8DE6FDE6FDFF8AE4FD8CE5FD
        92DBECC68660D2703C9EBBBB9DBCBC9DBCBC9DBCBC96CFDA8CE5FD8CE5FD8CE5
        FD8CE5FD8CE5FDE5FDFF88E4FD8FDAEEC38864DD804FDD8353DE8555DF885BE0
        8C60E18F64B6AD9E8AE4FD8AE4FD8AE4FD8AE4FD8AE4FDE4FDFF8CDFF5C28B69
        DD804FDE8556DF8A5DE18F64E2946AE39870E49B75B9B3A68AE4FD8AE4FD8AE4
        FD8AE4FD8AE4FDE4FDFF8AE2F9C4A994DF875ADF8A5DE08F64E2946AE39870E4
        9C75E59F7ABAB7AC8AE4FD8AE4FD8AE4FD8AE4FD8AE4FDE4FDFF88E4FD8DE1F7
        C6A993E19066E39870E59D77E59F7AE6A17DE6A37FBBBCB288E0F68AE3FC8AE4
        FD8AE4FD8AE4FDE3FCFF88E3FD8AE3FD8EE0F6C9A993E49A7398D4E295D5E495
        D5E495D5E490DCF155A28D83D7E78AE3FC8AE3FD8AE3FDD7E7FF89E3FD8AE3FD
        8AE3FD8EDEF5CAA48A87DDF37ED2E07ED2E07ED2E07ED2E04F9A77549D7784D8
        E98AE2FC8AE3FD9D77FF89E3FD8AE3FD8AE3FD8AE3FD8FDEF473C7CB5EA6725B
        A37058A06D559D6A559E6B57A16D549E7985D9EC8AE2FCA16DFF89E3FD8AE3FD
        8AE3FD8AE3FD8AE3FD77CCD073BD886FB9856BB58067B17C61AB775DA67257A1
        6D559E7C86DBEFA672FF89E3FD8AE3FD8AE3FD8AE3FD8AE3FD7BD0D476C18B73
        BE886FB9846BB58167B07C62AB775CA67264B28384D8E7AB77FF89E3FD8AE3FD
        8AE3FD8AE3FD8AE3FD7FD4D77CCA9279C88F77C58D74C28A6FBC8567B07C69B7
        8684D8E38AE2FCB07CFF89E3FD8AE3FD8AE3FD8AE3FD8AE3FD86DFF27CD2D47C
        D2D47CD2D47CD2D471C4976EBC8A84D7E18AE2FC8AE3FDBC8AFF89E3FD8AE3FD
        8AE3FD8AE3FD8AE3FD8AE3FD8AE3FD8AE3FD8AE3FD8AE3FD71C4A284D6DF8AE3
        FC8AE3FD8AE3FDD6DFFF98E7FD98E7FD98E7FD98E7FD98E7FD98E7FD98E7FD98
        E7FD98E7FD98E7FD93E1F098E7FC98E7FD98E7FD98E7FDE7FCFF}
      Layout = blGlyphTop
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
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnAceptaClick
    end
    object z2bbtnCancelar: TfcShapeBtn
      Left = 832
      Top = 10
      Width = 69
      Height = 47
      Cursor = crHandPoint
      Hint = 'Salir'
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
      OnClick = z2bbtnCancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 57
    Color = 10207162
    TabOrder = 1
    object Label7: TLabel
      Left = 1
      Top = 1
      Width = 906
      Height = 24
      Cursor = crArrow
      Align = alTop
      Alignment = taCenter
      Caption = 'IMPORTAR ACTIVOS DE T'#201'CNOLOGIA DE INFORMACI'#211'N DESDE SSGG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
  end
  object dbgStock: TwwDBGrid
    Left = 0
    Top = 56
    Width = 905
    Height = 281
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBtnText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    PaintOptions.AlternatingRowColor = clInfoBk
    PaintOptions.ActiveRecordColor = clNavy
  end
end
