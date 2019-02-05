object FManEquipoModel: TFManEquipoModel
  Left = 239
  Top = 161
  BorderStyle = bsDialog
  Caption = 'MODELO'
  ClientHeight = 414
  ClientWidth = 646
  Color = clBtnFace
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
    Width = 646
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'MODELO DE EQUIPO'
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentColor = False
    ParentFont = False
  end
  object dbgTecnologia: TwwDBGrid
    Left = 0
    Top = 24
    Width = 287
    Height = 343
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = dbgTecnologiaRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = clCream
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = dbgTecnologiaDblClick
    OnKeyDown = dbgTecnologiaKeyDown
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
  object pnlPie: TPanel
    Left = 0
    Top = 367
    Width = 646
    Height = 47
    Align = alBottom
    Color = 10207162
    TabOrder = 1
    object Label4: TLabel
      Left = 40
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Buscador'
    end
    object BitBtn1: TBitBtn
      Left = 400
      Top = 11
      Width = 27
      Height = 27
      TabOrder = 0
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
    end
    object edtBuscar: TEdit
      Left = 96
      Top = 8
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = edtBuscarChange
    end
  end
  object dbgRel: TwwDBGrid
    Left = 287
    Top = 24
    Width = 359
    Height = 343
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alRight
    Color = clCream
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = dbgRelDblClick
    OnKeyDown = dbgRelKeyDown
    PaintOptions.AlternatingRowColor = clInfoBk
    object wwIButton1: TwwIButton
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
      OnClick = wwIButton1Click
    end
  end
  object pnlActualizacion: TPanel
    Left = 72
    Top = 111
    Width = 326
    Height = 121
    Color = 10207162
    TabOrder = 4
    Visible = False
    object Label2: TLabel
      Left = 9
      Top = 53
      Width = 35
      Height = 13
      Caption = 'Modelo'
    end
    object Label1: TLabel
      Left = 9
      Top = 25
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Z2bbtnCanc3: TBitBtn
      Left = 284
      Top = 83
      Width = 25
      Height = 24
      Hint = 'Cancela Datos'
      Cancel = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Z2bbtnCanc3Click
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
    end
    object BModificar: TBitBtn
      Left = 240
      Top = 83
      Width = 25
      Height = 24
      Hint = 'Modificar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BModificarClick
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
    end
    object dbeCodigo: TwwDBEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 21
      DataField = 'modeloid'
      DataSource = DMATI.dsQry3
      Enabled = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeNombre: TwwDBEdit
      Left = 80
      Top = 48
      Width = 233
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nombre'
      DataSource = DMATI.dsQry3
      MaxLength = 40
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object pnlActualizacionR: TPanel
    Left = 300
    Top = 103
    Width = 311
    Height = 130
    Color = 10207162
    TabOrder = 3
    Visible = False
    object lblEquipo: TLabel
      Left = 17
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Equipo'
    end
    object lblTecnologia: TLabel
      Left = 17
      Top = 32
      Width = 35
      Height = 13
      Caption = 'Modelo'
    end
    object BitBtn3: TBitBtn
      Left = 250
      Top = 94
      Width = 24
      Height = 24
      Hint = 'Cancela Datos'
      Cancel = True
      Caption = '}'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn3Click
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
    end
    object BitBtn4: TBitBtn
      Left = 204
      Top = 94
      Width = 25
      Height = 24
      Hint = 'Modificar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn4Click
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
    end
    object dbeEquipo: TwwDBEdit
      Left = 215
      Top = 55
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nombre_equipoid'
      DataSource = DMATI.dsQryR
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcEquipo: TwwDBLookupCombo
      Left = 71
      Top = 55
      Width = 137
      Height = 21
      DropDownAlignment = taLeftJustify
      DataField = 'nombre'
      DataSource = DMATI.dsQryR
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcEquipoChange
    end
    object dbeRelTecnologia: TwwDBEdit
      Left = 71
      Top = 23
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      DataField = 'modeloid'
      DataSource = DMATI.dsQryR
      Enabled = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit1: TwwDBEdit
      Left = 125
      Top = 23
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMBRE'
      DataSource = DMATI.dsQry3
      Enabled = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
end
