object FInvParteEquipo: TFInvParteEquipo
  Left = 233
  Top = 33
  ActiveControl = dblcdTrabId
  BorderStyle = bsDialog
  Caption = 'Modulo ATI'
  ClientHeight = 657
  ClientWidth = 857
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 0
    Top = 0
    Width = 857
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'FICHA T'#201'CNICA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object dbgParteEquipo: TwwDBGrid
    Left = 0
    Top = 385
    Width = 857
    Height = 215
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clHighlight
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = dbgParteEquipoDblClick
    OnKeyDown = dbgParteEquipoKeyDown
    PaintOptions.AlternatingRowColor = clInfoBk
    PaintOptions.ActiveRecordColor = clNavy
    object dbgbActualizar: TwwIButton
      Left = 0
      Top = 0
      Width = 25
      Height = 22
      AllowAllUp = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = dbgbActualizarClick
    end
  end
  object pnlCabecera: TPanel
    Left = 0
    Top = 24
    Width = 857
    Height = 142
    Align = alTop
    Color = 10207162
    TabOrder = 1
    object Label1: TLabel
      Left = 14
      Top = 22
      Width = 69
      Height = 13
      Caption = 'C'#243'd Inventario'
    end
    object Label2: TLabel
      Left = 13
      Top = 46
      Width = 70
      Height = 13
      Caption = 'Serie Activo TI'
    end
    object Label3: TLabel
      Left = 40
      Top = 70
      Width = 43
      Height = 13
      Caption = 'Activo TI'
    end
    object Label4: TLabel
      Left = 47
      Top = 94
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object Label5: TLabel
      Left = 241
      Top = 22
      Width = 35
      Height = 13
      Caption = 'Modelo'
    end
    object Label6: TLabel
      Left = 246
      Top = 46
      Width = 30
      Height = 13
      Caption = 'Marca'
    end
    object Label8: TLabel
      Left = 252
      Top = 70
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object Label9: TLabel
      Left = 431
      Top = 22
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label10: TLabel
      Left = 35
      Top = 118
      Width = 48
      Height = 13
      Caption = 'Ubicaci'#243'n'
    end
    object Label12: TLabel
      Left = 1
      Top = 1
      Width = 855
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Datos SSGG'
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object dbeNInv: TwwDBEdit
      Left = 88
      Top = 18
      Width = 137
      Height = 21
      Color = clMoneyGreen
      DataField = 'artcodbar'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeSerie: TwwDBEdit
      Left = 88
      Top = 42
      Width = 137
      Height = 21
      Color = clMoneyGreen
      DataField = 'acfserie'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeEquipo: TwwDBEdit
      Left = 88
      Top = 66
      Width = 137
      Height = 21
      Color = clMoneyGreen
      DataField = 'acfdes'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUsuario: TwwDBEdit
      Left = 88
      Top = 90
      Width = 329
      Height = 21
      Color = clMoneyGreen
      DataField = 'recibenom'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeModelo: TwwDBEdit
      Left = 281
      Top = 18
      Width = 137
      Height = 21
      Color = clMoneyGreen
      DataField = 'acfmodelo'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeMarca: TwwDBEdit
      Left = 281
      Top = 42
      Width = 137
      Height = 21
      Color = clMoneyGreen
      DataField = 'acfmarca'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeColor: TwwDBEdit
      Left = 281
      Top = 66
      Width = 137
      Height = 21
      Color = clMoneyGreen
      DataField = 'acfcolor'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeEstado: TwwDBEdit
      Left = 467
      Top = 18
      Width = 121
      Height = 21
      Color = clMoneyGreen
      DataField = 'estadoid'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUbicacion: TwwDBEdit
      Left = 87
      Top = 114
      Width = 500
      Height = 21
      Color = clMoneyGreen
      DataField = 'UBICACION'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object pnlCabeceraSoporte: TPanel
    Left = 0
    Top = 166
    Width = 857
    Height = 219
    Align = alTop
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label11: TLabel
      Left = 1
      Top = 1
      Width = 855
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Datos Soporte T'#233'cnico'
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 19
      Top = 26
      Width = 44
      Height = 13
      Caption = 'Usuario'
    end
    object Label14: TLabel
      Left = 5
      Top = 50
      Width = 58
      Height = 13
      Caption = 'Ubicaci'#243'n'
    end
    object Label19: TLabel
      Left = 19
      Top = 76
      Width = 44
      Height = 13
      Caption = 'Usuario'
    end
    object N: TLabel
      Left = 363
      Top = 26
      Width = 83
      Height = 13
      Caption = 'N'#176' Documento'
    end
    object Label21: TLabel
      Left = 419
      Top = 50
      Width = 41
      Height = 13
      Caption = 'Sticker'
    end
    object Label20: TLabel
      Left = 584
      Top = 26
      Width = 61
      Height = 13
      Caption = 'N'#176' Informe'
    end
    object Label22: TLabel
      Left = 68
      Top = 131
      Width = 72
      Height = 13
      Caption = 'Observacion'
    end
    object dbeUbicacionSoporte: TwwDBEdit
      Left = 68
      Top = 46
      Width = 329
      Height = 21
      Color = clMoneyGreen
      DataField = 'S_UBICACION'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUsuarioSoporte: TwwDBEdit
      Left = 69
      Top = 22
      Width = 274
      Height = 21
      Color = clMoneyGreen
      DataField = 'S_recibenom'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object pnlUbicacion: TPanel
      Left = 8
      Top = 97
      Width = 849
      Height = 33
      Color = 10207162
      TabOrder = 1
      object Label15: TLabel
        Left = 5
        Top = 10
        Width = 58
        Height = 13
        Caption = 'Ubicaci'#243'n'
      end
      object Label16: TLabel
        Left = 228
        Top = 10
        Width = 25
        Height = 13
        Caption = 'Piso'
      end
      object Label17: TLabel
        Left = 428
        Top = 10
        Width = 27
        Height = 13
        Caption = 'Area'
      end
      object Label18: TLabel
        Left = 628
        Top = 10
        Width = 53
        Height = 13
        Caption = 'Ambiente'
      end
      object dblcUbicacion: TwwDBLookupCombo
        Left = 67
        Top = 6
        Width = 47
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'locid'#9'40'#9'locid'#9'F')
        DataField = 'locid'
        DataSource = DMATI.dsQRY33
        MaxLength = 10
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnCloseUp = dblcUbicacionCloseUp
      end
      object dblcPiso: TwwDBLookupCombo
        Left = 262
        Top = 6
        Width = 52
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'PISO'#9'40'#9'PISO'#9'F')
        DataField = 'PISO'
        DataSource = DMATI.dsQRY33
        Enabled = False
        MaxLength = 10
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnCloseUp = dblcPisoCloseUp
      end
      object dblcArea: TwwDBLookupCombo
        Left = 457
        Top = 6
        Width = 49
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'AREA'#9'40'#9'AREA'#9'F')
        DataField = 'AREA'
        DataSource = DMATI.dsQRY33
        Enabled = False
        MaxLength = 10
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnCloseUp = dblcAreaCloseUp
      end
      object dblcAmbiente: TwwDBLookupCombo
        Left = 683
        Top = 6
        Width = 55
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ambcod'#9'40'#9'ambcod'#9'F')
        DataField = 'ambcod'
        DataSource = DMATI.dsQRY33
        Enabled = False
        MaxLength = 10
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnCloseUp = dblcAmbienteCloseUp
      end
      object dbeUbi: TwwDBEdit
        Left = 119
        Top = 6
        Width = 103
        Height = 21
        DataField = 'locdes'
        DataSource = DMATI.dsQRY33
        Enabled = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbePiso: TwwDBEdit
        Left = 317
        Top = 6
        Width = 103
        Height = 21
        DataField = 'pisodes'
        DataSource = DMATI.dsQRY33
        Enabled = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeArea: TwwDBEdit
        Left = 510
        Top = 6
        Width = 103
        Height = 21
        DataField = 'AREADES'
        DataSource = DMATI.dsQRY33
        Enabled = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeAmbiente: TwwDBEdit
        Left = 741
        Top = 6
        Width = 103
        Height = 21
        DataField = 'ambdes'
        DataSource = DMATI.dsQRY33
        Enabled = False
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object dblcdTrabId: TwwDBLookupComboDlg
      Left = 68
      Top = 71
      Width = 73
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'trabid'
      DataSource = DMATI.dsQRY33
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnCloseUp = dblcdTrabIdCloseUp
    end
    object dbeTrabajador: TwwDBEdit
      Left = 148
      Top = 71
      Width = 305
      Height = 21
      DataField = 'S_RECIBENOM'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeNonDoc: TwwDBEdit
      Left = 452
      Top = 22
      Width = 124
      Height = 21
      Color = clMoneyGreen
      DataField = 'NroDoc'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeSticker: TwwDBEdit
      Left = 469
      Top = 46
      Width = 121
      Height = 21
      DataField = 'Sticker'
      DataSource = DMATI.dsQRY33
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyPress = dbeStickerKeyPress
    end
    object dbeInforme: TwwDBEdit
      Left = 649
      Top = 22
      Width = 124
      Height = 21
      DataField = 'NumInf'
      DataSource = DMATI.dsQRY33
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbmmObservacion: TDBMemo
      Left = 68
      Top = 148
      Width = 709
      Height = 61
      DataField = 'OBSERVACION'
      DataSource = DMATI.dsQRY33
      MaxLength = 480
      TabOrder = 8
    end
  end
  object pnlPie: TPanel
    Left = 0
    Top = 600
    Width = 857
    Height = 57
    Align = alBottom
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lbContador: TLabel
      Left = 3
      Top = 4
      Width = 23
      Height = 24
      Caption = 'fas'
      Color = 10207162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object btnCancelar: TfcShapeBtn
      Left = 808
      Top = 11
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
    object btnGrabar: TfcShapeBtn
      Left = 750
      Top = 11
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
      OnClick = btnGrabarClick
    end
    object z2bbtnAcepta: TfcShapeBtn
      Left = 689
      Top = 11
      Width = 49
      Height = 38
      Cursor = crHandPoint
      Hint = 'Ficha T'#233'cnico'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
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
      OnClick = z2bbtnAceptaClick
    end
  end
  object ppdbEntrada: TppDBPipeline
    DataSource = DMATI.dsQRY12
    UserName = 'dbEntrada'
    Left = 464
    Top = 616
  end
  object pprEntrada: TppReport
    AutoStop = False
    DataPipeline = ppdbEntrada
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLEXES\Reportes\Entrada.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 496
    Top = 616
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbEntrada'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 84402
      mmPrintPosition = 0
      object ppRegion2: TppRegion
        UserName = 'Region2'
        mmHeight = 16404
        mmLeft = 15346
        mmTop = 57944
        mmWidth = 226219
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'EQUIPO_SERIE'
          DataPipeline = ppdbEntrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbEntrada'
          mmHeight = 4233
          mmLeft = 40746
          mmTop = 60590
          mmWidth = 34660
          BandType = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText101'
          AutoSize = True
          DataField = 'EQUIPO'
          DataPipeline = ppdbEntrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbEntrada'
          mmHeight = 4191
          mmLeft = 40481
          mmTop = 66675
          mmWidth = 13674
          BandType = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Equipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 19314
          mmTop = 66675
          mmWidth = 13229
          BandType = 0
        end
        object ppDBText13: TppDBText
          UserName = 'DBText103'
          DataField = 'EQUIPO_MODELO'
          DataPipeline = ppdbEntrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbEntrada'
          mmHeight = 4233
          mmLeft = 92340
          mmTop = 60590
          mmWidth = 34660
          BandType = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 77258
          mmTop = 60590
          mmWidth = 13494
          BandType = 0
        end
        object ppDBText14: TppDBText
          UserName = 'DBText104'
          AutoSize = True
          DataField = 'EQUIPO_MARCA'
          DataPipeline = ppdbEntrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbEntrada'
          mmHeight = 4191
          mmLeft = 143404
          mmTop = 66675
          mmWidth = 28533
          BandType = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'Marca:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 128588
          mmTop = 66675
          mmWidth = 11377
          BandType = 0
        end
        object ppDBText17: TppDBText
          UserName = 'DBText107'
          DataField = 'EQUIPO_COLOR'
          DataPipeline = ppdbEntrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbEntrada'
          mmHeight = 4233
          mmLeft = 143140
          mmTop = 60590
          mmWidth = 28046
          BandType = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'Color:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 128588
          mmTop = 60590
          mmWidth = 10319
          BandType = 0
        end
        object ppDBText18: TppDBText
          UserName = 'DBText108'
          AutoSize = True
          DataField = 'EQUIPO_ESTADO'
          DataPipeline = ppdbEntrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbEntrada'
          mmHeight = 4191
          mmLeft = 207434
          mmTop = 66675
          mmWidth = 30184
          BandType = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'Estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 179917
          mmTop = 66675
          mmWidth = 12965
          BandType = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'Serie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 19314
          mmTop = 60590
          mmWidth = 9790
          BandType = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'N'#176' Inventario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 179917
          mmTop = 60590
          mmWidth = 23019
          BandType = 0
        end
        object ppDBText22: TppDBText
          UserName = 'DBText22'
          DataField = 'ARTCODBAR'
          DataPipeline = ppdbEntrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbEntrada'
          mmHeight = 4233
          mmLeft = 207434
          mmTop = 60590
          mmWidth = 14288
          BandType = 0
        end
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'FICHA TECNICA - SOPORTE T'#201'CNICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 94530
        mmTop = 2646
        mmWidth = 77385
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 16404
        mmTop = 80169
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'PARTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 87842
        mmTop = 80169
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'CARACTERISTICA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 114300
        mmTop = 80169
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'MARCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 148696
        mmTop = 80169
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 172509
        mmTop = 80169
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'CAPACIDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 197644
        mmTop = 80169
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'ESTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 222250
        mmTop = 80169
        mmWidth = 14552
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 15610
        mmTop = 84138
        mmWidth = 225955
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 15610
        mmTop = 79375
        mmWidth = 226219
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 15346
        mmTop = 79375
        mmWidth = 5821
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 241565
        mmTop = 79640
        mmWidth = 5821
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 86784
        mmTop = 79640
        mmWidth = 5821
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 113242
        mmTop = 79640
        mmWidth = 5821
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 171186
        mmTop = 79640
        mmWidth = 5821
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 195792
        mmTop = 79640
        mmWidth = 5821
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 220134
        mmTop = 79640
        mmWidth = 5821
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 147373
        mmTop = 79640
        mmWidth = 5821
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'RECIBENOM_1'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 4191
        mmLeft = 32279
        mmTop = 31485
        mmWidth = 25442
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Usuario:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 15346
        mmTop = 31485
        mmWidth = 14266
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        DataField = 'UBICACION_1'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 4191
        mmLeft = 35190
        mmTop = 38365
        mmWidth = 23707
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 217223
        mmTop = 529
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 206375
        mmTop = 529
        mmWidth = 8731
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 217223
        mmTop = 3969
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 206375
        mmTop = 3969
        mmWidth = 6879
        BandType = 0
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        BarCodeType = bcCode39
        BarColor = clWindowText
        DataField = 'ARTCODBAR'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 16383
        mmLeft = 206905
        mmTop = 17463
        mmWidth = 47498
        BandType = 0
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'N'#176' de Inventario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 206905
        mmTop = 13494
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Plataforma y Operaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 19844
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Equipo de Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 19579
        mmTop = 23548
        mmWidth = 25135
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        AutoSize = True
        MaintainAspectRatio = False
        Picture.Data = {
          07544269746D61702A1F0000424D2A1F00000000000036040000280000005C00
          00004B0000000100080000000000F41A0000CE0E0000C40E0000000100000000
          0000000000008080800000008000008080000080000080800000800000008000
          80004080800040400000FF80000080400000FF00400000408000FFFFFF00C0C0
          C0000000FF0000FFFF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF
          0000FFFF8000FF8080008000FF004080FF00C0DCC000F0CAA6009F2200000300
          270054843A00471848009F225300271822004C008000010000000000D600F7BF
          3700000064005B003F004C004400F7BF0000000003000000F2005B00FA005B00
          D10000102400484B03000000FA005B00D8005B00000000000E005B00F2005B00
          1D00F7BF03005B00A700F684A700C23D4700220000004C000000800E00000000
          70005B002E00F7BFB7000000DB00F6BFDB00F6BF000051810000D379FF00A723
          14007B3D4700FFFFA700A723000000003A00110003000010000074606F007A85
          A700000203006843B20040236F001682690020002800800EF400A7230A001A00
          02005707000022004C00000016006900220000008F008F0D000001002F008C85
          CA00800E0100000001006F0721000000200028000000000200006C430200D685
          980000000200F485A7008F0D6C00000027001C866F008F070000010002005D00
          800000004400020088000094C700020012004242000012875700770700001201
          00000C005D007B51B40002004E0031036F00000280002000B400020036007C86
          D30047180000800E2000780E78002000800045C20000060018004718D600F7BF
          8C0002004400F7BF80005D0020000000C0005B005D00B67F0100000078000002
          20005D006C005B004700B67F2000000201000002A800B67F8A00B67FBC005D00
          01000000E0005B00200000006A005B0036002887D3000300CC0004006C002000
          6F0000000500280F0000300F000028875000C00D00003487500017019C001405
          000092040000768700005E870000507F1700537FC000370F2F00A4876E001701
          64002F0100000000A4000000940000003000000037002F0178006100C0000000
          AE0029796A006AB56A008705F000AC11370086109A00030304000B0304000303
          0F001B120F000B1A0F00231A0F00331A0F0013220F002B220F00132A0F000312
          1A00031A1A002B1A1A002B221A0033221A00132A1A001B2A1A003B2A1A001332
          1A001B321A0043321A001B411A00030A2400031A24000B1A2400432A24001B32
          2400433224004B3224001B3924004B392400533924005C3924001B4124005341
          24005C41240064412400234924000B122F0003222F0053392F0064492F006C49
          2F0023512F002B512F006C512F0074512F007C512F0023592F002B592F003359
          2F0003123A000B123A000B1A3A0003223A00032A3A000B2A3A006C513A007451
          3A007C593A0084593A002B613A0033613A007C613A008C613A00F0FBFF00A4A0
          A0000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E
          0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E
          0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0E0E0E0E0E0E0E0E0E0E
          0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0B0B0B0B0B0B0B
          0B0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0B0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0B0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0B0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0B0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0B0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B
          0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E
          0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E
          0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0B0E
          0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E
          0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0E0E0B0E0E0B0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0B
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0B0B0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0E0E0E0E0E0E0E0E0E0B0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0B0B0B0B0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0B0B0B0B0B0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0B0E0E0E0E0E0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0B0B0B0B0B0B0B0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0B0E0E0E0E0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0B0B0B0B0B0B0B0B0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E
          0E0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B
          0B0B0B0B0B0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0B0B0B
          0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B
          0B0B0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0B0B0B0B0B0B0B
          0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0E0E
          0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0B0B0B0B0B0B0B0B0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0E0E0E0B0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0E0E0E0B0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0B0E0E0E0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0E0E0E0B0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0B0E0E0E0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0B0B0B0B0B0B0B0B0B0B0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0B0E0E0E0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0B0B0B0B0B0B0B0B0B0B0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E
          0E0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B
          0B0B0B0B0B0B0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0B0B0B
          0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B
          0B0B0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0B
          0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0B0B
          0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0B0B0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0B0B0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0B0B0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B
          0B0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B
          0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B
          0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B
          0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B
          0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B
          0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0B0B0B0B0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0B0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0B0E0E0E0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0B0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
          0E0E0E0E0E0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E}
        mmHeight = 19844
        mmLeft = 19315
        mmTop = 0
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label201'
        Caption = 'Ubicaci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15346
        mmTop = 38365
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'NRODOC'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 4191
        mmLeft = 43392
        mmTop = 44979
        mmWidth = 15663
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label202'
        Caption = 'Requerimiento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15346
        mmTop = 44979
        mmWidth = 25929
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'STICKER'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 4191
        mmLeft = 30163
        mmTop = 51594
        mmWidth = 15452
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Sticker:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15346
        mmTop = 51594
        mmWidth = 12965
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        AutoSize = True
        DataField = 'NUMINF'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 4191
        mmLeft = 98690
        mmTop = 44979
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label9'
        Caption = 'Con Informe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 75142
        mmTop = 44979
        mmWidth = 21929
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'PARTE_SERIE'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 4233
        mmLeft = 16404
        mmTop = 0
        mmWidth = 48419
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'PARTE_NOMBRE'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 3969
        mmLeft = 87842
        mmTop = 0
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'PARTE_CARACTERISTICA'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 3969
        mmLeft = 114300
        mmTop = 0
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'PARTE_TIPO'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 3969
        mmLeft = 172509
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'PARTE_MARCA'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 3969
        mmLeft = 148696
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'PARTE_UNIDAD'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 3969
        mmLeft = 197644
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'PARTE_ESTADO'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 3969
        mmLeft = 222250
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 15610
        mmTop = 4498
        mmWidth = 225955
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 15346
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 241565
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 86784
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 147373
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 171186
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 195792
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 220134
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 113242
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Soporte T'#233'cnico de Tecnologia de Informacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 5027
        mmLeft = 144992
        mmTop = 2910
        mmWidth = 94456
        BandType = 8
      end
      object ppLine23: TppLine
        UserName = 'Line21'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 15081
        mmTop = 1058
        mmWidth = 226748
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 56356
      mmPrintPosition = 0
      object ppLine21: TppLine
        UserName = 'Line201'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 24606
        mmTop = 47625
        mmWidth = 58208
        BandType = 7
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'USUARIO'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 3704
        mmLeft = 46567
        mmTop = 48683
        mmWidth = 14552
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 183357
        mmTop = 47625
        mmWidth = 48419
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'CESAR RUIZ GRADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 190500
        mmTop = 48683
        mmWidth = 33867
        BandType = 7
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Supervisor de P y O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 194734
        mmTop = 53181
        mmWidth = 25400
        BandType = 7
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Especialista de Soporte al Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 32015
        mmTop = 53181
        mmWidth = 43392
        BandType = 7
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 102129
        mmTop = 47625
        mmWidth = 58208
        BandType = 7
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        DataField = 'SSGG'
        DataPipeline = ppdbEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbEntrada'
        mmHeight = 3598
        mmLeft = 126794
        mmTop = 48683
        mmWidth = 9144
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'SSGG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 127265
        mmTop = 53181
        mmWidth = 8202
        BandType = 7
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        mmHeight = 20902
        mmLeft = 15346
        mmTop = 7408
        mmWidth = 226219
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo1: TppDBMemo
          UserName = 'DBMemo1'
          CharWrap = False
          DataField = 'OBSERVACION'
          DataPipeline = ppdbEntrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbEntrada'
          mmHeight = 18256
          mmLeft = 16669
          mmTop = 8467
          mmWidth = 223309
          BandType = 7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
      object ppLabel24: TppLabel
        UserName = 'Label22'
        Caption = 'Observaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 16669
        mmTop = 2117
        mmWidth = 19727
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppdEntrada: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprEntrada
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 528
    Top = 615
  end
end
