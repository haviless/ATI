object FInvEquipo1: TFInvEquipo1
  Left = 324
  Top = 160
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Modulo ATI'
  ClientHeight = 320
  ClientWidth = 521
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 0
    Top = 0
    Width = 521
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'INVENTARIO DE EQUIPO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 249
    Top = 24
    Width = 272
    Height = 242
    Align = alClient
    Color = 10207162
    TabOrder = 1
    object Equipo: TLabel
      Left = 16
      Top = 35
      Width = 43
      Height = 13
      Caption = 'Activo TI'
    end
    object Label1: TLabel
      Left = 6
      Top = 59
      Width = 53
      Height = 13
      Caption = 'Tecnologia'
    end
    object Label2: TLabel
      Left = 24
      Top = 83
      Width = 35
      Height = 13
      Caption = 'Modelo'
    end
    object Label3: TLabel
      Left = 29
      Top = 107
      Width = 30
      Height = 13
      Caption = 'Marca'
    end
    object Label4: TLabel
      Left = 38
      Top = 131
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object Label11: TLabel
      Left = 1
      Top = 1
      Width = 270
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Caracteristicas'
      Color = 6263948
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object dblcTipoEquipo: TwwDBLookupCombo
      Left = 67
      Top = 27
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'nombre'#9'15'#9'nombre'#9'F')
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcTipoEquipoChange
      OnExit = dblcTipoEquipoExit
    end
    object dblcTecnologia: TwwDBLookupCombo
      Left = 67
      Top = 51
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'nombre'#9'15'#9'nombre'#9'F')
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcTecnologiaChange
    end
    object dblcModelo: TwwDBLookupCombo
      Left = 67
      Top = 75
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'nombre'#9'15'#9'nombre'#9'F')
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcModeloChange
    end
    object dblcMarca: TwwDBLookupCombo
      Left = 67
      Top = 99
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'nombre'#9'15'#9'nombre'#9'F')
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcMarcaChange
      OnClick = dblcMarcaClick
    end
    object dblcTipo: TwwDBLookupCombo
      Left = 67
      Top = 123
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'nombre'#9'15'#9'nombre'#9'F')
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 151
      Width = 270
      Height = 90
      Align = alBottom
      Color = 10207162
      TabOrder = 5
      object Label5: TLabel
        Left = 32
        Top = 32
        Width = 24
        Height = 13
        Caption = 'Color'
      end
      object Label6: TLabel
        Left = 24
        Top = 56
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Label12: TLabel
        Left = 1
        Top = 1
        Width = 268
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'Detalle '
        Color = 6263948
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object dblcEstado: TwwDBLookupCombo
        Left = 67
        Top = 48
        Width = 137
        Height = 21
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nombre'#9'15'#9'nombre'#9'F')
        DataField = 'estado'
        DataSource = DMATI.dsQRY33
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object dblcColor: TwwDBLookupCombo
        Left = 67
        Top = 24
        Width = 137
        Height = 21
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nombre'#9'15'#9'nombre'#9'F')
        DataField = 'color'
        DataSource = DMATI.dsQRY33
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
  end
  object pnlPie: TPanel
    Left = 0
    Top = 266
    Width = 521
    Height = 54
    Align = alBottom
    Color = 10207162
    TabOrder = 2
    object z2bbtnAcepta: TfcShapeBtn
      Left = 464
      Top = 11
      Width = 36
      Height = 31
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
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnAceptaClick
    end
    object z2bbtnCancelar: TfcShapeBtn
      Left = 424
      Top = 11
      Width = 36
      Height = 31
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
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnCancelarClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 24
    Width = 249
    Height = 242
    Align = alLeft
    Color = 10207162
    TabOrder = 0
    object Label8: TLabel
      Left = 1
      Top = 1
      Width = 247
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Indentificadores'
      Color = 6263948
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 15
      Top = 61
      Width = 69
      Height = 13
      Caption = 'C'#243'd Inventario'
    end
    object Label10: TLabel
      Left = 45
      Top = 86
      Width = 39
      Height = 13
      Caption = 'N'#176' Serie'
    end
    object Label17: TLabel
      Left = 62
      Top = 110
      Width = 22
      Height = 13
      Caption = 'FRU'
    end
    object Label16: TLabel
      Left = 19
      Top = 37
      Width = 65
      Height = 13
      Caption = 'C'#243'd Activo TI'
    end
    object Label13: TLabel
      Left = 54
      Top = 136
      Width = 30
      Height = 13
      Caption = 'SSGG'
    end
    object Label14: TLabel
      Left = 16
      Top = 166
      Width = 68
      Height = 13
      Caption = 'Requerimiento'
    end
    object dbeEserie: TwwDBEdit
      Left = 88
      Top = 79
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'serie'
      DataSource = DMATI.dsQRY33
      MaxLength = 40
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeENunInv: TwwDBEdit
      Left = 88
      Top = 53
      Width = 135
      Height = 21
      DataField = 'nroinventario'
      DataSource = DMATI.dsQRY33
      MaxLength = 15
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeENunInvExit
      OnKeyPress = dbeENunInvKeyPress
    end
    object dbeFru: TwwDBEdit
      Left = 88
      Top = 105
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'fru'
      DataSource = DMATI.dsQRY33
      MaxLength = 40
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeECodigo: TwwDBEdit
      Left = 88
      Top = 29
      Width = 135
      Height = 21
      DataField = 'equipoid'
      DataSource = DMATI.dsQRY33
      Enabled = False
      MaxLength = 10
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyPress = dbeENunInvKeyPress
    end
    object dblcSSGG: TwwDBLookupCombo
      Left = 88
      Top = 132
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'nombre'#9'15'#9'nombre'#9'F')
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object EReq: TEdit
      Left = 88
      Top = 160
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
  end
end
