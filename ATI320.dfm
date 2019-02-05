object FInfoAtencion: TFInfoAtencion
  Left = 99
  Top = 170
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsDialog
  Caption = 'Modulo ATI'
  ClientHeight = 478
  ClientWidth = 796
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 0
    Top = 0
    Width = 796
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
  object Label22: TLabel
    Left = 8
    Top = 80
    Width = 65
    Height = 13
    Caption = 'C'#243'd Activo TI'
  end
  object dbgInforme: TwwDBGrid
    Left = 0
    Top = 105
    Width = 796
    Height = 287
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = clCream
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnCalcCellColors = dbgInformeCalcCellColors
    OnTitleButtonClick = dbgInformeTitleButtonClick
    OnDblClick = dbgInformeDblClick
    PaintOptions.AlternatingRowColor = clInfoBk
    object wwDBGrid1IButton: TwwIButton
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
      OnClick = wwDBGrid1IButtonClick
    end
  end
  object pnlCabecera: TPanel
    Left = 0
    Top = 24
    Width = 796
    Height = 81
    Align = alTop
    Color = 10207162
    TabOrder = 1
    object Label20: TLabel
      Left = 5
      Top = 52
      Width = 80
      Height = 13
      Caption = 'C'#243'd Activo de TI'
    end
    object Label21: TLabel
      Left = 240
      Top = 20
      Width = 85
      Height = 13
      Caption = 'Serie Activo de TI'
    end
    object Label23: TLabel
      Left = 24
      Top = 20
      Width = 58
      Height = 13
      Caption = 'Activo de TI'
    end
    object wwDBEdit6: TwwDBEdit
      Left = 94
      Top = 16
      Width = 121
      Height = 21
      Color = clMoneyGreen
      DataField = 'ARTCODBAR'
      DataSource = DMATI.dsQRY40
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit7: TwwDBEdit
      Left = 328
      Top = 16
      Width = 137
      Height = 21
      Color = clMoneyGreen
      DataField = 'SERIE'
      DataSource = DMATI.dsQRY40
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit8: TwwDBEdit
      Left = 93
      Top = 48
      Width = 249
      Height = 21
      Color = clMoneyGreen
      DataField = 'ACFDES'
      DataSource = DMATI.dsQRY40
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object pnlPie: TPanel
    Left = 0
    Top = 392
    Width = 796
    Height = 86
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
    object SEstVis: TShape
      Left = 16
      Top = 58
      Width = 8
      Height = 8
      Brush.Color = clInfoBk
    end
    object Label1: TLabel
      Left = 28
      Top = 69
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
      Top = 13
      Width = 8
      Height = 8
      Brush.Color = 121316
    end
    object Label10: TLabel
      Left = 28
      Top = 9
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
      Top = 42
      Width = 8
      Height = 8
      Brush.Color = 10329501
    end
    object Label24: TLabel
      Left = 28
      Top = 38
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
      Left = 28
      Top = 54
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
      Left = 16
      Top = 73
      Width = 9
      Height = 8
      Brush.Color = 10329501
    end
    object lbNumEqui: TLabel
      Left = 368
      Top = 24
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
    object Label3: TLabel
      Left = 28
      Top = 23
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
      Left = 16
      Top = 27
      Width = 9
      Height = 8
      Brush.Color = 10329501
    end
  end
end
