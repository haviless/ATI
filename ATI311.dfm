object FDetaInfAte: TFDetaInfAte
  Left = 71
  Top = 113
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Modulo ATI'
  ClientHeight = 558
  ClientWidth = 916
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
  object Label8: TLabel
    Left = 0
    Top = 0
    Width = 916
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'INFORME DE ATENCI'#211'N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object pnlInforme: TPanel
    Left = 0
    Top = 24
    Width = 916
    Height = 453
    Align = alClient
    Color = 10207162
    TabOrder = 0
    object Label1: TLabel
      Left = 322
      Top = 7
      Width = 44
      Height = 13
      Caption = 'Problema'
    end
    object Label2: TLabel
      Left = 322
      Top = 116
      Width = 56
      Height = 13
      Caption = 'Diagnostico'
    end
    object Label3: TLabel
      Left = 322
      Top = 231
      Width = 33
      Height = 13
      Caption = 'Acci'#243'n'
    end
    object Label5: TLabel
      Left = 24
      Top = 17
      Width = 35
      Height = 13
      Caption = 'Informe'
    end
    object Label6: TLabel
      Left = 16
      Top = 237
      Width = 39
      Height = 13
      Caption = 'Usuario:'
    end
    object Label7: TLabel
      Left = 16
      Top = 273
      Width = 51
      Height = 13
      Caption = 'Ubicaci'#243'n:'
    end
    object Label11: TLabel
      Left = 11
      Top = 42
      Width = 48
      Height = 13
      Caption = 'N'#176' Equipo'
    end
    object Label12: TLabel
      Left = 35
      Top = 67
      Width = 24
      Height = 13
      Caption = 'Serie'
    end
    object Label15: TLabel
      Left = 16
      Top = 332
      Width = 39
      Height = 13
      Caption = 'Usuario:'
    end
    object Label16: TLabel
      Left = 16
      Top = 372
      Width = 51
      Height = 13
      Caption = 'Ubicaci'#243'n:'
    end
    object Label17: TLabel
      Left = 7
      Top = 315
      Width = 102
      Height = 16
      Alignment = taCenter
      Caption = 'Ubicaci'#243'n SSGG'
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label18: TLabel
      Left = 7
      Top = 219
      Width = 164
      Height = 16
      Alignment = taCenter
      Caption = 'Ubicaci'#243'n Soporte T'#233'cnico'
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 26
      Top = 89
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label13: TLabel
      Left = 7
      Top = 123
      Width = 140
      Height = 16
      Alignment = taCenter
      Caption = 'Ubicaci'#243'n en el Informe'
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 141
      Width = 39
      Height = 13
      Caption = 'Usuario:'
    end
    object Label19: TLabel
      Left = 16
      Top = 178
      Width = 51
      Height = 13
      Caption = 'Ubicaci'#243'n:'
    end
    object lbInfoEst: TLabel
      Left = 546
      Top = 368
      Width = 232
      Height = 67
      Caption = 'lbInfoEst'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -60
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object dbmmProblema: TDBMemo
      Left = 322
      Top = 20
      Width = 545
      Height = 92
      Color = clWhite
      DataField = 'problema'
      DataSource = DMATI.dsQRY40
      MaxLength = 480
      TabOrder = 0
    end
    object dbmmDiagnostico: TDBMemo
      Left = 322
      Top = 129
      Width = 545
      Height = 92
      DataField = 'diagnostico'
      DataSource = DMATI.dsQRY40
      MaxLength = 480
      TabOrder = 1
    end
    object dbmmAccion: TDBMemo
      Left = 322
      Top = 246
      Width = 545
      Height = 92
      DataField = 'accion'
      DataSource = DMATI.dsQRY40
      MaxLength = 480
      TabOrder = 2
    end
    object dbeNinfo: TwwDBEdit
      Left = 63
      Top = 14
      Width = 163
      Height = 21
      Color = clMoneyGreen
      DataField = 'numinf'
      DataSource = DMATI.dsQRY40
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUsuario: TwwDBEdit
      Left = 16
      Top = 250
      Width = 275
      Height = 21
      Color = clMoneyGreen
      DataField = 'S_recibenom'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUbicacion: TwwDBEdit
      Left = 16
      Top = 288
      Width = 275
      Height = 21
      Color = clMoneyGreen
      DataField = 'S_UBICACION'
      DataSource = DMATI.dsQRY33
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCodEquipo: TwwDBEdit
      Left = 64
      Top = 38
      Width = 88
      Height = 21
      Color = clMoneyGreen
      DataField = 'artcodbar'
      DataSource = DMATI.dsQRY33
      Enabled = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeNomEquipo: TwwDBEdit
      Left = 154
      Top = 38
      Width = 129
      Height = 21
      Color = clMoneyGreen
      DataField = 'acfdes'
      DataSource = DMATI.dsQRY33
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit1: TwwDBEdit
      Left = 64
      Top = 63
      Width = 218
      Height = 21
      Color = clMoneyGreen
      DataField = 'acfserie'
      DataSource = DMATI.dsQRY33
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 16
      Top = 348
      Width = 275
      Height = 21
      Color = clMoneyGreen
      DataField = 'recibenom'
      DataSource = DMATI.dsQRY33
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 16
      Top = 388
      Width = 275
      Height = 21
      Color = clMoneyGreen
      DataField = 'UBICACION'
      DataSource = DMATI.dsQRY33
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcEstado: TwwDBLookupCombo
      Left = 64
      Top = 87
      Width = 129
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      DataField = 'ESTACTIVO'
      DataSource = DMATI.dsQRY40
      Color = clWhite
      ParentFont = False
      TabOrder = 11
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object wwDBEdit4: TwwDBEdit
      Left = 16
      Top = 154
      Width = 275
      Height = 21
      Color = clMoneyGreen
      DataField = 'usuario'
      DataSource = DMATI.dsQRY40
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit5: TwwDBEdit
      Left = 16
      Top = 191
      Width = 275
      Height = 21
      Color = clMoneyGreen
      DataField = 'UBICACION'
      DataSource = DMATI.dsQRY40
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object rbEspecif: TRadioGroup
      Left = 320
      Top = 376
      Width = 217
      Height = 57
      ItemIndex = 0
      Items.Strings = (
        'Requiere llevar a Soporte T'#233'cnico'
        'No Requiere llevar a Soporte T'#233'cnico')
      TabOrder = 14
      OnClick = rbEspecifClick
    end
    object cbGarantia: TCheckBox
      Left = 322
      Top = 352
      Width = 119
      Height = 17
      Caption = 'Va a garant'#237'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = cbGarantiaClick
    end
  end
  object pnlPie: TPanel
    Left = 0
    Top = 477
    Width = 916
    Height = 81
    Hint = 'Parte Equipo'
    Align = alBottom
    BevelOuter = bvNone
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object SEstVis: TShape
      Left = 10
      Top = 50
      Width = 8
      Height = 8
      Brush.Color = clInfoBk
    end
    object Label9: TLabel
      Left = 22
      Top = 61
      Width = 54
      Height = 16
      Caption = 'Atendido'
      Color = 10207162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object SEstIni: TShape
      Left = 11
      Top = 3
      Width = 8
      Height = 8
      Brush.Color = 121316
    end
    object Label10: TLabel
      Left = 22
      Top = -1
      Width = 34
      Height = 16
      Caption = 'Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SEstAnu: TShape
      Left = 10
      Top = 34
      Width = 8
      Height = 8
      Brush.Color = 10329501
    end
    object Label24: TLabel
      Left = 22
      Top = 30
      Width = 50
      Height = 16
      Caption = 'Anulado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 22
      Top = 46
      Width = 43
      Height = 16
      Caption = 'Visado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SEstFin: TShape
      Left = 10
      Top = 65
      Width = 9
      Height = 8
      Brush.Color = 10329501
    end
    object Label21: TLabel
      Left = 22
      Top = 14
      Width = 59
      Height = 16
      Caption = 'Aceptado'
      Color = 10207162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object SEstAce: TShape
      Left = 10
      Top = 18
      Width = 9
      Height = 8
      Brush.Color = 10329501
    end
    object z2bbtnCancelar: TfcShapeBtn
      Left = 848
      Top = 26
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
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnCancelarClick
    end
    object btImprimir: TfcShapeBtn
      Left = 584
      Top = 26
      Width = 53
      Height = 38
      Cursor = crHandPoint
      Hint = 'Reporte'
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
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btImprimirClick
    end
    object btnAcepta: TfcShapeBtn
      Left = 659
      Top = 26
      Width = 52
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
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnAceptaClick
    end
    object btnVisar: TfcShapeBtn
      Left = 720
      Top = 26
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
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnVisarClick
    end
    object btnAnular: TfcShapeBtn
      Left = 786
      Top = 26
      Width = 52
      Height = 38
      Cursor = crHandPoint
      Hint = 'Anular'
      Caption = 'Anular'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnAnularClick
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 272
      Top = 26
      Width = 53
      Height = 38
      Cursor = crHandPoint
      Hint = 'Reporte'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F3308800000007
        703337F37777777FF7F33080000000007033373777777777F73F087000222000
        77037F3777333777FF7F08000222220007037F777F3333777F7F0F0002222200
        07037F777F3333777F7F0F000822220008037F777FF33377737F0F7000882000
        780373F777FFF777F373308000000000803337F77777777737F330F800000008
        8033373F777777733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
  end
  object ppdbInformeMax: TppDBPipeline
    UserName = 'dbInforme1'
    Left = 531
    Top = 301
  end
  object pprInformeMax: TppReport
    AutoStop = False
    DataPipeline = ppdbInforme
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Desarrollo DM\Adm Equipos TI\Informe.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 568
    Top = 302
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbInforme'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 79111
      mmPrintPosition = 0
      object ppRegion6: TppRegion
        UserName = 'Region2'
        mmHeight = 15081
        mmLeft = 15875
        mmTop = 62442
        mmWidth = 184415
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText10'
          DataField = 'EQUIPO_SERIE'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4233
          mmLeft = 35983
          mmTop = 64294
          mmWidth = 34660
          BandType = 1
        end
        object ppDBText2: TppDBText
          UserName = 'DBText103'
          DataField = 'EQUIPO_MODELO'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4233
          mmLeft = 89165
          mmTop = 64294
          mmWidth = 34660
          BandType = 1
        end
        object ppLabel1: TppLabel
          UserName = 'Label14'
          Caption = 'Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 73025
          mmTop = 64294
          mmWidth = 13494
          BandType = 1
        end
        object ppDBText3: TppDBText
          UserName = 'DBText104'
          AutoSize = True
          DataField = 'EQUIPO_MARCA'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 138907
          mmTop = 71173
          mmWidth = 14859
          BandType = 1
        end
        object ppDBText7: TppDBText
          UserName = 'DBText107'
          DataField = 'EQUIPO_COLOR'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4233
          mmLeft = 138907
          mmTop = 64294
          mmWidth = 19050
          BandType = 1
        end
        object ppLabel4: TppLabel
          UserName = 'Label18'
          Caption = 'Color:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 125413
          mmTop = 64294
          mmWidth = 10319
          BandType = 1
        end
        object ppLabel21: TppLabel
          UserName = 'Label19'
          Caption = 'Estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 161132
          mmTop = 64294
          mmWidth = 12965
          BandType = 1
        end
        object ppLabel22: TppLabel
          UserName = 'Label11'
          Caption = 'Serie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 19844
          mmTop = 64294
          mmWidth = 9790
          BandType = 1
        end
        object ppDBText9: TppDBText
          UserName = 'DBText7'
          AutoSize = True
          DataField = 'ESTACTIVO'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 175155
          mmTop = 64294
          mmWidth = 12700
          BandType = 1
        end
        object ppLabel25: TppLabel
          UserName = 'Label15'
          Caption = 'Marca:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4498
          mmLeft = 125678
          mmTop = 70644
          mmWidth = 11377
          BandType = 1
        end
      end
      object ppLabel32: TppLabel
        UserName = 'Label23'
        Caption = 'N'#176' Inventario:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 164571
        mmTop = 13229
        mmWidth = 23019
        BandType = 1
      end
      object ppDBText10: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'NUMINF'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 4995
        mmLeft = 115623
        mmTop = 12435
        mmWidth = 18965
        BandType = 1
      end
      object ppRegion7: TppRegion
        UserName = 'Region6'
        mmHeight = 5821
        mmLeft = 18785
        mmTop = 69586
        mmWidth = 104775
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText11: TppDBText
          UserName = 'DBText101'
          AutoSize = True
          DataField = 'EQUIPO'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 35983
          mmTop = 70909
          mmWidth = 66167
          BandType = 1
        end
        object ppLabel33: TppLabel
          UserName = 'Label12'
          Caption = 'Equipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 19844
          mmTop = 70909
          mmWidth = 13229
          BandType = 1
        end
      end
      object ppDBBarCode2: TppDBBarCode
        UserName = 'DBBarCode1'
        BarCodeType = bcCode39
        BarColor = clWindowText
        DataField = 'ARTCODBAR'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 11938
        mmLeft = 164571
        mmTop = 18785
        mmWidth = 34544
        BandType = 1
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel34: TppLabel
        UserName = 'Label13'
        Caption = 'Plataforma y Operaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 14817
        mmTop = 19844
        mmWidth = 32808
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label21'
        Caption = 'Equipo de Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 18785
        mmTop = 23019
        mmWidth = 25135
        BandType = 1
      end
      object ppImage2: TppImage
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
        mmLeft = 19050
        mmTop = 0
        mmWidth = 24342
        BandType = 1
      end
      object ppRegion8: TppRegion
        UserName = 'Region7'
        mmHeight = 11642
        mmLeft = 15875
        mmTop = 49477
        mmWidth = 174625
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel36: TppLabel
          UserName = 'Label20'
          Caption = 'Usuario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 16669
          mmTop = 50800
          mmWidth = 14552
          BandType = 1
        end
        object ppLabel37: TppLabel
          UserName = 'Label201'
          Caption = 'Ubicaci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 16669
          mmTop = 55298
          mmWidth = 17992
          BandType = 1
        end
        object ppDBText12: TppDBText
          UserName = 'DBText11'
          AutoSize = True
          DataField = 'SG_RECIBENOM'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 36778
          mmTop = 50800
          mmWidth = 72009
          BandType = 1
        end
        object ppDBText13: TppDBText
          UserName = 'DBText15'
          AutoSize = True
          DataField = 'SG_UBICACION'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 36777
          mmTop = 55562
          mmWidth = 99865
          BandType = 1
        end
      end
      object ppRegion9: TppRegion
        UserName = 'Region8'
        mmHeight = 11642
        mmLeft = 15875
        mmTop = 32544
        mmWidth = 174625
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText14: TppDBText
          UserName = 'DBText13'
          AutoSize = True
          DataField = 'UBICACION'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 37042
          mmTop = 38629
          mmWidth = 101854
          BandType = 1
        end
        object ppDBText15: TppDBText
          UserName = 'DBText12'
          AutoSize = True
          DataField = 'USUARIO'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 37042
          mmTop = 33602
          mmWidth = 59563
          BandType = 1
        end
        object ppLabel38: TppLabel
          UserName = 'Label202'
          Caption = 'Usuario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 17463
          mmTop = 33602
          mmWidth = 14288
          BandType = 1
        end
        object ppLabel39: TppLabel
          UserName = 'Label28'
          Caption = 'Ubicaci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 17463
          mmTop = 38629
          mmWidth = 17992
          BandType = 1
        end
      end
      object ppLabel40: TppLabel
        UserName = 'Label16'
        Caption = 'Ubicaci'#243'n por SSGG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 15875
        mmTop = 44715
        mmWidth = 35772
        BandType = 1
      end
      object ppLabel41: TppLabel
        UserName = 'Label32'
        Caption = 'Ubicaci'#243'n por Soporte T'#233'cnico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 15875
        mmTop = 27781
        mmWidth = 52028
        BandType = 1
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 16669
        mmTop = 78846
        mmWidth = 529
        BandType = 1
      end
      object ppLabel42: TppLabel
        UserName = 'Label59'
        Caption = 'Informe de Atenci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 5027
        mmLeft = 70908
        mmTop = 12435
        mmWidth = 42863
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 164836
        mmTop = 6879
        mmWidth = 17463
        BandType = 1
      end
      object ppLabel43: TppLabel
        UserName = 'Label61'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 164836
        mmTop = 2646
        mmWidth = 8731
        BandType = 1
      end
      object ppDBText17: TppDBText
        UserName = 'DBText34'
        AutoSize = True
        DataField = 'FECHA'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3260
        mmLeft = 174890
        mmTop = 2646
        mmWidth = 32343
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLabel44: TppLabel
        UserName = 'Label2'
        Caption = 'SERIE PARTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 265
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label3'
        Caption = 'PARTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 66940
        mmTop = 265
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label4'
        Caption = 'CARACTERISTICA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 93398
        mmTop = 265
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label5'
        Caption = 'MARCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 265
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label6'
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 151607
        mmTop = 265
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label7'
        Caption = 'CAPACIDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 265
        mmWidth = 20638
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 16140
        mmTop = 265
        mmWidth = 183886
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 15875
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 65881
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine27: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 92340
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 150284
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 174890
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 126471
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 199761
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText31: TppDBText
        UserName = 'DBText1'
        DataField = 'PARTE_SERIE'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 265
        mmWidth = 48419
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText2'
        DataField = 'PARTE_NOMBRE'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3969
        mmLeft = 66940
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText3'
        DataField = 'PARTE_CARACTERISTICA'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3969
        mmLeft = 93398
        mmTop = 265
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText4'
        DataField = 'PARTE_TIPO'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3969
        mmLeft = 151607
        mmTop = 265
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText5'
        DataField = 'PARTE_MARCA'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3969
        mmLeft = 127794
        mmTop = 265
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText6'
        DataField = 'PARTE_UNIDAD'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3969
        mmLeft = 176742
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppLine32: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 15875
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 65881
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine34: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 126471
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine35: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 150284
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine36: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 174890
        mmTop = 265
        mmWidth = 6879
        BandType = 4
      end
      object ppLine37: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 92340
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine38: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 199761
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine39: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 16140
        mmTop = 0
        mmWidth = 183886
        BandType = 4
      end
      object ppLine40: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 15875
        mmTop = 4763
        mmWidth = 184150
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLabel50: TppLabel
        UserName = 'Label8'
        Caption = 'Soporte T'#233'cnico de Tecnologia de Informaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4498
        mmLeft = 101336
        mmTop = 2381
        mmWidth = 86784
        BandType = 8
      end
      object ppLine41: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 15875
        mmTop = 1058
        mmWidth = 184150
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 129646
      mmPrintPosition = 0
      object ppLine42: TppLine
        UserName = 'Line201'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 16669
        mmTop = 120121
        mmWidth = 55827
        BandType = 7
      end
      object ppDBText38: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'TECNICO'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3598
        mmLeft = 32216
        mmTop = 121179
        mmWidth = 24469
        BandType = 7
      end
      object ppLine43: TppLine
        UserName = 'Line22'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 133350
        mmTop = 120121
        mmWidth = 67204
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label10'
        Caption = 'JORGE C'#193'RDENAS  ZOLEZZI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 145521
        mmTop = 121179
        mmWidth = 44281
        BandType = 7
      end
      object ppLine44: TppLine
        UserName = 'Line18'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 78846
        mmTop = 120121
        mmWidth = 49742
        BandType = 7
      end
      object ppLabel52: TppLabel
        UserName = 'Label101'
        Caption = 'C'#201'SAR RUIZ GRADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 86784
        mmTop = 121179
        mmWidth = 33867
        BandType = 7
      end
      object ppLabel53: TppLabel
        UserName = 'Label22'
        Caption = 'Especialista de Soporte al Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 22754
        mmTop = 126471
        mmWidth = 43392
        BandType = 7
      end
      object ppLabel54: TppLabel
        UserName = 'Label25'
        Caption = 'Supervisor de P y O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 91017
        mmTop = 126471
        mmWidth = 25400
        BandType = 7
      end
      object ppLabel60: TppLabel
        UserName = 'Label26'
        Caption = 'Jefe de Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 156104
        mmTop = 126471
        mmWidth = 21960
        BandType = 7
      end
      object ppRegion10: TppRegion
        UserName = 'Region1'
        mmHeight = 18785
        mmLeft = 16404
        mmTop = 32808
        mmWidth = 183886
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo4: TppDBMemo
          UserName = 'DBMemo1'
          CharWrap = False
          DataField = 'DIAGNOSTICO'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 16669
          mmLeft = 17727
          mmTop = 33338
          mmWidth = 182298
          BandType = 7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
      object ppLabel62: TppLabel
        UserName = 'Label29'
        Caption = 'PROBLEMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16140
        mmTop = 2646
        mmWidth = 15875
        BandType = 7
      end
      object ppRegion11: TppRegion
        UserName = 'Region3'
        mmHeight = 19315
        mmLeft = 16140
        mmTop = 6350
        mmWidth = 183621
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo5: TppDBMemo
          UserName = 'DBMemo2'
          CharWrap = False
          DataField = 'PROBLEMA'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 17198
          mmLeft = 17463
          mmTop = 7408
          mmWidth = 182298
          BandType = 7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
      object ppRegion12: TppRegion
        UserName = 'Region4'
        mmHeight = 31485
        mmLeft = 16404
        mmTop = 59267
        mmWidth = 183886
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo6: TppDBMemo
          UserName = 'DBMemo3'
          CharWrap = False
          DataField = 'ACCION'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 28840
          mmLeft = 17727
          mmTop = 60590
          mmWidth = 182298
          BandType = 7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
      object ppLabel63: TppLabel
        UserName = 'Label9'
        Caption = 'DIAGNOSTICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 29369
        mmWidth = 19844
        BandType = 7
      end
      object ppLabel64: TppLabel
        UserName = 'Label30'
        Caption = 'ACCI'#211'N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 55563
        mmWidth = 11113
        BandType = 7
      end
      object pplblGarantia: TppLabel
        UserName = 'lblGarantia'
        Caption = 'Referencia de Garant'#237'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 16669
        mmTop = 91546
        mmWidth = 36534
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppdInformeMax: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprInformeMax
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 598
    Top = 301
  end
  object ppdInforme: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprInforme
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 598
    Top = 341
  end
  object ppdbInforme: TppDBPipeline
    UserName = 'dbInforme'
    Left = 531
    Top = 341
  end
  object pprInforme: TppReport
    AutoStop = False
    DataPipeline = ppdbInforme
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Desarrollo DM\Adm Equipos TI\Informe.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 568
    Top = 342
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbInforme'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 79111
      mmPrintPosition = 0
      object ppRegion2: TppRegion
        UserName = 'Region2'
        mmHeight = 15081
        mmLeft = 15875
        mmTop = 62442
        mmWidth = 184415
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText4: TppDBText
          UserName = 'DBText10'
          DataField = 'EQUIPO_SERIE'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4233
          mmLeft = 35983
          mmTop = 64294
          mmWidth = 34660
          BandType = 1
        end
        object ppDBText5: TppDBText
          UserName = 'DBText103'
          DataField = 'EQUIPO_MODELO'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4233
          mmLeft = 89165
          mmTop = 64294
          mmWidth = 34660
          BandType = 1
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
          mmLeft = 73025
          mmTop = 64294
          mmWidth = 13494
          BandType = 1
        end
        object ppDBText6: TppDBText
          UserName = 'DBText104'
          AutoSize = True
          DataField = 'EQUIPO_MARCA'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 138907
          mmTop = 71173
          mmWidth = 24606
          BandType = 1
        end
        object ppDBText8: TppDBText
          UserName = 'DBText107'
          DataField = 'EQUIPO_COLOR'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4233
          mmLeft = 138907
          mmTop = 64294
          mmWidth = 19050
          BandType = 1
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
          mmLeft = 125413
          mmTop = 64294
          mmWidth = 10319
          BandType = 1
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
          mmLeft = 161132
          mmTop = 64294
          mmWidth = 12965
          BandType = 1
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
          mmLeft = 19844
          mmTop = 64294
          mmWidth = 9790
          BandType = 1
        end
        object ppDBText16: TppDBText
          UserName = 'DBText7'
          AutoSize = True
          DataField = 'ESTACTIVO'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4128
          mmLeft = 175155
          mmTop = 64294
          mmWidth = 20214
          BandType = 1
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
          mmHeight = 4498
          mmLeft = 125678
          mmTop = 70644
          mmWidth = 11377
          BandType = 1
        end
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
        mmLeft = 164571
        mmTop = 13229
        mmWidth = 23019
        BandType = 1
      end
      object ppDBText18: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'NUMINF'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 4995
        mmLeft = 115623
        mmTop = 12435
        mmWidth = 16425
        BandType = 1
      end
      object ppRegion1: TppRegion
        UserName = 'Region6'
        mmHeight = 5821
        mmLeft = 18785
        mmTop = 69586
        mmWidth = 104775
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText19: TppDBText
          UserName = 'DBText101'
          AutoSize = True
          DataField = 'EQUIPO'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 35983
          mmTop = 70909
          mmWidth = 13674
          BandType = 1
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
          mmLeft = 19844
          mmTop = 70909
          mmWidth = 13229
          BandType = 1
        end
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        BarCodeType = bcCode39
        BarColor = clWindowText
        DataField = 'ARTCODBAR'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 15346
        mmLeft = 164571
        mmTop = 18785
        mmWidth = 47625
        BandType = 1
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel17: TppLabel
        UserName = 'Label13'
        Caption = 'Plataforma y Operaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 14817
        mmTop = 19844
        mmWidth = 32808
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label21'
        Caption = 'Equipo de Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 18785
        mmTop = 23019
        mmWidth = 25135
        BandType = 1
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
        mmLeft = 19050
        mmTop = 0
        mmWidth = 24342
        BandType = 1
      end
      object ppRegion3: TppRegion
        UserName = 'Region7'
        mmHeight = 11642
        mmLeft = 15875
        mmTop = 49477
        mmWidth = 174625
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'Usuario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 16669
          mmTop = 50800
          mmWidth = 14552
          BandType = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label201'
          Caption = 'Ubicaci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 16669
          mmTop = 55298
          mmWidth = 17992
          BandType = 1
        end
        object ppDBText20: TppDBText
          UserName = 'DBText11'
          AutoSize = True
          DataField = 'SG_RECIBENOM'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 36778
          mmTop = 50800
          mmWidth = 28575
          BandType = 1
        end
        object ppDBText21: TppDBText
          UserName = 'DBText15'
          AutoSize = True
          DataField = 'SG_UBICACION'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 36777
          mmTop = 55562
          mmWidth = 26839
          BandType = 1
        end
      end
      object ppRegion4: TppRegion
        UserName = 'Region8'
        mmHeight = 11642
        mmLeft = 15875
        mmTop = 32544
        mmWidth = 174625
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText23: TppDBText
          UserName = 'DBText13'
          AutoSize = True
          DataField = 'UBICACION'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 37042
          mmTop = 38629
          mmWidth = 19812
          BandType = 1
        end
        object ppDBText22: TppDBText
          UserName = 'DBText12'
          AutoSize = True
          DataField = 'USUARIO'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 4191
          mmLeft = 37042
          mmTop = 33602
          mmWidth = 16087
          BandType = 1
        end
        object ppLabel27: TppLabel
          UserName = 'Label202'
          Caption = 'Usuario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 17463
          mmTop = 33602
          mmWidth = 14288
          BandType = 1
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = 'Ubicaci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 17463
          mmTop = 38629
          mmWidth = 17992
          BandType = 1
        end
      end
      object ppLabel31: TppLabel
        UserName = 'Label16'
        Caption = 'Ubicaci'#243'n por SSGG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 15875
        mmTop = 44715
        mmWidth = 35772
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label32'
        Caption = 'Ubicaci'#243'n por Soporte T'#233'cnico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 15875
        mmTop = 27781
        mmWidth = 52028
        BandType = 1
      end
      object ppLine1: TppLine
        UserName = 'Line20'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 16669
        mmTop = 78846
        mmWidth = 529
        BandType = 1
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'Informe de Atenci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 5027
        mmLeft = 70908
        mmTop = 12435
        mmWidth = 42863
        BandType = 1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 164836
        mmTop = 6879
        mmWidth = 17463
        BandType = 1
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 164836
        mmTop = 2646
        mmWidth = 8731
        BandType = 1
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        AutoSize = True
        DataField = 'FECHA'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3260
        mmLeft = 174890
        mmTop = 2646
        mmWidth = 9610
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        UserName = 'Label2'
        Caption = 'SERIE PARTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 265
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label3'
        Caption = 'PARTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 66940
        mmTop = 265
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label4'
        Caption = 'CARACTERISTICA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 93398
        mmTop = 265
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label5'
        Caption = 'MARCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 265
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label6'
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 151607
        mmTop = 265
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label7'
        Caption = 'CAPACIDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 265
        mmWidth = 20638
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 16140
        mmTop = 265
        mmWidth = 183886
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 15875
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 65881
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 92340
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 150284
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 174890
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 126471
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 199761
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText24: TppDBText
        UserName = 'DBText1'
        DataField = 'PARTE_SERIE'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 265
        mmWidth = 48419
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText2'
        DataField = 'PARTE_NOMBRE'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3969
        mmLeft = 66940
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText3'
        DataField = 'PARTE_CARACTERISTICA'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3969
        mmLeft = 93398
        mmTop = 265
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText4'
        DataField = 'PARTE_TIPO'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3969
        mmLeft = 151607
        mmTop = 265
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText5'
        DataField = 'PARTE_MARCA'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3969
        mmLeft = 127794
        mmTop = 265
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText6'
        DataField = 'PARTE_UNIDAD'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3969
        mmLeft = 176742
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 15875
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 65881
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 126471
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 150284
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 174890
        mmTop = 265
        mmWidth = 6879
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 92340
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 199761
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 16140
        mmTop = 0
        mmWidth = 183886
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 15875
        mmTop = 4763
        mmWidth = 184150
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLabel16: TppLabel
        UserName = 'Label8'
        Caption = 'Soporte T'#233'cnico de Tecnologia de Informaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4498
        mmLeft = 101336
        mmTop = 2381
        mmWidth = 86784
        BandType = 8
      end
      object ppLine18: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 15875
        mmTop = 1058
        mmWidth = 184150
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 129646
      mmPrintPosition = 0
      object ppLine21: TppLine
        UserName = 'Line201'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 16669
        mmTop = 120121
        mmWidth = 55827
        BandType = 7
      end
      object ppDBText30: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'TECNICO'
        DataPipeline = ppdbInforme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbInforme'
        mmHeight = 3704
        mmLeft = 37306
        mmTop = 121179
        mmWidth = 14288
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 133350
        mmTop = 120121
        mmWidth = 67204
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label10'
        Caption = 'JORGE C'#193'RDENAS  ZOLEZZI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 145786
        mmTop = 121179
        mmWidth = 44281
        BandType = 7
      end
      object ppLine26: TppLine
        UserName = 'Line18'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 78846
        mmTop = 120121
        mmWidth = 49742
        BandType = 7
      end
      object ppLabel26: TppLabel
        UserName = 'Label101'
        Caption = 'C'#201'SAR RUIZ GRADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 86784
        mmTop = 121179
        mmWidth = 33867
        BandType = 7
      end
      object ppLabel29: TppLabel
        UserName = 'Label22'
        Caption = 'Especialista de Soporte al Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 22754
        mmTop = 126471
        mmWidth = 43392
        BandType = 7
      end
      object ppLabel30: TppLabel
        UserName = 'Label25'
        Caption = 'Supervisor de P y O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 91017
        mmTop = 126471
        mmWidth = 25400
        BandType = 7
      end
      object ppLabel55: TppLabel
        UserName = 'Label26'
        Caption = 'Jefe de Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 156104
        mmTop = 126471
        mmWidth = 21960
        BandType = 7
      end
      object ppRegion5: TppRegion
        UserName = 'Region1'
        mmHeight = 18785
        mmLeft = 16404
        mmTop = 32808
        mmWidth = 183886
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo1: TppDBMemo
          UserName = 'DBMemo1'
          CharWrap = False
          DataField = 'DIAGNOSTICO'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 16669
          mmLeft = 17727
          mmTop = 33338
          mmWidth = 182298
          BandType = 7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
      object ppLabel56: TppLabel
        UserName = 'Label29'
        Caption = 'PROBLEMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16140
        mmTop = 2646
        mmWidth = 15875
        BandType = 7
      end
      object ppRegion13: TppRegion
        UserName = 'Region3'
        mmHeight = 19315
        mmLeft = 16140
        mmTop = 6350
        mmWidth = 183621
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo2: TppDBMemo
          UserName = 'DBMemo2'
          CharWrap = False
          DataField = 'PROBLEMA'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 17198
          mmLeft = 17463
          mmTop = 7408
          mmWidth = 182298
          BandType = 7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
      object ppRegion14: TppRegion
        UserName = 'Region4'
        mmHeight = 31485
        mmLeft = 16404
        mmTop = 59267
        mmWidth = 183886
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo3: TppDBMemo
          UserName = 'DBMemo3'
          CharWrap = False
          DataField = 'ACCION'
          DataPipeline = ppdbInforme
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbInforme'
          mmHeight = 28840
          mmLeft = 17727
          mmTop = 60590
          mmWidth = 182298
          BandType = 7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
      object ppLabel57: TppLabel
        UserName = 'Label9'
        Caption = 'DIAGNOSTICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 29369
        mmWidth = 19844
        BandType = 7
      end
      object ppLabel58: TppLabel
        UserName = 'Label30'
        Caption = 'ACCI'#211'N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 55563
        mmWidth = 11113
        BandType = 7
      end
      object pplblGarantia2: TppLabel
        UserName = 'lblGarantia1'
        Caption = 'Referencia de Garant'#237'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 16669
        mmTop = 91546
        mmWidth = 36534
        BandType = 7
      end
    end
    object daDataModule1: TdaDataModule
    end
    object ppParameterList1: TppParameterList
    end
  end
end
