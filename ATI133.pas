Unit ATI133;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ActnList, Menus, ExtCtrls,
    ImgList, Buttons, ppEndUsr, ppParameter, ppBands, ppRichTx, ppCtrls,
    ppVar, ppCTMain, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppProd,
    ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppMemo, ppModule,
    daDataModule, FMTBcd, DB, SqlExpr, Wwdbigrd, Wwdbgrid, fcButton,
    fcImgBtn, fcShapeBtn, Mask, wwdbedit, ppBarCod, wwdblook, Wwkeycb,
    wwdbdatetimepicker;

Type
    TFInfoAten = Class(TForm)
        Label7: TLabel;
        pnlPie: TPanel;
        z2bbtnCancelar: TfcShapeBtn;
        btImprimir: TfcShapeBtn;
        btnVisar: TfcShapeBtn;
        btnAnular: TfcShapeBtn;
        dbgInforme: TwwDBGrid;
        wwDBGrid1IButton: TwwIButton;
        Panel1: TPanel;
        pnlBusca: TPanel;
        lblBusca2: TLabel;
        isBusca: TwwIncrementalSearch;
        lbNumEqui: TLabel;
        ppdbInformeMax: TppDBPipeline;
        pprInformeMax: TppReport;
        ppTitleBand1: TppTitleBand;
        ppRegion6: TppRegion;
        ppDBText10: TppDBText;
        ppDBText13: TppDBText;
        ppLabel21: TppLabel;
        ppDBText14: TppDBText;
        ppLabel22: TppLabel;
        ppDBText17: TppDBText;
        ppLabel25: TppLabel;
        ppLabel32: TppLabel;
        ppLabel33: TppLabel;
        ppDBText7: TppDBText;
        ppLabel34: TppLabel;
        ppLabel35: TppLabel;
        ppDBText1: TppDBText;
        ppRegion7: TppRegion;
        ppDBText11: TppDBText;
        ppLabel36: TppLabel;
        ppDBBarCode2: TppDBBarCode;
        ppLabel37: TppLabel;
        ppLabel38: TppLabel;
        ppImage2: TppImage;
        ppLabel39: TppLabel;
        ppRegion8: TppRegion;
        ppLabel40: TppLabel;
        ppLabel41: TppLabel;
        ppDBText2: TppDBText;
        ppDBText15: TppDBText;
        ppRegion9: TppRegion;
        ppDBText3: TppDBText;
        ppDBText12: TppDBText;
        ppLabel42: TppLabel;
        ppLabel43: TppLabel;
        ppLabel44: TppLabel;
        ppSystemVariable4: TppSystemVariable;
        ppSystemVariable5: TppSystemVariable;
        ppLabel45: TppLabel;
        ppHeaderBand2: TppHeaderBand;
        ppDetailBand2: TppDetailBand;
        ppFooterBand2: TppFooterBand;
        ppLabel46: TppLabel;
        ppLine20: TppLine;
        ppSummaryBand2: TppSummaryBand;
        ppRegion10: TppRegion;
        ppDBMemo5: TppDBMemo;
        ppLabel47: TppLabel;
        ppRegion11: TppRegion;
        ppDBMemo6: TppDBMemo;
        ppRegion12: TppRegion;
        ppDBMemo7: TppDBMemo;
        ppLabel48: TppLabel;
        ppLabel49: TppLabel;
        ppLine23: TppLine;
        ppDBText9: TppDBText;
        ppLine24: TppLine;
        ppLabel50: TppLabel;
        ppLine25: TppLine;
        ppLabel51: TppLabel;
        ppLabel52: TppLabel;
        ppLabel53: TppLabel;
        ppLabel54: TppLabel;
        ppParameterList2: TppParameterList;
        ppdInformeMax: TppDesigner;
        ppdInforme: TppDesigner;
        pprInforme: TppReport;
        ppTitleBand2: TppTitleBand;
        ppRegion2: TppRegion;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppLabel14: TppLabel;
        ppDBText6: TppDBText;
        ppDBText8: TppDBText;
        ppLabel18: TppLabel;
        ppLabel19: TppLabel;
        ppLabel11: TppLabel;
        ppDBText16: TppDBText;
        ppLabel15: TppLabel;
        ppLabel23: TppLabel;
        ppDBText18: TppDBText;
        ppRegion1: TppRegion;
        ppDBText19: TppDBText;
        ppLabel12: TppLabel;
        ppDBBarCode1: TppDBBarCode;
        ppSystemVariable1: TppSystemVariable;
        ppLabel17: TppLabel;
        ppLabel2: TppLabel;
        ppImage1: TppImage;
        ppRegion3: TppRegion;
        ppLabel20: TppLabel;
        ppLabel8: TppLabel;
        ppDBText20: TppDBText;
        ppDBText21: TppDBText;
        ppRegion4: TppRegion;
        ppDBText23: TppDBText;
        ppDBText22: TppDBText;
        ppLabel27: TppLabel;
        ppLabel28: TppLabel;
        ppLabel31: TppLabel;
        ppLabel3: TppLabel;
        ppLine1: TppLine;
        ppSystemVariable2: TppSystemVariable;
        ppLabel4: TppLabel;
        ppLabel59: TppLabel;
        ppHeaderBand1: TppHeaderBand;
        ppLabel5: TppLabel;
        ppLabel6: TppLabel;
        ppLabel7: TppLabel;
        ppLabel9: TppLabel;
        ppLabel10: TppLabel;
        ppLabel13: TppLabel;
        ppLine2: TppLine;
        ppLine4: TppLine;
        ppLine8: TppLine;
        ppLine9: TppLine;
        ppLine10: TppLine;
        ppLine11: TppLine;
        ppLine14: TppLine;
        ppLine6: TppLine;
        ppDetailBand1: TppDetailBand;
        ppDBText24: TppDBText;
        ppDBText25: TppDBText;
        ppDBText26: TppDBText;
        ppDBText27: TppDBText;
        ppDBText28: TppDBText;
        ppDBText29: TppDBText;
        ppLine5: TppLine;
        ppLine13: TppLine;
        ppLine15: TppLine;
        ppLine16: TppLine;
        ppLine17: TppLine;
        ppLine19: TppLine;
        ppLine7: TppLine;
        ppLine3: TppLine;
        ppLine12: TppLine;
        ppFooterBand1: TppFooterBand;
        ppLabel16: TppLabel;
        ppLine18: TppLine;
        ppSummaryBand1: TppSummaryBand;
        ppLine21: TppLine;
        ppDBText30: TppDBText;
        ppLine22: TppLine;
        ppLabel24: TppLabel;
        ppLine26: TppLine;
        ppLabel26: TppLabel;
        ppLabel29: TppLabel;
        ppLabel30: TppLabel;
        ppLabel55: TppLabel;
        ppRegion5: TppRegion;
        ppDBMemo1: TppDBMemo;
        ppLabel56: TppLabel;
        ppRegion13: TppRegion;
        ppDBMemo2: TppDBMemo;
        ppRegion14: TppRegion;
        ppDBMemo3: TppDBMemo;
        ppLabel57: TppLabel;
        ppLabel58: TppLabel;
        daDataModule1: TdaDataModule;
        ppParameterList1: TppParameterList;
        ppdbInforme: TppDBPipeline;
        SEstVis: TShape;
        Label1: TLabel;
        SEstIni: TShape;
        Label10: TLabel;
        SEstAnu: TShape;
        Label24: TLabel;
        Label25: TLabel;
        SEstFin: TShape;
        Label3: TLabel;
        SEstAce: TShape;
        rbActFlat: TRadioGroup;
        GroupBox1: TGroupBox;
        dbdtFecIni: TwwDBDateTimePicker;
        dbdtFecFin: TwwDBDateTimePicker;
        Label2: TLabel;
        Label4: TLabel;
        GroupBox2: TGroupBox;
        edtUsuario: TEdit;
        GroupBox3: TGroupBox;
        edtSoporte: TEdit;
        btnFiltraUsuario: TfcShapeBtn;
        btnRepControl: TfcShapeBtn;
        ppDesigner1: TppDesigner;
        ppReport1: TppReport;
        ppTitleBand3: TppTitleBand;
        ppRegion15: TppRegion;
        ppDBText31: TppDBText;
        ppDBText32: TppDBText;
        ppLabel1: TppLabel;
        ppDBText33: TppDBText;
        ppDBText34: TppDBText;
        ppLabel60: TppLabel;
        ppLabel61: TppLabel;
        ppLabel62: TppLabel;
        ppDBText35: TppDBText;
        ppLabel63: TppLabel;
        ppLabel64: TppLabel;
        ppDBText36: TppDBText;
        ppRegion16: TppRegion;
        ppDBText37: TppDBText;
        ppLabel65: TppLabel;
        ppDBBarCode3: TppDBBarCode;
        ppSystemVariable3: TppSystemVariable;
        ppLabel66: TppLabel;
        ppLabel67: TppLabel;
        ppImage3: TppImage;
        ppRegion17: TppRegion;
        ppLabel68: TppLabel;
        ppLabel69: TppLabel;
        ppDBText38: TppDBText;
        ppDBText39: TppDBText;
        ppRegion18: TppRegion;
        ppDBText40: TppDBText;
        ppDBText41: TppDBText;
        ppLabel70: TppLabel;
        ppLabel71: TppLabel;
        ppLabel72: TppLabel;
        ppLabel73: TppLabel;
        ppLine27: TppLine;
        ppSystemVariable6: TppSystemVariable;
        ppLabel74: TppLabel;
        ppLabel75: TppLabel;
        ppHeaderBand3: TppHeaderBand;
        ppLabel76: TppLabel;
        ppLabel77: TppLabel;
        ppLabel78: TppLabel;
        ppLabel79: TppLabel;
        ppLabel80: TppLabel;
        ppLabel81: TppLabel;
        ppLine28: TppLine;
        ppLine29: TppLine;
        ppLine30: TppLine;
        ppLine31: TppLine;
        ppLine32: TppLine;
        ppLine33: TppLine;
        ppLine34: TppLine;
        ppLine35: TppLine;
        ppDetailBand3: TppDetailBand;
        ppDBText42: TppDBText;
        ppDBText43: TppDBText;
        ppDBText44: TppDBText;
        ppDBText45: TppDBText;
        ppDBText46: TppDBText;
        ppDBText47: TppDBText;
        ppLine36: TppLine;
        ppLine37: TppLine;
        ppLine38: TppLine;
        ppLine39: TppLine;
        ppLine40: TppLine;
        ppLine41: TppLine;
        ppLine42: TppLine;
        ppLine43: TppLine;
        ppLine44: TppLine;
        ppFooterBand3: TppFooterBand;
        ppLabel82: TppLabel;
        ppLine45: TppLine;
        ppSummaryBand3: TppSummaryBand;
        ppLine46: TppLine;
        ppDBText48: TppDBText;
        ppLine47: TppLine;
        ppLabel83: TppLabel;
        ppLine48: TppLine;
        ppLabel84: TppLabel;
        ppLabel85: TppLabel;
        ppLabel86: TppLabel;
        ppLabel87: TppLabel;
        ppRegion19: TppRegion;
        ppDBMemo4: TppDBMemo;
        ppLabel88: TppLabel;
        ppRegion20: TppRegion;
        ppDBMemo8: TppDBMemo;
        ppRegion21: TppRegion;
        ppDBMemo9: TppDBMemo;
        ppLabel89: TppLabel;
        ppLabel90: TppLabel;
        daDataModule2: TdaDataModule;
        ppParameterList3: TppParameterList;
        ppDBPipeline1: TppDBPipeline;
        ppdbConInfAte: TppDBPipeline;
        pprConInfAte: TppReport;
        ppdConInfAte: TppDesigner;
        ppParameterList4: TppParameterList;
        ppTitleBand4: TppTitleBand;
        ppSystemVariable7: TppSystemVariable;
        ppLabel98: TppLabel;
        ppLabel99: TppLabel;
        ppImage4: TppImage;
        ppSystemVariable8: TppSystemVariable;
        ppLabel106: TppLabel;
        ppLabel107: TppLabel;
        ppLabel103: TppLabel;
        ppLabel104: TppLabel;
        ppLabel105: TppLabel;
        lbEstadoInfo: TppLabel;
        lbFechaIni: TppLabel;
        lbUsuario: TppLabel;
        ppLabel115: TppLabel;
        lbFechaFin: TppLabel;
        ppLabel117: TppLabel;
        lbSopTec: TppLabel;
        ppHeaderBand4: TppHeaderBand;
        ppLabel108: TppLabel;
        ppLabel109: TppLabel;
        ppLabel110: TppLabel;
        ppLabel91: TppLabel;
        ppLabel100: TppLabel;
        ppLabel101: TppLabel;
        ppLabel102: TppLabel;
        ppLabel111: TppLabel;
        ppLine51: TppLine;
        ppDetailBand4: TppDetailBand;
        ppLine65: TppLine;
        ppDBText49: TppDBText;
        ppDBText50: TppDBText;
        ppDBText51: TppDBText;
        ppDBText52: TppDBText;
        ppDBText53: TppDBText;
        ppDBText54: TppDBText;
        ppDBText55: TppDBText;
        ppDBText56: TppDBText;
        ppFooterBand4: TppFooterBand;
        ppLabel114: TppLabel;
        ppLine50: TppLine;
        ppSummaryBand4: TppSummaryBand;
        ppDBCalc2: TppDBCalc;
        ppLabel92: TppLabel;
        ppLabel93: TppLabel;
        ppLabel94: TppLabel;
        ppLabel95: TppLabel;
        ppLabel96: TppLabel;
        ppLabel97: TppLabel;
        pplI: TppLabel;
        pplP: TppLabel;
        pplAC: TppLabel;
        pplV: TppLabel;
        pplA: TppLabel;
        ppLine49: TppLine;
        ppLine67: TppLine;
        pplbGaratia: TppLabel;
        Procedure FormCreate(Sender: TObject);
        Procedure dbgInformeCalcCellColors(Sender: TObject; Field: TField;
            State: TGridDrawState; Highlight: Boolean; AFont: TFont;
            ABrush: TBrush);
        Procedure dbgInformeTitleButtonClick(Sender: TObject;
            AFieldName: String);
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
        Procedure FormShow(Sender: TObject);
        Procedure AbrirBotones;
        Procedure CerrarBotones;
        Procedure btImprimirClick(Sender: TObject);
        Procedure z2bbtnCancelarClick(Sender: TObject);
        Procedure btnAnularClick(Sender: TObject);
        Procedure btnVisarClick(Sender: TObject);
        Procedure dbdtFecIniChange(Sender: TObject);
        Procedure btnFiltraUsuarioClick(Sender: TObject);
        Procedure dbgInformeRowChanged(Sender: TObject);
        Procedure btnRepControlClick(Sender: TObject);

    Private
      { Private declarations }
        xSQL, xSQL1, xFiltro: String;
        xbtnFiltro: Integer;

    Public
      { Public declarations }
    End;

Var
    FInfoAten: TFInfoAten;

Implementation

Uses ATIDM1;

{$R *.dfm}

Procedure TFInfoAten.FormCreate(Sender: TObject);
Begin

    xSQL := 'SELECT DISTINCT '
        + ' ATI_INFORME.NUMINF,'
        + ' ATI_INFORME.ARTCODBAR,'
        + ' ATI_INFORME.SERIE,'
        + ' ACF201.ACFDES,'
        + ' TO_DATE(ATI_INFORME.FECHAINI)FECHAINI, '
        + ' TO_DATE(ATI_INFORME.FECHA)FECHA, '
        + ' TRUNC(Mod ((ATI_INFORME.FECHA - ATI_INFORME.FECHAINI), 60))|| ''/ días'' ||'
        + ' TO_CHAR(TRUNC(Mod ((ATI_INFORME.FECHA - ATI_INFORME.FECHAINI) * 24, 60)), ''00'')||'':'' ||'
        + ' TO_CHAR(TRUNC(Mod ((ATI_INFORME.FECHA - ATI_INFORME.FECHAINI) * 1440, 60)), ''00'')||'':'' ||'
        + ' TRUNC(Mod ((ATI_INFORME.FECHA - ATI_INFORME.FECHAINI) * 86400, 60))DIFERENCIA, '
        + ' ATI_INFORME.TECNICO,'
        + ' ATI_INFORME.USUARIO,'
        + ' ATI_INFORME.UBICACION, '
        + ' ATI_INFORME.PROBLEMA, '
        + ' ATI_INFORME.DIAGNOSTICO, '
        + ' ATI_INFORME.ACCION, '
        + ' ATI_INFORME.ESTADO, '
        + ' ATI_INFORME.ESTACTIVO,'
        + ' ACF109.ESTADODES, '
        + ' ATI_SOP_STOCK.RECIBENOM S_RECIBENOM, '
        + ' (SELECT ACF120.LOCDES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' ||'
        + ' (SELECT ACF121.PISODES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' ||'
        + ' (SELECT ACF122.AREADES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' || '
        + ' (SELECT ACF123.AMBDES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) S_UBICACION,'
        + ' Case '
        + ' WHEN ATI_INFORME.ESTADO = ''I'' Then ''INICIADO'''
        + ' WHEN ATI_INFORME.ESTADO = ''A'' Then ''ANULADO'''
        + ' WHEN ATI_INFORME.ESTADO = ''P'' Then ''ATENDIDO'''
        + ' WHEN ATI_INFORME.ESTADO = ''AC'' Then ''ACEPTADO'''
        + ' WHEN ATI_INFORME.ESTADO = ''V'' Then ''VISADO'''
        + ' End ESTADOS '
        + ' FROM '+DMATI.wwEsquemaProd+'ACF201,'
        + ' '+DMATI.wwEsquemaATI+'ATI_INFORME,  '
        + ' '+DMATI.wwEsquemaProd+'ACF109,'
        + ' '+DMATI.wwEsquemaProd+'ACF123,'
        + ' '+DMATI.wwEsquemaProd+'ACF122,'
        + ' '+DMATI.wwEsquemaProd+'ACF121,'
        + ' '+DMATI.wwEsquemaProd+'ACF120, '
        + ' '+DMATI.wwEsquemaATI+'ATI_SOP_STOCK'
        + ' WHERE ACF120.LOCID(+) = ATI_SOP_STOCK.LOCID'
        + ' AND ACF121.LOCID(+) = ATI_SOP_STOCK.LOCID'
        + ' AND ACF121.PISO(+) = ATI_SOP_STOCK.PISO '
        + ' AND ACF122.LOCID(+) = ATI_SOP_STOCK.LOCID '
        + ' AND ACF122.PISO(+) = ATI_SOP_STOCK.PISO '
        + ' AND ACF122.AREA(+) = ATI_SOP_STOCK.AREA '
        + ' AND ACF123.LOCID(+) = ATI_SOP_STOCK.LOCID '
        + ' AND ACF123.PISO(+) = ATI_SOP_STOCK.PISO '
        + ' AND ACF123.AREA(+) = ATI_SOP_STOCK.AREA'
        + ' AND ACF123.AMBCOD(+) = ATI_SOP_STOCK.AMBCOD '
        + ' AND ATI_SOP_STOCK.ARTCODBAR(+) = ACF201.CODIGOBARRA'
        + ' AND ACF201.CODIGOBARRA = ATI_INFORME.ARTCODBAR'
        + ' AND ATI_SOP_STOCK.ESTADO = ACF109.ESTADOID(+)';
    xSQL := xSQL + xSQL1;
    Case rbActFlat.ItemIndex Of
        0: xSQL := xSQL + ' AND ATI_INFORME.ESTADO=''I'' ORDER BY TO_NUMBER(ATI_INFORME.NUMINF) DESC ';
        1: xSQL := xSQL + ' AND ATI_INFORME.ESTADO=''AC'' ORDER BY TO_NUMBER(ATI_INFORME.NUMINF) DESC ';
        2: xSQL := xSQL + ' AND ATI_INFORME.ESTADO=''A'' ORDER BY TO_NUMBER(ATI_INFORME.NUMINF) DESC ';
        3: xSQL := xSQL + ' AND ATI_INFORME.ESTADO=''V'' ORDER BY TO_NUMBER(ATI_INFORME.NUMINF) DESC ';
        4: xSQL := xSQL + ' AND ATI_INFORME.ESTADO=''P'' ORDER BY TO_NUMBER(ATI_INFORME.NUMINF) DESC ';
        5: xSQL := xSQL + ' ORDER BY ATI_INFORME.NUMINF ';
    End;

    screen.cursor := crhourglass;
    DMATI.cdsQRY40.Close;
    DMATI.cdsQRY40.IndexName := '';
    DMATI.cdsQRY40.Filtered := False;
    DMATI.cdsQRY40.DataRequest(xSQL);
    DMATI.cdsQRY40.Open;
    screen.cursor := crdefault;
    dbgInforme.DataSource := DMATI.dsQRY40;

    dbgInforme.Selected.clear;
    dbgInforme.Selected.Add('NUMINF' + #9 + '10' + #9 + 'N°ATI_INFORME');
    dbgInforme.Selected.Add('ARTCODBAR' + #9 + '12' + #9 + 'CÓD ACTIVO TI');
    dbgInforme.Selected.Add('SERIE' + #9 + '25' + #9 + 'SERIE ACTIVO TI');
    dbgInforme.Selected.Add('ACFDES' + #9 + '30' + #9 + 'ACTIVO TI');
    dbgInforme.Selected.Add('FECHAINI' + #9 + '15' + #9 + 'FECHA INICIAL');
    dbgInforme.Selected.Add('FECHA' + #9 + '15' + #9 + 'FECHA ACTUAL');
    dbgInforme.Selected.Add('DIFERENCIA' + #9 + '18' + #9 + 'DIFERENCIA');
    dbgInforme.Selected.Add('TECNICO' + #9 + '25' + #9 + 'ESP SOPORTE TÉCNICO');
    dbgInforme.Selected.Add('S_RECIBENOM' + #9 + '30' + #9 + 'USUARIO');
    dbgInforme.Selected.Add('S_UBICACION' + #9 + '50' + #9 + 'UBICACION');
    dbgInforme.Selected.Add('ESTADOS' + #9 + '15' + #9 + 'ESTADO');
    dbgInforme.ApplySelected;

    If xbtnFiltro = 0 Then
    Begin
        xSQL := 'SELECT TO_DATE(SYSDATE) FECHA FROM DUAL';

        DMATI.cdsQRY.Close;
        DMATI.cdsQRY.DataRequest(xSQL);
        DMATI.cdsQRY.Open;
        dbdtFecFin.DateTime := DMATI.cdsQRY.FieldByName('FECHA').AsDateTime;
        dbdtFecIni.DateTime := DMATI.cdsQRY.FieldByName('FECHA').AsDateTime - 30;
    End;
    xbtnFiltro := 0;
    lbNumEqui.Caption := 'Total de Informes de Atención: ' + IntToStr(DMATI.cdsQRY40.RecordCount);
    AbrirBotones;
End;

Procedure TFInfoAten.dbgInformeCalcCellColors(Sender: TObject;
    Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
    ABrush: TBrush);
Begin
    If DMATI.cdsQRY40.FieldByName('ESTADO').AsString = 'I' Then
        ABrush.Color := DMATI.xInicial;
    If DMATI.cdsQRY40.FieldByName('ESTADO').AsString = 'A' Then
        ABrush.Color := DMATI.xAnulado;
    If DMATI.cdsQRY40.FieldByName('ESTADO').AsString = 'P' Then
        ABrush.Color := DMATI.xFinal;
    If DMATI.cdsQRY40.FieldByName('ESTADO').AsString = 'V' Then
        ABrush.Color := DMATI.xVisado;
    If DMATI.cdsQRY40.FieldByName('ESTADO').AsString = 'AC' Then
        ABrush.Color := DMATI.xAceptado;

    SEstIni.Brush.Color := DMATI.xInicial;
    SEstAnu.Brush.Color := DMATI.xAnulado;
    SEstFin.Brush.Color := DMATI.xFinal;
    SEstVis.Brush.Color := DMATI.xVisado;
    SEstAce.Brush.Color := DMATI.xAceptado;
End;

Procedure TFInfoAten.dbgInformeTitleButtonClick(Sender: TObject;
    AFieldName: String);
Var
    xTitLabel: String;
Begin
    xFiltro := AFieldName;
    pnlBusca.Visible := True;
    isBusca.SearchField := AFieldName;
    dbgInforme.SetActiveField(AFieldName);
    DMATI.cdsQRY40.AddIndex(AFieldName, AFieldName, [ixDescending, ixCaseInsensitive], '', '', 0);
    DMATI.cdsQRY40.IndexName := AFieldName;
    xTitLabel := dbgInforme.SelectedField.DisplayLabel;
    xTitLabel[Pos('~', xTitLabel)] := ' ';
    lblBusca2.caption := xTitLabel;
    isBusca.DataSource := DMATI.dsQRY40;
    isBusca.SetFocus;
End;

Procedure TFInfoAten.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin

    DMATI.cdsQRY40.IndexName := '';
    DMATI.cdsQRY40.Filtered := False;
    DMATI.cdsQRY40.Close;

End;

Procedure TFInfoAten.FormShow(Sender: TObject);
Begin
    dbgInformeTitleButtonClick(Self, 'ARTCODBAR');
End;

Procedure TFInfoAten.AbrirBotones;
Begin
//---------------------------VERIFICACIÓN DE ESTADO---------------------------------
    xSQL := 'SELECT  ESTADO FROM '+DMATI.wwEsquemaATI+'ATI_INFORME '
        + ' WHERE NUMINF=' + QuotedStr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);

    DMATI.cdsQry.Close;
    DMATI.cdsQry.DataRequest(xSQL);
    DMATI.cdsQry.Open;

    //CERRAR BOTONE
    CerrarBotones;
    //NUEVO
    If DMATI.cdsQry.RecordCount = 0 Then
    Begin

        btnVisar.Enabled := False;
        btnAnular.Enabled := False;

    End;
    //ESTADO INICIAL
    If DMATI.cdsQry.FieldByName('ESTADO').AsString = 'I' Then
    Begin

        btnVisar.Enabled := False;
        btnAnular.Enabled := False;
        btImprimir.Enabled := True;

    End;
    //ESTADO ANULADO
    If DMATI.cdsQry.FieldByName('ESTADO').AsString = 'A' Then
    Begin

        btnVisar.Enabled := False;
        btnAnular.Enabled := False;
        btImprimir.Enabled := True;
    End;
    //ESTADO VISADO
    If DMATI.cdsQry.FieldByName('ESTADO').AsString = 'V' Then
    Begin

        btnVisar.Enabled := False;
        btnAnular.Enabled := False;
        btImprimir.Enabled := True;
    End;
    //ESTADO SOLUCIONADO
    If DMATI.cdsQry.FieldByName('ESTADO').AsString = 'P' Then
    Begin

        btnVisar.Enabled := False;
        btnAnular.Enabled := False;
        btImprimir.Enabled := True;
    End;
    //ESTADO SOLUCIONADO
    If DMATI.cdsQry.FieldByName('ESTADO').AsString = 'AC' Then
    Begin

        btnVisar.Enabled := True;
        btnAnular.Enabled := True;
        btImprimir.Enabled := True;
    End;
End;
Procedure TFInfoAten.CerrarBotones;
Begin
    btnVisar.Enabled := False;
    btnAnular.Enabled := False;
    btImprimir.Enabled := True;
End;

Procedure TFInfoAten.btImprimirClick(Sender: TObject);
Begin
    xSQL := ' SELECT A.PARTE_EQUIPOID, A.PARTE_SERIE, A.PARTE_NOMBRE, A.PARTE_TIPO, A.PARTE_MARCA, A.PARTE_CARACTERISTICA,'
          + '        A.PARTE_UNIDAD, A.PARTE_FRU, A.PARTE_ESTADO,'
        + ' A.NUMINF, '
        + ' A.ARTCODBAR,'
        + ' A.FECHA, '
        + ' UPPER(A.TECNICO) TECNICO,'
        + ' A.USUARIO,'
        + ' A.UBICACION, '
        + ' A.PROBLEMA,'
        + ' A.DIAGNOSTICO,'
        + ' A.ACCION, '
        + ' A.ESTACTIVO, '
        + ' A.EQUIPO, '
        + ' A.EQUIPO_SERIE, '
        + ' A.EQUIPO_COLOR, '
        + ' A.EQUIPO_MODELO,'
        + ' A.EQUIPO_MARCA, '
        + ' A.EQUIPO_ESTADO,'
        + ' B.SG_RECIBENOM, '
        + ' B.SG_UBICACION, '
        + ' A.GARANCOD '
        + ' FROM (SELECT  '
        + ' ATI_PARTE_EQUIPO.PARTE_EQUIPOID,'
        + ' ATI_PARTE_EQUIPO.SERIE PARTE_SERIE, '
        + ' ATI_NOM_PAR_EQU.NOMBRE PARTE_NOMBRE,'
        + ' ATI_TIPOC.NOMBRE PARTE_TIPO,'
        + ' ATI_MARCA.NOMBRE PARTE_MARCA,'
        + ' ATI_CARACT.NOMBRE PARTE_CARACTERISTICA, '
        + ' ATI_PARTE_EQUIPO.CAPACIDAD || '' '' || ATI_UNIDAD.NOMBRE PARTE_UNIDAD,'
        + ' ATI_PARTE_EQUIPO.FRU PARTE_FRU, '
        + ' ATI_EST_PARTE.NOMBRE PARTE_ESTADO,'
        + ' ATI_INFORME.NUMINF, '
        + ' ATI_INFORME.FECHA, '
        + ' ATI_INFORME.TECNICO,'
        + ' ATI_INFORME.USUARIO,'
        + ' ATI_INFORME.UBICACION, '
        + ' ATI_INFORME.PROBLEMA,'
        + ' ATI_INFORME.DIAGNOSTICO, '
        + ' ATI_INFORME.ACCION, '
        + ' ATI_INFORME.ESTACTIVO,'
        + ' ARTICULO.ARTCODBAR, '
        + ' ARTICULO.ACFDES EQUIPO, '
        + ' ARTICULO.ACFSERIE EQUIPO_SERIE, '
        + ' ARTICULO.ACFCOLOR EQUIPO_COLOR,'
        + ' ARTICULO.ACFMODELO EQUIPO_MODELO,'
        + ' ARTICULO.ACFMARCA EQUIPO_MARCA,'
        + ' ATI_ACT_GAR.GARANCOD ,'
        + ' ACF109.ESTADODES EQUIPO_ESTADO '
        + ' FROM '+DMATI.wwEsquemaATI+'ATI_PARTE_EQUIPO,'
        + ' '+DMATI.wwEsquemaATI+'ATI_NOM_PAR_EQU,'
        + ' '+DMATI.wwEsquemaATI+'ATI_MARCA, '
        + ' '+DMATI.wwEsquemaATI+'ATI_TIPOC, '
        + ' '+DMATI.wwEsquemaATI+'ATI_CARACT,'
        + ' '+DMATI.wwEsquemaATI+'ATI_UNIDAD, '
        + ' '+DMATI.wwEsquemaATI+'ATI_EST_PARTE,'
        + ' '+DMATI.wwEsquemaATI+'ATI_INFORME, '
        + ' '+DMATI.wwEsquemaATI+'ATI_ACT_GAR, '
        + ' '+DMATI.wwEsquemaProd+'ACF201 ARTICULO,'
        + ' '+DMATI.wwEsquemaATI+'ATI_SOP_STOCK ARTICULO1,'
        + ' '+DMATI.wwEsquemaProd+'ACF109,'
        + ' '+DMATI.wwEsquemaProd+'ACF123, '
        + ' '+DMATI.wwEsquemaProd+'ACF122, '
        + ' '+DMATI.wwEsquemaProd+'ACF121, '
        + ' '+DMATI.wwEsquemaProd+'ACF120 '
        + ' WHERE ACF120.LOCID(+) = ARTICULO.LOCID '
        + ' AND ATI_INFORME.NUMINF  = ATI_ACT_GAR.NUMINF(+) '
        + ' AND ACF121.LOCID(+) = ARTICULO.LOCID '
        + ' AND ACF121.PISO(+) = ARTICULO.PISO '
        + ' AND ACF122.LOCID(+) = ARTICULO.LOCID '
        + ' AND ACF122.PISO(+) = ARTICULO.PISO '
        + ' AND ACF122.AREA(+) = ARTICULO.AREA '
        + ' AND ACF123.LOCID(+) = ARTICULO.LOCID '
        + ' AND ACF123.PISO(+) = ARTICULO.PISO '
        + ' AND ACF123.AREA(+) = ARTICULO.AREA '
        + ' AND ACF123.AMBCOD(+) = ARTICULO.AMBCOD '
        + ' AND ATI_PARTE_EQUIPO.NOMBRE_PARTE_EQUIPOID ='
        + ' ATI_NOM_PAR_EQU.NOMBRE_PARTE_EQUIPOID(+)'
        + ' AND ATI_PARTE_EQUIPO.MARCAID = ATI_MARCA.MARCAID(+) '
        + ' AND ATI_PARTE_EQUIPO.TIPOID = ATI_TIPOC.TIPOID(+) '
        + ' AND ATI_PARTE_EQUIPO.CARACTERISTICAID = '
        + ' ATI_CARACT.CARACTERISTICAID(+)'
        + ' AND ATI_PARTE_EQUIPO.UNIDADID = ATI_UNIDAD.UNIDADID(+)  '
        + ' AND ATI_PARTE_EQUIPO.ESTADOID = ATI_EST_PARTE.ESTADOID(+) '
        + ' AND ATI_INFORME.ARTCODBAR = ATI_PARTE_EQUIPO.ARTCODBAR(+)'
        + ' AND ATI_INFORME.ARTCODBAR = ARTICULO.ARTCODBAR'
        + ' AND ARTICULO.ARTCODBAR=ARTICULO1.ARTCODBAR(+)'
        + ' AND ARTICULO1.ESTADO = ACF109.ESTADOID(+)'
        + ' /*AND ARTICULO.TACFID = ''03''*/) A, '
        + ' (SELECT ARTICULO.ARTCODBAR, '
        + ' ARTICULO.RECIBENOM SG_RECIBENOM,'
        + ' LOCALIZACION.LOCDES || ''-'' || PISO.PISODES || ''-'' ||'
        + ' AREA.AREADES || ''-'' || AMBIENTE.AMBDES SG_UBICACION '
        + ' FROM '+DMATI.wwEsquemaProd+'ACF201 ARTICULO,'
        + ' '+DMATI.wwEsquemaProd+'ACF123 AMBIENTE, '
        + ' '+DMATI.wwEsquemaProd+'ACF122 AREA,'
        + ' '+DMATI.wwEsquemaProd+'ACF121 PISO,'
        + ' '+DMATI.wwEsquemaProd+'ACF120 LOCALIZACION '
        + ' WHERE LOCALIZACION.LOCID(+) = ARTICULO.LOCID'
        + ' AND PISO.LOCID(+) = ARTICULO.LOCID'
        + ' AND PISO.PISO(+) = ARTICULO.PISO '
        + ' AND AREA.LOCID(+) = ARTICULO.LOCID'
        + ' AND AREA.PISO(+) = ARTICULO.PISO'
        + ' AND AREA.AREA(+) = ARTICULO.AREA'
        + ' AND AMBIENTE.LOCID(+) = ARTICULO.LOCID'
        + ' AND AMBIENTE.PISO(+) = ARTICULO.PISO '
        + ' AND AMBIENTE.AREA(+) = ARTICULO.AREA '
        + ' AND AMBIENTE.AMBCOD(+) = ARTICULO.AMBCOD) B'
        + ' WHERE A.ARTCODBAR = B.ARTCODBAR(+)'
        + ' AND A.NUMINF = ' + QuotedStr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);

    DMATI.cdsQry41.Close;
    DMATI.cdsQry41.DataRequest(xSQL);
    DMATI.cdsQry41.Open;

    If Length(DMATI.cdsQry41.FieldByName('GARANCOD').AsString) > 0 Then
        pplbGaratia.Visible := True
    Else
        pplbGaratia.Visible := False;

    ppdbInforme.DataSource := DMATI.dsQry41;
    If (copy(DMATI.cdsQry41.FieldByName('equipo').AsString,1,14) <> 'UNIDAD CENTRAL') And
//    If (DMATI.cdsQry41.FieldByName('equipo').AsString <> 'UNIDAD CENTRAL DE PROCESO - CPU') And
        (DMATI.cdsQry41.FieldByName('equipo').AsString <> 'SERVIDOR') Then
    Begin
        pprInformeMax.Print;
        pprInformeMax.Stop;
    End
    Else
    Begin
        pprInforme.Print;
        pprInforme.Stop;
    End;
End;

Procedure TFInfoAten.z2bbtnCancelarClick(Sender: TObject);
Begin
    DMATI.cdsQRY40.IndexName := '';
    Close;
End;

Procedure TFInfoAten.btnAnularClick(Sender: TObject);
Begin
    If MessageDlg('¿Grabar Anular el Informe? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin

        xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_INFORME '
            + ' SET ESTADO =''A'', '
            + ' FECHA = SYSDATE '
            + ' WHERE NUMINF = ' + quotedstr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);

        Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
        Except
            ShowMessage('No se pudo Actualicar el Informe');
            exit;
        End;
        AbrirBotones;
        FormCreate(Self);
        ShowMessage('Ok');
    End;
End;

Procedure TFInfoAten.btnVisarClick(Sender: TObject);
Begin
    If MessageDlg('¿Grabar Visar el Informe? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
        //ACTUALIZACIOND EL ESTADO EN EL INFORME DE ATENCION A VISADO

        //VERIFICO SI EL INFORME DE ATENCION REQUIERE INFORME TECNICO
        xSQL := ' SELECT DESTINO FROM '+DMATI.wwEsquemaATI+'ATI_INFORME '
            + ' WHERE NUMINF = ' + quotedstr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);

        DMATI.cdsQry.Close;
        DMATI.cdsQry.DataRequest(xSQL);
        DMATI.cdsQry.Open;

        If DMATI.cdsQry.FieldByName('DESTINO').AsString = 'N' Then
            xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_INFORME '
                + ' SET ESTADO=''P'', '
                + ' FECHA = SYSDATE '
                + ' WHERE NUMINF = ' + quotedstr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString)
        Else
            xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_INFORME '
                + ' SET ESTADO=''V'', '
                + ' FECHA = SYSDATE '
                + ' WHERE NUMINF = ' + quotedstr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);

        Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
        Except
            ShowMessage('No se pudo Actualicar el Informe');
            exit;
        End;
        FormCreate(Self);
        AbrirBotones;
        ShowMessage('Ok');
    End;
End;

Procedure TFInfoAten.dbdtFecIniChange(Sender: TObject);
Begin
    If dbdtFecIni.DateTime > dbdtFecFin.DateTime Then
    Begin
        ShowMessage('Fecha de comienzo de busqueda, no puede ser mayor a la fecha final');
        dbdtFecIni.DateTime := dbdtFecFin.DateTime - 1;
    End;
End;

Procedure TFInfoAten.btnFiltraUsuarioClick(Sender: TObject);
Begin

    //RESTRINGE LOS CAMPOS POR FECHA
    xSQL1 := ' AND TO_DATE(ATI_INFORME.FECHA) >= ' + QuotedStr(dbdtFecIni.Text)
        + ' AND TO_DATE(ATI_INFORME.FECHA) <= ' + QuotedStr(dbdtFecFin.Text);
    //SI NO SE ESPECIFICA USUARIO
    If Length(edtUsuario.Text) <> 0 Then
        xSQL1 := xSQL1 + ' AND ATI_SOP_STOCK.RECIBENOM LIKE ' + QuotedStr('%' + edtUsuario.Text + '%');
    //SI NO SE ESPECIFICA TECNICO
    If Length(edtSoporte.Text) <> 0 Then
        xSQL1 := xSQL1 + ' AND TECNICO LIKE ' + QuotedStr('%' + edtSoporte.Text + '%');

    xbtnFiltro := 1;
    FormCreate(Self);
    If rbActFlat.ItemIndex = 1 Then
        AbrirBotones
    Else
        CerrarBotones;

    lbNumEqui.Caption := 'Total de Informes de Atención: ' + IntToStr(DMATI.cdsQRY40.RecordCount);

End;

Procedure TFInfoAten.dbgInformeRowChanged(Sender: TObject);
Begin
    //edtUsuario.Text := DMATI.cdsQRY40.FieldByName('S_RECIBENOM').AsString;
    //edtSoporte.Text := DMATI.cdsQRY40.FieldByName('TECNICO').AsString;
End;

Procedure TFInfoAten.btnRepControlClick(Sender: TObject);
Var
    I, A, P, AC, V: Integer;
Begin
    DMATI.cdsQRY40.Filtered := False;
    DMATI.cdsQRY40.Filter := 'ESTADO = ''I''';
    DMATI.cdsQRY40.Filtered := True;
    I := DMATI.cdsQRY40.RecordCount;

    DMATI.cdsQRY40.Filtered := False;
    DMATI.cdsQRY40.Filter := 'ESTADO = ''A''';
    DMATI.cdsQRY40.Filtered := True;
    A := DMATI.cdsQRY40.RecordCount;

    DMATI.cdsQRY40.Filtered := False;
    DMATI.cdsQRY40.Filter := 'ESTADO = ''P''';
    DMATI.cdsQRY40.Filtered := True;
    P := DMATI.cdsQRY40.RecordCount;

    DMATI.cdsQRY40.Filtered := False;
    DMATI.cdsQRY40.Filter := 'ESTADO = ''AC''';
    DMATI.cdsQRY40.Filtered := True;
    AC := DMATI.cdsQRY40.RecordCount;

    DMATI.cdsQRY40.Filtered := False;
    DMATI.cdsQRY40.Filter := 'ESTADO = ''V''';
    DMATI.cdsQRY40.Filtered := True;
    V := DMATI.cdsQRY40.RecordCount;

    DMATI.cdsQRY40.Filtered := False;

    ppdbConInfAte.DataSource := DMATI.dsQry40;

    Case rbActFlat.ItemIndex Of
        0: lbEstadoInfo.Caption := 'Inicial';
        1: lbEstadoInfo.Caption := 'Aceptado';
        2: lbEstadoInfo.Caption := 'Anulado';
        3: lbEstadoInfo.Caption := 'Visado';
        4: lbEstadoInfo.Caption := 'Atendido';
        5: lbEstadoInfo.Caption := 'Todos';
    End;
    lbFechaIni.Caption := dbdtFecIni.Text;
    lbFechaFin.Caption := dbdtFecFin.Text;
    lbSopTec.Caption := edtSoporte.Text;
    lbUsuario.Caption := edtUsuario.Text;

    pplI.Caption := IntToStr(I);
    pplA.Caption := IntToStr(A);
    pplP.Caption := IntToStr(P);
    pplAC.Caption := IntToStr(AC);
    pplV.Caption := IntToStr(V);

    pprConInfAte.Print;
    pprConInfAte.Stop;

End;

End.

