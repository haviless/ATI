Unit ATI135;

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
    TFCabeceraSalida = Class(TForm)
        Label1: TLabel;
        dbgCabeceraSalida: TwwDBGrid;
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
        Procedure dbgCabeceraSalidaDblClick(Sender: TObject);
        Procedure btnCabeceraClick(Sender: TObject);
        Procedure dbeNumDocKeyPress(Sender: TObject; Var Key: Char);
        Procedure dbgCabeceraSalidaCalcCellColors(Sender: TObject;
            Field: TField; State: TGridDrawState; Highlight: Boolean;
            AFont: TFont; ABrush: TBrush);
        Procedure FormKeyPress(Sender: TObject; Var Key: Char);
        Procedure dbgDetalleKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure dblcTipoEntradaCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure dblcSSGGCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure dbgCabeceraSalidaTitleButtonClick(Sender: TObject;
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
    FCabeceraSalida: TFCabeceraSalida;

Implementation

Uses ATIDM1, funciones, ATI132;

{$R *.dfm}

Procedure TFCabeceraSalida.FormCreate(Sender: TObject);
Begin
    xSQL := ' SELECT NUMCABSAL, '
        + ' NRODOC,'
        + ' FECHA,'
        + ' USERID,'
        + ' ATI_SSGG.SSGGID,'
        + ' ATI_SSGG.NOMBRE SSGG,'
        + ' TIPDOCID,'
        + ' ATI_TIP_SALIDA.GUIA_SALIDA_TIPOID,'
        + ' ATI_TIP_SALIDA.NOMBRE TIPO_SALIDA,'
        + ' OBSERVACION, '
        + ' CABSALEST '
        + ' FROM '+DMATI.wwEsquemaATI+'ATI_CAB_SAL, '+DMATI.wwEsquemaATI+'ATI_SSGG, '+DMATI.wwEsquemaATI+'ATI_TIP_SALIDA'
        + ' WHERE ATI_CAB_SAL.SSGGID = ATI_SSGG.SSGGID '
        + ' AND ATI_CAB_SAL.GUIA_SALIDA_TIPOID = ATI_TIP_SALIDA.GUIA_SALIDA_TIPOID(+)'
        + ' AND NUMCABSAL <> ''0'''
        + ' ORDER BY TO_NUMBER(NUMCABSAL)';

    DMATI.cdsQry11.Close;
    DMATI.cdsQry11.FileName := '';
    DMATI.cdsQry11.DataRequest(xSQL);
    DMATI.cdsQry11.Open;

    dbgCabeceraSalida.DataSource := DMATI.dsQry11;
    dbgCabeceraSalida.Selected.Clear;
    dbgCabeceraSalida.Selected.Add('NUMCABSAL' + #9 + '25' + #9 + 'CÓD SALIDA');
    dbgCabeceraSalida.Selected.Add('NRODOC' + #9 + '25' + #9 + 'CÓD DOCUMENTO');
    dbgCabeceraSalida.Selected.Add('TIPDOCID' + #9 + '25' + #9 + 'TIPO DOCUMENTO');
    dbgCabeceraSalida.Selected.Add('FECHA' + #9 + '22' + #9 + 'FECHA');
    dbgCabeceraSalida.Selected.Add('SSGG' + #9 + '25' + #9 + 'SSGG');
    dbgCabeceraSalida.Selected.Add('USERID' + #9 + '25' + #9 + 'TÉCNICO');
    dbgCabeceraSalida.ApplySelected;

    lbNumEqui.Caption := 'Total de Notas de Salida: ' + IntToStr(DMATI.cdsQry11.RecordCount);

End;

Procedure TFCabeceraSalida.dbgCabeceraSalidaDblClick(Sender: TObject);
Begin
    xModo := 'M';

    FDetalleSalida := TFDetalleSalida.create(Self);
    Try
        FDetalleSalida.ShowModal;
    Finally
        FDetalleSalida.Free;
    End;

End;

Procedure TFCabeceraSalida.btnCabeceraClick(Sender: TObject);
Begin
    xModo := 'A';

    DMATI.cdsQry11.Append;
    DMATI.cdsQry11.FieldByName('FECHA').AsDateTime := DMATI.sFecha;
    DMATI.cdsQry11.FieldByName('NUMCABSAL').AsString := DMATI.Correlativo(DMATI.wwEsquemaATI+'ATI_CAB_SAL', 'NUMCABSAL');

   //CARGA TECNICO ENCARGADO
    DMATI.cdsQry11.FieldByName('USERID').AsString := DMATI.wUsuario;
   //PAPRAMETROS DE FORMULARIO

    If DMATI.cdsQry12.active = True Then
        DMATI.cdsQry12.First;

    While Not DMATI.cdsQry12.Eof Do
    Begin
        DMATI.cdsQry12.Delete;

    End;
    FDetalleSalida := TFDetalleSalida.create(Self);
    Try
        FDetalleSalida.ShowModal;
    Finally
        FDetalleSalida.Free;
    End;

End;

Procedure TFCabeceraSalida.dbeNumDocKeyPress(Sender: TObject;
    Var Key: Char);
Begin
    If Not (Key In ['0'..'9', #8, #45, #46]) Then
    Begin
        Key := #0;
    End;
End;

Procedure TFCabeceraSalida.dbgCabeceraSalidaCalcCellColors(
    Sender: TObject; Field: TField; State: TGridDrawState;
    Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin
    //ESTADO PENDIENTE
    If DMATI.cdsQry11.FieldByName('cabSALest').AsString = 'I' Then
        ABrush.Color := DMATI.xInicial;
    //ESTADO ANULADO
    If DMATI.cdsQry11.FieldByName('cabSALest').AsString = 'A' Then
        ABrush.Color := DMATI.xAnulado;
    //ESTADO VISADO
    If DMATI.cdsQry11.FieldByName('cabSALest').AsString = 'P' Then
        ABrush.Color := DMATI.xFinal;

    SEstIni.Brush.Color := DMATI.xInicial;
    SEstAnu.Brush.Color := DMATI.xAnulado;
    SEstVis.Brush.Color := DMATI.xFinal;

End;

Procedure TFCabeceraSalida.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
    If Key = #13 Then
    Begin
        Key := #0;
        Perform(CM_DialogKey, VK_TAB, 0);
    End;
End;

Procedure TFCabeceraSalida.dbgDetalleKeyDown(Sender: TObject;
    Var Key: Word; Shift: TShiftState);
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
            xSQL := ' DELETE '
                + ' from '+DMATI.wwEsquemaATI+'ATI_DET_SAL '
                + ' where NUMCABSAL =' + quotedstr(DMATI.cdsQRY11.FieldByName('NUMCABSAL').AsString)
                + ' AND ARTCODBAR= ' + quotedstr(DMATI.cdsQRY12.FieldByName('ARTCODBAR').AsString);
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

Procedure TFCabeceraSalida.dblcTipoEntradaCloseUp(Sender: TObject;
    LookupTable, FillTable: TDataSet; modified: Boolean);
Begin
    DMATI.cdsQry11.FieldByName('GUIA_SALIDA_TIPOID').AsString := DMATI.cdsQRY29A.FieldByName('GUIA_SALIDA_TIPOID').AsString;
End;

Procedure TFCabeceraSalida.dblcSSGGCloseUp(Sender: TObject; LookupTable,
    FillTable: TDataSet; modified: Boolean);
Begin
    DMATI.cdsQry11.FieldByName('SSGGID').AsString := DMATI.cdsQRY26A.FieldByName('SSGGID').AsString;
End;

Procedure TFCabeceraSalida.dbgCabeceraSalidaTitleButtonClick(
    Sender: TObject; AFieldName: String);
Var
    xTitLabel: String;
Begin
    xFiltro := AFieldName;
    pnlBusca.Visible := True;
    isBusca.SearchField := AFieldName;
    dbgCabeceraSalida.SetActiveField(AFieldName);
    DMATI.cdsQry11.AddIndex(AFieldName, AFieldName, [ixDescending, ixCaseInsensitive], '', '', 0);
    DMATI.cdsQry11.IndexName := AFieldName;
    xTitLabel := dbgCabeceraSalida.SelectedField.DisplayLabel;
    xTitLabel[Pos('~', xTitLabel)] := ' ';
    lblBusca2.caption := xTitLabel;
    isBusca.DataSource := DMATI.dsQRY11;
    isBusca.SetFocus;

End;

Procedure TFCabeceraSalida.FormShow(Sender: TObject);
Begin
    dbgCabeceraSalidaTitleButtonClick(Self, 'NUMCABSAL');
End;

Procedure TFCabeceraSalida.FormClose(Sender: TObject;
    Var Action: TCloseAction);
Begin
    DMATI.cdsQRY11.Close;
    DMATI.cdsQRY11.IndexName := '';
End;

End.

