object FTrabajoInterno: TFTrabajoInterno
  Left = 257
  Top = 141
  Width = 724
  Height = 536
  Caption = 'Hoja de Tabajo y Pruebas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 251
    Width = 716
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 256
    Width = 716
    Height = 253
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    DesignSize = (
      716
      253)
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 608
      Height = 251
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
    object BitBtn8: TBitBtn
      Left = 624
      Top = 8
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Consulta SQL'
      TabOrder = 1
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 616
      Top = 40
      Width = 89
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'PreImpresion'
      TabOrder = 2
      OnClick = BitBtn9Click
    end
    object BitBtn1: TBitBtn
      Left = 624
      Top = 72
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Ejecuta SQL'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object btnExcel: TButton
      Left = 630
      Top = 104
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Excel'
      TabOrder = 4
      OnClick = btnExcelClick
    end
    object btnInfAtenc: TButton
      Left = 624
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Inf.Atenci'#243'n'
      TabOrder = 5
      OnClick = btnInfAtencClick
    end
    object btnInfTec: TButton
      Left = 624
      Top = 221
      Width = 75
      Height = 25
      Caption = 'Inf.T'#233'cnico'
      TabOrder = 6
      OnClick = btnInfTecClick
    end
    object btnParteEquipos: TButton
      Left = 624
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Parte Equipos'
      TabOrder = 7
      OnClick = btnParteEquiposClick
    end
  end
  object dbgReporte: TwwDBGrid
    Left = 0
    Top = 0
    Width = 716
    Height = 251
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    PaintOptions.AlternatingRowColor = clInfoBk
    PaintOptions.ActiveRecordColor = clNavy
  end
  object ppBDEPipeline1: TppBDEPipeline
    UserName = 'BDEPipeline1'
    Left = 344
    Top = 376
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 384
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppReport1
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 424
    Top = 376
  end
  object qryQry1: TwwQuery
    ValidateWithMask = True
    Left = 168
    Top = 136
  end
  object qryQry2: TwwQuery
    ValidateWithMask = True
    Left = 208
    Top = 136
  end
  object qryQry3: TwwQuery
    ValidateWithMask = True
    Left = 256
    Top = 128
  end
  object qryQry4: TwwQuery
    ValidateWithMask = True
    Left = 304
    Top = 128
  end
end
