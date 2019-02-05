object FCabeceraSalida: TFCabeceraSalida
  Left = 113
  Top = 93
  Align = alCustom
  BorderStyle = bsDialog
  Caption = 'Modulo ATI'
  ClientHeight = 475
  ClientWidth = 675
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 675
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'NOTAS DE SALIDA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object dbgCabeceraSalida: TwwDBGrid
    Left = 0
    Top = 81
    Width = 675
    Height = 335
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnCalcCellColors = dbgCabeceraSalidaCalcCellColors
    OnTitleButtonClick = dbgCabeceraSalidaTitleButtonClick
    OnDblClick = dbgCabeceraSalidaDblClick
    PaintOptions.AlternatingRowColor = clInfoBk
    PaintOptions.ActiveRecordColor = clNavy
    object btnCabecera: TwwIButton
      Left = 0
      Top = 0
      Width = 25
      Height = 22
      Hint = 'Nuevo'
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
      OnClick = btnCabeceraClick
    end
  end
  object pnlPie: TPanel
    Left = 0
    Top = 24
    Width = 675
    Height = 57
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
    object pnlBusca: TPanel
      Left = 32
      Top = 13
      Width = 377
      Height = 31
      Color = clOlive
      TabOrder = 0
      object lblBusca2: TLabel
        Left = 117
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
        Left = 182
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 416
    Width = 675
    Height = 59
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
      Left = 302
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
