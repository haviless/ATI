Unit ATI130;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FMTBcd, DB, SqlExpr, Grids, Wwdbigrd, Wwdbgrid,
   Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, Mask,
   wwdbedit, ppBands, ppCache, ppClass, ppEndUsr, ppProd, ppReport, ppComm,
   ppRelatv, ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppParameter,
   fcButton, fcImgBtn, fcShapeBtn, wwdblook, DBCtrls, ppMemo, ppBarCod,
   ppStrtch, ppRegion, Wwkeycb;

Type
   TFCabeceraIngreso = Class(TForm)
      Label1: TLabel;
      dbgCabeceraIngreso: TwwDBGrid;
      btnCabecera: TwwIButton;
      pnlPie: TPanel;
      pnlBusca: TPanel;
      lblBusca2: TLabel;
      isBusca: TwwIncrementalSearch;
      Panel1: TPanel;
      lbNumEqui: TLabel;
      SEstVis: TShape;
      Label8: TLabel;
      SEstIni: TShape;
      Label2: TLabel;
      SEstAnu: TShape;
      Label3: TLabel;
      Procedure FormCreate(Sender: TObject);
      Procedure dbgCabeceraIngresoDblClick(Sender: TObject);
      Procedure btnCabeceraClick(Sender: TObject);
      Procedure dbgCabeceraIngresoCalcCellColors(Sender: TObject;
         Field: TField; State: TGridDrawState; Highlight: Boolean;
         AFont: TFont; ABrush: TBrush);
      Procedure dbgCabeceraIngresoKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgCabeceraIngresoTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure FormShow(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);

   Private
      xSQL: String;
      xFiltro: String;

   Public
      { Public declarations }
      xModo: String; // I=Insercion M=Modificacion
   End;

Var
   FCabeceraIngreso: TFCabeceraIngreso;

Implementation

Uses ATIDM1, ATI131;

{$R *.dfm}

Procedure TFCabeceraIngreso.FormCreate(Sender: TObject);
Begin
   xSQL := ' SELECT NUMCABING,'
         + '        NRODOC,'
         + '        FECHA,'
         + '        USERID,'
         + '        ATI_SSGG.SSGGID,'
         + '        ATI_SSGG.NOMBRE SSGG,'
         + '        TIPDOCID,'
         + '        ATI_TIP_ENT.GUIA_ENTRADA_TIPOID,'
         + '        ATI_TIP_ENT.NOMBRE TIPO_ENTRADA,'
         + '        OBSERVACION,'
         + '        CABINGEST'
         + ' FROM ' + DMATI.wwEsquemaATI + 'ATI_CAB_ING, '
         + DMATI.wwEsquemaATI + 'ATI_SSGG, '
         + DMATI.wwEsquemaATI + 'ATI_TIP_ENT'
         + ' WHERE ATI_CAB_ING.SSGGID =ATI_SSGG.SSGGID'
         + '   AND ATI_CAB_ING.GUIA_ENTRADA_TIPOID = ATI_TIP_ENT.GUIA_ENTRADA_TIPOID(+) '
         + '   AND NUMCABING <> ''0'''
         + ' ORDER BY TO_NUMBER(NUMCABING)';
   DMATI.cdsQry3.Close;
   DMATI.cdsQry3.IndexName := '';
   DMATI.cdsQry3.DataRequest(xSQL);
   DMATI.cdsQry3.Open;
   dbgCabeceraIngreso.DataSource := DMATI.dsQry3;

   dbgCabeceraIngreso.Selected.Clear;
   dbgCabeceraIngreso.Selected.Add('NUMCABING' + #9 + '15' + #9 + 'COD ENTRADA');
   dbgCabeceraIngreso.Selected.Add('NRODOC' + #9 + '20' + #9 + 'COD REQUERIMIENTO');
   dbgCabeceraIngreso.Selected.Add('TIPDOCID' + #9 + '20' + #9 + 'TIPO DOCUMENTO');
   dbgCabeceraIngreso.Selected.Add('FECHA' + #9 + '22' + #9 + 'FECHA');
   dbgCabeceraIngreso.Selected.Add('SSGG' + #9 + '25' + #9 + 'SSGG');
   dbgCabeceraIngreso.Selected.Add('USERID' + #9 + '20' + #9 + 'TECNICO');
   dbgCabeceraIngreso.ApplySelected;

   lbNumEqui.Caption := 'Total de Notas de Entrada: ' + IntToStr(DMATI.cdsQry3.RecordCount);

End;

Procedure TFCabeceraIngreso.dbgCabeceraIngresoDblClick(Sender: TObject);
Begin
   xModo := 'M';
   If DMATI.cdsQry3.RecordCount = 0 Then
   Begin
      ShowMessage('No hay Registros para Editar');
      Exit;
   End;

   FDetalleEntrada := TFDetalleEntrada.Create(Self);

   Try
      FDetalleEntrada.ShowModal;
   Finally
      FDetalleEntrada.Free;
   End;
End;

Procedure TFCabeceraIngreso.btnCabeceraClick(Sender: TObject);
Begin
   xModo := 'A';

   DMATI.cdsQry3.Append;
   DMATI.cdsQry3.FieldByName('NUMCABING').AsString := DMATI.Correlativo(DMATI.wwEsquemaATI + 'ATI_CAB_ING', 'NUMCABING');
   DMATI.cdsQry3.FieldByName('FECHA').AsDateTime := DMATI.sFecha;

 // CARGA TECNICO ENCARGADO
   DMATI.cdsQry3.FieldByName('USERID').AsString := DMATI.wUsuario;
   FDetalleEntrada := TFDetalleEntrada.Create(Self);

   Try
      FDetalleEntrada.ShowModal;
   Finally
      FDetalleEntrada.Free;
   End;
End;

Procedure TFCabeceraIngreso.dbgCabeceraIngresoCalcCellColors(
   Sender: TObject; Field: TField; State: TGridDrawState;
   Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin
    //ESTADO INICIAL
   If DMATI.cdsQry3.FieldByName('cabingest').AsString = 'I' Then
      ABrush.Color := DMATI.xInicial;
    //ESTADO ANULADO
   If DMATI.cdsQry3.FieldByName('cabingest').AsString = 'A' Then
      ABrush.Color := DMATI.xAnulado;
    //ESTADO VISADO
   If DMATI.cdsQry3.FieldByName('cabingest').AsString = 'P' Then
      ABrush.Color := DMATI.xFinal;

   SEstIni.Brush.Color := DMATI.xInicial;
   SEstAnu.Brush.Color := DMATI.xAnulado;
   SEstVis.Brush.Color := DMATI.xFinal;
End;

Procedure TFCabeceraIngreso.dbgCabeceraIngresoKeyDown(Sender: TObject;
   Var Key: Word; Shift: TShiftState);
Begin
   If key = VK_RETURN Then
   Begin
      dbgCabeceraIngresoDblClick(Self);
   End;
End;

Procedure TFCabeceraIngreso.dbgCabeceraIngresoTitleButtonClick(
   Sender: TObject; AFieldName: String);
Var
   xTitLabel: String;
Begin
   xFiltro := AFieldName;
   pnlBusca.Visible := True;
   isBusca.SearchField := AFieldName;
   dbgCabeceraIngreso.SetActiveField(AFieldName);
   DMATI.cdsQry3.AddIndex(AFieldName, AFieldName, [ixDescending, ixCaseInsensitive], '', '', 0);
   DMATI.cdsQry3.IndexName := AFieldName;
   xTitLabel := dbgCabeceraIngreso.SelectedField.DisplayLabel;
   xTitLabel[Pos('~', xTitLabel)] := ' ';
   lblBusca2.caption := xTitLabel;
   isBusca.DataSource := DMATI.dsQRY3;
   isBusca.SetFocus;
End;

Procedure TFCabeceraIngreso.FormShow(Sender: TObject);
Begin
   dbgCabeceraIngresoTitleButtonClick(Self, 'NUMCABING');
End;

Procedure TFCabeceraIngreso.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DMATI.cdsQRY3.Close;
   DMATI.cdsQRY3.IndexName := '';
End;

End.

