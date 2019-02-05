Unit ATI320;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ActnList, Menus, ExtCtrls,
    ImgList, Buttons, ppEndUsr, ppParameter, ppBands, ppRichTx, ppCtrls,
    ppVar, ppCTMain, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppProd,
    ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppMemo, ppModule,
    daDataModule, FMTBcd, DB, SqlExpr, Wwdbigrd, Wwdbgrid, fcButton,
    fcImgBtn, fcShapeBtn, Mask, wwdbedit, ppBarCod, wwdblook;

Type
    TFInfoAtencion = Class(TForm)
        Label9: TLabel;
        dbgInforme: TwwDBGrid;
        wwDBGrid1IButton: TwwIButton;
        pnlCabecera: TPanel;
        Label20: TLabel;
        wwDBEdit6: TwwDBEdit;
        wwDBEdit7: TwwDBEdit;
        Label21: TLabel;
        Label22: TLabel;
        Label23: TLabel;
        wwDBEdit8: TwwDBEdit;
        pnlPie: TPanel;
        SEstVis: TShape;
        Label1: TLabel;
        SEstIni: TShape;
        Label10: TLabel;
        SEstAnu: TShape;
        Label24: TLabel;
        Label25: TLabel;
        SEstFin: TShape;
        lbNumEqui: TLabel;
        Label3: TLabel;
        SEstAce: TShape;
        Procedure FormCreate(Sender: TObject);
        Procedure wwDBGrid1IButtonClick(Sender: TObject);
        Procedure dbgInformeCalcCellColors(Sender: TObject; Field: TField;
            State: TGridDrawState; Highlight: Boolean; AFont: TFont;
            ABrush: TBrush);
        Procedure dbgInformeDblClick(Sender: TObject);
        Procedure dbgInformeTitleButtonClick(Sender: TObject;
            AFieldName: String);
        Procedure FormShow(Sender: TObject);
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    Private
        xSQL: String;
    Public
        xModo: String;
      { Public declarations }

    End;

Var
    FInfoAtencion: TFInfoAtencion;

Implementation

Uses funciones, ATIDM1, ATI311;

{$R *.dfm}

Procedure TFInfoAtencion.FormCreate(Sender: TObject);
Begin
    xSQL := 'SELECT DISTINCT '
        + ' ATI_INFORME.NUMINF,'
        + ' ATI_INFORME.ARTCODBAR,'
        + ' ATI_INFORME.SERIE,'
        + ' ACF201.ACFDES,'
        + ' ATI_INFORME.FECHA,'
        + ' ATI_INFORME.TECNICO,'
        + ' ATI_INFORME.USUARIO,'
        + ' ATI_INFORME.UBICACION, '
        + ' ATI_INFORME.PROBLEMA, '
        + ' ATI_INFORME.DIAGNOSTICO, '
        + ' ATI_INFORME.ACCION, '
        + ' ATI_INFORME.ESTADO, '
        + ' ATI_INFORME.DESTINO,'
        + ' ATI_INFORME.ESTACTIVO,'
        + ' ACF109.ESTADODES, '
        + ' ATI_SOP_STOCK.RECIBENOM S_RECIBENOM, '
        + ' (SELECT ACF120.LOCDES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' ||'
        + ' (SELECT ACF121.PISODES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' ||'
        + ' (SELECT ACF122.AREADES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' || '
        + ' (SELECT ACF123.AMBDES FROM '+DMATI.wwEsquemaProd+'ACF120 WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) S_UBICACION'
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
        + ' AND ATI_SOP_STOCK.ARTCODBAR(+) = ACF201.CODIGOBARRA' //ACF201.ARTCODBAR'
        + ' AND ACF201.CODIGOBARRA = ATI_INFORME.ARTCODBAR' //ACF201.ARTCODBAR = ATI_INFORME.ARTCODBAR'
        + ' AND ATI_SOP_STOCK.ESTADO = ACF109.ESTADOID(+)'
        + ' AND ATI_INFORME.ARTCODBAR=' + QuotedStr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString)
        + ' ORDER BY TO_NUMBER(ATI_INFORME.NUMINF)';

    DMATI.cdsQRY40.Close;
    DMATI.cdsQRY40.IndexName := '';
    DMATI.cdsQRY40.DataRequest(xSQL);
    DMATI.cdsQRY40.Open;

    dbgInforme.DataSource := DMATI.dsQRY40;

    dbgInforme.Selected.clear;
    dbgInforme.Selected.Add('NUMINF' + #9 + '10' + #9 + 'N°ATI_INFORME');
    dbgInforme.Selected.Add('FECHA' + #9 + '22' + #9 + 'FECHA');
    dbgInforme.Selected.Add('TECNICO' + #9 + '25' + #9 + 'ESP SOPORTE TÉCNICO');
    dbgInforme.Selected.Add('S_RECIBENOM' + #9 + '30' + #9 + 'USUARIO');
    dbgInforme.Selected.Add('S_UBICACION' + #9 + '50' + #9 + 'UBICACION');
    dbgInforme.ApplySelected;

    lbNumEqui.Caption := 'Total de Informes de Atención: ' + IntToStr(DMATI.cdsQRY40.RecordCount);

End;

Procedure TFInfoAtencion.wwDBGrid1IButtonClick(Sender: TObject);
Begin
    If DMATI.cdsQRY40.Locate('ESTADO', 'I', []) Then
    Begin
        ShowMessage('Ya existe  un Informe de en Atención en Proceso, no se puede crear otro hasta concluir');
        Exit;
    End;

    If DMATI.cdsQRY40.Locate('ESTADO', 'V', []) Then
    Begin
        ShowMessage('Ya existe  un Informe de en Atención en Proceso, no se puede crear otro hasta concluir');
        Exit;
    End;

    If DMATI.cdsQRY40.Locate('ESTADO', 'AC', []) Then
    Begin
        ShowMessage('Ya existe  un Informe de en Atención en Proceso, no se puede crear otro hasta concluir');
        Exit;
    End;

    xSQL := 'SELECT GARANCOD,ESTADO FROM '+DMATI.wwEsquemaATI+'ATI_ACT_GAR '
        + 'WHERE ARTCODBAR = ' + QuotedStr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString)
        + 'AND ESTADO=''INICIAL''';

    DMATI.cdsQRY.Close;
    DMATI.cdsQRY.DataRequest(xSQL);
    DMATI.cdsQRY.Open;

    If DMATI.cdsQRY.RecordCount > 0 Then
    Begin
        xSQL := 'UPDATE '+DMATI.wwEsquemaATI+'ATI_ACT_GAR '
            + ' SET FECHAFIN = SYSDATE,'
            + ' TECNICOFIN = ' + QuotedStr(DMATI.xResp) + ','
            + ' ESTADO = ''FINAL'' '
            + ' WHERE ARTCODBAR = ' + quotedstr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString)
            + ' AND ESTADO =''INICIAL'' ';
        Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
        Except
            ShowMessage('No se pudo Actualicar el Equipo');
            exit;
        End;
    End;

    xModo := 'I';
   //AÑADE REGISTROS A LA BASE DE DATOS
    DMATI.cdsQRY40.Append;
    DMATI.cdsQRY40.FieldByName('NUMINF').AsString := DMATI.Correlativo(DMATI.wwEsquemaATI+'ATI_INFORME', 'NUMINF');
    DMATI.cdsQRY40.Edit;
    FDetaInfAte := TFDetaInfAte.Create(Self);
    Try
        FDetaInfAte.ShowModal;
    Finally
        FDetaInfAte.Free;
    End;

End;

Procedure TFInfoAtencion.dbgInformeCalcCellColors(Sender: TObject;
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
        ABrush.Color := DMATI.xSinInfo;

    SEstIni.Brush.Color := DMATI.xInicial;
    SEstAnu.Brush.Color := DMATI.xAnulado;
    SEstFin.Brush.Color := DMATI.xFinal;
    SEstVis.Brush.Color := DMATI.xVisado;
    SEstAce.Brush.Color := DMATI.xAceptado;

End;

Procedure TFInfoAtencion.dbgInformeDblClick(Sender: TObject);
Begin
    xModo := 'M';
    If DMATI.cdsQRY40.RecordCount = 0 Then
    Begin
        ShowMessage('No se puede ActulizarATI_INFORMEs Inexistentes');
        Exit;
    End;
    DMATI.cdsQRY40.Edit;
    FDetaInfAte := TFDetaInfAte.Create(Self);
    Try
        FDetaInfAte.ShowModal;
    Finally
        FDetaInfAte.Free;
    End;

End;

Procedure TFInfoAtencion.dbgInformeTitleButtonClick(Sender: TObject;
    AFieldName: String);
Begin
    DMATI.cdsQRY40.AddIndex(AFieldName, AFieldName, [ixDescending, ixCaseInsensitive], '', '', 0);
    DMATI.cdsQRY40.IndexName := AFieldName;

End;

Procedure TFInfoAtencion.FormShow(Sender: TObject);
Begin
    dbgInformeTitleButtonClick(Self, 'ARTCODBAR');
End;

Procedure TFInfoAtencion.FormClose(Sender: TObject;
    Var Action: TCloseAction);
Begin
    DMATI.cdsQRY40.Close;
    DMATI.cdsQRY40.IndexName := '';

End;

End.

