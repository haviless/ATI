Unit ATI132;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, DB,
    ComCtrls, Mask, wwdbedit, wwdblook, DBCtrls, fcButton, fcImgBtn,
    fcShapeBtn, ppEndUsr, ppParameter, ppMemo, ppBands, ppBarCod, ppVar,
    ppCtrls, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppProd,
    ppReport, ppComm, ppRelatv, ppDB, ppDBPipe;

Type
    TFDetalleSalida = Class(TForm)
        pnlCabecera: TPanel;
        Label2: TLabel;
        lbTecnico: TLabel;
        Label11: TLabel;
        Label3: TLabel;
        Label4: TLabel;
        lbTipo: TLabel;
        Label5: TLabel;
        Label13: TLabel;
        dblcSSGG: TwwDBLookupCombo;
        dbeNumDoc: TwwDBEdit;
        dbeTencico: TwwDBEdit;
        dbeNumCabIng: TwwDBEdit;
        dblcTipoDoc: TwwDBLookupCombo;
        dblcTipoEntrada: TwwDBLookupCombo;
        dbmmObservacion: TDBMemo;
        btnGrabarCabecera: TfcShapeBtn;
        dbeFechaEntrada: TwwDBEdit;
        pnlPie: TPanel;
        lbContador: TLabel;
        btnGuardar: TfcShapeBtn;
        btnAnular: TfcShapeBtn;
        btnImprimir: TfcShapeBtn;
        btnAcepta: TfcShapeBtn;
        btnTerminar: TfcShapeBtn;
        Label1: TLabel;
        ppdbRecibo: TppDBPipeline;
        pprRecibo: TppReport;
        ppHeaderBand2: TppHeaderBand;
        ppLabel5: TppLabel;
        ppLabel6: TppLabel;
        ppLabel7: TppLabel;
        ppLabel8: TppLabel;
        ppLabel9: TppLabel;
        ppLabel10: TppLabel;
        ppLabel11: TppLabel;
        ppLine13: TppLine;
        ppLine14: TppLine;
        ppLine15: TppLine;
        ppLine16: TppLine;
        ppLine17: TppLine;
        ppLine18: TppLine;
        ppLine19: TppLine;
        ppLine20: TppLine;
        ppLine21: TppLine;
        ppDBText19: TppDBText;
        ppLabel20: TppLabel;
        ppDBText21: TppDBText;
        ppLabel22: TppLabel;
        ppLabel17: TppLabel;
        ppLabel21: TppLabel;
        ppImage1: TppImage;
        ppLine22: TppLine;
        ppLabel12: TppLabel;
        ppDBText12: TppDBText;
        ppDetailBand2: TppDetailBand;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        ppDBText7: TppDBText;
        ppDBText8: TppDBText;
        ppDBText9: TppDBText;
        ppLine23: TppLine;
        ppLine24: TppLine;
        ppLine25: TppLine;
        ppLine26: TppLine;
        ppLine27: TppLine;
        ppLine28: TppLine;
        ppLine29: TppLine;
        ppLine30: TppLine;
        ppLine31: TppLine;
        ppDBCalc1: TppDBCalc;
        ppLine32: TppLine;
        ppDBBarCode2: TppDBBarCode;
        ppFooterBand1: TppFooterBand;
        ppLabel30: TppLabel;
        ppLine33: TppLine;
        ppSummaryBand2: TppSummaryBand;
        ppLine34: TppLine;
        ppDBText10: TppDBText;
        ppLine35: TppLine;
        ppDBText11: TppDBText;
        ppLine36: TppLine;
        ppLabel13: TppLabel;
        ppLabel25: TppLabel;
        ppLabel29: TppLabel;
        ppLabel14: TppLabel;
        ppParameterList2: TppParameterList;
        ppdRecibo: TppDesigner;
        dbgDetalle: TwwDBGrid;
        btnIngDetalle: TwwIButton;
        pnlIngresoDetalle: TPanel;
        Label6: TLabel;
        Label7: TLabel;
        Label8: TLabel;
        Label9: TLabel;
        Label10: TLabel;
        Label12: TLabel;
        dbeNunInv: TwwDBEdit;
        dbeSerieEq: TwwDBEdit;
        dbeEquipo: TwwDBEdit;
        dbeModelo: TwwDBEdit;
        dbeMarca: TwwDBEdit;
        BitBtn1: TBitBtn;
        btnIngreso: TBitBtn;
        ppLabel47: TppLabel;
        ppRegion11: TppRegion;
        ppDBMemo6: TppDBMemo;
        Imagen: TImage;
        lbInfoEst: TLabel;
        ppLabel24: TppLabel;
        ppDBText1: TppDBText;
        Procedure FormCreate(Sender: TObject);
        Procedure FormKeyPress(Sender: TObject; Var Key: Char);
        Procedure btnGuardarClick(Sender: TObject);
        Procedure btnImprimirClick(Sender: TObject);
        Procedure btnAceptaClick(Sender: TObject);
        Procedure btnAnularClick(Sender: TObject);
        Procedure btnTerminarClick(Sender: TObject);
        Procedure btnIngDetalleClick(Sender: TObject);
        Procedure btnIngresoClick(Sender: TObject);
        Procedure BitBtn1Click(Sender: TObject);
        Procedure dbeNunInvExit(Sender: TObject);
        Procedure dblcSSGGCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure dblcTipoEntradaCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure btnGrabarCabeceraClick(Sender: TObject);
        Procedure DesHabilitaBotones;
        Procedure HabilitaBotones;
        Procedure dbgDetalleCellChanged(Sender: TObject);
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
        Procedure dbeNumDocKeyPress(Sender: TObject; Var Key: Char);
        Procedure dbgDetalleKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);

    Private
        xSQL: String;
    Public

    End;

Var

    FDetalleSalida: TFDetalleSalida;
   //TTcontrol:TTcontrol;
Implementation

Uses funciones, ATIDM1, ATI301, ATI135;

{$R *.dfm}

{ TFManEquipos }
//********************************************************

Procedure TFDetalleSalida.FormCreate(Sender: TObject);
Begin
    xSQL := 'SELECT NUMCABSAL,'
        + ' ARTCODBAR,'
        + ' FECHA,'
        + ' ACFSERIE,'
        + ' ACFDES,'
        + ' ACFMODELO,'
        + ' ACFMARCA,'
        + ' ESTADOID,'
        + ' USERID,'
        + ' ATI_SSGG.NOMBRE'
        + ' FROM '+DMATI.wwEsquemaATI+'ATI_DET_SAL, '+DMATI.wwEsquemaATI+'ATI_SSGG '
        + ' WHERE ATI_DET_SAL.SSGGID =ATI_SSGG.SSGGID(+)'
        + ' AND NUMCABSAL =' + QuotedStr(DMATI.cdsQry11.FieldByName('NUMCABSAL').AsString);

    DMATI.cdsQry12.Close;
    DMATI.cdsQry12.DataRequest(xSQL);
    DMATI.cdsQry12.Open;

    dbgDetalle.DataSource := DMATI.dsQry12;

    dbgDetalle.Selected.Clear;
   //dbgDetalle.Selected.Add('nundeting' + #9 + '5' + #9 + 'N° DETALLE');
    dbgDetalle.Selected.Add('ARTCODBAR' + #9 + '25' + #9 + 'COD INVENTARIO');
    dbgDetalle.Selected.Add('ACFDES' + #9 + '25' + #9 + 'ACTIVO DE TI');
    dbgDetalle.Selected.Add('FECHA' + #9 + '15' + #9 + 'FECHA');
    dbgDetalle.Selected.Add('NOMBRE' + #9 + '25' + #9 + 'SSGG');
    dbgDetalle.Selected.Add('USERID' + #9 + '25' + #9 + 'TÉCNICO');
    dbgDetalle.ApplySelected;
   //CARGA EL COMBO DE REPONSABLES DE SSGG
    xSQL := ' select nombre, clave, descripcion, ssggid from '+DMATI.wwEsquemaATI+'ATI_SSGG'
        + ' ORDER BY nombre';
    DMATI.cdsQRY26A.Close;
    DMATI.cdsQRY26A.DataRequest(xSQL);
    DMATI.cdsQRY26A.Open;
    dblcSSGG.LookupTable := DMATI.cdsQRY26A;
    dblcSSGG.Selected.Add('nombre' + #9 + '15' + #9 + 'SSGG');
    dblcSSGG.LookupField := 'nombre';

   //CARGA EL COMBO DE TIPO DE GUIA DE SALIDA
    xSQL := ' select guia_salida_tipoid, nombre, descripcion from '+DMATI.wwEsquemaATI+'ATI_TIP_SALIDA'
        + ' ORDER BY nombre';
    DMATI.cdsQRY29A.Close;
    DMATI.cdsQRY29A.DataRequest(xSQL);
    DMATI.cdsQRY29A.Open;
    dblcTipoEntrada.LookupTable := DMATI.cdsQRY29A;
    dblcTipoEntrada.LookupField := 'nombre';
    dblcTipoEntrada.Selected.Add('nombre' + #9 + '15' + #9 + 'TIPO SALIDA');

   //CARGA EL TIPO DE DOCUMENTO
    xSQL := ' select tipdocnom, tipodocid from '+DMATI.wwEsquemaATI+'ATI_TIP_DOC'
        + ' order by tipdocnom';

    DMATI.cdsQry21.Close;
    DMATI.cdsQry21.DataRequest(xSQL);
    DMATI.cdsQry21.open;
    dblcTipoDoc.LookupTable := DMATI.cdsQry21;
    dblcTipoDoc.Selected.Add('tipdocnom' + #9 + '15' + #9 + 'TIPO DOCUMENTO°');
    dblcTipoDoc.LookupField := 'tipdocnom';

    While Not DMATI.cdsQry33.Eof Do
    Begin
        DMATI.cdsQry33.delete;
    End;
    HabilitaBotones;
End;

Procedure TFDetalleSalida.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
    If Key = #13 Then
    Begin
        Key := #0;
        Perform(CM_DialogKey, VK_TAB, 0);
    End;
End;

Procedure TFDetalleSalida.btnGuardarClick(Sender: TObject);
Var
    I: Integer;
Begin

    DMATI.cdsQry12.first;
    For I := 0 To DMATI.cdsQry12.RecordCount - 1 Do
    Begin
        xSQL := ' SELECT NUMCABSAL FROM '+DMATI.wwEsquemaATI+'ATI_DET_SAL'
            + ' WHERE DETESTSAL = ''I'''
            + ' AND ARTCODBAR =' + QuotedStr(DMATI.cdsQry12.FieldByName('artcodbar').AsString)
            + ' GROUP BY NUMCABSAL HAVING  NUMCABSAL =' + QuotedStr(DMATI.cdsQry11.FieldByName('numcabsal').AsString);

        DMATI.cdsQry.Close;
        DMATI.cdsQry.DataRequest(xSQL);
        DMATI.cdsQry.Open;

        If DMATI.cdsQry.RecordCount = 0 Then
        Begin

            xSQL := ' SELECT NVL(MAX(TO_NUMBER(NUMDETSAL)),0)+1 NUMERO FROM '+DMATI.wwEsquemaATI+'ATI_DET_SAL';

            DMATI.cdsQry.Close;
            DMATI.cdsQry.DataRequest(xSQL);
            DMATI.cdsQry.Open;

                     //INGRESA DETALLEDE ENTRADAS DE EQUIPO
            XSQL := ' INSERT INTO '+DMATI.wwEsquemaATI+'ATI_DET_SAL'
                + ' (NUMDETSAL,'
                + ' NUMCABSAL,'
                + ' ARTCODBAR,'
                + ' FECHA,'
                + ' ACFSERIE,'
                + ' ACFDES,'
                + ' ACFMODELO,'
                + ' ACFMARCA,'
                + ' ESTADOID,'
                + ' USERID,'
                + ' SSGGID,'
                + ' DETESTSAL)'
                + ' VALUES( '
                + quotedstr(DMATI.cdsQRY.FieldByName('NUMERO').AsString) + ','
                + quotedstr(DMATI.cdsQRY11.FieldByName('NUMCABSAL').AsString) + ','
                + quotedstr(DMATI.cdsQry12.FieldByName('ARTCODBAR').AsString) + ','
                + 'sysdate' + ','
                + quotedstr(DMATI.cdsQry12.FieldByName('ACFSERIE').AsString) + ', '
                + quotedstr(DMATI.cdsQry12.FieldByName('ACFDES').AsString) + ','
                + quotedstr(DMATI.cdsQry12.FieldByName('ACFMODELO').AsString) + ','
                + quotedstr(DMATI.cdsQry12.FieldByName('ACFMARCA').AsString) + ','
                + quotedstr(DMATI.cdsQry12.FieldByName('ESTADOID').AsString) + ','
                + quotedstr(DMATI.cdsQRY11.FieldByName('USERID').AsString) + ','
                + quotedstr(DMATI.cdsQRY11.FieldByName('SSGGID').AsString) + ','
                + quotedstr('I') + ')';

            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Grabar Detalle');
                exit;
            End;
        End;

        DMATI.cdsQry12.Next;
    End;

    FormCreate(Self);

End;

Procedure TFDetalleSalida.btnImprimirClick(Sender: TObject);
Var
    xRuta: String;
Begin
    xSQL := 'SELECT ATI_DET_SAL.NUMCABSAL,'
        + ' ATI_CAB_SAL.NRODOC,'
        + ' ATI_CAB_SAL.FECHA,'
        + ' ATI_CAB_SAL.OBSERVACION,'
        + ' ATI_CAB_SAL.TIPDOCID,'
        + ' ATI_DET_SAL.ARTCODBAR, '
        + ' ATI_DET_SAL.FECHA,'
        + ' ATI_DET_SAL.ACFSERIE,'
        + ' ATI_DET_SAL.ACFDES,'
        + ' ATI_DET_SAL.ACFMODELO,'
        + ' ATI_DET_SAL.ACFMARCA,'
        + ' ATI_DET_SAL.ESTADOID,'
        + ' ATI_DET_SAL.USERID, '
        + ' ATI_SSGG.NOMBRE '
        + ' FROM '+DMATI.wwEsquemaATI+'ATI_DET_SAL, '+DMATI.wwEsquemaATI+'ATI_SSGG, '+DMATI.wwEsquemaATI+'ATI_CAB_SAL '
        + ' WHERE ATI_DET_SAL.SSGGID = ATI_SSGG.SSGGID(+)'
        + ' AND ATI_DET_SAL.NUMCABSAL = ATI_CAB_SAL.NUMCABSAL'
        + ' AND ATI_DET_SAL.NUMCABSAL =' + QuotedStr(DMATI.cdsQry11.FieldByName('NUMCABSAL').AsString);

    DMATI.cdsQry6.Close;
    DMATI.cdsQry6.DataRequest(xSQL);
    DMATI.cdsQry6.Open;
    ppdbRecibo.DataSource := DMATI.dsQry6;

   {xRuta := 'C:\SOLEXES\Reportes';
   pprRecibo.template.FileName := xRuta + '\ReciboSalida.rtm';
   pprRecibo.Template.LoadFromFile;}

//   ppdRecibo.Report := pprRecibo;
//   ppdRecibo.Show;

    pprRecibo.Print;
    pprRecibo.Stop;

End;

Procedure TFDetalleSalida.btnAceptaClick(Sender: TObject);
Var
    I: Integer;
Begin

    If MessageDlg('¿Grabar Registro, una vez Grabado no se podra anular? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
        //GRABA EN CASO NO SE HAYA ECHO ANTES.
        btnGuardarClick(Self);

        DMATI.cdsQry12.first;
        For I := 0 To DMATI.cdsQry12.RecordCount - 1 Do
        Begin

               //ACTUALIZA EL ESTADO DE LA CABECERA DE ENTRADA
            xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_CAB_SAL '
                + ' SET CABSALEST= ''P'' '
                + ' WHERE  NUMCABSAL =' + QuotedStr(DMATI.cdsQRY11.FieldByName('NUMCABSAL').AsString);
            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Actualicar el Equipo');
                exit;
            End;

               //ACTUALIZA EL ESTADO DEL DETALLE DE SALIDA
            xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_DET_SAL '
                + ' SET DETESTSAL= ''P'' '
                + ' WHERE ARTCODBAR = ' + DMATI.cdsQry12.FieldByName('ARTCODBAR').AsString
                + ' AND NUMCABSAL =' + DMATI.cdsQRY11.FieldByName('NUMCABSAL').AsString;
            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Actualicar el Equipo');
                exit;
            End;
               //ACTUALIZA EL ESTADO DEL STOCK
            xSQL := 'UPDATE '+DMATI.wwEsquemaATI+'ATI_SOP_STOCK SET STOCKENT = ''T'' , FECHAFINAL = SYSDATE  '
                + ' WHERE ARTCODBAR =' + QuotedStr(DMATI.cdsQry12.FieldByName('ARTCODBAR').AsString);

            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Actualicar el Equipo');
                exit;
            End;

            DMATI.cdsQry12.Next;

        End
    End
    Else
    Begin
        Exit;
    End;

   //PAPRAMETROS DE COMPORTAMIENTO DE FORMULARIO
    FormCreate(Self);

End;

Procedure TFDetalleSalida.btnAnularClick(Sender: TObject);
Var
    I: Integer;
Begin

    If MessageDlg('¿Anular Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
        //GRABA EN CASO NO SE HAYA ECHO ANTES.
        btnGuardarClick(Self);

        DMATI.cdsQry12.first;
        For I := 0 To DMATI.cdsQry12.RecordCount - 1 Do
        Begin
               //ACTUALIZA EL ESTADO DE LA CABECERA DE ENTRADA
            xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_CAB_SAL '
                + ' SET CABSALEST= ''A'' ' + ','
                + ' NRODOC= ''ANULADO'''
                + ' WHERE NUMCABSAL =' + QuotedStr(DMATI.cdsQRY11.FieldByName('numcabsal').AsString);
            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Actualicar el Equipo');
                exit;
            End;

               //ACTUALIZA EL ESTADO DEL DETALLE DE ENTRADA
            xSQL := ' update '+DMATI.wwEsquemaATI+'ati_det_sal '
                + ' set detestsal= ''A'' '
                + ' where artcodbar = ' + DMATI.cdsQry12.FieldByName('artcodbar').AsString
                + ' and numcabsal =' + DMATI.cdsQRY11.FieldByName('numcabsal').AsString;

            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Actualicar el Equipo');
                exit;
            End;

               //ACTUALIZA EL ESTADO DEL STOK DE SOPORTE
            xSQL := 'Update '+DMATI.wwEsquemaATI+'ati_sop_stock set stockent = ''E'' '
                + ' where artcodbar =' + QuotedStr(DMATI.cdsQry12.FieldByName('artcodbar').AsString);

            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Actualicar el Equipo');
                exit;
            End;

            DMATI.cdsQry12.Next;

        End
    End
    Else
    Begin
        Exit;
    End;

   //PAPRAMETROS DE FORMULARIO
    FormCreate(Self);

End;

Procedure TFDetalleSalida.btnTerminarClick(Sender: TObject);
Begin
   //PAPRAMETROS DE FORMULARIO

    DMATI.cdsQry11.CancelUpdates;
    btnGuardar.Enabled := False;
    btnIngDetalle.Enabled := False;
    btnAcepta.Enabled := False;
    btnImprimir.Enabled := False;
    close;
End;

Procedure TFDetalleSalida.btnIngDetalleClick(Sender: TObject);
Begin

   //PAPRAMETROS DE COMPORTAMIENTO DE FORMULARIO
    btnGuardar.Enabled := True;
    pnlIngresoDetalle.Visible := True;
    dbeNunInv.setfocus;
End;

Procedure TFDetalleSalida.btnIngresoClick(Sender: TObject);
Var
    I: Integer;
Begin
    If DMATI.cdsQRY33.Active = False Then Exit;

   //FIJA SI EL EQUIPO YA FUE INGRESADO.
    xSQL := ' select ARTCODBAR from '+DMATI.wwEsquemaATI+'ATI_SOP_STOCK '
        + ' where  ARTCODBAR = ' + QuotedStr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString)
        + ' AND stockent= ''E''';

    DMATI.cdsQRY.Close;
    DMATI.cdsQRY.DataRequest(xSQL);
    DMATI.cdsQRY.Open;

    If DMATI.cdsQRY.RecordCount = 0 Then
    Begin
        ShowMessage('Equipo no esta dentro de Soporte Técnico.');
        Exit;
    End;

    If Not DMATI.cdsQry12.Active Then
    Begin
        DMATI.cdsQry12.FieldDefs.Assign(DMATI.cdsQRY33.FieldDefs);
        DMATI.cdsQry12.CreateDataSet;
    End;

    If DMATI.cdsQry12.Locate('ARTCODBAR', DMATI.cdsQry33.FieldByName('ARTCODBAR').AsString, []) Then
    Begin
        ShowMessage('Este Equipo ya fue Ingresado');
        Exit;
    End;

    //VERIFICA SI EL EQUIPO ESTA PENDIENTE EN GUIAS POR INICIAL
    xSQL := ' select ARTCODBAR,NUMCABSAL '
        + ' from '+DMATI.wwEsquemaATI+'ATI_DET_SAL'
        + ' where DETESTSAL = ''I'' '
        + ' and ARTCODBAR =' + DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString;

    DMATI.cdsQry.Close;
    DMATI.cdsQry.DataRequest(xSQL);
    DMATI.cdsQry.Open;

    If DMATI.cdsQRY.RecordCount > 0 Then
    Begin
        ShowMessage('Este Equipo se encuentra en una nota en estado inicial N° '
            + DMATI.cdsQry.FieldByName('NUMCABSAL').AsString);
        Exit;
    End;

   //CREA EL LLENA LOS EQUIPOS PARA HACERLES UNA GUIA DE RECEPCION
    With DMATI.cdsQry12 Do
    Begin
        Open;
        Append;
        For I := 0 To fieldcount - 1 Do
            Fields[I].Assign(DMATI.cdsQRY33.FindField(Fields[I].FieldName));
    End;

    {dbgDetalle.DataSource := DMATI.dsQry12;
    dbgDetalle.Selected.clear;
    dbgDetalle.Selected.Add('ARTCODBAR' + #9 + '15' + #9 + 'N° INVENTARIO');
    dbgDetalle.Selected.Add('ACFSERIE' + #9 + '25' + #9 + 'SERIE');
    dbgDetalle.Selected.Add('ACFDES' + #9 + '40' + #9 + 'EQUIPO');
    dbgDetalle.Selected.Add('ESTADOID' + #9 + '10' + #9 + 'ESTADO');
    dbgDetalle.Selected.Add('RECIBENOM' + #9 + '40' + #9 + 'USUARIO');
    dbgDetalle.Selected.Add('UBICACION' + #9 + '60' + #9 + 'UBICACION');
    dbgDetalle.ApplySelected; }

End;

Procedure TFDetalleSalida.BitBtn1Click(Sender: TObject);
Begin
   //PAPRAMETROS DE COMPORTAMIENTO DE FORMULARIO
    dbeNunInv.Clear;
    dbeSerieEq.Clear;
    dbeEquipo.Clear;
    dbeModelo.Clear;
    dbeMarca.Clear;
    pnlIngresoDetalle.Visible := False;

End;

Procedure TFDetalleSalida.dbeNunInvExit(Sender: TObject);
Begin
    xSQL := 'SELECT ACF201.CODIGOBARRA ARTCODBAR,'
        + ' ACF201.ACFSERIE,'
        + ' ACF201.ACFDES,'
        + ' ACF201.ACFMODELO,'
        + ' ACF201.ACFMARCA,'
        + ' ACF201.ACFCOLOR,'
        + ' ACF201.ESTADOID,'
        + ' ACF201.RECIBENOM,'
        + ' ACF201.LOCID,'
        + ' ACF201.PISO,'
        + ' ACF201.AREA,'
        + ' ACF201.AMBCOD,'
        + ' (SELECT ACF120.LOCDES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ACF201.LOCID) || ''-'' ||'
        + ' (SELECT ACF121.PISODES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ACF201.LOCID) || ''-'' ||'
        + ' (SELECT ACF122.AREADES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ACF201.LOCID) || ''-'' ||'
        + ' (SELECT ACF123.AMBDES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ACF201.LOCID) UBICACION'
        + ' FROM '+DMATI.wwEsquemaProd+'ACF201 '
        + ' , '+DMATI.wwEsquemaProd+'ACF123 '
        + ' , '+DMATI.wwEsquemaProd+'ACF122 '
        + ' , '+DMATI.wwEsquemaProd+'ACF121 '
        + ' , '+DMATI.wwEsquemaProd+'ACF120 '
        + ' WHERE ACF120.LOCID(+) = ACF201.CIAID'
        + ' AND ACF121.LOCID(+) = ACF201.LOCID'
        + ' AND ACF121.PISO(+) = ACF201.PISO'
        + ' AND ACF122.LOCID(+) = ACF201.LOCID'
        + ' AND ACF122.PISO(+) = ACF201.PISO'
        + ' AND ACF122.AREA(+) = ACF201.AREA'
        + ' AND ACF123.LOCID(+) = ACF201.LOCID'
        + ' AND ACF123.PISO(+) = ACF201.PISO'
        + ' AND ACF123.AREA(+) = ACF201.AREA'
        + ' AND ACF123.AMBCOD(+) = ACF201.AMBCOD'
        + ' /*AND ACF201.TACFID = ''03''*/'
        + ' AND ACF201.CODIGOBARRA = ' + QuotedStr(dbeNunInv.Text)
        + ' ORDER BY TO_NUMBER(ACF201.CODIGOBARRA)';

    DMATI.cdsQRY33.Close;
    DMATI.cdsQRY33.IndexName := '';
    DMATI.cdsQRY33.DataRequest(xSQL);
    DMATI.cdsQRY33.Open;

End;

Procedure TFDetalleSalida.dblcSSGGCloseUp(Sender: TObject; LookupTable,
    FillTable: TDataSet; modified: Boolean);
Begin
    DMATI.cdsQry11.FieldByName('ssggid').AsString := DMATI.cdsQRY26A.FieldByName('ssggid').AsString;
End;

Procedure TFDetalleSalida.dblcTipoEntradaCloseUp(Sender: TObject;
    LookupTable, FillTable: TDataSet; modified: Boolean);
Begin
    DMATI.cdsQry11.FieldByName('GUIA_SALIDA_TIPOID').AsString := DMATI.cdsQRY29A.FieldByName('GUIA_SALIDA_TIPOID').AsString;
End;

Procedure TFDetalleSalida.btnGrabarCabeceraClick(Sender: TObject);
Begin

    If MessageDlg('¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
        If Length(DMATI.cdsQry11.FieldByName('observacion').AsString) = 0 Then
        Begin
            ShowMessage('Es necesario dejar una observación');
            dbmmObservacion.SetFocus;
            Exit;
        End;
        If Length(DMATI.cdsQry11.FieldByName('nrodoc').AsString) = 0 Then
        Begin
            ShowMessage('Es necesario, el numero de Documento');
            dbeNumDoc.SetFocus;
            Exit;
        End;
        If Length(DMATI.cdsQry11.FieldByName('tipdocid').AsString) = 0 Then
        Begin
            ShowMessage('Es necesario, escojer el tipo de documento');
            dblcTipoDoc.SetFocus;
            Exit;
        End;

        If Length(DMATI.cdsQry11.FieldByName('ssgg').AsString) = 0 Then
        Begin
            ShowMessage('Es necesario señalar quien trajo el Equipo');
            dblcSSGG.SetFocus;
            Exit;
        End;

        xSQL := 'SELECT NUMCABSAL '
            + ' FROM '+DMATI.wwEsquemaATI+'ATI_CAB_SAL '
            + ' WHERE NUMCABSAL =' + quotedstr(DMATI.cdsQry11.FieldByName('NUMCABSAL').AsString);

        DMATI.cdsQry.Close;
        DMATI.cdsQry.DataRequest(xSQL);
        DMATI.cdsQry.Open;

        If DMATI.cdsQry.Recordcount > 0 Then
            FCabeceraSalida.xModo := 'M';

        If FCabeceraSalida.xModo = 'A' Then
        Begin
            xSQL := 'INSERT INTO '+DMATI.wwEsquemaATI+'ATI_CAB_SAL'
                + ' (NUMCABSAL,'
                + ' NRODOC,'
                + ' FECHA,'
                + ' USERID,'
                + ' SSGGID,'
                + ' TIPDOCID,'
                + ' GUIA_SALIDA_TIPOID,'
                + ' OBSERVACION,'
                + ' CABSALEST) '
                //+ ' USERID)'
                + ' VALUES ('
                + QuotedStr(DMATI.cdsQry11.FieldByName('NUMCABSAL').AsString) + ','
                + QuotedStr(DMATI.cdsQry11.FieldByName('NRODOC').AsString) + ','
                + 'sysdate' + ','
                + QuotedStr(DMATI.cdsQry11.FieldByName('USERID').AsString) + ','
                + QuotedStr(DMATI.cdsQRY11.FieldByName('SSGGID').AsString) + ','
                + QuotedStr(DMATI.cdsQRY11.FieldByName('TIPDOCID').AsString) + ','
                + QuotedStr(DMATI.cdsQry11.FieldByName('GUIA_SALIDA_TIPOID').AsString) + ','
                + QuotedStr(DMATI.cdsQry11.FieldByName('OBSERVACION').AsString) + ','
                + QuotedStr('I') //+ ','
                //+ QuotedStr(DMATI.xResp)
                + ')';
            DMATI.cdsQry11.FieldByName('CABSALEST').AsString := 'I';
        End;
        If FCabeceraSalida.xModo = 'M' Then
        Begin
            xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_CAB_SAL '
                + ' SET NRODOC =' + QuotedStr(DMATI.cdsQry11.FieldByName('NRODOC').AsString) + ','
                + ' FECHA =' + 'SYSDATE' + ','
                + ' USERID=' + QuotedStr(DMATI.cdsQry11.FieldByName('USERID').AsString) + ','
                + ' SSGGID=' + QuotedStr(DMATI.cdsQry11.FieldByName('SSGGID').AsString) + ','
                + ' TIPDOCID=' + QuotedStr(DMATI.cdsQry11.FieldByName('TIPDOCID').AsString) + ','
                + ' GUIA_SALIDA_TIPOID=' + QuotedStr(DMATI.cdsQry11.FieldByName('GUIA_SALIDA_TIPOID').AsString) + ','
                + ' OBSERVACION=' + QuotedStr(DMATI.cdsQry11.FieldByName('OBSERVACION').AsString)
                + ' WHERE  NUMCABSAL=' + QuotedStr(DMATI.cdsQry11.FieldByName('NUMCABSAL').AsString);
        End;

        Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
        Except
            ShowMessage('No se pudo Grabar');
            exit;
        End;

    End
    Else
    Begin
         //PAPRAMETROS DE FORMULARIO
        Exit;
    End;
    FormCreate(Self);

End;

Procedure TFDetalleSalida.DesHabilitaBotones;
Begin
    btnImprimir.Enabled := False;
    btnGuardar.Enabled := False;
    btnAcepta.Enabled := False;
    btnAnular.Enabled := False;
    btnIngDetalle.Enabled := False;
    Imagen.Visible := False;
    pnlCabecera.Enabled := False;
    dbgDetalle.Enabled := False;
End;

Procedure TFDetalleSalida.HabilitaBotones;
Begin
    DesHabilitaBotones;
    //SITUACIÓN DEL INFORME TÈCNICO
    xSQL := 'SELECT CABSALEST FROM '+DMATI.wwEsquemaATI+'ATI_CAB_SAL'
        + ' WHERE NUMCABSAL=' + quotedstr(DMATI.cdsQry11.FieldByName('NUMCABSAL').AsString);
    DMATI.cdsQRY.Close;
    DMATI.cdsQRY.DataRequest(xSQL);
    DMATI.cdsQRY.Open;
    //-------------Nuevo---------------------
    If DMATI.cdsQRY.RecordCount = 0 Then
    Begin
        btnIngDetalle.Enabled := True;
        pnlCabecera.Enabled := True;
        dbgDetalle.Enabled := True;
        lbInfoEst.Font.Color := clBlue;
        lbInfoEst.Caption := 'Nuevo';
    End
    Else
        btnImprimir.Enabled := True;

    If DMATI.cdsQRY.FieldByName('CABSALEST').AsString = 'P' Then
    Begin
        lbInfoEst.Font.Color := DMATI.xFinal;
        lbInfoEst.Caption := 'Atendido';
    End;

    If DMATI.cdsQRY.FieldByName('CABSALEST').AsString = 'I' Then
    Begin
        btnGuardar.Enabled := True;
        btnAcepta.Enabled := True;
        btnAnular.Enabled := True;
        btnIngDetalle.Enabled := True;
        pnlCabecera.Enabled := True;
        dbgDetalle.Enabled := True;
        lbInfoEst.Font.Color := DMATI.xInicial;
        lbInfoEst.Caption := 'Inicial';
    End;

    If DMATI.cdsQRY.FieldByName('CABSALEST').AsString = 'A' Then
    Begin
        lbInfoEst.Caption := '';
        Imagen.Visible := True;
    End;
End;

Procedure TFDetalleSalida.dbgDetalleCellChanged(Sender: TObject);
Begin
    lbContador.Caption := 'N° de Equipos: ' + IntToStr(DMATI.cdsQry12.RecordCount);
    If DMATI.cdsQry11.RecordCount > 0 Then
        lbContador.Visible := True
    Else
        lbContador.Visible := False;
End;

Procedure TFDetalleSalida.FormClose(Sender: TObject;
    Var Action: TCloseAction);
Begin
    DMATI.cdsQry11.Close;
    DMATI.cdsQry11.IndexName := '';
    FCabeceraSalida.FormCreate(Self);
End;

Procedure TFDetalleSalida.dbeNumDocKeyPress(Sender: TObject;
    Var Key: Char);
Begin
    If Not (Key In ['0'..'9', #8, #45, #46]) Then
    Begin
        Key := #0;
    End;
End;

Procedure TFDetalleSalida.dbgDetalleKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    If (key = VK_Delete) Then
    Begin
         //
        If DMATI.cdsQRY11.FieldByName('CABSALEST').AsString = 'P' Then
        Begin
            ShowMessage('El documento ya ha sido Aceptado, no se permite Eliminar detalle');
            exit;
        End;
        If DMATI.cdsQRY11.FieldByName('CABSALEST').AsString = 'A' Then
        Begin
            ShowMessage('El documento ya ha sido Anulado, no se permite Eliminar detalle');
            exit;
        End;

        If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        Begin
            xSQL := ' delete '
                + ' from '+DMATI.wwEsquemaATI+'ATI_DET_SAL '
                + ' where NUMCABSAL =' + quotedstr(DMATI.cdsQRY11.FieldByName('NUMCABSAL').AsString)
                + '   AND ARTCODBAR= ' + quotedstr(DMATI.cdsQRY12.FieldByName('ARTCODBAR').AsString);
            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Eliminar el Equipo');
                exit;
            End;
            DMATI.cdsQry12.Delete;
        End;

    End;
End;

End.

