object FInfoAten: TFInfoAten
  Left = 83
  Top = 66
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'FInfoAten'
  ClientHeight = 641
  ClientWidth = 881
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
  object Label7: TLabel
    Left = 0
    Top = 0
    Width = 881
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'INFORMES DE ATENCI'#211'N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object dbgInforme: TwwDBGrid
    Left = 0
    Top = 257
    Width = 881
    Height = 298
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = dbgInformeRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = clCream
    TabOrder = 1
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
    end
  end
  object pnlPie: TPanel
    Left = 0
    Top = 555
    Width = 881
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
    TabOrder = 0
    object lbNumEqui: TLabel
      Left = 168
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
      Left = 14
      Top = 55
      Width = 8
      Height = 8
      Brush.Color = clInfoBk
    end
    object Label1: TLabel
      Left = 26
      Top = 65
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
      Left = 14
      Top = 9
      Width = 8
      Height = 8
      Brush.Color = 121316
    end
    object Label10: TLabel
      Left = 26
      Top = 5
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
      Left = 14
      Top = 40
      Width = 8
      Height = 8
      Brush.Color = 10329501
    end
    object Label24: TLabel
      Left = 26
      Top = 35
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
      Left = 26
      Top = 51
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
      Left = 14
      Top = 69
      Width = 9
      Height = 8
      Brush.Color = 10329501
    end
    object Label3: TLabel
      Left = 26
      Top = 20
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
      Left = 14
      Top = 24
      Width = 9
      Height = 8
      Brush.Color = 10329501
    end
    object z2bbtnCancelar: TfcShapeBtn
      Left = 809
      Top = 26
      Width = 52
      Height = 38
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
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnCancelarClick
    end
    object btImprimir: TfcShapeBtn
      Left = 613
      Top = 26
      Width = 53
      Height = 38
      Cursor = crHandPoint
      Hint = 'Imprimir Informe'
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
    object btnVisar: TfcShapeBtn
      Left = 681
      Top = 26
      Width = 52
      Height = 38
      Cursor = crHandPoint
      Hint = 'Visar Informe'
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
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnVisarClick
    end
    object btnAnular: TfcShapeBtn
      Left = 747
      Top = 26
      Width = 52
      Height = 38
      Cursor = crHandPoint
      Hint = 'Anular Informe'
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
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnAnularClick
    end
    object btnRepControl: TfcShapeBtn
      Left = 544
      Top = 26
      Width = 52
      Height = 38
      Cursor = crHandPoint
      Hint = 'Reporte Control de '#13#10'Informe de Atenci'#243'n'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        6A080000424D6A0800000000000036000000280000001C000000190000000100
        18000000000034080000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6D9D9D9D4D4D4DBDBDBF0F0F0
        FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC2C2C2B6B6B6D0D0D0A9A9A9C6C6C6B8B8B8BBBBBBBEBEBEC0C0C0BABABA
        CBCBCBD2D2D2DCDCDCEDEDEDF8F8F8FDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF272727535353CCCCCCDF
        DFDFFFFFFFE7E7E7C6C6C6C7C7C7C9C9C9D3D3D3E0E0E0D3D3D3D1D1D1C8C8C8
        BFBFBFC8C8C8BBBBBBC9C9C9F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF7777772727274E4E4EB9B9B9FDFDFDE6E6E6CBCBCBCC
        CCCCCCCCCCCCCCCCECECECFFFFFFDCDCDCCECECECACACAEBEBEBF8F8F8CECECE
        BBBBBBC7C7C7DBDBDBDDDDDDF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABA
        BA7C7C7C252525505050D2D2D2EAEAEACACACACBCBCBCECECEEAEAEAFFFFFFFF
        FFFFDADADAD1D1D1CFCFCFDADADAFFFFFFE4E4E4C6C6C6BFBFBFDBDBDBB4B4B4
        ADADADD3D3D3E7E7E7F9F9F9FFFFFFFFFFFFD8D8D8BEBEBE7B7B7B2929295252
        52B8B8B8D4D4D4D6D6D6C1C1C1AAAAAAB7B7B7BBBBBBBEBEBEB1B1B1B0B0B0E1
        E1E1FFFFFFDFDFDFC9C9C9E5E5E5FFFFFFDBDBDBDFDFDFCDCDCD9A9A9AB1B1B1
        CBCBCBF3F3F37B7B7BCECECEC1C1C17B7B7B2C2C2C4E4B4BA2A2A2A0A0A06D6D
        6D6A6A6A7070706F6F6F7070706868688E8E8EAEAEAEE4E4E4E4E4E4C9C9C9D2
        D2D2FAFAFAD6D6D6ECECECFDFDFDCDCDCDE9E9E9D9D9D9DEDEDECCCCCC7A7A7A
        C9C9C9C1BFBF7073730A21214040408A8A8ACDCDCDEAEAEAF6F6F6F2F2F2DCDC
        DCB9B9B9848484828282ACACACB5B5B5CECECEE1E1E1FFFFFFD5D5D5EAEAEAF5
        F5F5CBCBCBECECECE4E4E4E0E0E0FFFFFFA4A4A4858383B5B9B9679F9F4A6B6B
        AAA8A8E3E3E3E0E0E0F3F3F3FFFFFFDDDDDDE8E8E8E4E4E4CFCFCF8B8B8B8787
        87ADADADB5B5B5E3E3E3FFFFFFD5D5D5EAEAEAF5F5F5CACACAEBEBEBE2E2E2E0
        E0E0FFFFFFDCDCDCC9C7C7516F6F7991919B9898B7B7B7A9A9A9A5A5A5D8D8D8
        FDFDFDCACACAC5C5C5C9C9C9C6C6C6C8C8C88D8D8D939393A4A4A4CBCBCBFAFA
        FAD6D6D6EAEAEAF5F5F5CACACAEBEBEBE2E2E2E0E0E0FFFFFFD1D1D1FBFBFB64
        6B6BC1BFBFE5E4E4EAEBEBE8E8E8EBEBEBF9F9F9FFFFFFDDDDDDD0D0D0EBEBEB
        E8E8E8EAEAEAFBFBFB9A9A9A8E8E8EB5B5B5FFFFFFD5D5D5EAEAEAF5F5F5CACA
        CAEBEBEBE2E2E2E0E0E0FFFFFFD4D4D4E1E1E18E8C8CFCFCFCCCCDCDBABABAA5
        A5A59C9C9CD4D4D4FFFFFFAAAAAAA1A1A1A8A8A88E8E8EB5B5B5F3F3F3E5E5E5
        767676AEAEAEF9F9F9D6D6D6EAEAEAF5F5F5CACACAEBEBEBE2E2E2E0E0E0FFFF
        FFD8D8D8BBBBBBB0B0B0FFFFFFD0D0D0DCDCDCD1D1D1C2C2C2E1E1E1FFFFFFBE
        BEBEB6B6B6D8D8D8BBBBBBDADADAFFFFFFFFFFFF8D8D8D8E8E8EE9E9E9D7D7D7
        EAEAEAF5F5F5CACACAEBEBEBE2E2E2E0E0E0FFFFFFD6D6D6A0A0A0D1D1D1FFFF
        FFDFDFDFD7D7D7D2D2D2D3D3D3F1F1F1FDFDFDE1E1E1D0D0D0BDBDBDC4C4C4BE
        BEBEBBBBBBE0E0E0ADADAD747474E4E4E4D7D7D7EAEAEAF5F5F5CACACAEBEBEB
        E2E2E2E0E0E0FFFFFFD4D4D4929292D8D8D8FFFFFFD8D8D8CFCFCFCFCFCFCFCF
        CFE8E8E8FFFFFFC8C8C8BFBFBFB4B4B4C7C7C7B4B4B4BABABADEDEDEC9C9C96D
        6D6DE6E6E6D7D7D7EAEAEAF6F6F6CACACAEBEBEBE2E2E2E0E0E0FFFFFFD7D7D7
        8E8E8EC1C1C1FFFFFFD1D1D1939393AEAEAEAEAEAEABABABA8A8A8A6A6A6A6A6
        A6ADADADABABABACACACACACACACACAC818181757575F0F0F0DFDFDFEEEEEEF6
        F6F6D5D5D5EFEFEFE2E2E2E0E0E0FFFFFFD8D8D8B0B0B09A9A9AFFFFFFDBDBDB
        C4C4C4CECECEC8C8C8D4D4D4EAEAEAE9E9E9E9E9E9E8E8E8E8E8E8E8E8E8E8E8
        E8EBEBEB8F8F8F7B7B7BCBCBCB9E9E9EB4B4B4C1C1C1909090D4D4D4E6E6E6E0
        E0E0FFFFFFD5D5D5D8D8D8787878F6F6F6E8E8E8CBCBCBB7B7B7B7B7B7C7C7C7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7C7C9F9F9FCECE
        CE979797B1B1B1C0C0C0878787D0D0D0E6E6E6E0E0E0FFFFFFD3D3D3E9E9E966
        6666B1B1B1EDEDEDC3C3C3C3C3C3C0C0C0B8B8B8CCCCCCD2D2D2E5E5E5FFFFFF
        FFFFFFFFFFFFFFFFFFC6C6C67F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFDFDFDFE0E0E0FFFFFFD4D4D4E5E5E58686867C7C7C9C9C9C7A7A7A7E
        7E7E8484848B8B8B737373848484A4A4A4FFFFFFFFFFFFFFFFFFDEDEDE7C7C7C
        CFCFCFECECECEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF8F8F8E1E1E1E0E0E0FFFF
        FFD0D0D0FEFEFEE8E8E8D0D0D08C8C8C808080A6A6A6A8A8A8A7A7A79D9D9DA3
        A3A3AAAAAACFCFCFD3D3D3BDBDBD989898CACACAE5E5E5DEDEDEDEDEDEDEDEDE
        DEDEDEDEDEDEDDDDDDF9F9F9E5E5E5DFDFDFFFFFFFC3C3C3DBDBDBE1E1E1E6E6
        E6C3C3C36B6B6B686868959595B5B5B5C4C4C4CACACABFBFBFA6A6A66B6B6B54
        5454C3C3C3E6E6E6E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E0E0E0
        CACACAE4E4E4FFFFFFECECECE0E0E0E2E2E2E2E2E2E7E7E7EAEAEAB8B8B88989
        897D7D7D7F7F7F8D8D8D8A8A8A949494B8B8B8E7E7E7E7E7E7E2E2E2E2E2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E1E1E1E6E6E6FDFDFDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7DADADAD7D7D7E7E7
        E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Options = [boFocusable]
      ParentClipping = True
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
      OnClick = btnRepControlClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 24
    Width = 881
    Height = 233
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
    TabOrder = 2
    object pnlBusca: TPanel
      Left = 8
      Top = 181
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
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object rbActFlat: TRadioGroup
      Left = 8
      Top = 24
      Width = 457
      Height = 57
      Caption = 'Estado de Informe de Atenci'#243'n'
      Color = 10207162
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Inicial'
        'Aceptado'
        'Anulado'
        'Visado'
        'Atendido'
        'Todos')
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 480
      Top = 24
      Width = 385
      Height = 57
      Caption = 'Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label2: TLabel
        Left = 174
        Top = 26
        Width = 32
        Height = 13
        Caption = 'hasta'
      end
      object Label4: TLabel
        Left = 8
        Top = 26
        Width = 37
        Height = 13
        Caption = 'Desde'
      end
      object dbdtFecIni: TwwDBDateTimePicker
        Left = 46
        Top = 17
        Width = 121
        Height = 24
        CalendarAttributes.Colors.TitleBackColor = clOlive
        CalendarAttributes.Colors.TitleTextColor = clMaroon
        CalendarAttributes.Colors.MonthBackColor = 10207162
        CalendarAttributes.Colors.TrailingTextColor = clHotLight
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        CalendarAttributes.PopupYearOptions.StartYear = 2004
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = True
        TabOrder = 0
        OnChange = dbdtFecIniChange
      end
      object dbdtFecFin: TwwDBDateTimePicker
        Left = 211
        Top = 17
        Width = 121
        Height = 24
        CalendarAttributes.Colors.TitleBackColor = clOlive
        CalendarAttributes.Colors.TitleTextColor = clMaroon
        CalendarAttributes.Colors.MonthBackColor = 10207162
        CalendarAttributes.Colors.TrailingTextColor = clHotLight
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        CalendarAttributes.PopupYearOptions.StartYear = 2004
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = True
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 480
      Top = 96
      Width = 385
      Height = 49
      Caption = 'Usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object edtUsuario: TEdit
        Left = 16
        Top = 16
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 96
      Width = 457
      Height = 49
      Caption = 'Especialista en Soporte al T'#233'cnico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object edtSoporte: TEdit
        Left = 16
        Top = 16
        Width = 353
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object btnFiltraUsuario: TfcShapeBtn
      Left = 805
      Top = 173
      Width = 52
      Height = 30
      Cursor = crHandPoint
      Hint = 'Anular Informe'
      Caption = 'Filtrar'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Layout = blGlyphRight
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnFiltraUsuarioClick
    end
  end
  object ppdbInformeMax: TppDBPipeline
    UserName = 'dbInforme1'
    Left = 395
    Top = 349
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
    Template.FileName = 'C:\SOLEXES\Reportes\InformeP.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 440
    Top = 350
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbInforme'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 92869
      mmPrintPosition = 0
      object ppRegion6: TppRegion
        UserName = 'Region2'
        mmHeight = 17198
        mmLeft = 14817
        mmTop = 71967
        mmWidth = 184415
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText10: TppDBText
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
          mmLeft = 35455
          mmTop = 74348
          mmWidth = 34660
          BandType = 1
        end
        object ppDBText13: TppDBText
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
          mmLeft = 88636
          mmTop = 74348
          mmWidth = 34660
          BandType = 1
        end
        object ppLabel21: TppLabel
          UserName = 'Label14'
          Caption = 'Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 72497
          mmTop = 74348
          mmWidth = 13494
          BandType = 1
        end
        object ppDBText14: TppDBText
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
          mmLeft = 139436
          mmTop = 80169
          mmWidth = 23283
          BandType = 1
        end
        object ppLabel22: TppLabel
          UserName = 'Label15'
          Caption = 'Marca:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 125413
          mmTop = 80169
          mmWidth = 11377
          BandType = 1
        end
        object ppDBText17: TppDBText
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
          mmLeft = 139436
          mmTop = 74348
          mmWidth = 17463
          BandType = 1
        end
        object ppLabel25: TppLabel
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
          mmTop = 74348
          mmWidth = 10319
          BandType = 1
        end
        object ppLabel32: TppLabel
          UserName = 'Label19'
          Caption = 'Estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 159015
          mmTop = 74348
          mmWidth = 12912
          BandType = 1
        end
        object ppLabel33: TppLabel
          UserName = 'Label11'
          Caption = 'Serie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 19315
          mmTop = 74348
          mmWidth = 9790
          BandType = 1
        end
        object ppDBText7: TppDBText
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
          mmLeft = 173832
          mmTop = 74348
          mmWidth = 20214
          BandType = 1
        end
      end
      object ppLabel34: TppLabel
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
        mmTop = 15346
        mmWidth = 23019
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label1'
        Caption = 'Informe de Atenci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 5292
        mmLeft = 71438
        mmTop = 11113
        mmWidth = 42333
        BandType = 1
      end
      object ppDBText1: TppDBText
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
        mmLeft = 115094
        mmTop = 11113
        mmWidth = 16425
        BandType = 1
      end
      object ppRegion7: TppRegion
        UserName = 'Region6'
        mmHeight = 5821
        mmLeft = 18256
        mmTop = 79375
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
          mmLeft = 35454
          mmTop = 80698
          mmWidth = 13674
          BandType = 1
        end
        object ppLabel36: TppLabel
          UserName = 'Label12'
          Caption = 'Equipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 19315
          mmTop = 80698
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
        mmHeight = 16404
        mmLeft = 164307
        mmTop = 20108
        mmWidth = 47625
        BandType = 1
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel37: TppLabel
        UserName = 'Label13'
        Caption = 'Plataforma y Operaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 24606
        mmWidth = 32808
        BandType = 1
      end
      object ppLabel38: TppLabel
        UserName = 'Label21'
        Caption = 'Equipo de Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 18256
        mmTop = 20902
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
        mmLeft = 18521
        mmTop = 794
        mmWidth = 24342
        BandType = 1
      end
      object ppLabel39: TppLabel
        UserName = 'Label16'
        Caption = 'Ubicaci'#243'n por SSGG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 51329
        mmWidth = 35719
        BandType = 1
      end
      object ppRegion8: TppRegion
        UserName = 'Region7'
        mmHeight = 11642
        mmLeft = 14817
        mmTop = 56092
        mmWidth = 174890
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel40: TppLabel
          UserName = 'Label20'
          Caption = 'Usuario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 16404
          mmTop = 57415
          mmWidth = 14552
          BandType = 1
        end
        object ppLabel41: TppLabel
          UserName = 'Label201'
          Caption = 'Ubicaci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 16404
          mmTop = 61912
          mmWidth = 17992
          BandType = 1
        end
        object ppDBText2: TppDBText
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
          mmHeight = 4233
          mmLeft = 35983
          mmTop = 57415
          mmWidth = 28575
          BandType = 1
        end
        object ppDBText15: TppDBText
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
          mmHeight = 4233
          mmLeft = 35983
          mmTop = 62177
          mmWidth = 26723
          BandType = 1
        end
      end
      object ppRegion9: TppRegion
        UserName = 'Region8'
        KeepTogether = True
        mmHeight = 11906
        mmLeft = 14817
        mmTop = 37042
        mmWidth = 174890
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText3: TppDBText
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
          mmHeight = 4233
          mmLeft = 35983
          mmTop = 43127
          mmWidth = 19844
          BandType = 1
        end
        object ppDBText12: TppDBText
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
          mmLeft = 35984
          mmTop = 38100
          mmWidth = 16087
          BandType = 1
        end
        object ppLabel42: TppLabel
          UserName = 'Label202'
          Caption = 'Usuario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 16405
          mmTop = 38100
          mmWidth = 14288
          BandType = 1
        end
        object ppLabel43: TppLabel
          UserName = 'Label28'
          Caption = 'Ubicaci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 16404
          mmTop = 43127
          mmWidth = 17992
          BandType = 1
        end
      end
      object ppLabel44: TppLabel
        UserName = 'Label2'
        Caption = 'Ubicaci'#243'n por Soporte T'#233'cnico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 14817
        mmTop = 32279
        mmWidth = 53213
        BandType = 1
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 186267
        mmTop = 2646
        mmWidth = 14023
        BandType = 1
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 176477
        mmTop = 6879
        mmWidth = 17463
        BandType = 1
      end
      object ppLabel45: TppLabel
        UserName = 'Label17'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 176477
        mmTop = 2646
        mmWidth = 8731
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLabel46: TppLabel
        UserName = 'Label8'
        Caption = 'Soporte T'#233'cnico de Tecnologia de Informaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4498
        mmLeft = 100806
        mmTop = 2117
        mmWidth = 86784
        BandType = 8
      end
      object ppLine20: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 14817
        mmTop = 529
        mmWidth = 183621
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 152929
      mmPrintPosition = 0
      object ppRegion10: TppRegion
        UserName = 'Region1'
        mmHeight = 18785
        mmLeft = 14817
        mmTop = 32015
        mmWidth = 183886
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo5: TppDBMemo
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
          mmLeft = 15875
          mmTop = 32544
          mmWidth = 182298
          BandType = 7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
      object ppLabel47: TppLabel
        UserName = 'Label29'
        Caption = 'PROBLEMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14817
        mmTop = 1323
        mmWidth = 15875
        BandType = 7
      end
      object ppRegion11: TppRegion
        UserName = 'Region3'
        mmHeight = 19315
        mmLeft = 14817
        mmTop = 5027
        mmWidth = 183621
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo6: TppDBMemo
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
          mmLeft = 15875
          mmTop = 6085
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
        mmHeight = 31750
        mmLeft = 14817
        mmTop = 58738
        mmWidth = 183886
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo7: TppDBMemo
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
          mmHeight = 29104
          mmLeft = 15875
          mmTop = 60061
          mmWidth = 182298
          BandType = 7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
      object ppLabel48: TppLabel
        UserName = 'Label9'
        Caption = 'DIAGNOSTICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14817
        mmTop = 28575
        mmWidth = 19844
        BandType = 7
      end
      object ppLabel49: TppLabel
        UserName = 'Label30'
        Caption = 'ACCI'#211'N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14817
        mmTop = 55033
        mmWidth = 11113
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line201'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 16933
        mmTop = 143404
        mmWidth = 55827
        BandType = 7
      end
      object ppDBText9: TppDBText
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
        mmLeft = 37571
        mmTop = 144463
        mmWidth = 14288
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line22'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 133615
        mmTop = 143404
        mmWidth = 67204
        BandType = 7
      end
      object ppLabel50: TppLabel
        UserName = 'Label10'
        Caption = 'JORGE C'#193'RDENAS  ZOLEZZI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 144992
        mmTop = 144463
        mmWidth = 44281
        BandType = 7
      end
      object ppLine25: TppLine
        UserName = 'Line18'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 79111
        mmTop = 143404
        mmWidth = 49742
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label101'
        Caption = 'C'#201'SAR RUIZ GRADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 87048
        mmTop = 144463
        mmWidth = 33867
        BandType = 7
      end
      object ppLabel52: TppLabel
        UserName = 'Label22'
        Caption = 'Especialista de Soporte al Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 149754
        mmWidth = 43392
        BandType = 7
      end
      object ppLabel53: TppLabel
        UserName = 'Label25'
        Caption = 'Supervisor de P y O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 91281
        mmTop = 149754
        mmWidth = 25400
        BandType = 7
      end
      object ppLabel54: TppLabel
        UserName = 'Label26'
        Caption = 'Jefe de Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 156369
        mmTop = 149754
        mmWidth = 21960
        BandType = 7
      end
      object pplbGaratia: TppLabel
        UserName = 'Label3'
        Caption = 'PARA ENVIO POR GARANT'#205'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 28
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 11642
        mmLeft = 33073
        mmTop = 95779
        mmWidth = 140229
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
    Left = 478
    Top = 349
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
    Left = 478
    Top = 389
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
    Template.FileName = 'C:\SOLEXES\Reportes\Informe.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 440
    Top = 390
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbInforme'
    object ppTitleBand2: TppTitleBand
      PrintHeight = phDynamic
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
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 186267
        mmTop = 2646
        mmWidth = 14023
        BandType = 1
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
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 176477
        mmTop = 6879
        mmWidth = 17463
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label17'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 176477
        mmTop = 2646
        mmWidth = 8731
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
    end
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
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
        mmLeft = 145521
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
    end
    object daDataModule1: TdaDataModule
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppdbInforme: TppDBPipeline
    UserName = 'dbInforme'
    Left = 403
    Top = 389
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
    Left = 958
    Top = 845
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Template.FileName = 'C:\SOLEXES\Reportes\Informe.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 928
    Top = 846
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand3: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 79111
      mmPrintPosition = 0
      object ppRegion15: TppRegion
        UserName = 'Region2'
        mmHeight = 15081
        mmLeft = 15875
        mmTop = 62442
        mmWidth = 184415
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText31: TppDBText
          UserName = 'DBText10'
          DataField = 'EQUIPO_SERIE'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 35983
          mmTop = 64294
          mmWidth = 34660
          BandType = 1
        end
        object ppDBText32: TppDBText
          UserName = 'DBText103'
          DataField = 'EQUIPO_MODELO'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
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
        object ppDBText33: TppDBText
          UserName = 'DBText104'
          AutoSize = True
          DataField = 'EQUIPO_MARCA'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4191
          mmLeft = 138907
          mmTop = 71173
          mmWidth = 24606
          BandType = 1
        end
        object ppDBText34: TppDBText
          UserName = 'DBText107'
          DataField = 'EQUIPO_COLOR'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 138907
          mmTop = 64294
          mmWidth = 19050
          BandType = 1
        end
        object ppLabel60: TppLabel
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
        object ppLabel61: TppLabel
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
        object ppLabel62: TppLabel
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
        object ppDBText35: TppDBText
          UserName = 'DBText7'
          AutoSize = True
          DataField = 'ESTACTIVO'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4128
          mmLeft = 175155
          mmTop = 64294
          mmWidth = 20214
          BandType = 1
        end
        object ppLabel63: TppLabel
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
      object ppLabel64: TppLabel
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
      object ppDBText36: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'NUMINF'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 115623
        mmTop = 12435
        mmWidth = 16404
        BandType = 1
      end
      object ppRegion16: TppRegion
        UserName = 'Region6'
        mmHeight = 5821
        mmLeft = 18785
        mmTop = 69586
        mmWidth = 104775
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText37: TppDBText
          UserName = 'DBText101'
          AutoSize = True
          DataField = 'EQUIPO'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4191
          mmLeft = 35983
          mmTop = 70909
          mmWidth = 13674
          BandType = 1
        end
        object ppLabel65: TppLabel
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
      object ppDBBarCode3: TppDBBarCode
        UserName = 'DBBarCode1'
        BarCodeType = bcCode39
        BarColor = clWindowText
        DataField = 'ARTCODBAR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 15346
        mmLeft = 164571
        mmTop = 18785
        mmWidth = 47625
        BandType = 1
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 186267
        mmTop = 2646
        mmWidth = 14023
        BandType = 1
      end
      object ppLabel66: TppLabel
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
      object ppLabel67: TppLabel
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
      object ppImage3: TppImage
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
      object ppRegion17: TppRegion
        UserName = 'Region7'
        mmHeight = 11642
        mmLeft = 15875
        mmTop = 49477
        mmWidth = 174625
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel68: TppLabel
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
        object ppLabel69: TppLabel
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
        object ppDBText38: TppDBText
          UserName = 'DBText11'
          AutoSize = True
          DataField = 'SG_RECIBENOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4191
          mmLeft = 36778
          mmTop = 50800
          mmWidth = 28575
          BandType = 1
        end
        object ppDBText39: TppDBText
          UserName = 'DBText15'
          AutoSize = True
          DataField = 'SG_UBICACION'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4191
          mmLeft = 36777
          mmTop = 55562
          mmWidth = 26839
          BandType = 1
        end
      end
      object ppRegion18: TppRegion
        UserName = 'Region8'
        mmHeight = 11642
        mmLeft = 15875
        mmTop = 32544
        mmWidth = 174625
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText40: TppDBText
          UserName = 'DBText13'
          AutoSize = True
          DataField = 'UBICACION'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4191
          mmLeft = 37042
          mmTop = 38629
          mmWidth = 19812
          BandType = 1
        end
        object ppDBText41: TppDBText
          UserName = 'DBText12'
          AutoSize = True
          DataField = 'USUARIO'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4191
          mmLeft = 37042
          mmTop = 33602
          mmWidth = 16087
          BandType = 1
        end
        object ppLabel70: TppLabel
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
        object ppLabel71: TppLabel
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
      object ppLabel72: TppLabel
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
      object ppLabel73: TppLabel
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
      object ppLine27: TppLine
        UserName = 'Line20'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 16669
        mmTop = 78846
        mmWidth = 529
        BandType = 1
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 176477
        mmTop = 6879
        mmWidth = 17463
        BandType = 1
      end
      object ppLabel74: TppLabel
        UserName = 'Label17'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 176477
        mmTop = 2646
        mmWidth = 8731
        BandType = 1
      end
      object ppLabel75: TppLabel
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
    end
    object ppHeaderBand3: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLabel76: TppLabel
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
      object ppLabel77: TppLabel
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
      object ppLabel78: TppLabel
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
      object ppLabel79: TppLabel
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
      object ppLabel80: TppLabel
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
      object ppLabel81: TppLabel
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
      object ppLine28: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 16140
        mmTop = 265
        mmWidth = 183886
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 15875
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 65881
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 92340
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 150284
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 174890
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 126471
        mmTop = 265
        mmWidth = 5821
        BandType = 0
      end
      object ppLine35: TppLine
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
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText42: TppDBText
        UserName = 'DBText1'
        DataField = 'PARTE_SERIE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 265
        mmWidth = 48419
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText2'
        DataField = 'PARTE_NOMBRE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 66940
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText3'
        DataField = 'PARTE_CARACTERISTICA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 93398
        mmTop = 265
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText4'
        DataField = 'PARTE_TIPO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 151607
        mmTop = 265
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText5'
        DataField = 'PARTE_MARCA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 127794
        mmTop = 265
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText6'
        DataField = 'PARTE_UNIDAD'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 176742
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppLine36: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 15875
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine37: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 65881
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine38: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 126471
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine39: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 150284
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine40: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 174890
        mmTop = 265
        mmWidth = 6879
        BandType = 4
      end
      object ppLine41: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 92340
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 199761
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine43: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 16140
        mmTop = 0
        mmWidth = 183886
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 15875
        mmTop = 4763
        mmWidth = 184150
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLabel82: TppLabel
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
      object ppLine45: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 15875
        mmTop = 1058
        mmWidth = 184150
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 129646
      mmPrintPosition = 0
      object ppLine46: TppLine
        UserName = 'Line201'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 16669
        mmTop = 120121
        mmWidth = 55827
        BandType = 7
      end
      object ppDBText48: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'TECNICO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 37306
        mmTop = 121179
        mmWidth = 14288
        BandType = 7
      end
      object ppLine47: TppLine
        UserName = 'Line22'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 133350
        mmTop = 120121
        mmWidth = 67204
        BandType = 7
      end
      object ppLabel83: TppLabel
        UserName = 'Label10'
        Caption = 'ING: JUAN S'#193'NCHEZ MART'#205'NEZ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 142611
        mmTop = 121179
        mmWidth = 48683
        BandType = 7
      end
      object ppLine48: TppLine
        UserName = 'Line18'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 78846
        mmTop = 120121
        mmWidth = 49742
        BandType = 7
      end
      object ppLabel84: TppLabel
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
      object ppLabel85: TppLabel
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
      object ppLabel86: TppLabel
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
      object ppLabel87: TppLabel
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
      object ppRegion19: TppRegion
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
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
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
      object ppLabel88: TppLabel
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
      object ppRegion20: TppRegion
        UserName = 'Region3'
        mmHeight = 19315
        mmLeft = 16140
        mmTop = 6350
        mmWidth = 183621
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo8: TppDBMemo
          UserName = 'DBMemo2'
          CharWrap = False
          DataField = 'PROBLEMA'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
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
      object ppRegion21: TppRegion
        UserName = 'Region4'
        mmHeight = 31485
        mmLeft = 16404
        mmTop = 59267
        mmWidth = 183886
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBMemo9: TppDBMemo
          UserName = 'DBMemo3'
          CharWrap = False
          DataField = 'ACCION'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
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
      object ppLabel89: TppLabel
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
      object ppLabel90: TppLabel
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
    end
    object daDataModule2: TdaDataModule
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    UserName = 'dbInforme2'
    Left = 891
    Top = 845
  end
  object ppdbConInfAte: TppDBPipeline
    UserName = 'dbInforme3'
    Left = 379
    Top = 461
  end
  object pprConInfAte: TppReport
    AutoStop = False
    DataPipeline = ppdbConInfAte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\cpalomino\Escritorio\Informe.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 416
    Top = 462
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbConInfAte'
    object ppTitleBand4: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 59796
      mmPrintPosition = 0
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 253207
        mmTop = 2646
        mmWidth = 14023
        BandType = 1
      end
      object ppLabel98: TppLabel
        UserName = 'Label1'
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
      object ppLabel99: TppLabel
        UserName = 'Label9'
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
      object ppImage4: TppImage
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
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 243417
        mmTop = 6879
        mmWidth = 17463
        BandType = 1
      end
      object ppLabel106: TppLabel
        UserName = 'Label10'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 243417
        mmTop = 2646
        mmWidth = 8731
        BandType = 1
      end
      object ppLabel107: TppLabel
        UserName = 'Label11'
        Caption = 'REPORTE  DE CONTROL DE INFORME DE ATENCI'#211'N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 5027
        mmLeft = 84667
        mmTop = 12700
        mmWidth = 114829
        BandType = 1
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        Caption = 'Estado de Informe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 14552
        mmTop = 35454
        mmWidth = 32004
        BandType = 1
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        Caption = 'Fecha:  De'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 14552
        mmTop = 41010
        mmWidth = 17886
        BandType = 1
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        Caption = 'Usuario:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 14817
        mmTop = 46831
        mmWidth = 14351
        BandType = 1
      end
      object lbEstadoInfo: TppLabel
        UserName = 'lbEstadoInfo'
        Caption = 'Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 47890
        mmTop = 35454
        mmWidth = 10605
        BandType = 1
      end
      object lbFechaIni: TppLabel
        UserName = 'lbFechaIni'
        Caption = '03/10/2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 35190
        mmTop = 41010
        mmWidth = 17695
        BandType = 1
      end
      object lbUsuario: TppLabel
        UserName = 'lbUsuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 30427
        mmTop = 46831
        mmWidth = 16298
        BandType = 1
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 59796
        mmTop = 41010
        mmWidth = 9525
        BandType = 1
      end
      object lbFechaFin: TppLabel
        UserName = 'lbFechaFin'
        Caption = '02/11/2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 72231
        mmTop = 41010
        mmWidth = 17695
        BandType = 1
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        Caption = 'Especialista en S'#243'porte T'#233'cnico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 14817
        mmTop = 52652
        mmWidth = 55372
        BandType = 1
      end
      object lbSopTec: TppLabel
        UserName = 'lbSopTec'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 71702
        mmTop = 52652
        mmWidth = 15896
        BandType = 1
      end
    end
    object ppHeaderBand4: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLabel108: TppLabel
        UserName = 'Label2'
        Caption = 'C'#211'D '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4022
        mmLeft = 11642
        mmTop = 2646
        mmWidth = 7260
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label3'
        Caption = 'ACTIVO TI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 26988
        mmTop = 2646
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label4'
        Caption = 'ESP SOPORTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 139436
        mmTop = 2381
        mmWidth = 20574
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        Caption = 'USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 75936
        mmTop = 2646
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        Caption = 'ESTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 171450
        mmTop = 2381
        mmWidth = 11980
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label1005'
        Caption = 'FECHA INICIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 197115
        mmTop = 2381
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label1006'
        Caption = 'FECHA ACTUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 221986
        mmTop = 2381
        mmWidth = 22564
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        Caption = 'DIFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4022
        mmLeft = 248973
        mmTop = 2381
        mmWidth = 17717
        BandType = 0
      end
      object ppLine51: TppLine
        UserName = 'Line501'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 10848
        mmTop = 2117
        mmWidth = 262467
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine65: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 10848
        mmTop = 0
        mmWidth = 262467
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        AutoSize = True
        DataField = 'ARTCODBAR'
        DataPipeline = ppdbConInfAte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbConInfAte'
        mmHeight = 4022
        mmLeft = 11642
        mmTop = 0
        mmWidth = 9652
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        DataField = 'ACFDES'
        DataPipeline = ppdbConInfAte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbConInfAte'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 529
        mmWidth = 45773
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText501'
        DataField = 'TECNICO'
        DataPipeline = ppdbConInfAte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbConInfAte'
        mmHeight = 4233
        mmLeft = 139436
        mmTop = 529
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'USUARIO'
        DataPipeline = ppdbConInfAte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbConInfAte'
        mmHeight = 4022
        mmLeft = 75936
        mmTop = 529
        mmWidth = 53636
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        AutoSize = True
        DataField = 'ESTADOS'
        DataPipeline = ppdbConInfAte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbConInfAte'
        mmHeight = 4022
        mmLeft = 171450
        mmTop = 529
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        AutoSize = True
        DataField = 'FECHAINI'
        DataPipeline = ppdbConInfAte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbConInfAte'
        mmHeight = 4022
        mmLeft = 197115
        mmTop = 529
        mmWidth = 14478
        BandType = 4
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        AutoSize = True
        DataField = 'FECHA'
        DataPipeline = ppdbConInfAte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbConInfAte'
        mmHeight = 4022
        mmLeft = 221986
        mmTop = 529
        mmWidth = 14478
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        AutoSize = True
        DataField = 'DIFERENCIA'
        DataPipeline = ppdbConInfAte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbConInfAte'
        mmHeight = 3969
        mmLeft = 248973
        mmTop = 529
        mmWidth = 22490
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLabel114: TppLabel
        UserName = 'Label8'
        Caption = 'Soporte T'#233'cnico de Tecnologia de Informaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4498
        mmLeft = 186002
        mmTop = 2117
        mmWidth = 86784
        BandType = 8
      end
      object ppLine50: TppLine
        UserName = 'Line50'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 10848
        mmTop = 1058
        mmWidth = 262467
        BandType = 8
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 54240
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        BlankWhenZero = True
        DataField = 'ARTCODBAR'
        DataPipeline = ppdbConInfAte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbConInfAte'
        mmHeight = 4233
        mmLeft = 76729
        mmTop = 41010
        mmWidth = 15081
        BandType = 7
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        Caption = 'Total de Informes de Atenci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 17727
        mmTop = 41010
        mmWidth = 55298
        BandType = 7
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        Caption = 'N'#186' Informes de Iniciados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 26988
        mmTop = 8202
        mmWidth = 46038
        BandType = 7
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        Caption = 'N'#186' de Informes Anulados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 26723
        mmTop = 15081
        mmWidth = 46302
        BandType = 7
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        Caption = 'N'#186' de Informes de Atendidos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 21960
        mmWidth = 53181
        BandType = 7
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        Caption = 'N'#186' de Informes de Aceptados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 28310
        mmWidth = 53975
        BandType = 7
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        Caption = 'N'#186' de Informes de Visados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 23813
        mmTop = 34660
        mmWidth = 49213
        BandType = 7
      end
      object pplI: TppLabel
        UserName = 'lI'
        Caption = '13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4128
        mmLeft = 87874
        mmTop = 8202
        mmWidth = 3937
        BandType = 7
      end
      object pplP: TppLabel
        UserName = 'Label1001'
        Caption = '16'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 87916
        mmTop = 21960
        mmWidth = 3895
        BandType = 7
      end
      object pplAC: TppLabel
        UserName = 'Label1002'
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 89165
        mmTop = 28310
        mmWidth = 2381
        BandType = 7
      end
      object pplV: TppLabel
        UserName = 'Label1003'
        Caption = '9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4128
        mmLeft = 89577
        mmTop = 34660
        mmWidth = 1969
        BandType = 7
      end
      object pplA: TppLabel
        UserName = 'Label1004'
        Caption = '5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 89599
        mmTop = 15081
        mmWidth = 1947
        BandType = 7
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 15610
        mmTop = 40217
        mmWidth = 81756
        BandType = 7
      end
      object ppLine67: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 15610
        mmTop = 3969
        mmWidth = 81756
        BandType = 7
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppdConInfAte: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprConInfAte
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 462
    Top = 461
  end
end
