Unit ATI131;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FMTBcd, DB, SqlExpr, Grids, Wwdbigrd, Wwdbgrid,
   Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, Mask,
   wwdbedit, ppBands, ppCache, ppClass, ppEndUsr, ppProd, ppReport, ppComm,
   ppRelatv, ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppParameter,
   fcButton, fcImgBtn, fcShapeBtn, wwdblook, DBCtrls, ppBarCod, ppMemo,
   ppStrtch, ppRegion;

Type
   TFDetalleEntrada = Class(TForm)
      Label1: TLabel;
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
      dbgDetalle: TwwDBGrid;
      btnIngDetalle: TwwIButton;
      pnlPie: TPanel;
      lbContador: TLabel;
      btnAnular: TfcShapeBtn;
      btnImprimir: TfcShapeBtn;
      btnAcepta: TfcShapeBtn;
      btnGuardar: TfcShapeBtn;
      btnTerminar: TfcShapeBtn;
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
      btnSalir: TBitBtn;
      btnIngreso: TBitBtn;
      ppdbRecibo: TppDBPipeline;
      pprRecibo: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLine13: TppLine;
      ppLine15: TppLine;
      ppLine16: TppLine;
      ppLine17: TppLine;
      ppLine18: TppLine;
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
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppLine23: TppLine;
      ppLine24: TppLine;
      ppLine25: TppLine;
      ppLine26: TppLine;
      ppLine27: TppLine;
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
      ppDBPipeline1: TppDBPipeline;
      ppReport1: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel18: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppLine6: TppLine;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppDBText1: TppDBText;
      ppLabel19: TppLabel;
      ppDBText2: TppDBText;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppImage2: TppImage;
      ppLine10: TppLine;
      ppLabel33: TppLabel;
      ppDBText3: TppDBText;
      ppDetailBand1: TppDetailBand;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppLine11: TppLine;
      ppLine12: TppLine;
      ppLine37: TppLine;
      ppLine38: TppLine;
      ppLine39: TppLine;
      ppLine40: TppLine;
      ppLine41: TppLine;
      ppLine42: TppLine;
      ppLine43: TppLine;
      ppDBCalc2: TppDBCalc;
      ppLine44: TppLine;
      ppDBBarCode1: TppDBBarCode;
      ppFooterBand2: TppFooterBand;
      ppLabel34: TppLabel;
      ppLine45: TppLine;
      ppSummaryBand1: TppSummaryBand;
      ppLine46: TppLine;
      ppDBText20: TppDBText;
      ppLine47: TppLine;
      ppDBText22: TppDBText;
      ppLine48: TppLine;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppParameterList1: TppParameterList;
      ppDesigner1: TppDesigner;
      ppLabel47: TppLabel;
      ppRegion11: TppRegion;
      ppDBMemo6: TppDBMemo;
      Imagen: TImage;
      lbInfoEst: TLabel;
      ppLine14: TppLine;
      ppLabel8: TppLabel;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppLabel9: TppLabel;
      ppDBText23: TppDBText;
      Procedure FormCreate(Sender: TObject);
      Procedure btnAnularClick(Sender: TObject);
      Procedure dbeNumDocKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnGrabarCabeceraClick(Sender: TObject);
      Procedure btnIngDetalleClick(Sender: TObject);
      Procedure btnGuardarClick(Sender: TObject);
      Procedure btnAceptaClick(Sender: TObject);
      Procedure btnImprimirClick(Sender: TObject);
      Procedure btnSalirClick(Sender: TObject);
      Procedure dbgDetalleCellChanged(Sender: TObject);
      Procedure dbgCabeceraIngresoCalcCellColors(Sender: TObject;
         Field: TField; State: TGridDrawState; Highlight: Boolean;
         AFont: TFont; ABrush: TBrush);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeNunInvExit(Sender: TObject);
      Procedure DesHabilitaBotones;
      Procedure HabilitaBotones;
      Procedure dblcSSGGCloseUp(Sender: TObject; LookupTable,
         FillTable: TDataSet; modified: Boolean);
      Procedure dblcTipoEntradaCloseUp(Sender: TObject; LookupTable,
         FillTable: TDataSet; modified: Boolean);
      Procedure btnTerminarClick(Sender: TObject);
      Procedure btnIngresoClick(Sender: TObject);
      Procedure dbgDetalleKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);

   Private
      xSQL: String;
   Public

   End;

Var
   FDetalleEntrada: TFDetalleEntrada;

Implementation

Uses ATIDM1, ATI130;

{$R *.dfm}

Procedure TFDetalleEntrada.FormCreate(Sender: TObject);
Begin
   xSQL := ' SELECT DETALLE.ARTCODBAR,'
         + '        DETALLE.ACFSERIE,'
         + '        DETALLE.ACFDES,'
         + '        DETALLE.ACFMODELO,'
         + '        DETALLE.ACFMARCA,'
         + '        ARTICULO.ACFCOLOR, '
         + '        DETALLE.ESTADOID,'
         + '        ARTICULO.RECIBENOM,'
         + '        ARTICULO.LOCID,'
         + '        ARTICULO.PISO,'
         + '        ARTICULO.AREA,'
         + '        ARTICULO.AMBCOD,'
         + '        LOCALIZACION.LOCDES ||''-''||PISO.PISODES ||''-''||AREA.AREADES||''-''||AMBIENTE.AMBDES UBICACION, '
         + '        (select max(NUMINF) '
         + '         from ' + DMATI.wwEsquemaATI + 'ATI_INFORME '
         + '         where ARTCODBAR = DETALLE.ARTCODBAR) INFORME, '
         + '        (select max(NUMINF) '
         + '         from ' + DMATI.wwEsquemaATI + 'ATI_INFORME '
         + '         where ARTCODBAR = DETALLE.ARTCODBAR) INFORME,'
         + '        case when (select ESTADO from ' + DMATI.wwEsquemaATI + 'ATI_INFORME where NUMINF = (select max(NUMINF) from ' + DMATI.wwEsquemaATI + 'ATI_INFORME where ARTCODBAR = DETALLE.ARTCODBAR)) =''V'' then ''VISADO'' '
         + '             when (select ESTADO from ' + DMATI.wwEsquemaATI + 'ATI_INFORME where NUMINF = (select max(NUMINF) from ' + DMATI.wwEsquemaATI + 'ATI_INFORME where ARTCODBAR = DETALLE.ARTCODBAR)) =''A'' then ''ANULADO'' '
         + '             when (select ESTADO from ' + DMATI.wwEsquemaATI + 'ATI_INFORME where NUMINF = (select max(NUMINF) from ' + DMATI.wwEsquemaATI + 'ATI_INFORME where ARTCODBAR = DETALLE.ARTCODBAR)) =''P'' then ''ATENDIDO'''
         + '        end ESTADO '
         + ' FROM ' + DMATI.wwEsquemaATI + 'ATI_DET_ING DETALLE , '
                    + DMATI.wwEsquemaProd + 'ACF201 ARTICULO,'
                    + DMATI.wwEsquemaProd + 'ACF123 AMBIENTE,'
                    + DMATI.wwEsquemaProd + 'ACF122 AREA,'
                    + DMATI.wwEsquemaProd + 'ACF121 PISO,'
                    + DMATI.wwEsquemaProd + 'ACF120 LOCALIZACION'
         + ' WHERE LOCALIZACION.LOCID(+) = ARTICULO.LOCID '
         + '   AND PISO.LOCID(+) = ARTICULO.LOCID '
         + '   AND PISO.PISO(+) = ARTICULO.PISO'
         + '   AND AREA.LOCID(+) = ARTICULO.LOCID '
         + '   AND AREA.PISO(+) = ARTICULO.PISO'
         + '   AND AREA.AREA(+) = ARTICULO.AREA'
         + '   AND AMBIENTE.LOCID(+) = ARTICULO.LOCID '
         + '   AND AMBIENTE.PISO(+) = ARTICULO.PISO'
         + '   AND AMBIENTE.AREA(+) = ARTICULO.AREA'
         + '   AND AMBIENTE.AMBCOD(+) = ARTICULO.AMBCOD'
         + '   AND ARTICULO.CODIGOBARRA = DETALLE.ARTCODBAR'
         + '   AND NUMCABING =' + QuotedStr(DMATI.cdsQry3.FieldByName('NUMCABING').AsString);
   DMATI.cdsQry4.Close;
   DMATI.cdsQry4.DataRequest(xSQL);
   DMATI.cdsQry4.Open;
   dbgDetalle.DataSource := DMATI.dsQry4;

   dbgDetalle.Selected.Clear;
   dbgDetalle.Selected.Add('ARTCODBAR' + #9 + '15' + #9 + 'CÓD INVENTARIO');
   dbgDetalle.Selected.Add('ACFSERIE' + #9 + '20' + #9 + 'SERIE DE ACTIVO TI');
   dbgDetalle.Selected.Add('ACFDES' + #9 + '20' + #9 + 'ACTIVO DE TI');
   dbgDetalle.Selected.Add('INFORME' + #9 + '12' + #9 + 'INF ATENCIÓN');
   dbgDetalle.Selected.Add('ESTADO' + #9 + '15' + #9 + 'ESTADO INF ATEN');
   dbgDetalle.Selected.Add('ACFMARCA' + #9 + '10' + #9 + 'MARCA');
   dbgDetalle.Selected.Add('ACFMODELO' + #9 + '10' + #9 + 'MODELO');
   dbgDetalle.Selected.Add('ESTADOID' + #9 + '5' + #9 + 'ESTADO');
   dbgDetalle.ApplySelected;
   DMATI.cdsQry4.First;

   //CARGA EL COMBO DE REPONSABLES DE SSGG
   xSQL := 'select NOMBRE, CLAVE, DESCRIPCION, SSGGID '
          +'from ' + DMATI.wwEsquemaATI + 'ATI_SSGG '
          +'order by NOMBRE';
   DMATI.cdsQRY26A.Close;
   DMATI.cdsQRY26A.DataRequest(xSQL);
   DMATI.cdsQRY26A.Open;
   dblcSSGG.LookupTable := DMATI.cdsQRY26A;
   dblcSSGG.Selected.Add('nombre' + #9 + '15' + #9 + 'SSGG');
   dblcSSGG.LookupField := 'nombre';

   //CARGA EL COMBO DE TIPO DE GUIA DE ENTRADA
   xSQL := 'select GUIA_ENTRADA_TIPOID, NOMBRE, DESCRIPCION '
          +'from ' + DMATI.wwEsquemaATI + 'ATI_TIP_ENT '
          +'order by NOMBRE';
   DMATI.cdsQRY28A.Close;
   DMATI.cdsQRY28A.DataRequest(xSQL);
   DMATI.cdsQRY28A.Open;
   dblcTipoEntrada.LookupTable := DMATI.cdsQRY28A;
   dblcTipoEntrada.Selected.Add('NOMBRE' + #9 + '15' + #9 + 'TIPO ENTRADA');
   dblcTipoEntrada.LookupField := 'NOMBRE';

   xSQL := 'select TIPDOCNOM, TIPODOCID '
          +'from ' + DMATI.wwEsquemaATI + 'ATI_TIP_DOC '
          +'order by TIPDOCNOM';
   DMATI.cdsQry21.Close;
   DMATI.cdsQry21.DataRequest(xSQL);
   DMATI.cdsQry21.open;
   dblcTipoDoc.LookupTable := DMATI.cdsQry21;
   dblcTipoDoc.Selected.Add('TIPDOCNOM' + #9 + '15' + #9 + 'TIPO DOCUMENTO°');
   dblcTipoDoc.LookupField := 'TIPDOCNOM';

   While Not DMATI.cdsQry33.Eof Do
   Begin
      DMATI.cdsQry33.delete;
   End;

   HabilitaBotones;
End;

Procedure TFDetalleEntrada.btnAnularClick(Sender: TObject);
Var
   I: Integer;
Begin

   If MessageDlg('¿Anular Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
        //GRABA EN CASO NO SE HAYA ECHO ANTES.
      btnGuardarClick(Self);
      DMATI.cdsQRY4.first;
      For I := 0 To DMATI.cdsQRY4.RecordCount - 1 Do
      Begin
               //ACTUALIZA EL ESTADO DE LA CABECERA DE ENTRADA
         xSQL := ' UPDATE ' + DMATI.wwEsquemaATI + 'ATI_CAB_ING '
            + ' SET CABINGEST= ''A'' ' + ','
            + ' NRODOC= ''ANULADO'''
            + ' WHERE NUMCABING =' + QuotedStr(DMATI.cdsQRY3.FieldByName('NUMCABING').AsString);
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Actualicar el Equipo');
            exit;
         End;

               //ACTUALIZA EL ESTADO DEL DETALLE DE ENTRADA
         xSQL := ' UPDATE ' + DMATI.wwEsquemaATI + 'ATI_DET_ING '
            + ' SET DETESTENT= ''A'' '
            + ' WHERE ARTCODBAR = ' + DMATI.cdsQRY4.FieldByName('ARTCODBAR').AsString
            + ' AND NUMCABING =' + DMATI.cdsQRY3.FieldByName('NUMCABING').AsString;

         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Actualicar el Equipo');
            exit;
         End;

               //ACTUALIZA EL ESTADO DEL STOK DE SOPORTE
         xSQL := 'UPDATE ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK SET STOCKENT = ''S'' '
            + ' WHERE ARTCODBAR =' + QuotedStr(DMATI.cdsQRY4.FieldByName('ARTCODBAR').AsString);

         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Actualicar el Equipo');
            exit;
         End;

         DMATI.cdsQRY4.Next;

      End
   End
   Else
   Begin
      Exit;
   End;

   //PAPRAMETROS DE FORMULARIO
   FormCreate(Self);
End;

Procedure TFDetalleEntrada.dbeNumDocKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Not (Key In ['0'..'9', #8, #45, #46]) Then
   Begin
      Key := #0;
   End;
End;

Procedure TFDetalleEntrada.btnGrabarCabeceraClick(Sender: TObject);
Begin
   If MessageDlg('¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      If Length(DMATI.cdsQry3.FieldByName('OBSERVACION').AsString) = 0 Then
      Begin
         ShowMessage('Es necesario dejar una observación');
         dbmmObservacion.SetFocus;
         Exit;
      End;
      If Length(DMATI.cdsQry3.FieldByName('NRODOC').AsString) = 0 Then
      Begin
         ShowMessage('Es necesario, el número de Documento');
         dbeNumDoc.SetFocus;
         Exit;
      End;
      If Length(DMATI.cdsQry3.FieldByName('TIPDOCID').AsString) = 0 Then
      Begin
         ShowMessage('Es necesario, escojer el tipo de documento');
         dblcTipoDoc.SetFocus;
         Exit;
      End;

      If Length(DMATI.cdsQry3.FieldByName('SSGG').AsString) = 0 Then
      Begin
         ShowMessage('Es necesario señalar al responsable de SSGG');
         dblcSSGG.SetFocus;
         Exit;
      End;

      xSQL := 'select NUMCABING, NRODOC '
         + ' from ' + DMATI.wwEsquemaATI + 'ATI_CAB_ING '
         + ' where  NUMCABING=' + quotedstr(DMATI.cdsQry3.FieldByName('NUMCABING').AsString);

      DMATI.cdsQry.Close;
      DMATI.cdsQry.DataRequest(xSQL);
      DMATI.cdsQry.Open;

      If DMATI.cdsQry.Recordcount > 0 Then
         FCabeceraIngreso.xModo := 'M';

      If FCabeceraIngreso.xModo = 'A' Then
      Begin
         xSQL := 'insert into ' + DMATI.wwEsquemaATI + 'ATI_CAB_ING(NUMCABING,NRODOC,FECHA,USERID,'
            + ' SSGGID,TIPDOCID,GUIA_ENTRADA_TIPOID,'
            + ' OBSERVACION, CABINGEST)'
            + ' values ('
            + QuotedStr(DMATI.cdsQry3.FieldByName('NUMCABING').AsString) + ','
            + QuotedStr(DMATI.cdsQry3.FieldByName('NRODOC').AsString) + ','
            + 'sysdate' + ','
            + QuotedStr(DMATI.cdsQry3.FieldByName('USERID').AsString) + ','
            + QuotedStr(DMATI.cdsQry3.FieldByName('SSGGID').AsString) + ','
            + QuotedStr(DMATI.cdsQry3.FieldByName('TIPDOCID').AsString) + ','
            + QuotedStr(DMATI.cdsQry3.FieldByName('GUIA_ENTRADA_TIPOID').AsString) + ','
            + QuotedStr(DMATI.cdsQry3.FieldByName('OBSERVACION').AsString) + ','
            + QuotedStr('I') + ')';
         DMATI.cdsQry3.FieldByName('CABINGEST').AsString := 'I';
      End;

      If FCabeceraIngreso.xModo = 'M' Then
      Begin
         xSQL := ' UPDATE ' + DMATI.wwEsquemaATI + 'ATI_CAB_ING '
            + ' SET NRODOC =' + QuotedStr(DMATI.cdsQry3.FieldByName('NRODOC').AsString) + ','
            + ' FECHA =' + 'SYSDATE' + ','
            + ' USERID=' + QuotedStr(DMATI.cdsQry3.FieldByName('USERID').AsString) + ','
            + ' SSGGID=' + QuotedStr(DMATI.cdsQry3.FieldByName('SSGGID').AsString) + ','
            + ' TIPDOCID=' + QuotedStr(DMATI.cdsQry3.FieldByName('TIPDOCID').AsString) + ','
            + ' GUIA_ENTRADA_TIPOID=' + QuotedStr(DMATI.cdsQry3.FieldByName('GUIA_ENTRADA_TIPOID').AsString) + ','
            + ' OBSERVACION=' + QuotedStr(DMATI.cdsQry3.FieldByName('OBSERVACION').AsString)
            + ' WHERE  NUMCABING=' + QuotedStr(DMATI.cdsQry3.FieldByName('NUMCABING').AsString);
      End;
      Try
         DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
      Except
         ShowMessage('No se pudo Grabar');
         exit;
      End;

         //PAPRAMETROS DE COMPORTAMIENTO DE FORMULARIO

   End
   Else
   Begin
      Exit;
   End;

   FormCreate(Self);

End;

Procedure TFDetalleEntrada.btnIngDetalleClick(Sender: TObject);
Begin
   //PAPRAMETROS DE COMPORTAMIENTO DE FORMULARIO
   btnGuardar.Enabled := True;
   pnlIngresoDetalle.Visible := True;
   dbeNunInv.SetFocus;
End;

Procedure TFDetalleEntrada.btnGuardarClick(Sender: TObject);
Var
   I: Integer;
Begin

   DMATI.cdsQRY4.first;
   For I := 0 To DMATI.cdsQRY4.RecordCount - 1 Do
   Begin
      xSQL := ' SELECT ARTCODBAR '
         + ' FROM ' + DMATI.wwEsquemaATI + 'ATI_DET_ING'
         + ' WHERE DETESTENT = ''I'' '
         + ' AND ARTCODBAR =' + DMATI.cdsQRY4.FieldByName('ARTCODBAR').AsString;

      DMATI.cdsQry.Close;
      DMATI.cdsQry.DataRequest(xSQL);
      DMATI.cdsQry.Open;

      If DMATI.cdsQry.RecordCount = 0 Then
      Begin
                     //INGRESA DETALLE DE INGRESO DE EQUIPOS
         xSQL := 'SELECT NVL(MAX(TO_NUMBER(NUMDETING)),0)+1 NUMERO FROM ' + DMATI.wwEsquemaATI + 'ATI_DET_ING';
         DMATI.cdsQry.Close;
         DMATI.cdsQry.DataRequest(xSQL);
         DMATI.cdsQry.Open;

                     //INGRESA DETALLEDE ENTRADAS DE EQUIPO
         xSQL := ' insert into ' + DMATI.wwEsquemaATI + 'ATI_DET_ING'
            + ' (NUMDETING,'
            + ' NUMCABING,'
            + ' ARTCODBAR,'
            + ' FECHA,'
            + ' ACFSERIE,'
            + ' ACFDES,'
            + ' ACFMODELO,'
            + ' ACFMARCA,'
            + ' ESTADOID,'
            + ' USERID,'
            + ' SSGGID,'
            + ' DETESTENT)'
            + ' VALUES( '
            + quotedstr(DMATI.cdsQry.FieldByName('NUMERO').AsString) + ','
            + quotedstr(DMATI.cdsQRY3.FieldByName('NUMCABING').AsString) + ','
            + quotedstr(DMATI.cdsQry4.FieldByName('ARTCODBAR').AsString) + ','
            + 'SYSDATE' + ','
            + quotedstr(DMATI.cdsQry4.FieldByName('ACFSERIE').AsString) + ', '
            + quotedstr(DMATI.cdsQry4.FieldByName('ACFDES').AsString) + ','
            + quotedstr(DMATI.cdsQry4.FieldByName('ACFMODELO').AsString) + ','
            + quotedstr(DMATI.cdsQry4.FieldByName('ACFMARCA').AsString) + ','
            + quotedstr(DMATI.cdsQry4.FieldByName('ESTADOID').AsString) + ','
            + quotedstr(DMATI.cdsQRY3.FieldByName('USERID').AsString) + ','
            + quotedstr(DMATI.cdsQRY3.FieldByName('SSGGID').AsString) + ','
            + quotedstr('I') + ')';

         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Grabar Detalle');
            exit;
         End;
      End;

      DMATI.cdsQRY4.Next;

   End;

   //PAPRAMETROS DE COMPORTAMIENTO DE FORMULARIO
   FormCreate(Self);

End;

Procedure TFDetalleEntrada.btnAceptaClick(Sender: TObject);
Var
   I: Integer;
Begin
   If MessageDlg('¿Grabar Registro, una vez Grabado no se podra anular? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
        //GRABA EN CASO NO SE HAYA ECHO ANTES.
      btnGuardarClick(Self);
      DMATI.cdsQRY4.first;
      For I := 0 To DMATI.cdsQRY4.RecordCount - 1 Do
      Begin

               //ACTUALIZA EL ESTADO DE LA CABECERA DE ENTRADA
         xSQL := ' UPDATE ' + DMATI.wwEsquemaATI + 'ATI_CAB_ING '
            + ' SET CABINGEST= ''P'' '
            + ' WHERE  NUMCABING =' + QuotedStr(DMATI.cdsQRY3.FieldByName('NUMCABING').AsString);
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Actualicar el Equipo');
            exit;
         End;
               //*********************************************
               //ACTUALIZA EL ESTADO DEL DETALLE DE ENTRADA
         xSQL := ' UPDATE ' + DMATI.wwEsquemaATI + 'ATI_DET_ING '
            + ' SET DETESTENT= ''P'' '
            + ' WHERE ARTCODBAR = ' + DMATI.cdsQRY4.FieldByName('ARTCODBAR').AsString
            + ' AND NUMCABING =' + DMATI.cdsQRY3.FieldByName('NUMCABING').AsString;
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Actualicar el Equipo');
            exit;
         End;
               //*********************************************

               //VERIFICA SI YA FUE INGRESADO EN STOCK
         xSQL := 'SELECT ARTCODBAR FROM ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK '
            + ' WHERE ARTCODBAR =' + quotedstr(DMATI.cdsQRY4.FieldByName('ARTCODBAR').AsString);
         DMATI.cdsQry.Close;
         DMATI.cdsQry.DataRequest(xSQL);
         DMATI.cdsQry.Open;

            //VERIFICA SI YA REGRESO DE GARANTIA Y LO ACTUALIZA
         xSQL := 'UPDATE ' + DMATI.wwEsquemaATI + 'ATI_ACT_GAR '
            + ' SET FECHAFIN = SYSDATE,'
            + ' TECNICOFIN = ' + QuotedStr(DMATI.xResp) + ','
            + ' ESTADO = ''FINAL'' '
            + ' WHERE ARTCODBAR = ' + quotedstr(DMATI.cdsQRY4.FieldByName('ARTCODBAR').AsString)
            + ' AND ESTADO =''INICIAL'' ';
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Actualicar el Equipo');
            exit;
         End;

         If DMATI.cdsQry.RecordCount = 0 Then
         Begin
                     //INGRESA DETALLE DE INGRESO DE EQUIPOS
            xSQL := 'SELECT MAX(TO_NUMBER(NVL(SOPSTOCKID,''0''))+1) NUMERO FROM ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK';
            DMATI.cdsQry.Close;
            DMATI.cdsQry.DataRequest(xSQL);
            DMATI.cdsQry.Open;

                     //INSERCION DEL STOCK DE SOPORTE
            xSQL := ' INSERT INTO ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK  '
               + ' (SOPSTOCKID,'
               + ' ARTCODBAR,'
               + ' ACFSERIE,'
               + ' ACFDES,'
               + ' ACFMARCA,'
               + ' ACFMODELO,'
               + ' ACFCOLOR,'
               + ' LOCID,'
               + ' PISO,'
               + ' AREA,'
               + ' AMBCOD,'
               + ' STOCKENT,'
               + ' RECIBENOM, '
               + ' ESTADO, '
               + ' TRABID,'
               + ' FECHA, '
               + ' FECHAFINAL,'
               + ' NRODOC,'
               + ' STICKER,'
               + ' NUMINF,'
               + ' SSGG, '
               + ' OBSERVACION) '
               + ' VALUES( '
               + QuotedStr(DMATI.cdsQRY.FieldByName('NUMERO').AsString) + ','
               + QuotedStr(DMATI.cdsQRY4.FieldByName('ARTCODBAR').AsString) + ','
               + QuotedStr(DMATI.cdsQRY4.FieldByName('ACFSERIE').AsString) + ','
               + QuotedStr(DMATI.cdsQRY4.FieldByName('ACFDES').AsString) + ','
               + QuotedStr(DMATI.cdsQRY4.FieldByName('ACFMARCA').AsString) + ','
               + QuotedStr(DMATI.cdsQRY4.FieldByName('ACFMODELO').AsString) + ','
               + QuotedStr(DMATI.cdsQRY4.FieldByName('ACFCOLOR').AsString) + ','
               + QuotedStr(DMATI.cdsQRY4.FieldByName('LOCID').AsString) + ','
               + QuotedStr(DMATI.cdsQRY4.FieldByName('PISO').ASString) + ','
               + QuotedStr(DMATI.cdsQRY4.FieldByName('AREA').ASString) + ','
               + QuotedStr(DMATI.cdsQRY4.FieldByName('AMBCOD').AsString) + ','
               + QuotedStr('E') + ','
               + QuotedStr(DMATI.cdsQRY4.FieldByName('RECIBENOM').AsString) + ','
               + quotedstr(DMATI.cdsQRY4.FieldByName('ESTADOID').AsString) + ','
               + quotedstr('NO DEFINIDO') + ','
               + 'SYSDATE' + ','
               + 'SYSDATE' + ','
               + QuotedStr(DMATI.cdsQRY3.FieldByName('NRODOC').AsString) + ','
               + QuotedStr('NULL') + ','
               + QuotedStr('NULL') + ','
               + quotedstr(DMATI.cdsQRY26A.FieldByName('NOMBRE').AsString) + ','
               + quotedstr('') + ')';

            Try
               DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
               ShowMessage('No se pudo Actualicar el Equipo');
               exit;
            End;

         End
         Else
         Begin

            xSQL := 'UPDATE ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK SET STOCKENT = ''E'' , FECHAFINAL = SYSDATE , '
               + ' NRODOC =' + QuotedStr(DMATI.cdsQRY3.FieldByName('NRODOC').AsString) + ','
               + ' SSGG =' + QuotedStr(DMATI.cdsQRY3.FieldByName('SSGG').AsString)
               + ' WHERE ARTCODBAR =' + QuotedStr(DMATI.cdsQRY4.FieldByName('ARTCODBAR').AsString);

            Try
               DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
               ShowMessage('No se pudo Actualicar el Equipo');
               exit;
            End;
         End;

         DMATI.cdsQRY4.Next;

      End
   End
   Else
   Begin
      Exit;
   End;

   //PAPRAMETROS DE COMPORTAMIENTO DE FORMULARIO
   FormCreate(Self);

End;

Procedure TFDetalleEntrada.btnImprimirClick(Sender: TObject);

Begin
   xSQL := ' SELECT ATI_DET_ING.NUMDETING,'
      + ' ATI_DET_ING.NUMCABING,'
      + ' ATI_CAB_ING.NRODOC, '
      + ' ATI_CAB_ING.FECHA, '
      + ' ATI_CAB_ING.TIPDOCID,'
      + ' ATI_CAB_ING.OBSERVACION,'
      + ' ATI_DET_ING.ARTCODBAR,'
      + ' ATI_DET_ING.FECHA,'
      + ' ATI_DET_ING.ACFSERIE,'
      + ' ATI_DET_ING.ACFDES,'
      + ' ATI_DET_ING.ACFMODELO,'
      + ' ATI_DET_ING.ACFMARCA,'
      + ' ATI_DET_ING.ESTADOID,'
      + ' ATI_DET_ING.USERID,'
      + ' ATI_SSGG.NOMBRE,'
      + ' (SELECT MAX(numinf) FROM ' + DMATI.wwEsquemaATI + 'ATI_INFORME WHERE ARTCODBAR = ATI_DET_ING.ARTCODBAR) INFORME,'
      + ' CASE WHEN (SELECT ESTADO FROM ' + DMATI.wwEsquemaATI + 'ATI_INFORME WHERE numinf = (SELECT MAX(numinf) FROM ' + DMATI.wwEsquemaATI + 'ATI_INFORME WHERE ARTCODBAR = ATI_DET_ING.ARTCODBAR)) =''V'' THEN ''VISADO'' '
      + ' WHEN (SELECT ESTADO FROM ' + DMATI.wwEsquemaATI + 'ATI_INFORME WHERE numinf = (SELECT MAX(numinf) FROM ' + DMATI.wwEsquemaATI + 'ATI_INFORME WHERE ARTCODBAR = ATI_DET_ING.ARTCODBAR)) =''A'' THEN ''ANULADO'' '
      + ' WHEN (SELECT ESTADO FROM ' + DMATI.wwEsquemaATI + 'ATI_INFORME WHERE numinf = (SELECT MAX(numinf) FROM ' + DMATI.wwEsquemaATI + 'ATI_INFORME WHERE ARTCODBAR = ATI_DET_ING.ARTCODBAR)) =''P'' THEN ''ATENDIDO'''
      + ' END ESTADO '
      + ' FROM ' + DMATI.wwEsquemaATI + 'ATI_DET_ING, ' + DMATI.wwEsquemaATI + 'ATI_SSGG, ' + DMATI.wwEsquemaATI + 'ATI_CAB_ING '
      + ' WHERE ATI_DET_ING.SSGGID = ATI_SSGG.SSGGID(+)'
      + ' AND ATI_DET_ING.NUMCABING = ATI_CAB_ING.NUMCABING'
      + ' AND ATI_DET_ING.NUMCABING =' + QuotedStr(DMATI.cdsQry3.FieldByName('NUMCABING').AsString);

   DMATI.cdsQry5.Close;
   DMATI.cdsQry5.DataRequest(xSQL);
   DMATI.cdsQry5.Open;
   ppdbRecibo.DataSource := DMATI.dsQry5;

   {xRuta := 'C:\SOLEXES\Reportes';
   pprRecibo.template.FileName := xRuta + '\Recibo.rtm';
   pprRecibo.Template.LoadFromFile;}

   {ppdRecibo.Show;}

   pprRecibo.Print;
   pprRecibo.Stop;

End;

Procedure TFDetalleEntrada.btnSalirClick(Sender: TObject);
Begin
   //PAPRAMETROS DE COMPORTAMIENTO DE FORMULARIO
   dbeNunInv.Clear;
   dbeSerieEq.Clear;
   dbeEquipo.Clear;
   dbeModelo.Clear;
   dbeMarca.Clear;
   pnlIngresoDetalle.Visible := False;

End;

Procedure TFDetalleEntrada.dbgDetalleCellChanged(Sender: TObject);
Begin
   lbContador.Caption := 'N° de Equipos: ' + IntToStr(DMATI.cdsQry4.RecordCount);
   If DMATI.cdsQry4.RecordCount > 0 Then
      lbContador.Visible := True
   Else
      lbContador.Visible := False;
End;

Procedure TFDetalleEntrada.dbgCabeceraIngresoCalcCellColors(
   Sender: TObject; Field: TField; State: TGridDrawState;
   Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin
   If DMATI.cdsQry3.FieldByName('cabingest').AsString = 'A' Then
      ABrush.Color := clGray;
End;

Procedure TFDetalleEntrada.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFDetalleEntrada.dbeNunInvExit(Sender: TObject);
Begin
   xSQL := 'select ACF201.CODIGOBARRA ARTCODBAR, ' //ACF201.ARTCODBAR,'
      + ' ACF201.ACFSERIE,'
      + ' ACF201.ACFDES,'
      + ' ACF201.ACFMODELO,'
      + ' ACF201.ACFMARCA,'
      + ' NVL(ACF201.ACFCOLOR,''NULL'') ACFCOLOR,'
      + ' ACF201.ESTADOID,'
      + ' ACF201.RECIBENOM,'
      + ' ACF201.LOCID,'
      + ' ACF201.PISO,'
      + ' ACF201.AREA,'
      + ' ACF201.AMBCOD,'
      + ' (select ACF120.LOCDES from ' + DMATI.wwEsquemaProd + 'ACF120 where ACF120.LOCID = ACF201.LOCID) || ''-'' ||'
      + ' (select ACF121.PISODES from ' + DMATI.wwEsquemaProd + 'ACF120 where ACF120.LOCID = ACF201.LOCID) || ''-'' ||'
      + ' (select ACF122.AREADES from ' + DMATI.wwEsquemaProd + 'ACF120 where ACF120.LOCID = ACF201.LOCID) || ''-'' ||'
      + ' (select ACF123.AMBDES from ' + DMATI.wwEsquemaProd + 'ACF120 where ACF120.LOCID = ACF201.LOCID) UBICACION'
      + ' FROM ' + DMATI.wwEsquemaProd + 'ACF201 '
      + ' , ' + DMATI.wwEsquemaProd + 'ACF123 '
      + ' , ' + DMATI.wwEsquemaProd + 'ACF122 '
      + ' , ' + DMATI.wwEsquemaProd + 'ACF121 '
      + ' , ' + DMATI.wwEsquemaProd + 'ACF120 '
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
      + ' order by to_number(ACF201.CODIGOBARRA)';

   DMATI.cdsQRY33.Close;
   DMATI.cdsQRY33.DataRequest(xSQL);
   DMATI.cdsQRY33.Open;
End;

Procedure TFDetalleEntrada.HabilitaBotones;
Begin
   DesHabilitaBotones;
    //SITUACIÓN DEL INFORME TÈCNICO
   xSQL := 'SELECT CABINGEST FROM ' + DMATI.wwEsquemaATI + 'ATI_CAB_ING '
      + ' WHERE NUMCABING=' + quotedstr(DMATI.cdsQry3.FieldByName('NUMCABING').AsString);
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

   If DMATI.cdsQRY.FieldByName('CABINGEST').AsString = 'P' Then
   Begin
      btnImprimir.Enabled := True;
      lbInfoEst.Font.Color := DMATI.xFinal;
      lbInfoEst.Caption := 'Atendido';
   End;

   If DMATI.cdsQRY.FieldByName('CABINGEST').AsString = 'I' Then
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

   If DMATI.cdsQRY.FieldByName('CABINGEST').AsString = 'A' Then
   Begin
      Imagen.Visible := True;
      lbInfoEst.Caption := '';
   End;
End;

Procedure TFDetalleEntrada.DesHabilitaBotones;
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

Procedure TFDetalleEntrada.dblcSSGGCloseUp(Sender: TObject; LookupTable,
   FillTable: TDataSet; modified: Boolean);
Begin
   DMATI.cdsQry3.FieldByName('SSGGID').AsString := DMATI.cdsQry26A.FieldByName('SSGGID').AsString;
End;

Procedure TFDetalleEntrada.dblcTipoEntradaCloseUp(Sender: TObject;
   LookupTable, FillTable: TDataSet; modified: Boolean);
Begin
   DMATI.cdsQry3.FieldByName('GUIA_ENTRADA_TIPOID').AsString := DMATI.cdsQry28A.FieldByName('GUIA_ENTRADA_TIPOID').AsString;
End;

Procedure TFDetalleEntrada.btnTerminarClick(Sender: TObject);
Begin

   Close;
End;

Procedure TFDetalleEntrada.btnIngresoClick(Sender: TObject);
Var
   I: Integer;
Begin

   If DMATI.cdsQRY33.Active = False Then Exit;
   dbeNunInv.Clear;
   dbeNunInv.SetFocus;
   //COMPRUEBA SI EL EQUIPO EXISTE.
   xSQL := ' SELECT ACF201.CODIGOBARRA ARTCODBAR FROM ' + DMATI.wwEsquemaProd + 'ACF201 '
      + ' WHERE  CODIGOBARRA = ' + QuotedStr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString);

   DMATI.cdsQRY.Close;
   DMATI.cdsQRY.DataRequest(xSQL);
   DMATI.cdsQRY.Open;

   If DMATI.cdsQRY.RecordCount = 0 Then
   Begin
      ShowMessage('Equipo no existe.');
      Exit;
   End;

    //DETERMINTA SI TIENE UN INFORME NO RESUELTO
   xSQL := ' SELECT ARTCODBAR from ' + DMATI.wwEsquemaATI + 'ATI_INFORME '
      + ' WHERE  ARTCODBAR = ' + QuotedStr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString)
      + ' AND NVL(ATI_INFORME.ESTADO,''X'') NOT IN (''X'',''V'',''A'',''P'')';

   DMATI.cdsQRY.Close;
   DMATI.cdsQRY.DataRequest(xSQL);
   DMATI.cdsQRY.Open;

   If DMATI.cdsQRY.RecordCount > 0 Then
   Begin
      ShowMessage('Informe de Atención no resuelto, no se puede Ingresar Activo hasta definir Situación.');
      Exit;
   End;
    //--------------------------------------------------------------------------------------
   //FIJA SI EL EQUIPO YA FUE INGRESADO.
   xSQL := ' select ARTCODBAR from ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK '
      + ' where  ARTCODBAR = ' + QuotedStr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString)
      + ' AND STOCKENT= ''E''';

   DMATI.cdsQRY.Close;
   DMATI.cdsQRY.DataRequest(xSQL);
   DMATI.cdsQRY.Open;

   If DMATI.cdsQRY.RecordCount > 0 Then
   Begin
      ShowMessage('Este Equipo no puede ingresar, Todavia esta dentro de Soporte.');
      Exit;
   End;

   If DMATI.cdsQRY4.Locate('ARTCODBAR', DMATI.cdsQry33.FieldByName('ARTCODBAR').AsString, []) Then
   Begin
      ShowMessage('Este Equipo ya fue Ingresado');
      Exit;
   End;
   //VERIFICA SI EL EQUIPO ESTA PENDIENTE EN GUIAS POR INICIAL
   xSQL := ' select ARTCODBAR,NUMCABING '
      + ' from ' + DMATI.wwEsquemaATI + 'ATI_DET_ING'
      + ' where DETESTENT = ''I'' '
      + ' and ARTCODBAR =' + DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString;

   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;

   If DMATI.cdsQRY.RecordCount > 0 Then
   Begin
      ShowMessage('Este Equipo se encuentra en una nota en estado inicial N° '
         + DMATI.cdsQry.FieldByName('NUMCABING').AsString);
      Exit;
   End;

   If Not DMATI.cdsEntrada.Active Then
   Begin
      DMATI.cdsEntrada.FieldDefs.Assign(DMATI.cdsQRY33.FieldDefs);
      DMATI.cdsEntrada.CreateDataSet;
   End;

   With DMATI.cdsQry4 Do
   Begin
      Open;
      Append;
      For I := 0 To fieldcount - 1 Do
      Begin
         Fields[I].Assign(DMATI.cdsQRY33.FindField(Fields[I].FieldName));
      End;
   End;

End;

Procedure TFDetalleEntrada.dbgDetalleKeyDown(Sender: TObject;
   Var Key: Word; Shift: TShiftState);
Begin
   If (key = VK_Delete) Then
   Begin
         //
      If DMATI.cdsQRY3.FieldByName('CABINGEST').AsString = 'P' Then
      Begin
         ShowMessage('El documento ya ha sido Aceptado, no se permite Eliminar detalle');
         exit;
      End;
      If DMATI.cdsQRY3.FieldByName('CABINGEST').AsString = 'A' Then
      Begin
         ShowMessage('El documento ya ha sido Anulado, no se permite Eliminar detalle');
         exit;
      End;

      If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         xSQL := ' delete '
            + ' from ' + DMATI.wwEsquemaATI + 'ATI_DET_ING '
            + ' where NUMCABING =' + quotedstr(DMATI.cdsQRY3.FieldByName('NUMCABING').AsString)
            + '   AND ARTCODBAR= ' + quotedstr(DMATI.cdsQRY4.FieldByName('ARTCODBAR').AsString);
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Eliminar el Equipo');
            exit;
         End;
         DMATI.cdsQry4.Delete;
      End;

   End;
End;

Procedure TFDetalleEntrada.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin

   {If DMATI.cdsQry4.Active Then
      DMATI.cdsQry4.first;

   While Not DMATI.cdsQry4.Eof Do
      Begin
         DMATI.cdsQry4.Delete;
      End;}
   DMATI.cdsQry4.Close;
   FCabeceraIngreso.FormCreate(Self);
End;
//METODO PARA FIJAR EL VALOR DE MODO DE INGRESO

End.

End.

