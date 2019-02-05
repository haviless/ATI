Unit ATI530;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, Grids, Wwdbigrd, Wwdbgrid, Buttons, StdCtrls,
    wwdbdatetimepicker, ExtCtrls, db, wwdblook, fcButton, fcImgBtn,
    fcShapeBtn, Mask, wwdbedit, DBCtrls, Wwkeycb;

Type
    TFCabInfoTecnico = Class(TForm)
        dbgCabInfTec: TwwDBGrid;
        btnNueInforme: TwwIButton;
        pnlPie: TPanel;
        pnlBusca: TPanel;
        lblBusca2: TLabel;
        isBusca: TwwIncrementalSearch;
        Panel1: TPanel;
        lbNumEqui: TLabel;
        Label9: TLabel;
        Label1: TLabel;
        wwDBEdit1: TwwDBEdit;
        SEstVis: TShape;
        Label8: TLabel;
        SEstIni: TShape;
        Label2: TLabel;
        SEstAnu: TShape;
        Label3: TLabel;

        Procedure btnNueInformeClick(Sender: TObject);
        Procedure FormCreate(Sender: TObject);
        Procedure dbgCabInfTecDblClick(Sender: TObject);
        Procedure FormKeyPress(Sender: TObject; Var Key: Char);
        Procedure dbgCabInfTecTitleButtonClick(Sender: TObject;
            AFieldName: String);
        Procedure FormShow(Sender: TObject);
        Procedure dbgCabInfTecCalcCellColors(Sender: TObject; Field: TField;
            State: TGridDrawState; Highlight: Boolean; AFont: TFont;
            ABrush: TBrush);
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    Private
        xSQL: String;
        xFiltro: String;
      { Private declarations }
    Public
        xModo: String;
      { Public declarations }
    End;

Var
    FCabInfoTecnico: TFCabInfoTecnico;

Implementation

Uses ATIDM1, ATI500, ATI321;

{$R *.dfm}

Procedure TFCabInfoTecnico.FormCreate(Sender: TObject);
Begin
    xSQL := ' SELECT INFOTECID, '
        + '          NUMINFTEC, ARTCODBAR, FECHA, USUSOPTEC, USUARIO,'
        + '          UBICACION, EVATEC, CONTEC, ESTADO, INFESTADO, CABINFOTECID '
        + '     FROM '+DMATI.wwEsquemaATI+'ATI_INF_TEC'
        + '    WHERE ARTCODBAR =' + DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString;

    DMATI.cdsQry14.Close;
    DMATI.cdsQry14.IndexName := '';
    DMATI.cdsQry14.DataRequest(xSQL);
    DMATI.cdsQry14.Open;

    dbgCabInfTec.DataSource := DMATI.dsQry14;
    dbgCabInfTec.Selected.Clear;
    dbgCabInfTec.Selected.Add('NUMINFTEC' + #9 + '30' + #9 + 'COD INF TECNICO');
    dbgCabInfTec.Selected.Add('INFOTECID' + #9 + '20' + #9 + 'COD INF DE ATENC.');
    dbgCabInfTec.Selected.Add('USUSOPTEC' + #9 + '30' + #9 + 'ESP SOPORTE TÉCNICO');
    dbgCabInfTec.Selected.Add('USUARIO' + #9 + '20' + #9 + 'USUARIO');
    dbgCabInfTec.Selected.Add('UBICACION' + #9 + '20' + #9 + 'UBICACIÓN');
    dbgCabInfTec.ApplySelected;

    lbNumEqui.Caption := 'Total de Inf Tecnicos: ' + IntToStr(DMATI.cdsQry14.RecordCount);

End;

Procedure TFCabInfoTecnico.btnNueInformeClick(Sender: TObject);
Begin

    If DMATI.cdsQry14.Locate('ESTADO', 'I', []) Then
    Begin
        ShowMessage('Existe un Informe Técnico en estado inicial, no se puede crear otro');
        Exit;
    End;

    xModo := 'A';
    DMATI.cdsQry14.Append;
    DMATI.cdsQry14.Edit;
    DMATI.cdsQry14.FieldByName('NUMINFTEC').AsString := DMATI.Correlativo(DMATI.wwEsquemaATI+'ATI_INF_TEC','NUMINFTEC');
    DMATI.cdsQry14.FieldByName('FECHA').AsString := DMATI.cdsQry.FieldByName('FECHA').AsString;
    DMATI.cdsQry14.FieldByName('ARTCODBAR').AsString := DMATI.cdsQry33.FieldByName('ARTCODBAR').AsString;
    DMATI.cdsQry14.FieldByName('USUSOPTEC').AsString := DMATI.xResp;
    DMATI.cdsQry14.FieldByName('USUARIO').AsString := DMATI.cdsQRY33.FieldByName('S_RECIBENOM').AsString;
    DMATI.cdsQry14.FieldByName('UBICACION').AsString := DMATI.cdsQRY33.FieldByName('S_UBICACION').AsString;

    FInfoTec := TFInfoTec.Create(Self);
    Try
        FInfoTec.ShowModal;
    Finally
        FInfoTec.Free;
    End;
End;

Procedure TFCabInfoTecnico.dbgCabInfTecDblClick(Sender: TObject);
Begin
    //VALIDA NO ACTUALIZAR COLUMNAS BASIAS
    If DMATI.cdsQry14.RecordCount = 0 Then
        Exit;

    xModo := 'M';
    FInfoTec := TFInfoTec.Create(Self);
    DMATI.cdsQry14.Edit;
    Try
        FInfoTec.ShowModal;
    Finally
        FInfoTec.Free;
    End;

End;

Procedure TFCabInfoTecnico.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
    If Key = #13 Then
    Begin
        Key := #0;
        Perform(CM_DialogKey, VK_TAB, 0);
    End;
End;

Procedure TFCabInfoTecnico.dbgCabInfTecTitleButtonClick(Sender: TObject;
    AFieldName: String);
Var
    xTitLabel: String;
Begin
    xFiltro := AFieldName;
    pnlBusca.Visible := True;
    isBusca.SearchField := AFieldName;
    dbgCabInfTec.SetActiveField(AFieldName);
    DMATI.cdsQRY14.AddIndex(AFieldName, AFieldName, [ixDescending, ixCaseInsensitive], '', '', 0);
    DMATI.cdsQRY14.IndexName := AFieldName;
    xTitLabel := dbgCabInfTec.SelectedField.DisplayLabel;
    xTitLabel[Pos('~', xTitLabel)] := ' ';
    lblBusca2.caption := xTitLabel;
    isBusca.DataSource := DMATI.dsQRY14;
    isBusca.SetFocus;

End;

Procedure TFCabInfoTecnico.FormShow(Sender: TObject);
Begin
    dbgCabInfTecTitleButtonClick(Self, 'INFOTECID');
End;

Procedure TFCabInfoTecnico.dbgCabInfTecCalcCellColors(Sender: TObject;
    Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
    ABrush: TBrush);
Begin
    //ESTADO INICIAL
    If DMATI.cdsQry14.FieldByName('ESTADO').AsString = 'I' Then
        ABrush.Color := DMATI.xInicial;
    //ESTADO ANULADO
    If DMATI.cdsQry14.FieldByName('ESTADO').AsString = 'A' Then
        ABrush.Color := DMATI.xAnulado;
    //ESTADO VISADO
    If DMATI.cdsQry14.FieldByName('ESTADO').AsString = 'P' Then
        ABrush.Color := DMATI.xFinal;

    SEstIni.Brush.Color := DMATI.xInicial;
    SEstAnu.Brush.Color := DMATI.xAnulado;
    SEstVis.Brush.Color := DMATI.xFinal;
End;

Procedure TFCabInfoTecnico.FormClose(Sender: TObject;
    Var Action: TCloseAction);
Begin
    DMATI.cdsQRY14.Close;
    DMATI.cdsQRY14.IndexName := '';
End;

End.

