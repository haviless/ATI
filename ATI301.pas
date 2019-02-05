Unit ATI301;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, Mask, wwdbedit, Buttons, Wwdbigrd, Grids, Wwdbgrid,
    fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, wwdblook, ppDB, ppDBPipe,
    ppParameter, ppMemo, ppBands, ppBarCod, ppVar, ppCtrls, ppPrnabl,
    ppClass, ppStrtch, ppRegion, ppCache, ppRelatv, ppProd, ppReport, ppComm,
    ppEndUsr, DBCtrls, Wwkeycb, DB;

Type
    TFReporteUsuUbi = Class(TForm)
        pnlPie: TPanel;
        btnSalir: TfcShapeBtn;
        Label7: TLabel;
        pnlCabecera: TPanel;
        edtBuscar: TEdit;
        pnlUbicacion: TPanel;
        Label4: TLabel;
        Label13: TLabel;
        Label14: TLabel;
        dblcUbicacion: TwwDBLookupCombo;
        dblcPiso: TwwDBLookupCombo;
        dblcArea: TwwDBLookupCombo;
        dblcAmbiente: TwwDBLookupCombo;
        btnFiltrar: TButton;
        Label15: TLabel;
        dbgReporte: TwwDBGrid;
        btnRepImpreso: TfcShapeBtn;
        btnRepExcel: TfcShapeBtn;
        ppdbEntrada: TppDBPipeline;
        pprEntrada: TppReport;
        ppParameterList1: TppParameterList;
        ppdEntrada: TppDesigner;
        ppHeaderBand1: TppHeaderBand;
        ppLabel1: TppLabel;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppLabel4: TppLabel;
        pplbDetalle: TppLabel;
        ppLine1: TppLine;
        ppLine2: TppLine;
        ppLine4: TppLine;
        ppLine8: TppLine;
        ppLine9: TppLine;
        ppLine11: TppLine;
        ppLine14: TppLine;
        ppLabel17: TppLabel;
        ppLabel21: TppLabel;
        ppImage1: TppImage;
        ppDetailBand1: TppDetailBand;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppDBText3: TppDBText;
        ppdbDetalle: TppDBText;
        ppLine3: TppLine;
        ppLine5: TppLine;
        ppLine13: TppLine;
        ppLine15: TppLine;
        ppLine17: TppLine;
        ppLine19: TppLine;
        ppDBCalc1: TppDBCalc;
        ppFooterBand1: TppFooterBand;
        ppLabel30: TppLabel;
        ppLine23: TppLine;
        ppSummaryBand1: TppSummaryBand;
        pplbcabecera: TppLabel;
        ppSystemVariable1: TppSystemVariable;
        ppSystemVariable2: TppSystemVariable;
        ppLabel5: TppLabel;
        pplbDescrip: TppLabel;
        wwisBusqueda: TwwIncrementalSearch;
        lblFiltro: TLabel;
        lbBusqueda: TLabel;
        rgReporte: TRadioGroup;
        Procedure FormCreate(Sender: TObject);
        Procedure dblcUbicacionExit(Sender: TObject);
        Procedure dblcPisoExit(Sender: TObject);
        Procedure dblcAreaExit(Sender: TObject);
        Procedure btnFiltrarClick(Sender: TObject);
        Procedure btnSalirClick(Sender: TObject);
        Procedure dbgReporteTitleButtonClick(Sender: TObject;
            AFieldName: String);
        Procedure FormKeyPress(Sender: TObject; Var Key: Char);
        Procedure btnRepExcelClick(Sender: TObject);
        Procedure btnRepImpresoClick(Sender: TObject);
        Procedure FormActivate(Sender: TObject);
        Procedure rgReporteClick(Sender: TObject);
        Procedure edtBuscarExit(Sender: TObject);
        Procedure wwisBusquedaKeyPress(Sender: TObject; Var Key: Char);
        Procedure dblcUbicacionCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure dblcPisoCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure dblcAreaCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure dblcPisoChange(Sender: TObject);
        Procedure dblcAreaChange(Sender: TObject);
        Procedure dblcUbicacionChange(Sender: TObject);
    Private
      { Private declarations }
        xSQL: String;
        xFiltro: String;
        xCadena, xCompleta: String;
        xResultado: String;
    Public
      { Public declarations }
    End;

Var
    FReporteUsuUbi: TFReporteUsuUbi;

Implementation

Uses ATIDM1, ATI300, Math;

{$R *.dfm}

Procedure TFReporteUsuUbi.FormCreate(Sender: TObject);
Begin
    xSQL := ' select ARTICULO.ARTCODBAR, ARTICULO.TRABID, ARTICULO.ACFSERIE, ARTICULO.ACFDES, ARTICULO.ACFMODELO, '
          + '        ARTICULO.ACFMARCA, ARTICULO.ACFCOLOR, RRHH.TRABNOMT RECIBENOM, ARTICULO.LOCID, ARTICULO.PISO,'
          + '        ARTICULO.AREA, ARTICULO.AMBCOD, '
          + '        LOCALIZACION.LOCDES || ''-'' || PISO.PISODES || ''-'' || AREA.AREADES || ''-'' ||AMBIENTE.AMBDES UBICACION '
          + '   from '+DMATI.wwEsquemaATI+'ATI_SOP_STOCK ARTICULO, '
                      +DMATI.wwEsquemaProd+'ACF123 AMBIENTE, '
                      +DMATI.wwEsquemaProd+'ACF122 AREA,'
                      +DMATI.wwEsquemaProd+'ACF121 PISO,'
                      +DMATI.wwEsquemaProd+'ACF120 LOCALIZACION,'
                      +DMATI.wwEsquemaProd+'RRHH201 RRHH'
          + ' where LOCALIZACION.LOCID(+) = ARTICULO.LOCID '
          + '   and PISO.LOCID(+) = ARTICULO.LOCID '
          + '   and PISO.PISO(+) = ARTICULO.PISO'
          + '   and AREA.LOCID(+) = ARTICULO.LOCID'
          + '   and AREA.PISO(+) = ARTICULO.PISO '
          + '   and AREA.AREA(+) = ARTICULO.AREA '
          + '   and AMBIENTE.LOCID(+) = ARTICULO.LOCID '
          + '   and AMBIENTE.PISO(+) = ARTICULO.PISO '
          + '   and AMBIENTE.AREA(+) = ARTICULO.AREA '
          + '   and AMBIENTE.AMBCOD(+) = ARTICULO.AMBCOD'
          + '   and RRHH.TRABID(+) = ARTICULO.TRABID'
          + '   and RRHH.CIAID = ''01'' '
          + '   and RRHH.TIPPLAID = ''ES'' '
          + ' order by ARTICULO.ARTCODBAR, ARTICULO.RECIBENOM, ARTICULO.ACFDES ';
    DMATI.cdsQRY50.Close;
    DMATI.cdsQRY50.DataRequest(xSQL);
    DMATI.cdsQRY50.Open;
    dbgReporte.DataSource := DMATI.dsQRY50;
    dbgReporte.Selected.clear;
    dbgReporte.Selected.Add('artcodbar' + #9 + '15' + #9 + 'CÓD INVENTARIO');
    dbgReporte.Selected.Add('acfserie' + #9 + '25' + #9 + 'SERIE ACTIVO TI');
    dbgReporte.Selected.Add('acfdes' + #9 + '40' + #9 + 'ACTIVO TI');
    dbgReporte.Selected.Add('estadoid' + #9 + '10' + #9 + 'ESTADO');
    dbgReporte.Selected.Add('RECIBENOM' + #9 + '40' + #9 + 'USUARIO');
    dbgReporte.Selected.Add('UBICACION' + #9 + '60' + #9 + 'UBICACION');
    dbgReporte.ApplySelected;

   //CARGA UBICACION
    xSQL := ' select locid, locdes from '+DMATI.wwEsquemaProd+'ACF120 ';
    DMATI.cdsQry28.Close;
    DMATI.cdsQry28.DataRequest(xSQL);
    DMATI.cdsQry28.Open;
    dblcUbicacion.LookupTable := DMATI.cdsQry28;
    dblcUbicacion.LookupField := 'locdes';

End;

Procedure TFReporteUsuUbi.dblcUbicacionExit(Sender: TObject);
Begin
    If rgReporte.Focused Then exit;

    If Length(dblcUbicacion.Text) = 0 Then
    Begin
        ShowMessage('Escoja una Ubicación');
        dblcUbicacion.SetFocus;
        Exit;
    End;
   //CARGA PISO
    xSQL := ' SELECT LOCID, PISO, PISODES FROM '+DMATI.wwEsquemaProd+'ACF121 '
        + ' WHERE LOCID = ' + QuotedStr(DMATI.cdsQry28.fieldByName('locid').AsString);

    DMATI.cdsQry29.Close;
    DMATI.cdsQry29.DataRequest(xSQL);
    DMATI.cdsQry29.Open;

    dblcPiso.LookupTable := DMATI.cdsQry29;
    dblcPiso.LookupField := 'PISODES';
End;

Procedure TFReporteUsuUbi.dblcPisoExit(Sender: TObject);
Begin
    If rgReporte.Focused Then exit;
    If dblcUbicacion.Focused Then exit;

    If Length(dblcPiso.Text) = 0 Then
    Begin
        ShowMessage('Escoja un Piso');
        dblcPiso.SetFocus;
        Exit;
    End;

   //CARGA AREA
    xSQL := ' SELECT LOCID, PISO, AREA, AREADES FROM '+DMATI.wwEsquemaPROD+'ACF122 '
        + ' WHERE LOCID = ' + QuotedStr(DMATI.cdsQry29.fieldByName('LOCID').AsString)
        + ' AND    PISO = ' + QuotedStr(DMATI.cdsQry29.fieldByName('PISO').AsString);

    DMATI.cdsQry30.Close;
    DMATI.cdsQry30.DataRequest(xSQL);
    DMATI.cdsQry30.Open;

    dblcArea.LookupTable := DMATI.cdsQry30;
    dblcArea.LookupField := 'areades';

End;

Procedure TFReporteUsuUbi.dblcAreaExit(Sender: TObject);
Begin
    If rgReporte.Focused Then exit;
    If dblcUbicacion.Focused Then exit;
    If dblcPiso.Focused Then exit;

    If Length(dblcArea.Text) = 0 Then
    Begin
        ShowMessage('Escoja un Area');
        dblcArea.SetFocus;
        Exit;
    End;

   //CARGA AMBIENTE
    xSQL := ' SELECT LOCID, PISO, AREA, AREADES, AMBCOD, AMBDES, CIAID FROM '+DMATI.wwEsquemaPROD+'ACF123 '
        + ' WHERE  LOCID = ' + QuotedStr(DMATI.cdsQry30.fieldByName('locid').AsString)
        + ' AND    PISO  = ' + QuotedStr(DMATI.cdsQry30.fieldByName('piso').AsString)
        + ' AND    AREA  = ' + QuotedStr(DMATI.cdsQry30.fieldByName('area').AsString);

    DMATI.cdsQry31.Close;
    DMATI.cdsQry31.DataRequest(xSQL);
    DMATI.cdsQry31.Open;

    dblcAmbiente.LookupTable := DMATI.cdsQry31;
    dblcAmbiente.LookupField := 'ambdes';
End;

Procedure TFReporteUsuUbi.btnFiltrarClick(Sender: TObject);
Var
    xCadenaUsu: String;
Begin
    If rgReporte.ItemIndex = 0 Then
        DMATI.cdsQRY50.IndexFieldNames := 'RECIBENOM'
    Else
        DMATI.cdsQRY50.IndexFieldNames := 'UBICACION';

    xCadenaUsu := '';
    If Length(edtBuscar.Text) <> 0 Then
    Begin
        xCadenaUsu := 'RECIBENOM=' + quotedstr(edtBuscar.Text + '*');
         //CAPTURA LA INFORMACION DEL LUGAR
        xResultado := xCadenaUsu;
    End;

    xCadena := '';
    If Length(dblcUbicacion.Text) <> 0 Then
        xCadena := xCadena + dblcUbicacion.Text + '-';
    If Length(dblcPiso.Text) <> 0 Then
        xCadena := xCadena + dblcPiso.Text + '-';
    If Length(dblcArea.Text) <> 0 Then
        xCadena := xCadena + dblcArea.Text + '-';
    If Length(dblcAmbiente.Text) <> 0 Then
        xCadena := xCadena + dblcAmbiente.Text + '-';
    If length(xCadena) > 0 Then
    Begin
        xCadena := Copy(xCadena, 1, Length(xCadena) - 1);
         //CAPTURA LA INFORMACION DEL LUGAR
        xResultado := xCadena;
        xCadena := 'UBICACION=' + QuotedStr(xCadena + '*');
        If length(xCadenaUsu) > 0 Then
            xCadena := xCadenaUsu + ' and ' + xCadena;
    End
    Else
        xCadena := xCadenaUsu;

    DMATI.cdsQRY50.Filter := '';
    DMATI.cdsQRY50.Filtered := False;
    DMATI.cdsQRY50.Filter := xCadena;
    DMATI.cdsQRY50.Filtered := True;
End;

Procedure TFReporteUsuUbi.btnSalirClick(Sender: TObject);
Begin
    Close;

End;
Procedure TFReporteUsuUbi.dbgReporteTitleButtonClick(Sender: TObject;
    AFieldName: String);
Var
    xTitLabel: String;
Begin
    xFiltro := AFieldName;
    dbgReporte.SetActiveField(AFieldName);
    DMATI.cdsQRY50.AddIndex(AFieldName, AFieldName, [ixDescending, ixCaseInsensitive], '', '', 0);
    DMATI.cdsQRY50.IndexFieldNames := AFieldName;
    xTitLabel := dbgReporte.SelectedField.DisplayLabel;
    xTitLabel[Pos('~', xTitLabel)] := ' ';
    lbBusqueda.Caption := xTitLabel;
    wwisBusqueda.SetFocus;
End;

Procedure TFReporteUsuUbi.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
    If key = #13 Then
    Begin

    End;
End;

Procedure TFReporteUsuUbi.btnRepExcelClick(Sender: TObject);
Begin
    DMATI.ExportaGridExcel(dbgReporte, 'Reporte');
End;

Procedure TFReporteUsuUbi.btnRepImpresoClick(Sender: TObject);
Begin
    ppdbEntrada.DataSource := DMATI.dsQry50;
   {ppdEntrada.Show;}
    If rgReporte.ItemIndex = -1 Then
    Begin
        ShowMessage('Definir el tipo de Reporte');
        Exit;
    End;

    If rgReporte.ItemIndex = 0 Then
    Begin
        If (xFiltro = 'RECIBENOM') And (Length(edtBuscar.Text) = 0) Then
        Begin
            ShowMessage('Defina Usuario');
            edtBuscar.SetFocus;
            Exit;
        End;
        DMATI.cdsQRY50.Filter := '';
        DMATI.cdsQRY50.Filtered := False;
        DMATI.cdsQRY50.Filter := 'RECIBENOM=' + quotedstr(DMATI.cdsQRY50.FieldByName('RECIBENOM').AsString + '*');
        ;
        DMATI.cdsQRY50.Filtered := True;

        pplbDescrip.Caption := DMATI.cdsQRY50.FieldByName('RECIBENOM').AsString;
        ppdbDetalle.DataField := 'UBICACION';
        pplbcabecera.Caption := 'USUARIO:';
        pplbDetalle.Caption := 'UBICACION';
    End
    Else
    Begin
        If Length(xCadena) = 0 Then
        Begin
            ShowMessage('Defina Ubicación');
            Exit;
        End;

        pplbDescrip.Caption := xResultado;
        ppdbDetalle.DataField := 'RECIBENOM';
        pplbcabecera.Caption := 'UBICACION:';
        pplbDetalle.Caption := 'USUARIO';
    End;

    pprEntrada.Print;
    pprEntrada.Stop;
End;

Procedure TFReporteUsuUbi.FormActivate(Sender: TObject);
Begin
    dbgReporteTitleButtonClick(Sender, 'ARTCODBAR');
End;

Procedure TFReporteUsuUbi.rgReporteClick(Sender: TObject);
Begin
    If rgReporte.ItemIndex = 0 Then
    Begin
        lblFiltro.Enabled := True;
        edtBuscar.Enabled := True;
        edtBuscar.SetFocus;
    End
    Else
        dblcUbicacion.SetFocus;
End;

Procedure TFReporteUsuUbi.edtBuscarExit(Sender: TObject);
Begin
    edtBuscar.Text := uppercase(edtBuscar.Text);
End;

Procedure TFReporteUsuUbi.wwisBusquedaKeyPress(Sender: TObject;
    Var Key: Char);
Begin
    If Key = #13 Then
        dbgReporte.SetFocus;
End;

Procedure TFReporteUsuUbi.dblcUbicacionCloseUp(Sender: TObject;
    LookupTable, FillTable: TDataSet; modified: Boolean);
Begin
   //LIMPIA LISTA CONCATENADA
    dblcPiso.Clear;
    dblcArea.Clear;
    dblcAmbiente.Clear;
End;

Procedure TFReporteUsuUbi.dblcPisoCloseUp(Sender: TObject; LookupTable,
    FillTable: TDataSet; modified: Boolean);
Begin
   //LIMPIA LISTA CONCATENADA
    dblcArea.Clear;
    dblcAmbiente.Clear;
End;

Procedure TFReporteUsuUbi.dblcAreaCloseUp(Sender: TObject; LookupTable,
    FillTable: TDataSet; modified: Boolean);
Begin
   //LIMPIA LISTA CONCATENADA
    dblcAmbiente.Clear;
End;
Procedure TFReporteUsuUbi.dblcUbicacionChange(Sender: TObject);
Begin
    If length(dblcUbicacion.Text) = 0 Then
    Begin
         //LIMPIA LISTA CONCATENADA
        dblcPiso.Clear;
        dblcArea.Clear;
        dblcAmbiente.Clear;
    End;
End;

Procedure TFReporteUsuUbi.dblcPisoChange(Sender: TObject);
Begin
    If length(dblcPiso.Text) = 0 Then
    Begin
         //LIMPIA LISTA CONCATENADA
        dblcArea.Clear;
        dblcAmbiente.Clear;
    End;
End;

Procedure TFReporteUsuUbi.dblcAreaChange(Sender: TObject);
Begin
    If length(dblcArea.Text) = 0 Then
    Begin
         //LIMPIA LISTA CONCATENADA
        dblcAmbiente.Clear;
    End;
End;

End.

