Unit ATI110;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, DB,
    ComCtrls, Mask, wwdbedit, wwdblook, DBCtrls, fcButton, fcImgBtn,
    fcShapeBtn, ppEndUsr, ppParameter, ppMemo, ppBands, ppBarCod, ppVar,
    ppCtrls, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppProd,
    ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Wwdbdlg, wwidlg;

Type
    TFRegEquipo = Class(TForm)
        Label1: TLabel;
        dbeSerieEq: TwwDBEdit;
        Label2: TLabel;
        dbeEquipo: TwwDBEdit;
        Label3: TLabel;
        dbeModelo: TwwDBEdit;
        Label4: TLabel;
        dbeMarca: TwwDBEdit;
        Label5: TLabel;
        pnlPie: TPanel;
        btnAcepta: TfcShapeBtn;
        btnCancela: TfcShapeBtn;
        Label6: TLabel;
        artCodBarTxt: TEdit;
        Procedure cargarFormulario;
        Procedure btnAceptaClick(Sender: TObject);
        Procedure btnCancelaClick(Sender: TObject);
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
        //Procedure Refrescar;
        Procedure FormKeyPress(Sender: TObject; Var Key: Char);
        Procedure FormShow(Sender: TObject);
        Procedure artCodBarTxtExit(Sender: TObject);
    Private
        xSQL: String;
        Procedure buscarArticulo;

    Public
        xModo: String;
    End;

Var

    FRegEquipo: TFRegEquipo;
   //TTcontrol:TTcontrol;
Implementation

Uses ATIDM1, ATI301;

{$R *.dfm}
(******************************************************************************)
Procedure TFRegEquipo.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
    If Key = #13 Then
    Begin
        Key := #0;
        Perform(CM_DialogKey, VK_TAB, 0);
    End;
End;

(******************************************************************************)
Procedure TFRegEquipo.btnCancelaClick(Sender: TObject);
Begin
    xModo := 'Cancela';
    Close;
End;

(******************************************************************************)
Procedure TFRegEquipo.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
    DMATI.cdsQry47.Close;
    //DMATI.cdsQry46.Close;
    If xModo = 'Acepta' Then
        ModalResult := mrOk
    Else
        ModalResult := mrCancel;
End;

(******************************************************************************)
Procedure TFRegEquipo.btnAceptaClick(Sender: TObject);
Begin
    If MessageDlg('¿Actualizar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
        If length(artCodBarTxt.Text) = 0 Then
        Begin
            ShowMessage('Seleccione Equipo');
            artCodBarTxt.SetFocus;
            Exit;
        End;

         //VERIFICA SI YA FUE REGISTRADO EN SOPORTE
        xSQL := 'select ARTCODBAR from ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK '
            + ' where ARTCODBAR =' + QuotedStr(DMATI.cdsQry47.FieldByName('ARTCODBAR').AsString);
        DMATI.cdsQry.Close;
        DMATI.cdsQry.DataRequest(xSQL);
        DMATI.cdsQry.Open;

        If DMATI.cdsQry.RecordCount = 0 Then
        Begin
               //INGRESA DETALLE DE INGRESO DE EQUIPOS
            xSQL := 'select max(to_number(NVL(SOPSTOCKID,''0''))+1) NUMERO from ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK';
            DMATI.cdsQry.Close;
            DMATI.cdsQry.DataRequest(xSQL);
            DMATI.cdsQry.Open;

               //INSERCION DEL STOCK DE SOPORTE
            xSQL := ' insert into ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK  '
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
                + ' values( '
                + QuotedStr(DMATI.cdsQRY.FieldByName('NUMERO').AsString) + ','
                + QuotedStr(DMATI.cdsQry47.FieldByName('ARTCODBAR').AsString) + ','
                + QuotedStr(DMATI.cdsQry47.FieldByName('ACFSERIE').AsString) + ','
                + QuotedStr(DMATI.cdsQry47.FieldByName('ACFDES').AsString) + ','
                + QuotedStr(DMATI.cdsQry47.FieldByName('ACFMARCA').AsString) + ','
                + QuotedStr(DMATI.cdsQry47.FieldByName('ACFMODELO').AsString) + ','
                + QuotedStr(DMATI.cdsQry47.FieldByName('ACFCOLOR').AsString) + ','
                + QuotedStr(DMATI.cdsQry47.FieldByName('LOCID').AsString) + ','
                + QuotedStr(DMATI.cdsQry47.FieldByName('PISO').ASString) + ','
                + QuotedStr(DMATI.cdsQry47.FieldByName('AREA').ASString) + ','
                + QuotedStr(DMATI.cdsQry47.FieldByName('AMBCOD').AsString) + ','
                + QuotedStr('T') + ','
                + QuotedStr(DMATI.cdsQry47.FieldByName('recibenom').AsString) + ','
                + quotedstr(DMATI.cdsQry47.FieldByName('estadoid').AsString) + ','
                + quotedstr('NO DEFINIDO') + ','
                + 'sysdate' + ','
                + 'sysdate' + ','
                + QuotedStr('REGISTRO') + ','
                + QuotedStr('NULL') + ','
                + QuotedStr('NULL') + ','
                + quotedstr('SIN RESPOSABLE') + ','
                + quotedstr('REGISTRO DE EQUIPO') + ')';

            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Actualicar el Equipo');
                exit;
            End;
        End
        Else
        Begin
            xSQL := 'select ARTCODBAR from ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK '
                + ' where ARTCODBAR =' + QuotedStr(DMATI.cdsQry47.FieldByName('ARTCODBAR').AsString)
                + ' AND STOCKENT = ''E''';
            DMATI.cdsQry.Close;
            DMATI.cdsQry.DataRequest(xSQL);
            DMATI.cdsQry.Open;

            If DMATI.cdsQry.RecordCount > 0 Then
            Begin
                ShowMessage('Este Equipo ya Esta dentro de Soporte');
            End;

        End;
    End;
    xModo := 'Acepta';
    Close;

End;

(******************************************************************************)
(******************************************************************************)
Procedure TFRegEquipo.cargarFormulario;
Begin
    xSQL := ' select ARTICULO.CODIGOBARRA ARTCODBAR,'
        + ' ARTICULO.ACFSERIE,'
        + ' ARTICULO.ACFDES,'
        + ' ARTICULO.ACFMODELO,'
        + ' ARTICULO.ACFMARCA,'
        + ' ARTICULO.ACFCOLOR, '
        + ' ARTICULO.ESTADOID,'
        + ' ARTICULO.RECIBENOM,'
        + ' ARTICULO.LOCID,'
        + ' ARTICULO.PISO,'
        + ' ARTICULO.AREA,'
        + ' ARTICULO.AMBCOD,'
        + ' ARTICULO.TACFID, '
        + ' LOCALIZACION.LOCDES ||''-''||PISO.PISODES ||''-''||'
        + ' AREA.AREADES ||''-''||AMBIENTE.AMBDES UBICACION '
        + ' from ' + DMATI.wwEsquemaProd + 'ACF201 ARTICULO,'
        + ' ' + DMATI.wwEsquemaProd + 'acf123 AMBIENTE,'
        + ' ' + DMATI.wwEsquemaProd + 'acf122 AREA,'
        + ' ' + DMATI.wwEsquemaProd + 'acf121 PISO,'
        + ' ' + DMATI.wwEsquemaProd + 'acf120 LOCALIZACION'
        + ' where LOCALIZACION.locid(+) = ARTICULO.locid '
        + ' AND PISO.locid(+) = ARTICULO.locid '
        + ' AND PISO.piso(+) = ARTICULO.piso'
        + ' AND AREA.locid(+) = ARTICULO.locid '
        + ' AND AREA.piso(+) = ARTICULO.piso'
        + ' AND AREA.area(+) = ARTICULO.area'
        + ' AND AMBIENTE.locid(+) = ARTICULO.locid '
        + ' AND AMBIENTE.piso(+) = ARTICULO.piso'
        + ' AND AMBIENTE.area(+) = ARTICULO.area'
        + ' AND AMBIENTE.ambcod(+) = ARTICULO.ambcod'
        + ' AND ARTICULO.CODIGOBARRA =' + QuotedStr(trim(artCodBarTxt.Text));

    DMATI.cdsQry47.Close;
    DMATI.cdsQry47.DataRequest(xSQL);
    DMATI.cdsQry47.Open;

    //dblcdArtcodbar.DataSource := DMATI.dsQry47;
    dbeSerieEq.DataSource := DMATI.dsQry47;
    dbeEquipo.DataSource := DMATI.dsQry47;
    dbeModelo.DataSource := DMATI.dsQry47;
    dbeMarca.DataSource := DMATI.dsQry47;

End;

(******************************************************************************)
Procedure TFRegEquipo.buscarArticulo();
    Procedure limpiarCamposFrm();
    Begin
        //dblcdArtcodbar.DataField := '';
        artCodBarTxt.Text := '';
        dbeSerieEq.DataField := '';
        dbeEquipo.DataField := '';
        dbeModelo.DataField := '';
        dbeMarca.DataField := '';
        artCodBarTxt.SetFocus;
    End;
    Procedure cargarCamposFrm();
    Begin
        //dblcdArtcodbar.DataField := 'ARTCODBAR';
        dbeSerieEq.DataField := 'ACFSERIE';
        dbeEquipo.DataField := 'ACFDES';
        dbeModelo.DataField := 'ACFMODELO';
        dbeMarca.DataField := 'ACFMARCA';
    End;
Begin
    cargarFormulario;

    If DMATI.cdsQry47.recordcount = 0 Then
    Begin
        ShowMessage('Código de Barras no encontrado');
        artCodBarTxt.Text := '';
        artCodBarTxt.SetFocus;
        exit;
    End;

    If DMATI.cdsQry33.Locate('ARTCODBAR', DMATI.cdsQry47.FieldByName('ARTCODBAR').AsString, []) Then
    Begin
        ShowMessage('Este equipo se encuentra en Stock, busquelo en Stock');
        limpiarCamposFrm();
        Exit;
    End
    Else
    Begin
        If DMATI.cdsQry47.FieldByName('TACFID').AsString <> '03' Then
        Begin
            If MessageDlg('Tipo de Activo no es de cómputo, ¿continuar? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
            Begin
                limpiarCamposFrm();
                exit;
            End;
        End;
        cargarCamposFrm();
    End;

End;

(******************************************************************************)
Procedure TFRegEquipo.FormShow(Sender: TObject);
Begin
    artCodBarTxt.SetFocus;
End;
(******************************************************************************)
Procedure TFRegEquipo.artCodBarTxtExit(Sender: TObject);
Begin
    If btnCancela.Focused Then exit;
    If trim(artCodBarTxt.Text) <> '' Then buscarArticulo();
End;

End.

