Unit ATI300;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, FMTBcd, Buttons, DB,
   SqlExpr, ExtCtrls, ppEndUsr, ppProd, ppClass, ppReport, ppComm, ppRelatv,
   ppDB, ppDBPipe, ppBands, ppRichTx, ppStrtch, ppMemo, ppVar, ppCtrls,
   ppPrnabl, ppCache, ppParameter, ppCTMain, ppRegion, ppModule,
   daDataModule, wwdblook, Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn,
   Wwdbigrd, Wwdbgrid, ppBarCod, Wwkeycb;

Type
   TFStock = Class(TForm)
      Label7: TLabel;
      pnlPie: TPanel;
      pnlBusca: TPanel;
      lblBusca2: TLabel;
      isBusca: TwwIncrementalSearch;
      dbgStock: TwwDBGrid;
      btnActualizar: TwwIButton;
      ppdEntrada: TppDesigner;
      pprEntrada: TppReport;
      ppParameterList1: TppParameterList;
      ppdbEntrada: TppDBPipeline;
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
      ppLabel22: TppLabel;
      ppSystemVariable3: TppSystemVariable;
      ppLabel26: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppLabel27: TppLabel;
      ppLabel17: TppLabel;
      ppLabel21: TppLabel;
      ppImage1: TppImage;
      ppLine22: TppLine;
      ppLabel12: TppLabel;
      ppDBText12: TppDBText;
      ppLabel1: TppLabel;
      ppDBText1: TppDBText;
      ppLabel2: TppLabel;
      ppDBText2: TppDBText;
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
      ppDBText3: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppLabel30: TppLabel;
      ppLine33: TppLine;
      ppSummaryBand2: TppSummaryBand;
      ppLine35: TppLine;
      ppDBText11: TppDBText;
      ppLine36: TppLine;
      ppLabel13: TppLabel;
      ppLabel25: TppLabel;
      ppLabel14: TppLabel;
      ppLabel47: TppLabel;
      ppRegion11: TppRegion;
      ppDBMemo6: TppDBMemo;
      Panel1: TPanel;
      lbNumEqui: TLabel;
      z2bbtnAcepta: TfcShapeBtn;
      btnFichaTec: TfcShapeBtn;
      btInformeTecnico: TfcShapeBtn;
      rbActFlat: TRadioGroup;

      Procedure FormCreate(Sender: TObject);
      Procedure dbgStockDblClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure btInformeTecnicoClick(Sender: TObject);
      Procedure dbgStockKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure btnActualizarClick(Sender: TObject);
      Procedure dbgStockCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure dbgStockTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure dbgStockKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnFichaTecClick(Sender: TObject);
      Procedure rbActFlatClick(Sender: TObject);
      Procedure z2bbtnAceptaClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);

   Private
      xSQL: String;
      xFiltro: String;
      Procedure cargarGrid;
      { Private declarations }
   Public

   End;

Var
   FStock: TFStock;

Implementation

Uses ATIDM1, ATI110, ATI311, ATI530, ATI210, ATI320;

{$R *.dfm}

Procedure TFStock.cargarGrid();
Begin
   xSQL := ' Select B.ARTCODBAR, '
         + '        A.ACFSERIE, A.ACFDES, A.ACFMODELO, A.ACFMARCA, A.ACFCOLOR, A.ESTADOID, A.RECIBENOM, A.UBICACION, '
         + '        B.TRABID, B.NRODOC, B.STICKER, B.NUMINF, B.LOCID, B.PISO, B.AREA, B.AMBCOD, B.LOCDES, B.PISODES, B.AREADES,'
         + '        B.AMBDES, B.S_RECIBENOM, B.S_UBICACION, B.STOCKENT, B.FECHAFINAL FECHA, B.OBSERVACION '
         + '   from (Select ARTICULO.CODIGOBARRA ARTCODBAR, ARTICULO.ACFSERIE, ARTICULO.ACFDES, ARTICULO.ACFMODELO,'
                   + '      ARTICULO.ACFMARCA, ARTICULO.ACFCOLOR, ARTICULO.ESTADOID, ARTICULO.RECIBENOM, '
                   + '      LOCALIZACION.LOCDES || ''-'' || PISO.PISODES || ''-'' ||AREA.areades || ''-'' || AMBIENTE.ambdes UBICACION '
                   + ' from ' + DMATI.wwEsquemaProd + 'ACF201 ARTICULO, '
                              + DMATI.wwEsquemaProd + 'ACF123 AMBIENTE, '
                              + DMATI.wwEsquemaProd + 'ACF122 AREA, '
                              + DMATI.wwEsquemaProd + 'ACF121 PISO,'
                              + DMATI.wwEsquemaProd + 'ACF120 LOCALIZACION '
                   + ' where LOCALIZACION.locid(+) = ARTICULO.LOCID '
                   + '   and PISO.LOCID(+) = ARTICULO.LOCID '
                   + '   and PISO.PISO(+) = ARTICULO.PISO '
                   + '   and AREA.LOCID(+) = ARTICULO.LOCID '
                   + '   and AREA.PISO(+) = ARTICULO.PISO '
                   + '   and AREA.AREA(+) = ARTICULO.AREA '
                   + '   and AMBIENTE.LOCID(+) = ARTICULO.LOCID '
                   + '   and AMBIENTE.PISO(+) = ARTICULO.PISO '
                   + '   and AMBIENTE.AREA(+) = ARTICULO.AREA '
                   + '   and AMBIENTE.AMBCOD(+) = ARTICULO.AMBCOD'
                   + ' /*AND ARTICULO.TACFID=''03''*/) A, '
                 + '(Select ARTICULO.ARTCODBAR, ARTICULO.LOCID, LOCALIZACION.LOCDES, ARTICULO.PISO, PISO.PISODES, ARTICULO.AREA,'
                   + '      AREA.AREADES, ARTICULO.OBSERVACION, ARTICULO.STOCKENT, ARTICULO.AMBCOD, AMBIENTE.AMBDES, ARTICULO.TRABID, '
                   + '      ARTICULO.NRODOC, ARTICULO.STICKER, ARTICULO.NUMINF, ARTICULO.RECIBENOM S_RECIBENOM, ARTICULO.FECHAFINAL, '
                   + '      LOCALIZACION.LOCDES || ''-'' || PISO.PISODES || ''-'' || AREA.AREADES || ''-'' || AMBIENTE.AMBDES S_UBICACION '
                   + ' from ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK ARTICULO,'
                              + DMATI.wwEsquemaProd + 'ACF123 AMBIENTE,'
                              + DMATI.wwEsquemaProd + 'ACF122 AREA,'
                              + DMATI.wwEsquemaProd + 'ACF121 PISO, '
                              + DMATI.wwEsquemaProd + 'ACF120 LOCALIZACION '
                   + 'where LOCALIZACION.locid(+) = ARTICULO.LOCID '
                   + '  AND PISO.LOCID(+) = ARTICULO.LOCID'
                   + '  AND PISO.PISO(+) = ARTICULO.PISO'
                   + '  AND AREA.LOCID(+) = ARTICULO.LOCID '
                   + '  AND AREA.PISO(+) = ARTICULO.PISO '
                   + '  AND AREA.AREA(+) = ARTICULO.AREA '
                   + '  AND AMBIENTE.locid(+) = ARTICULO.locid'
                   + '  AND AMBIENTE.piso(+) = ARTICULO.piso '
                   + '  AND AMBIENTE.area(+) = ARTICULO.area '
                   + '  AND AMBIENTE.ambcod(+) = ARTICULO.ambcod ) B '
          + ' where A.ARTCODBAR = B.ARTCODBAR';
   Case rbActFlat.ItemIndex Of
      0: xSQL := xSQL + ' AND B.STOCKENT=''E'' ORDER BY A.ARTCODBAR ';
      1: xSQL := xSQL + ' AND B.STOCKENT=''T'' ORDER BY A.ARTCODBAR ';
      3: xSQL := xSQL + ' ORDER BY A.ARTCODBAR ';
   End;

   screen.cursor := crhourglass;

   DMATI.cdsQRY33.Close;
   DMATI.cdsQRY33.IndexName := '';
   DMATI.cdsQRY33.DataRequest(xSQL);
   DMATI.cdsQRY33.Open;
   screen.cursor := crdefault;
   dbgStock.DataSource := DMATI.dsQRY33;

   dbgStock.Selected.clear;
   dbgStock.Selected.Add('ARTCODBAR' + #9 + '15' + #9 + 'CÓD INVENTARIO');
   dbgStock.Selected.Add('ACFSERIE' + #9 + '20' + #9 + 'CÓD ACTIVO TI');
   dbgStock.Selected.Add('ACFDES' + #9 + '45' + #9 + 'ACTIVO TI');
   dbgStock.Selected.Add('ESTADO' + #9 + '25' + #9 + 'ESTDO');
   dbgStock.Selected.Add('FECHA' + #9 + '22' + #9 + 'FECHA');
   dbgStock.Selected.Add('S_RECIBENOM' + #9 + '45' + #9 + 'USUARIO POR SOPORTE');
   dbgStock.Selected.Add('S_UBICACION' + #9 + '40' + #9 + 'UBICACIÓN POR SOPORTE');
   dbgStock.Selected.Add('RECIBENOM' + #9 + '45' + #9 + 'USUARIO POR SSGG');
   dbgStock.Selected.Add('UBICACION' + #9 + '40' + #9 + 'UBICACIÓN POR SSGG');
   dbgStock.ApplySelected;

   //ABRE EL CDSREPOCITORIO

   lbNumEqui.Caption := 'Total de Activos de TI: ' + IntToStr(DMATI.cdsQRY33.RecordCount);
End;

Procedure TFStock.FormCreate(Sender: TObject);
Begin
   cargarGrid();
End;

Procedure TFStock.dbgStockDblClick(Sender: TObject);
Begin
   FInvParteEquipo := TFInvParteEquipo.Create(Self);
   Try
      FInvParteEquipo.ShowModal;
   Finally
      FInvParteEquipo.Free;
   End;
End;

Procedure TFStock.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DMATI.cdsQRY33.Close;
   DMATI.cdsQRY33.IndexName := '';
End;

Procedure TFStock.btInformeTecnicoClick(Sender: TObject);
Begin
   If DMATI.cdsQRY33.FieldByName('STOCKENT').AsString = 'T' Then
      Exit
   Else
   Begin
      FCabInfoTecnico := TFCabInfoTecnico.Create(Self);
      Try
         FCabInfoTecnico.ShowModal;
      Finally
         FCabInfoTecnico.Free;
      End;
   End;
End;

Procedure TFStock.dbgStockKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If key = VK_RETURN Then
   Begin
      dbgStockDblClick(Self);
   End;
End;

Procedure TFStock.btnActualizarClick(Sender: TObject);
Begin
   FRegEquipo := TFRegEquipo.Create(Self);
   Try
      If (FRegEquipo.ShowModal = mrOk) Then
      Begin
         cargarGrid();
      End;
   Finally
      FRegEquipo.Free;
   End;
End;

Procedure TFStock.dbgStockCalcCellColors(Sender: TObject; Field: TField;
   State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin
   If DMATI.cdsQRY33.FieldByName('STOCKENT').AsString = 'T' Then
   Begin
      ABrush.Color := clSilver;
   End;
End;

Procedure TFStock.dbgStockTitleButtonClick(Sender: TObject;
   AFieldName: String);
Var
   xTitLabel: String;
Begin
   xFiltro := AFieldName;
   pnlBusca.Visible := True;
   isBusca.SearchField := AFieldName;
   dbgStock.SetActiveField(AFieldName);
   DMATI.cdsQRY33.AddIndex(AFieldName, AFieldName, [ixDescending, ixCaseInsensitive], '', '', 0);
   DMATI.cdsQRY33.IndexName := AFieldName;
   xTitLabel := dbgStock.SelectedField.DisplayLabel;
   xTitLabel[Pos('~', xTitLabel)] := ' ';
   lblBusca2.caption := xTitLabel;
   isBusca.DataSource := DMATI.dsQRY33;
   isBusca.SetFocus;

End;

Procedure TFStock.dbgStockKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      pnlBusca.Visible := False;
   End;
End;

Procedure TFStock.btnFichaTecClick(Sender: TObject);
Begin
   dbgStockDblClick(Self);
End;

Procedure TFStock.rbActFlatClick(Sender: TObject);
Begin
   FormCreate(Self);
End;

Procedure TFStock.z2bbtnAceptaClick(Sender: TObject);
Begin
   If DMATI.cdsQRY33.FieldByName('STOCKENT').AsString = 'E' Then
      Exit
   Else
   Begin
      FInfoAtencion := TFInfoAtencion.Create(Self);
      Try
         FInfoAtencion.ShowModal;
      Finally
         FInfoAtencion.Free;
      End;
   End;
End;

Procedure TFStock.FormShow(Sender: TObject);
Begin
   dbgStockTitleButtonClick(Self, 'ARTCODBAR');
End;

End.

