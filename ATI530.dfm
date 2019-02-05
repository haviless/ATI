object FCabInfoTecnico: TFCabInfoTecnico
  Left = 261
  Top = 204
  Width = 639
  Height = 472
  Caption = 'Modulo ATI'
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 0
    Top = 0
    Width = 631
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'INFORMES T'#201'CNICOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object dbgCabInfTec: TwwDBGrid
    Left = 0
    Top = 113
    Width = 631
    Height = 268
    DisableThemesInTitle = False
    Selected.Strings = (
      'NUM_ORTS'#9'25'#9'Numero de Orden de Traslado'#9#9
      'NGE'#9'13'#9'Gu'#237'a de Entrada'#9#9
      'NINF'#9'16'#9'Numero de Informe'#9#9
      'SERIE_EQ'#9'15'#9'Serie'#9#9
      'NOM_EQ'#9'15'#9'Nombre de Equipo'#9#9
      'INI_OFI'#9'23'#9'Oficina de Origen'#9#9
      'INI_USU'#9'17'#9'Usuario de Origen'#9#9
      'FIN_OFI'#9'20'#9'Destino Oficina'#9#9
      'FIN_USU'#9'22'#9'Destino Usuario'#9#9
      'TEC_ID'#9'28'#9'Tecnico'#9#9
      'REQ_NUM'#9'18'#9'Requerimiento'#9#9
      'EST_EQ'#9'20'#9'Estado'#9#9
      'FEC_ORTS'#9'16'#9'Fecha'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = clCream
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnCalcCellColors = dbgCabInfTecCalcCellColors
    OnTitleButtonClick = dbgCabInfTecTitleButtonClick
    OnDblClick = dbgCabInfTecDblClick
    PaintOptions.AlternatingRowColor = clInfoBk
    PaintOptions.ActiveRecordColor = clNavy
    object btnNueInforme: TwwIButton
      Left = 0
      Top = 0
      Width = 24
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
      OnClick = btnNueInformeClick
    end
  end
  object pnlPie: TPanel
    Left = 0
    Top = 24
    Width = 631
    Height = 89
    Hint = 'Parte Equipo'
    Align = alTop
    BevelOuter = bvNone
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 165
      Height = 20
      Caption = 'C'#211'D ACTIVO DE TI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlBusca: TPanel
      Left = 6
      Top = 46
      Width = 377
      Height = 31
      Color = clOlive
      TabOrder = 0
      Visible = False
      object lblBusca2: TLabel
        Left = 131
        Top = 8
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'lblBusca2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object isBusca: TwwIncrementalSearch
        Left = 194
        Top = 4
        Width = 171
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object wwDBEdit1: TwwDBEdit
      Left = 179
      Top = 11
      Width = 142
      Height = 28
      Color = clScrollBar
      DataField = 'ARTCODBAR'
      DataSource = DMATI.dsQRY14
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 381
    Width = 631
    Height = 57
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
    TabOrder = 2
    object lbNumEqui: TLabel
      Left = 238
      Top = 16
      Width = 87
      Height = 20
      Caption = 'lbNumEqui'
      Color = 10207162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object SEstVis: TShape
      Left = 16
      Top = 10
      Width = 8
      Height = 8
      Brush.Color = clInfoBk
    end
    object Label8: TLabel
      Left = 27
      Top = 6
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
      Left = 16
      Top = 27
      Width = 8
      Height = 8
      Brush.Color = 121316
    end
    object Label2: TLabel
      Left = 27
      Top = 23
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
      Left = 16
      Top = 44
      Width = 8
      Height = 8
      Brush.Color = 10329501
    end
    object Label3: TLabel
      Left = 27
      Top = 40
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
  end
end
