Unit ATI311;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ActnList, Menus, ExtCtrls,
    ImgList, Buttons, ppEndUsr, ppParameter, ppBands, ppRichTx, ppCtrls,
    ppVar, ppCTMain, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppProd,
    ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppMemo, ppModule,
    daDataModule, Mask, wwdbedit, Wwdbigrd, Wwdbgrid, wwdblook, Wwdbdlg,
    fcButton, fcImgBtn, fcShapeBtn, ppBarCod;

Type
    TFDetaInfAte = Class(TForm)
        Label8: TLabel;
        ppdbInformeMax: TppDBPipeline;
        pprInformeMax: TppReport;
        ppParameterList2: TppParameterList;
        ppdInformeMax: TppDesigner;
        ppdInforme: TppDesigner;
        ppdbInforme: TppDBPipeline;
        pprInforme: TppReport;
        ppParameterList1: TppParameterList;
        pnlInforme: TPanel;
        Label1: TLabel;
        Label2: TLabel;
        Label3: TLabel;
        Label5: TLabel;
        Label6: TLabel;
        Label7: TLabel;
        Label11: TLabel;
        Label12: TLabel;
        Label15: TLabel;
        Label16: TLabel;
        Label17: TLabel;
        Label18: TLabel;
        Label4: TLabel;
        Label13: TLabel;
        Label14: TLabel;
        Label19: TLabel;
        lbInfoEst: TLabel;
        dbmmProblema: TDBMemo;
        dbmmDiagnostico: TDBMemo;
        dbmmAccion: TDBMemo;
        dbeNinfo: TwwDBEdit;
        dbeUsuario: TwwDBEdit;
        dbeUbicacion: TwwDBEdit;
        dbeCodEquipo: TwwDBEdit;
        dbeNomEquipo: TwwDBEdit;
        wwDBEdit1: TwwDBEdit;
        wwDBEdit2: TwwDBEdit;
        wwDBEdit3: TwwDBEdit;
        dblcEstado: TwwDBLookupCombo;
        wwDBEdit4: TwwDBEdit;
        wwDBEdit5: TwwDBEdit;
        rbEspecif: TRadioGroup;
        pnlPie: TPanel;
        z2bbtnCancelar: TfcShapeBtn;
        btImprimir: TfcShapeBtn;
        btnAcepta: TfcShapeBtn;
        btnVisar: TfcShapeBtn;
        btnAnular: TfcShapeBtn;
        SEstVis: TShape;
        Label9: TLabel;
        SEstIni: TShape;
        Label10: TLabel;
        SEstAnu: TShape;
        Label24: TLabel;
        Label25: TLabel;
        SEstFin: TShape;
        Label21: TLabel;
        SEstAce: TShape;
        cbGarantia: TCheckBox;
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
    ppLabel59: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel61: TppLabel;
    ppDBText34: TppDBText;
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
    fcShapeBtn1: TfcShapeBtn;
    ppTitleBand1: TppTitleBand;
    ppRegion6: TppRegion;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppLabel4: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText9: TppDBText;
    ppLabel25: TppLabel;
    ppLabel32: TppLabel;
    ppDBText10: TppDBText;
    ppRegion7: TppRegion;
    ppDBText11: TppDBText;
    ppLabel33: TppLabel;
    ppDBBarCode2: TppDBBarCode;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppImage2: TppImage;
    ppRegion8: TppRegion;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppRegion9: TppRegion;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine20: TppLine;
    ppLabel42: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel43: TppLabel;
    ppDBText17: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLabel50: TppLabel;
    ppLine41: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLine42: TppLine;
    ppDBText38: TppDBText;
    ppLine43: TppLine;
    ppLabel51: TppLabel;
    ppLine44: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel60: TppLabel;
    ppRegion10: TppRegion;
    ppDBMemo4: TppDBMemo;
    ppLabel62: TppLabel;
    ppRegion11: TppRegion;
    ppDBMemo5: TppDBMemo;
    ppRegion12: TppRegion;
    ppDBMemo6: TppDBMemo;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    pplblGarantia: TppLabel;
    pplblGarantia2: TppLabel;
        Procedure dbeTickerKeyPress(Sender: TObject; Var Key: Char);
        Procedure z2bbtnCancelarClick(Sender: TObject);
        Procedure btImprimirClick(Sender: TObject);
        Procedure btnAceptaClick(Sender: TObject);
        Procedure btnVisarClick(Sender: TObject);
        Procedure btnAnularClick(Sender: TObject);
        Procedure CerrarBotones;
        Procedure AbrirBotones;
        Procedure FormCreate(Sender: TObject);
        Procedure cbGarantiaClick(Sender: TObject);
        Procedure rbEspecifClick(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);

    Private
      { Private declarations }
        xSQL: String;
        xSalida: String;
    Public
      { Public declarations }
    End;

Var
    FDetaInfAte: TFDetaInfAte;

Implementation

Uses ATIDM1, DB, ATI320;

{$R *.dfm}

Procedure TFDetaInfAte.FormCreate(Sender: TObject);
Begin

   //CARGA COMBO DE ESTADO
    xSQL := ' SELECT ESTADOID, ESTADODES FROM '+DMATI.wwEsquemaPROD+'ACF109';
    DMATI.cdsQRY27A.Close;
    DMATI.cdsQRY27A.DataRequest(xSQL);
    DMATI.cdsQRY27A.open;
    dblcEstado.LookupTable := DMATI.cdsQRY27A;
    dblcEstado.LookupField := 'estadodes';
    dblcEstado.Selected.Add('estadodes'#9'20'#9'COLOR'#9#9);
    dblcEstado.Selected.Add('estadoid'#9'7'#9'ID'#9#9);

    SEstIni.Brush.Color := DMATI.xInicial;
    SEstAnu.Brush.Color := DMATI.xAnulado;
    SEstFin.Brush.Color := DMATI.xFinal;
    SEstVis.Brush.Color := DMATI.xVisado;
    SEstAce.Brush.Color := DMATI.xAceptado;

    AbrirBotones;
End;

Procedure TFDetaInfAte.dbeTickerKeyPress(Sender: TObject;
    Var Key: Char);
Begin
    If Not (Key In ['0'..'9', #8, #45]) Then
    Begin
        Key := #0;
    End;
End;

Procedure TFDetaInfAte.z2bbtnCancelarClick(Sender: TObject);
Begin
    FInfoAtencion.FormCreate(Self);
    Close;
End;

Procedure TFDetaInfAte.btImprimirClick(Sender: TObject);
Begin
    xSQL := ' SELECT A.PARTE_EQUIPOID, A.PARTE_SERIE, A.PARTE_NOMBRE, A.PARTE_TIPO, A.PARTE_MARCA, A.PARTE_CARACTERISTICA,'
          + '        A.PARTE_UNIDAD, A.PARTE_FRU, A.PARTE_ESTADO, A.NUMINF, A.ARTCODBAR, A.FECHA, UPPER(A.TECNICO) TECNICO,'
          + '        A.USUARIO, A.UBICACION, A.PROBLEMA, A.DIAGNOSTICO, A.ACCION, A.ESTACTIVO, A.EQUIPO, A.EQUIPO_SERIE, '
          + '        A.EQUIPO_COLOR, A.EQUIPO_MODELO, A.EQUIPO_MARCA, A.EQUIPO_ESTADO, B.SG_RECIBENOM, B.SG_UBICACION, '
          + '        A.GARANCOD '
          + '   FROM (SELECT ATI_PARTE_EQUIPO.PARTE_EQUIPOID,'
          + '                ATI_PARTE_EQUIPO.SERIE PARTE_SERIE, '
          + '                ATI_NOM_PAR_EQU.NOMBRE PARTE_NOMBRE, '
          + '                ATI_TIPOC.NOMBRE PARTE_TIPO, '
          + '                ATI_MARCA.NOMBRE PARTE_MARCA,'
          + '                ATI_CARACT.NOMBRE PARTE_CARACTERISTICA, '
          + '                ATI_PARTE_EQUIPO.CAPACIDAD || '' '' || ATI_UNIDAD.NOMBRE PARTE_UNIDAD,'
          + '                ATI_PARTE_EQUIPO.FRU PARTE_FRU, '
          + '                ATI_EST_PARTE.NOMBRE PARTE_ESTADO,'
          + '                ATI_INFORME.NUMINF, '
          + '                ATI_INFORME.FECHA, '
          + '                ATI_INFORME.TECNICO,'
          + '                ATI_INFORME.USUARIO,'
          + '                ATI_INFORME.UBICACION, '
          + '                ATI_INFORME.PROBLEMA,'
          + '                ATI_INFORME.DIAGNOSTICO, '
          + '                ATI_INFORME.ACCION, '
          + '                ATI_INFORME.ESTACTIVO,'
          + '                ARTICULO.CODIGOBARRA ARTCODBAR, '
          + '                ARTICULO.ACFDES EQUIPO, '
          + '                ARTICULO.ACFSERIE EQUIPO_SERIE, '
          + '                ARTICULO.ACFCOLOR EQUIPO_COLOR,'
          + '                ARTICULO.ACFMODELO EQUIPO_MODELO,'
          + '                ARTICULO.ACFMARCA EQUIPO_MARCA,'
          + '                ATI_ACT_GAR.GARANCOD ,'
          + '                ACF109.ESTADODES EQUIPO_ESTADO '
          + '           FROM '+DMATI.wwEsquemaATI+'ATI_PARTE_EQUIPO,'
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
          + '          WHERE ACF120.LOCID(+) = ARTICULO.LOCID '
          + '            AND ATI_INFORME.NUMINF  = ATI_ACT_GAR.NUMINF(+) '
          + '            AND ACF121.LOCID(+) = ARTICULO.LOCID '
          + '            AND ACF121.PISO(+) = ARTICULO.PISO '
          + '            AND ACF122.LOCID(+) = ARTICULO.LOCID '
          + '            AND ACF122.PISO(+) = ARTICULO.PISO '
          + '            AND ACF122.AREA(+) = ARTICULO.AREA '
          + '            AND ACF123.LOCID(+) = ARTICULO.LOCID '
          + '            AND ACF123.PISO(+) = ARTICULO.PISO '
          + '            AND ACF123.AREA(+) = ARTICULO.AREA '
          + '            AND ACF123.AMBCOD(+) = ARTICULO.AMBCOD '
          + '            AND ATI_PARTE_EQUIPO.NOMBRE_PARTE_EQUIPOID = ATI_NOM_PAR_EQU.NOMBRE_PARTE_EQUIPOID(+)'
          + '            AND ATI_PARTE_EQUIPO.MARCAID = ATI_MARCA.MARCAID(+) '
          + '            AND ATI_PARTE_EQUIPO.TIPOID = ATI_TIPOC.TIPOID(+) '
          + '            AND ATI_PARTE_EQUIPO.CARACTERISTICAID = ATI_CARACT.CARACTERISTICAID(+)'
          + '            AND ATI_PARTE_EQUIPO.UNIDADID = ATI_UNIDAD.UNIDADID(+)  '
          + '            AND ATI_PARTE_EQUIPO.ESTADOID = ATI_EST_PARTE.ESTADOID(+) '
          + '            AND ATI_INFORME.ARTCODBAR = ATI_PARTE_EQUIPO.ARTCODBAR(+)'
          + '            AND ATI_INFORME.ARTCODBAR = ARTICULO.CODIGOBARRA'
          + '            AND ARTICULO.ARTCODBAR=ARTICULO1.ARTCODBAR(+)'
          + '            AND ARTICULO1.ESTADO = ACF109.ESTADOID(+)'
          + '            AND ATI_PARTE_EQUIPO.ESTADOID(+) = ''2'' ' // JCC el informe de atención sólo saldrá con las partes es estado "operativo"
          + '          /*AND ARTICULO.TACFID = ''03''*/) A, '
          + '        (Select ARTICULO.CODIGOBARRA ARTCODBAR, '
          + '                ARTICULO.RECIBENOM SG_RECIBENOM,'
          + '                LOCALIZACION.LOCDES || ''-'' || PISO.PISODES || ''-'' ||'
          + '                AREA.AREADES || ''-'' || AMBIENTE.AMBDES SG_UBICACION '
          + '           from '+DMATI.wwEsquemaProd+'ACF201 ARTICULO,'
                              +DMATI.wwEsquemaProd+'ACF123 AMBIENTE, '
                              +DMATI.wwEsquemaProd+'ACF122 AREA,'
                              +DMATI.wwEsquemaProd+'ACF121 PISO,'
                              +DMATI.wwEsquemaProd+'ACF120 LOCALIZACION '
          + '          where LOCALIZACION.LOCID(+) = ARTICULO.LOCID'
          + '            and PISO.LOCID(+) = ARTICULO.LOCID'
          + '            and PISO.PISO(+) = ARTICULO.PISO '
          + '            and AREA.LOCID(+) = ARTICULO.LOCID'
          + '            and AREA.PISO(+) = ARTICULO.PISO'
          + '            and AREA.AREA(+) = ARTICULO.AREA'
          + '            and AMBIENTE.LOCID(+) = ARTICULO.LOCID'
          + '            and AMBIENTE.PISO(+) = ARTICULO.PISO '
          + '            and AMBIENTE.AREA(+) = ARTICULO.AREA '
          + '            and AMBIENTE.AMBCOD(+) = ARTICULO.AMBCOD) B'
          + '  WHERE A.ARTCODBAR = B.ARTCODBAR(+) '
          + '    AND A.NUMINF = ' + QuotedStr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);
    DMATI.cdsQry41.Close;
    DMATI.cdsQry41.DataRequest(xSQL);
    DMATI.cdsQry41.Open;

    ppdbInforme.DataSource := DMATI.dsQry41;
    If (copy(DMATI.cdsQry41.FieldByName('EQUIPO').AsString,1,14) <> 'UNIDAD CENTRAL') And
            (DMATI.cdsQry41.FieldByName('EQUIPO').AsString <> 'SERVIDOR') Then
    Begin

       pplblGarantia.Caption := '';
       if length(trim(DMATI.cdsQRY41.FieldByName('GARANCOD').AsString))>0 then
          pplblGarantia.Caption := 'Equipo en Garantía con referencia :'+trim(DMATI.cdsQRY41.FieldByName('GARANCOD').AsString);

       if (DMATI.cIP='192.168.20.36') OR (DMATI.cIP='192.168.20.34') then
       begin
          ppdInformeMax.report := pprInformeMax;
          ppdInformeMax.Show;
       end
       else
       begin
          pprInformeMax.Print;
          pprInformeMax.Stop;
       end;
    End
    Else
    Begin

       pplblGarantia2.Caption := '';
       if length(trim(DMATI.cdsQRY41.FieldByName('GARANCOD').AsString))>0 then
          pplblGarantia2.Caption := 'Equipo en Garantía con referencia :'+trim(DMATI.cdsQRY41.FieldByName('GARANCOD').AsString);

       if (DMATI.cIP='192.168.20.36') OR (DMATI.cIP='192.168.20.34') then
       begin
          ppdInforme.report := pprInforme;
          ppdInforme.Show;
       end
       else
       begin
          pprInforme.Print;
          pprInforme.Stop;
       end;
    End;

End;

Procedure TFDetaInfAte.btnAceptaClick(Sender: TObject);
Var
    xValor: Integer;
Begin
    If MessageDlg('¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
        If Length(dbmmProblema.Text) = 0 Then
        Begin
            ShowMessage('Es necesario señalar el Problema');
            dbmmProblema.SetFocus;
            Exit;
        End;
        If Length(dbmmDiagnostico.Text) = 0 Then
        Begin
            ShowMessage('Es necesario dar un Diagnostico');
            dbmmDiagnostico.SetFocus;
            Exit;
        End;
        If Length(dbmmAccion.Text) = 0 Then
        Begin
            ShowMessage('Es necesario señalar una Acción');
            dbmmAccion.SetFocus;
            Exit;
        End;

        xSQL := 'SELECT  ESTADO FROM '+DMATI.wwEsquemaATI+'ATI_INFORME '
            + ' WHERE NUMINF=' + QuotedStr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);

        DMATI.cdsQry.Close;
        DMATI.cdsQry.DataRequest(xSQL);
        DMATI.cdsQry.Open;
        If DMATI.cdsQry.RecordCount > 0 Then
            FInfoAtencion.xModo := 'A';

        If FInfoAtencion.xModo = 'I' Then
        Begin
               //INGRESAATI_INFORME
            xSQL := ' INSERT INTO '+DMATI.wwEsquemaATI+'ATI_INFORME '
                + ' (NUMINF,'
                + ' ARTCODBAR,'
                + ' SERIE,'
                + ' FECHA,'
                + ' TECNICO,'
                + ' USUARIO, '
                + ' UBICACION,'
                + ' PROBLEMA,'
                + ' DIAGNOSTICO,'
                + ' ACCION, '
                + ' ESTADO, '
                + ' DESTINO, '
                + ' ESTACTIVO, '
                + ' FECHAINI) '
                + ' VALUES( '
                + quotedstr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString) + ','
                + quotedstr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString) + ','
                + quotedstr(DMATI.cdsQRY33.FieldByName('ACFSERIE').AsString) + ','
                + 'sysdate' + ','
                + quotedstr(UpperCase(DMATI.xResp)) + ','
                + quotedstr(DMATI.cdsQRY33.FieldByName('S_RECIBENOM').AsString) + ','
                + quotedstr(DMATI.cdsQRY33.FieldByName('S_UBICACION').AsString) + ','
                + quotedstr(DMATI.cdsQRY40.FieldByName('PROBLEMA').AsString) + ','
                + quotedstr(DMATI.cdsQRY40.FieldByName('DIAGNOSTICO').AsString) + ','
                + quotedstr(DMATI.cdsQRY40.FieldByName('ACCION').AsString) + ','
                + quotedstr('I') + ','
                + quotedstr('S') + ','
                + quotedstr(DMATI.cdsQRY40.FieldByName('ESTACTIVO').AsString) + ','
                + 'sysdate' + ')';
            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Grabar');
                exit;
            End;
        End
        Else
        Begin
            If DMATI.cdsQRY40.FieldByName('ESTADO').AsString = 'P' Then
            Begin
                ShowMessage('El documento ya fue Solucionado no se puede Actualizar');
                Exit;
            End;

               //ACTUALIZA EL ESTADO Y USUARIO DEL EQUIPO
            xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_INFORME '
                + ' SET PROBLEMA  =' + quotedstr(DMATI.cdsQRY40.FieldByName('PROBLEMA').AsString) + ','
                + ' DIAGNOSTICO   =' + quotedstr(DMATI.cdsQRY40.FieldByName('DIAGNOSTICO').AsString) + ','
                + ' ACCION        =' + quotedstr(DMATI.cdsQRY40.FieldByName('ACCION').AsString) + ','
                + ' ESTACTIVO   =' + quotedstr(DMATI.cdsQRY27A.FieldByName('ESTADODES').AsString) + ','
                + ' USUARIO       =' + quotedstr(DMATI.cdsQRY33.FieldByName('S_RECIBENOM').AsString) + ','
                + ' UBICACION     =' + quotedstr(DMATI.cdsQRY33.FieldByName('S_UBICACION').AsString)
                + ' WHERE NUMINF  = ' + quotedstr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);

            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Actualicar el Equipo');
                exit;
            End;

        End;

        If rbEspecif.ItemIndex = 1 Then
        Begin
            //ACTUALIZA EL ESTADO DEL INFORME
            xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_INFORME '
                + ' SET DESTINO=''N'' '
                + ' WHERE NUMINF = ' + quotedstr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);

            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Actualicar el Informe');
                exit;
            End;
        End
        Else
        Begin
            //ACTUALIZA EL ESTADO DEL INFORME
            xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_INFORME '
                + ' SET DESTINO=''S'' '
                + ' WHERE NUMINF = ' + quotedstr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);

            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Actualicar el Informe');
                exit;
            End;
        End;
        //INSERTAR SI VA IR PARA GARANTIA
        If cbGarantia.Checked = true Then
        Begin

            xSQL := 'SELECT  GARANCOD,NUMINF  FROM  '+DMATI.wwEsquemaATI+'ATI_ACT_GAR  '
                + ' WHERE  NUMINF=' + QuotedStr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);
            DMATI.cdsQry.Close;
            DMATI.cdsQry.DataRequest(xSQL);
            DMATI.cdsQry.Open;
            xValor := Length(DMATI.cdsQRY.FieldByName('NUMINF').AsString);

            xSQL := ' INSERT INTO '+DMATI.wwEsquemaATI+'ATI_ACT_GAR '
                + ' (ARTCODBAR, '
                + ' FECHA, '
                + ' NUMINF,'
                + ' NUMINFTEC, '
                + ' FECHAFIN, '
                + ' GARANCOD, '
                + ' TECNICOINI,'
                + ' TECNICOFIN, '
                + ' ESTADO ) '
                + ' VALUES ( '
                + quotedstr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString) + ','
                + 'SYSDATE' + ','
                + quotedstr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString) + ','
                + quotedstr('NO') + ','
                + quotedstr('') + ','
                + quotedstr(DMATI.Correlativo(DMATI.wwEsquemaATI+'ATI_ACT_GAR', 'GARANCOD')) + ','
                + quotedstr(DMATI.xResp) + ','
                + quotedstr('') + ','
                + quotedstr('INICIAL') + ')';

            If xValor = 0 Then
            Begin
                Try
                    DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
                Except
                    ShowMessage('No se pudo Actualicar el Equipo');
                    exit;
                End;
            End;

        End
        Else
        Begin
            xSQL := 'DELETE FROM  '+DMATI.wwEsquemaATI+'ATI_ACT_GAR  '
                + ' WHERE  NUMINF=' + QuotedStr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);
            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Actualicar el Equipo');
                exit;
            End;
        End;
    End;

   //PARAMENTROS DE COMPORTAMIENTO DEL FORMULARIO
    ShowMessage('Ok');
   //EVITA PROBLEMAS AL MOMENTO DE CAMBIAR LOS DBE DE MODIFICACION A INGRESO (BIS)
    AbrirBotones;
End;

Procedure TFDetaInfAte.btnVisarClick(Sender: TObject);
Var
    xValor: String;
Begin
    If MessageDlg('¿Grabar Aceptar el Informe? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
        //ACTUALIZACION DEL ESTADO DEL EQUIPO EN EL MAESTRO ATI
        xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_SOP_STOCK'
            + ' SET  ESTADO =' + quotedstr(DMATI.cdsQRY27A.FieldByName('ESTADOID').AsString)
            + ' WHERE ARTCODBAR = ' + quotedstr(DMATI.cdsQRY40.FieldByName('ARTCODBAR').AsString);

        Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
        Except
            ShowMessage('No se pudo Actualicar el Equipo');
            exit;
        End;

        {If rbEspecif.ItemIndex = 1 Then
            xValor := 'P'
        Else
            xValor := 'AC'; }

        //ACTUALIZACIOND EL ESTADO EN EL INFORME DE ATENCION A VISADO
        xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_INFORME '
            + ' SET ESTADO=' + QuotedStr('AC') + ','
            + ' FECHA = SYSDATE '
            + ' WHERE NUMINF = ' + quotedstr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);

        Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
        Except
            ShowMessage('No se pudo Actualicar el Informe');
            exit;
        End;

        AbrirBotones;
        ShowMessage('Ok');
    End;
End;

Procedure TFDetaInfAte.btnAnularClick(Sender: TObject);
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
        ShowMessage('Ok');
    End;
End;

Procedure TFDetaInfAte.AbrirBotones;
Begin
//---------------------------VERIFICACIÓN DE ESTADO---------------------------------
    xSQL := 'SELECT  GARA.GARANCOD ,INFO.ESTADO,INFO.DESTINO FROM '+DMATI.wwEsquemaATI+'ATI_INFORME INFO, '+DMATI.wwEsquemaATI+'ATI_ACT_GAR GARA '
        + ' WHERE  INFO.NUMINF=GARA.NUMINF(+) '
        + ' AND INFO.NUMINF=' + QuotedStr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);

    DMATI.cdsQry.Close;
    DMATI.cdsQry.DataRequest(xSQL);
    DMATI.cdsQry.Open;

    //CERRAR BOTONE
    CerrarBotones;
    //NUEVO
    If DMATI.cdsQry.RecordCount = 0 Then
    Begin
        pnlInforme.Enabled := True;
        lbInfoEst.Font.Color := clBlue;
        lbInfoEst.Caption := 'Nuevo';

        btnAcepta.Enabled := True;

    End;
    //ESTADO INICIAL
    If DMATI.cdsQry.FieldByName('ESTADO').AsString = 'I' Then
    Begin
        pnlInforme.Enabled := True;
        lbInfoEst.Font.Color := DMATI.xInicial;
        lbInfoEst.Caption := 'Inicial';

        btnAcepta.Enabled := True;
        btnVisar.Enabled := True;
        btnAnular.Enabled := True;
        btImprimir.Enabled := True;

    End;
    //ESTADO ANULADO
    If DMATI.cdsQry.FieldByName('ESTADO').AsString = 'A' Then
    Begin
        lbInfoEst.Font.Color := DMATI.xAnulado;
        lbInfoEst.Caption := 'ANULADO';
        btImprimir.Enabled := True;
    End;
    //ESTADO VISADO
    If DMATI.cdsQry.FieldByName('ESTADO').AsString = 'V' Then
    Begin
        lbInfoEst.Font.Color := DMATI.xVisado;
        lbInfoEst.Caption := 'VISADO';
        btImprimir.Enabled := True;
    End;
    //ESTADO SOLUCIONADO
    If DMATI.cdsQry.FieldByName('ESTADO').AsString = 'P' Then
    Begin
        pnlInforme.Enabled := True;
        lbInfoEst.Font.Color := DMATI.xFinal;
        lbInfoEst.Caption := 'ATENDIDO';
        btImprimir.Enabled := True;
    End;

    //ESTADO ACEPTADO
    If DMATI.cdsQry.FieldByName('ESTADO').AsString = 'AC' Then
    Begin
        lbInfoEst.Font.Color := DMATI.xAceptado;
        lbInfoEst.Caption := 'ACEPTADO';
        pnlInforme.Enabled := True;
        btnAcepta.Enabled := True;
        btnVisar.Enabled := True;
        btnAnular.Enabled := True;
        btImprimir.Enabled := True;
        cbGarantia.Enabled := True;
    End;

    //GARANTIA
    If Length(DMATI.cdsQry.FieldByName('GARANCOD').AsString) > 0 Then
        cbGarantia.Checked := True
    Else
        cbGarantia.Checked := False;

    //DESTINO
    If DMATI.cdsQry.FieldByName('DESTINO').AsString = 'S' Then
        rbEspecif.ItemIndex := 0
    Else
        rbEspecif.ItemIndex := 1

End;
Procedure TFDetaInfAte.CerrarBotones;
Begin
    btnAcepta.Enabled := False;
    btnVisar.Enabled := False;
    btnAnular.Enabled := False;
    btImprimir.Enabled := False;
    pnlInforme.Enabled := False;
End;
Procedure TFDetaInfAte.cbGarantiaClick(Sender: TObject);
Begin
    If (copy(DMATI.cdsQRY33.FieldByName('ACFDES').AsString,1,14) <> 'UNIDAD CENTRAL') then
//    If DMATI.cdsQRY33.FieldByName('ACFDES').AsString = 'UNIDAD CENTRAL DE PROCESO - CPU' Then
    Begin
        cbGarantia.Checked := False;
        rbEspecif.ItemIndex := 0;
        ShowMessage('Este activo no se puede envíar a garantía por un Informe de Técnico');
        exit;
    End;
End;

Procedure TFDetaInfAte.rbEspecifClick(Sender: TObject);
Begin
    If cbGarantia.Checked = True Then
    Begin
        rbEspecif.ItemIndex := 1;
    End;
End;

procedure TFDetaInfAte.fcShapeBtn1Click(Sender: TObject);
var
   xSQL : String;
begin
   xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_INFORME '
         + ' SET '
         + ' USUARIO       =' + quotedstr(DMATI.cdsQRY33.FieldByName('S_RECIBENOM').AsString) + ','
         + ' UBICACION     =' + quotedstr(DMATI.cdsQRY33.FieldByName('S_UBICACION').AsString)
         + ' WHERE NUMINF  = ' + quotedstr(DMATI.cdsQRY40.FieldByName('NUMINF').AsString);
   Try
      DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
   Except
      ShowMessage('No se pudo Actualicar el Informe');
      exit;
   End;
   ShowMessage('Ok');
end;

End.


