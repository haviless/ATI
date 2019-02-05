Unit ATI200;

Interface

Uses
   {  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, DBXpress, DB, SqlExpr,
     DBClient, SimpleDS, ExtCtrls, FMTBcd, Mask, CustomizeDlg, ComCtrls,
     ToolWin, Calendar, dblookup;
    }
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
    ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
    ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection,
    IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl,
    ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons,
    jpeg, IniFiles, DateUtils, Math, FMTBcd, SqlExpr, DBCtrls, Wwdotdot,
    fcButton, fcImgBtn, fcShapeBtn, Wwkeycb;

Type
    TFInvEquipo = Class(TForm)
        Label7: TLabel;
        pnlPie: TPanel;
        pnlCabecera: TPanel;
        dbgEquipo: TwwDBGrid;
        dbgbActualizar: TwwIButton;
        btInforme: TfcShapeBtn;
        fcShapeBtn1: TfcShapeBtn;
        pnlBusca: TPanel;
        lblBusca2: TLabel;
        isBusca: TwwIncrementalSearch;
        Procedure FormCreate(Sender: TObject);
        Procedure btInformeClick(Sender: TObject);
        Procedure dbgEquipoCalcCellColors(Sender: TObject; Field: TField;
            State: TGridDrawState; Highlight: Boolean; AFont: TFont;
            ABrush: TBrush);
        Procedure fcShapeBtn1Click(Sender: TObject);
        Procedure dbgEquipoDblClick(Sender: TObject);
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
        Procedure dbgEquipoTitleButtonClick(Sender: TObject;
            AFieldName: String);
        Procedure FormKeyPress(Sender: TObject; Var Key: Char);
        Procedure FormShow(Sender: TObject);
    Protected

    Private
      { Private declarations }
        xSQL: String;
        xFiltro: String;
    Public
        xModo: String;
    End;

Var
    FInvEquipo: TFInvEquipo;

Implementation

Uses ATIDM1, funciones, ATI210, ATI211, ATI320, ATI500, ATI201;

{$R *.dfm}

Procedure TFInvEquipo.FormCreate(Sender: TObject);
Begin
    xSQL := ' Select A.ARTCODBAR, A.ACFSERIE, A.ACFDES, A.ACFMODELO, A.ACFMARCA, A.ACFCOLOR, A.ESTADOID, '
          + '        A.RECIBENOM, A.UBICACION, B.S_RECIBENOM, B.S_UBICACION '
          + '   from (Select ARTICULO.CODIGOBARRA ARTCODBAR, ARTICULO.ACFSERIE, ARTICULO.ACFDES, ARTICULO.ACFMODELO,'
          + '                ARTICULO.ACFMARCA, ARTICULO.ACFCOLOR, ARTICULO.ESTADOID, ARTICULO.RECIBENOM, '
          + '                LOCALIZACION.LOCDES || ''-'' || PISO.PISODES || '' - '' ||AREA.areades || ''-'' || AMBIENTE.AMBDES UBICACION '
          + '           from '+DMATI.wwEsquemaProd+'ACF201 ARTICULO,'
                              +DMATI.wwEsquemaProd+'acf123 AMBIENTE,'
                              +DMATI.wwEsquemaProd+'acf122 AREA, '
                              +DMATI.wwEsquemaProd+'acf121 PISO,'
                              +DMATI.wwEsquemaProd+'acf120 LOCALIZACION '
          + '          where LOCALIZACION.LOCID(+) = ARTICULO.LOCID '
          + '            and PISO.locid(+) = ARTICULO.locid '
          + '            and PISO.piso(+) = ARTICULO.piso '
          + '            and AREA.locid(+) = ARTICULO.locid '
          + '            and AREA.piso(+) = ARTICULO.piso'
          + '            and AREA.area(+) = ARTICULO.area '
          + '            and AMBIENTE.locid(+) = ARTICULO.locid '
          + '            and AMBIENTE.piso(+) = ARTICULO.piso '
          + '            and AMBIENTE.area(+) = ARTICULO.area '
          + '            and AMBIENTE.ambcod(+) = ARTICULO.ambcod'
          + '          /*and ARTICULO.TACFID=''03''*/) A,'
          + '        (Select ARTICULO.ARTCODBAR, ARTICULO.RECIBENOM S_RECIBENOM, '
          + '                 LOCALIZACION.LOCDES || ''-'' || PISO.PISODES || ''-'' ||AREA.AREADES || ''-'' || AMBIENTE.AMBDES S_UBICACION '
          + '           from '+DMATI.wwEsquemaATI+'ATI_SOP_STOCK ARTICULO,'
                              +DMATI.wwEsquemaProd+'acf123 AMBIENTE,'
                              +DMATI.wwEsquemaProd+'acf122 AREA,'
                              +DMATI.wwEsquemaProd+'acf121 PISO, '
                              +DMATI.wwEsquemaProd+'acf120 LOCALIZACION'
          + '          where LOCALIZACION.LOCID(+) = ARTICULO.LOCID '
          + '            and PISO.LOCID(+) = ARTICULO.LOCID '
          + '            and PISO.PISO(+) = ARTICULO.PISO'
          + '            and AREA.LOCID(+) = ARTICULO.LOCID'
          + '            and AREA.PISO(+) = ARTICULO.PISO'
          + '            and AREA.AREA(+) = ARTICULO.AREA'
          + '            and AMBIENTE.LOCID(+) = ARTICULO.LOCID'
          + '            and AMBIENTE.PISO(+) = ARTICULO.PISO '
          + '            and AMBIENTE.AREA(+) = ARTICULO.AREA '
          + '            and AMBIENTE.AMBCOD(+) = ARTICULO.AMBCOD) B '
          + '  where A.ARTCODBAR = B.ARTCODBAR(+) '
          + '  order by A.ARTCODBAR ';

    DMATI.cdsQRY33.Close;
    DMATI.cdsQRY33.DataRequest(xSQL);
    DMATI.cdsQRY33.Open;
    dbgEquipo.DataSource := DMATI.dsQRY33;

    dbgEquipo.Selected.clear;
    dbgEquipo.Selected.Add('artcodbar' + #9 + '15' + #9 + 'N° INVENTARIO');
    dbgEquipo.Selected.Add('acfserie' + #9 + '25' + #9 + 'SERIE');
    dbgEquipo.Selected.Add('acfdes' + #9 + '40' + #9 + 'EQUIPO');
    dbgEquipo.Selected.Add('acfmodelo' + #9 + '20' + #9 + 'MODELO');
    dbgEquipo.Selected.Add('acfmarca' + #9 + '20' + #9 + 'MARCA');
    dbgEquipo.Selected.Add('acfcolor' + #9 + '20' + #9 + 'COLOR');
    dbgEquipo.Selected.Add('estadoid' + #9 + '10' + #9 + 'ESTADO');
    dbgEquipo.Selected.Add('s_recibenom' + #9 + '40' + #9 + 'SOPORTE USUARIO');
    dbgEquipo.Selected.Add('S_UBICACION' + #9 + '60' + #9 + 'SOPORTE UBICACION');
    dbgEquipo.Selected.Add('recibenom' + #9 + '40' + #9 + 'SSGG USUARIO');
    dbgEquipo.Selected.Add('UBICACION' + #9 + '60' + #9 + 'SSGG UBICACION');
    dbgEquipo.ApplySelected;

 // CREA CDS PARA INFORME MAXIVO
    xFiltro := 'ARTCODBAR';
End;

Procedure TFInvEquipo.btInformeClick(Sender: TObject);
Begin
    FInfoAtencion := TFInfoAtencion.Create(Self);
    Try
        FInfoAtencion.ShowModal;
    Finally
        FInfoAtencion.Free;
    End;
End;

Procedure TFInvEquipo.dbgEquipoCalcCellColors(Sender: TObject;
    Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
    ABrush: TBrush);
Begin
   {If DMATI.cdsQRY33.FieldByName('estadoid').AsString = '2' Then
      Begin
         //ABrush.Color := clRed;
      End
   Else
      Begin
         ABrush.Color := clRed;
      End;}
End;

Procedure TFInvEquipo.fcShapeBtn1Click(Sender: TObject);
Begin
    DMATI.ExportaGridExcel(dbgEquipo, 'Reporte');
End;

Procedure TFInvEquipo.dbgEquipoDblClick(Sender: TObject);
Var
    I: Integer;
Begin

End;

Procedure TFInvEquipo.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
    DMATI.cdsQRY33.Filtered := False;
    DMATI.cdsQRY33.Filter := '';
    DMATI.cdsQRY33.Filtered := True;
    DMATI.cdsQRY33.Close;
    DMATI.cdsQRY33.IndexName := '';

End;

Procedure TFInvEquipo.dbgEquipoTitleButtonClick(Sender: TObject;
    AFieldName: String);
Var
    xTitLabel: String;
Begin
    xFiltro := AFieldName;
    pnlBusca.Visible := True;
    isBusca.SearchField := AFieldName;
    dbgEquipo.SetActiveField(AFieldName);
    DMATI.cdsQRY33.AddIndex(AFieldName, AFieldName, [ixDescending, ixCaseInsensitive], '', '', 0);
    DMATI.cdsQRY33.IndexName := AFieldName;
    xTitLabel := dbgEquipo.SelectedField.DisplayLabel;
    xTitLabel[Pos('~', xTitLabel)] := ' ';
    lblBusca2.caption := xTitLabel;
    isBusca.DataSource := DMATI.dsQRY33;
    isBusca.SetFocus;

End;

Procedure TFInvEquipo.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
    If key = #13 Then
    Begin
        pnlBusca.Visible := False;
    End;
End;

Procedure TFInvEquipo.FormShow(Sender: TObject);
Begin
    dbgEquipoTitleButtonClick(Self, 'ARTCODBAR');
End;

End.

