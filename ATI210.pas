Unit ATI210;
// Actualizaciones
// HPC_201401_ATI	31/01/2014  Julio Alberto Rodriguez Grados
// Motivo del cambio: es habilitar la opción para el ingreso de partes de un
// equipo aun cuando este se encuentre fuera de plataforma segun sistema.
Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, ExtCtrls, StdCtrls, Mask,
    wwdbedit, Wwdbdlg, wwdblook, fcButton, fcImgBtn, fcShapeBtn, ppEndUsr,
    ppParameter, ppMemo, ppBands, ppBarCod, ppVar, ppCtrls, ppPrnabl,
    ppClass, ppStrtch, ppRegion, ppCache, ppProd, ppReport, ppComm, ppRelatv,
    ppDB, ppDBPipe, db, DBCtrls, wwdotdot;

Type
    TFInvParteEquipo = Class(TForm)
        Label7: TLabel;
        pnlCabecera: TPanel;
        pnlCabeceraSoporte: TPanel;
        dbgParteEquipo: TwwDBGrid;
        dbgbActualizar: TwwIButton;
        dbeNInv: TwwDBEdit;
        Label1: TLabel;
        dbeSerie: TwwDBEdit;
        Label2: TLabel;
        dbeEquipo: TwwDBEdit;
        Label3: TLabel;
        dbeUsuario: TwwDBEdit;
        Label4: TLabel;
        dbeModelo: TwwDBEdit;
        Label5: TLabel;
        dbeMarca: TwwDBEdit;
        Label6: TLabel;
        dbeColor: TwwDBEdit;
        Label8: TLabel;
        dbeEstado: TwwDBEdit;
        Label9: TLabel;
        Label10: TLabel;
        dbeUbicacion: TwwDBEdit;
        Label11: TLabel;
        pnlPie: TPanel;
        lbContador: TLabel;
        dbeUbicacionSoporte: TwwDBEdit;
        dbeUsuarioSoporte: TwwDBEdit;
        Label13: TLabel;
        Label14: TLabel;
        pnlUbicacion: TPanel;
        Label15: TLabel;
        Label16: TLabel;
        Label17: TLabel;
        Label18: TLabel;
        dblcUbicacion: TwwDBLookupCombo;
        dblcPiso: TwwDBLookupCombo;
        dblcArea: TwwDBLookupCombo;
        dblcAmbiente: TwwDBLookupCombo;
        Label19: TLabel;
        dblcdTrabId: TwwDBLookupComboDlg;
        dbeTrabajador: TwwDBEdit;
        btnCancelar: TfcShapeBtn;
        btnGrabar: TfcShapeBtn;
        Label12: TLabel;
        z2bbtnAcepta: TfcShapeBtn;
        ppdbEntrada: TppDBPipeline;
        pprEntrada: TppReport;
        ppParameterList1: TppParameterList;
        ppdEntrada: TppDesigner;
        dbeNonDoc: TwwDBEdit;
        dbeSticker: TwwDBEdit;
        N: TLabel;
        Label21: TLabel;
        dbeInforme: TwwDBEdit;
        Label20: TLabel;
        dbeUbi: TwwDBEdit;
        dbePiso: TwwDBEdit;
        dbeArea: TwwDBEdit;
        dbeAmbiente: TwwDBEdit;
        ppHeaderBand1: TppHeaderBand;
        ppRegion2: TppRegion;
        ppDBText10: TppDBText;
        ppDBText11: TppDBText;
        ppLabel12: TppLabel;
        ppDBText13: TppDBText;
        ppLabel14: TppLabel;
        ppDBText14: TppDBText;
        ppLabel15: TppLabel;
        ppDBText17: TppDBText;
        ppLabel18: TppLabel;
        ppDBText18: TppDBText;
        ppLabel19: TppLabel;
        ppLabel11: TppLabel;
        ppLabel23: TppLabel;
        ppDBText22: TppDBText;
        ppLabel1: TppLabel;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppLabel4: TppLabel;
        ppLabel5: TppLabel;
        ppLabel6: TppLabel;
        ppLabel7: TppLabel;
        ppLabel8: TppLabel;
        ppLine1: TppLine;
        ppLine2: TppLine;
        ppLine4: TppLine;
        ppLine7: TppLine;
        ppLine8: TppLine;
        ppLine9: TppLine;
        ppLine10: TppLine;
        ppLine11: TppLine;
        ppLine12: TppLine;
        ppLine14: TppLine;
        ppDBText19: TppDBText;
        ppLabel20: TppLabel;
        ppDBText23: TppDBText;
        ppSystemVariable1: TppSystemVariable;
        ppLabel26: TppLabel;
        ppSystemVariable2: TppSystemVariable;
        ppLabel27: TppLabel;
        ppDBBarCode1: TppDBBarCode;
        ppLabel28: TppLabel;
        ppLabel17: TppLabel;
        ppLabel21: TppLabel;
        ppImage1: TppImage;
        ppLabel31: TppLabel;
        ppDBText8: TppDBText;
        ppLabel9: TppLabel;
        ppDBText12: TppDBText;
        ppLabel13: TppLabel;
        ppDBText15: TppDBText;
        ppLabel22: TppLabel;
        ppDetailBand1: TppDetailBand;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        ppDBText7: TppDBText;
        ppLine3: TppLine;
        ppLine5: TppLine;
        ppLine6: TppLine;
        ppLine13: TppLine;
        ppLine15: TppLine;
        ppLine16: TppLine;
        ppLine17: TppLine;
        ppLine18: TppLine;
        ppLine19: TppLine;
        ppFooterBand1: TppFooterBand;
        ppLabel30: TppLabel;
        ppLine23: TppLine;
        ppSummaryBand1: TppSummaryBand;
        ppLine21: TppLine;
        ppDBText9: TppDBText;
        ppLine22: TppLine;
        ppLabel10: TppLabel;
        ppLabel25: TppLabel;
        ppLabel32: TppLabel;
        ppLine20: TppLine;
        ppDBText16: TppDBText;
        ppLabel16: TppLabel;
        Label22: TLabel;
        dbmmObservacion: TDBMemo;
        ppRegion1: TppRegion;
        ppLabel24: TppLabel;
        ppDBMemo1: TppDBMemo;
        Procedure FormCreate(Sender: TObject);
        Procedure dbgParteEquipoDblClick(Sender: TObject);
        Procedure dbgbActualizarClick(Sender: TObject);
        Procedure btnCancelarClick(Sender: TObject);
        Procedure btnGrabarClick(Sender: TObject);
        Procedure z2bbtnAceptaClick(Sender: TObject);
        Procedure dbeStickerKeyPress(Sender: TObject; Var Key: Char);
        Procedure dblcdTrabIdCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure dblcPisoCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure dblcUbicacionCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure dblcAreaCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure dblcAmbienteCloseUp(Sender: TObject; LookupTable,
            FillTable: TDataSet; modified: Boolean);
        Procedure btInformeClick(Sender: TObject);
        Procedure validaBotones;
        Procedure dbgParteEquipoKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);

    Private
      { Private declarations }
        xSQL: String;

    Public
      { Public declarations }
        xModo: String;
    End;

Var
    FInvParteEquipo: TFInvParteEquipo;

Implementation

Uses ATIDM1, ATI211, ATI321, ATI115, ATI110;

{$R *.dfm}

Procedure TFInvParteEquipo.FormCreate(Sender: TObject);
Var
    xSQL: String;
Begin
    xSQL := ' SELECT ATI_PARTE_EQUIPO.PARTE_EQUIPOID,'
          + '        ATI_PARTE_EQUIPO.SERIE,'
          + '        ATI_PARTE_EQUIPO.NOMBRE_PARTE_EQUIPOID,'
          + '        ATI_PARTE_EQUIPO.MARCAID,'
          + '        ATI_PARTE_EQUIPO.TIPOID,'
          + '        ATI_PARTE_EQUIPO.FRU, '
          + '        ATI_PARTE_EQUIPO.CAPACIDAD,'
          + '        ATI_PARTE_EQUIPO.UNIDADID, '
          + '        ATI_PARTE_EQUIPO.CARACTERISTICAID, '
          + '        ATI_PARTE_EQUIPO.ESTADOID,'
          + '        ATI_SOP_STOCK.ARTCODBAR, '
          + '        ATI_CARACT.NOMBRE CARACACTERISCA,'
          + '        ATI_EST_PARTE.NOMBRE ESTADO,'
          + '        ATI_TIPOC.NOMBRE TIPOC,'
          + '        ATI_MARCA.NOMBRE MARCA,'
          + '        ATI_PARTE_EQUIPO.CAPACIDAD || '' '' || ATI_UNIDAD.NOMBRE CAPUNIDAD,'
          + '        ATI_NOM_PAR_EQU.NOMBRE TIPO,'
          + '        ATI_UNIDAD.NOMBRE UNIDAD,'
          + '        ACF201.RECIBENOM, '
          + '        ACF201.ACFDES, '
          + '        ACF201.ACFSERIE, '
          + '       (SELECT ACF120.LOCDES '
          + '          FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '         WHERE ACF120.LOCID = ACF201.LOCID) || ''-'' ||'
          + '       (SELECT ACF121.PISODES '
          + '          FROM '+DMATI.wwEsquemaProd+'ACF120 '
          + '         WHERE ACF120.LOCID = ACF201.LOCID) || ''-'' ||'
          + '       (SELECT ACF122.AREADES '
          + '          FROM '+DMATI.wwEsquemaProd+'ACF120 '
          + '         WHERE ACF120.LOCID = ACF201.LOCID) || ''-'' || '
          + '       (SELECT ACF123.AMBDES '
          + '          FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '         WHERE ACF120.LOCID = ACF201.LOCID) UBICACION, '
          + '        ATI_SOP_STOCK.RECIBENOM,'
          + '       (SELECT ACF120.LOCDES '
          + '          FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '         WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' ||'
          + '       (SELECT ACF121.PISODES'
          + '          FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '         WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' || '
          + '       (SELECT ACF122.AREADES'
          + '          FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '         WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' ||'
          + '       (SELECT ACF123.AMBDES'
          + '          FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '         WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) UBICACION'
          + '   FROM '+DMATI.wwEsquemaProd+'ACF201, '
                      +DMATI.wwEsquemaATI+'ATI_PARTE_EQUIPO, '
                      +DMATI.wwEsquemaATI+'ATI_NOM_PAR_EQU,'
                      +DMATI.wwEsquemaATI+'ATI_MARCA,'
                      +DMATI.wwEsquemaATI+'ATI_TIPOC, '
                      +DMATI.wwEsquemaATI+'ATI_UNIDAD,'
                      +DMATI.wwEsquemaATI+'ATI_CARACT, '
                      +DMATI.wwEsquemaATI+'ATI_EST_PARTE,'
                      +DMATI.wwEsquemaProd+'ACF123,'
                      +DMATI.wwEsquemaProd+'ACF122,'
                      +DMATI.wwEsquemaProd+'ACF121,'
                      +DMATI.wwEsquemaProd+'ACF120,'
                      +DMATI.wwEsquemaATI+'ATI_SOP_STOCK,'
                      +DMATI.wwEsquemaATI+'ATI_PAR_CONTROL'
            + ' where ACF120.LOCID(+) = ATI_SOP_STOCK.LOCID'
            + '   and ACF121.LOCID(+) = ATI_SOP_STOCK.LOCID '
            + '   and ACF121.PISO(+) = ATI_SOP_STOCK.PISO '
            + '   and ACF122.LOCID(+) = ATI_SOP_STOCK.LOCID'
            + '   and ACF122.PISO(+) = ATI_SOP_STOCK.PISO'
            + '   and ACF122.AREA(+) = ATI_SOP_STOCK.AREA'
            + '   and ACF123.LOCID(+) = ATI_SOP_STOCK.LOCID'
            + '   and ACF123.PISO(+) = ATI_SOP_STOCK.PISO'
            + '   and ACF123.AREA(+) = ATI_SOP_STOCK.AREA'
            + '   and ACF123.AMBCOD(+) = ATI_SOP_STOCK.AMBCOD'
            + '   and ATI_PARTE_EQUIPO.ARTCODBAR = ATI_SOP_STOCK.ARTCODBAR(+)'
            + '   and ATI_PARTE_EQUIPO.NOMBRE_PARTE_EQUIPOID = ATI_NOM_PAR_EQU.NOMBRE_PARTE_EQUIPOID(+)'
            + '   and ATI_PARTE_EQUIPO.MARCAID = ATI_MARCA.MARCAID(+)'
            + '   and ATI_PARTE_EQUIPO.TIPOID = ATI_TIPOC.TIPOID(+)'
            + '   and ATI_PARTE_EQUIPO.UNIDADID = ATI_UNIDAD.UNIDADID(+) '
            + '   and ATI_PARTE_EQUIPO.CARACTERISTICAID = ATI_CARACT.CARACTERISTICAID(+)'
            + '   and ATI_PARTE_EQUIPO.ESTADOID = ATI_EST_PARTE.ESTADOID(+)'
            + '   and ATI_SOP_STOCK.ARTCODBAR = ACF201.CODIGOBARRA' //ACF201.ARTCODBAR'
            + '   and ATI_PAR_CONTROL.ARTCODBAR(+) = ATI_PARTE_EQUIPO.ARTCODBAR '
            + '   and ATI_PAR_CONTROL.PARTE_EQUIPOID (+)= ATI_PARTE_EQUIPO.PARTE_EQUIPOID'
            + '   and ATI_PAR_CONTROL.FECSALPARTE IS NULL '
            + '   and ACF201.CODIGOBARRA = ' + QuotedStr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString);
    DMATI.cdsQRY34.Close;
    DMATI.cdsQRY34.DataRequest(xSQL);
    DMATI.cdsQRY34.Open;

    dbgParteEquipo.DataSource := DMATI.dsQRY34;
    dbgParteEquipo.Selected.Clear;
    dbgParteEquipo.Selected.Add('PARTE_EQUIPOID' + #9 + '15' + #9 + 'CÓD PARTE ACTIVO TI');
    dbgParteEquipo.Selected.Add('SERIE' + #9 + '28' + #9 + 'SERIE PARTE ACTIVO TI');
    dbgParteEquipo.Selected.Add('TIPO' + #9 + '12' + #9 + 'PARTE ACTIVO TI');
    dbgParteEquipo.Selected.Add('CARACACTERISCA' + #9 + '15' + #9 + 'CARACTERISTICA');
    dbgParteEquipo.Selected.Add('TIPOC' + #9 + '10' + #9 + 'TIPO');
    dbgParteEquipo.Selected.Add('MARCA' + #9 + '13' + #9 + 'MARCA');
    dbgParteEquipo.Selected.Add('CAPUNIDAD' + #9 + '10' + #9 + 'CAPACIDAD');
    dbgParteEquipo.Selected.Add('ESTADO' + #9 + '10' + #9 + 'ESTADO');
    dbgParteEquipo.ApplySelected;

    lbContador.Caption := 'Total de Partes de Activo de TI ' + IntToStr(DMATI.cdsQRY34.Recordcount);

    FInvParteEquipo1 := TFInvParteEquipo1.Create(Self);
   //CARGA UBICACION
    xSQL := ' select locid, locdes from '+DMATI.wwEsquemaProd+'ACF120';
    DMATI.cdsQry28.Close;
    DMATI.cdsQry28.DataRequest(xSQL);
    DMATI.cdsQry28.Open;
    dblcUbicacion.LookupTable := DMATI.cdsQry28;
    dblcUbicacion.LookupField := 'LOCID';
    dblcUbicacion.Selected.Add('LOCID' + #9 + '3' + #9 + 'ID');
    dblcUbicacion.Selected.Add('LOCDES' + #9 + '25' + #9 + 'UBICACION');

   //TRABAJADORES DERRAMA MAGISTERIAL
    xSQL := 'SELECT TRABID,TRABNOMT '
        + 'FROM '+DMATI.wwEsquemaProd+'RRHH201 '
        + 'WHERE CIAID=''01'' AND TIPPLAID=''ES'' AND SITTRA_ACT=''S'' '
        + 'ORDER BY TRABNOMT ';
    DMATI.cdsQry15.Close;
    DMATI.cdsQry15.DataRequest(xSQL);
    DMATI.cdsQry15.Open;

    dblcdTrabId.LookupTable := DMATI.cdsQry15;
    dblcdTrabId.LookupField := 'TRABID';
    dblcdTrabId.Selected.Clear;
    dblcdTrabId.Selected.Add('TRABID'#9'7'#9'ID'#9#9);
    dblcdTrabId.Selected.Add('TRABNOMT'#9'35'#9'TRABAJADOR'#9#9);

    validaBotones;

End;

Procedure TFInvParteEquipo.dbgParteEquipoDblClick(Sender: TObject);
Begin
    xModo := 'M';
    If DMATI.cdsQRY34.RecordCount > 0 Then
    Begin
        DMATI.cdsQRY34.Edit;
        FInvParteEquipo1.ShowModal;

    End
    Else
        ShowMessage('No se puede Modificar un registro Inexistente');

End;

Procedure TFInvParteEquipo.dbgbActualizarClick(Sender: TObject);
Var
    xSQL: String;
Begin
    xModo := 'I';
    xSQL := 'SELECT MAX(TO_NUMBER(PARTE_EQUIPOID)+1) NUMERO FROM '+DMATI.wwEsquemaATI+'ATI_PARTE_EQUIPO';
    DMATI.cdsQRY.Close;
    DMATI.cdsQRY.DataRequest(xSQL);
    DMATI.cdsQRY.Open;
    DMATI.cdsQRY34.Append;
    DMATI.cdsQry34.FieldByName('artcodbar').AsString := DMATI.cdsQry33.FieldByName('artcodbar').AsString;
    DMATI.cdsQRY34.FieldByName('parte_equipoid').AsString := IntToStr(DMATI.cdsQRY.FieldByName('NUMERO').AsInteger);

    FInvParteEquipo1.ShowModal;

End;

Procedure TFInvParteEquipo.btnCancelarClick(Sender: TObject);
Begin
    Close;
End;

Procedure TFInvParteEquipo.btnGrabarClick(Sender: TObject);
Begin
    If MessageDlg('¿Actualizar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin

        If length(dblcPiso.Text) = 0 Then
            DMATI.cdsQry33.FieldByName('PISO').AsString := '01';
        If length(dbeArea.Text) = 0 Then
            DMATI.cdsQry33.FieldByName('AREA').AsString := '01';
        If length(dbeAmbiente.Text) = 0 Then
            DMATI.cdsQry33.FieldByName('AMBCOD').AsString := '001';

        xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_SOP_STOCK  '
            + ' SET LOCID = ' + QuotedStr(DMATI.cdsQry33.FieldByName('LOCID').AsString) + ','
            + ' PISO =' + QuotedStr(DMATI.cdsQry33.FieldByName('PISO').AsString) + ','
            + ' AREA =' + QuotedStr(DMATI.cdsQry33.FieldByName('AREA').AsString) + ','
            + ' AMBCOD =' + QuotedStr(DMATI.cdsQry33.FieldByName('AMBCOD').AsString) + ','
            + ' RECIBENOM =' + QuotedStr(DMATI.cdsQry33.FieldByName('S_RECIBENOM').AsString) + ','
            + ' TRABID =' + QuotedStr(DMATI.cdsQry33.FieldByName('TRABID').AsString) + ','
            + ' NRODOC =' + QuotedStr(DMATI.cdsQry33.FieldByName('NRODOC').AsString) + ','
            + ' STICKER =' + QuotedStr(DMATI.cdsQry33.FieldByName('STICKER').AsString) + ','
            + ' OBSERVACION =' + QuotedStr(DMATI.cdsQry33.FieldByName('OBSERVACION').AsString) + ','
            + ' NUMINF =' + QuotedStr(DMATI.cdsQry33.FieldByName('NUMINF').AsString) + ','
            + ' FECHAFINAL = SYSDATE '
            + ' WHERE ARTCODBAR=' + QuotedStr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString);

        Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
        Except
            ShowMessage('No se pudo Grabar Detalle');
            exit;
        End;
        btnGrabar.Enabled := false;
        FormCreate(Self);
    End
    Else
    Begin
        Exit;
    End;

End;

Procedure TFInvParteEquipo.z2bbtnAceptaClick(Sender: TObject);
{Var xRuta: String;}
Begin
//    If (copy(DMATI.cdsQRY33.FieldByName('ACFDES').AsString,1,14) <> 'UNIDAD CENTRAL DE PROCESO - CPU') And
    If (copy(DMATI.cdsQRY33.FieldByName('ACFDES').AsString,1,14) <> 'UNIDAD CENTRAL') And
        (DMATI.cdsQRY33.FieldByName('ACFDES').AsString <> 'SERVIDOR') Then
    Begin
        ShowMessage('Solo de puede obtener Ficha Tecnica de: ' + char(13) + '- Unidades de Proceso' + char(13) + '- Servidores');
        Exit;
    End;
    xSQL := ' Select distinct ATI_PARTE_EQUIPO.PARTE_EQUIPOID,'
          + '                 ATI_PARTE_EQUIPO.SERIE PARTE_SERIE, '
          + '                 ATI_NOM_PAR_EQU.NOMBRE PARTE_NOMBRE,'
          + '                 ATI_TIPOC.NOMBRE PARTE_TIPO,'
          + '                 ATI_MARCA.NOMBRE PARTE_MARCA,'
          + '                 ATI_CARACT.NOMBRE PARTE_CARACTERISTICA,'
          + '                 ATI_PARTE_EQUIPO.CAPACIDAD || '''' || ATI_UNIDAD.NOMBRE PARTE_UNIDAD,'
          + '                 ATI_PARTE_EQUIPO.FRU PARTE_FRU,'
          + '                 ATI_EST_PARTE.NOMBRE PARTE_ESTADO,'
          + '                 ACF201.CODIGOBARRA ARTCODBAR, ' //ACF201.ARTCODBAR, '
          + '                 ACF201.ACFDES EQUIPO, '
          + '                 ACF201.ACFSERIE EQUIPO_SERIE,'
          + '                 ACF201.ACFCOLOR EQUIPO_COLOR,'
          + '                 ACF201.ACFMODELO EQUIPO_MODELO,'
          + '                 ACF201.ACFMARCA EQUIPO_MARCA, '
          + '                 ACF109.ESTADODES EQUIPO_ESTADO,'
   //DATOS DE DOCUMENTACION
          + '                 ATI_SOP_STOCK.NRODOC,'
          + '                 ATI_SOP_STOCK.STICKER,'
          + '                 ATI_SOP_STOCK.NUMINF,'
          + '                 ATI_SOP_STOCK.SSGG, '
   //NOMBRE DEL QUE RECIBIO SEGUN SERVICIOS GENERALES
          + '                 ACF201.RECIBENOM, '
          + '                (SELECT ACF120.LOCDES '
          + '                   FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '                  WHERE ACF120.LOCID = ACF201.LOCID) || ''-'' ||'
          + '                (SELECT ACF121.PISODES '
          + '                   FROM '+DMATI.wwEsquemaProd+'ACF120 '
          + '                  WHERE ACF120.LOCID = ACF201.LOCID) || ''-'' ||'
          + '                (SELECT ACF122.AREADES '
          + '                   FROM '+DMATI.wwEsquemaProd+'ACF120 '
          + '                  WHERE ACF120.LOCID = ACF201.LOCID) || ''-'' || '
          + '                (SELECT ACF123.AMBDES '
          + '                   FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '                  WHERE ACF120.LOCID = ACF201.LOCID) UBICACION, '
      //NOMBRE DEL QUE REALEMENTE SUCEDIO
          + '                 ATI_SOP_STOCK.RECIBENOM,'
          + '                 ATI_SOP_STOCK.OBSERVACION,'
          + '                (SELECT ACF120.LOCDES '
          + '                   FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '                  WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' ||'
          + '                (SELECT ACF121.PISODES'
          + '                   FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '                  WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' || '
          + '                (SELECT ACF122.AREADES'
          + '                   FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '                  WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) || ''-'' ||'
          + '                (SELECT ACF123.AMBDES'
          + '                   FROM '+DMATI.wwEsquemaProd+'ACF120'
          + '                  WHERE ACF120.LOCID = ATI_SOP_STOCK.LOCID) UBICACION,'
      //USUARIO DEL SISTEMA
          + ' ''' + DMATI.xResp + ''' USUARIO '
          + ' FROM '+DMATI.wwEsquemaATI+'ATI_PARTE_EQUIPO, '
                    +DMATI.wwEsquemaATI+'ATI_NOM_PAR_EQU, '
                    +DMATI.wwEsquemaATI+'ATI_MARCA, '
                    +DMATI.wwEsquemaATI+'ATI_TIPOC, '
                    +DMATI.wwEsquemaATI+'ATI_CARACT,'
                    +DMATI.wwEsquemaATI+'ATI_UNIDAD, '
                    +DMATI.wwEsquemaATI+'ATI_EST_PARTE,'
                    +DMATI.wwEsquemaProd+'ACF201,'
                    +DMATI.wwEsquemaProd+'ACF109,'
                    +DMATI.wwEsquemaATI+'ATI_SOP_STOCK, '
                    +DMATI.wwEsquemaProd+'ACF120, '
                    +DMATI.wwEsquemaProd+'ACF121,'
                    +DMATI.wwEsquemaProd+'ACF122,'
                    +DMATI.wwEsquemaProd+'ACF123, '
                    +DMATI.wwEsquemaATI+'ATI_PAR_CONTROL'
          + ' Where ACF120.LOCID(+) = ATI_SOP_STOCK.LOCID'
          + '   and ACF121.LOCID(+) = ATI_SOP_STOCK.LOCID'
          + '   and ACF121.PISO(+) = ATI_SOP_STOCK.PISO '
          + '   and ACF122.LOCID(+) = ATI_SOP_STOCK.LOCID '
          + '   and ACF122.PISO(+) = ATI_SOP_STOCK.PISO'
          + '   and ACF122.AREA(+) = ATI_SOP_STOCK.AREA'
          + '   and ACF123.LOCID(+) = ATI_SOP_STOCK.LOCID '
          + '   and ACF123.PISO(+) = ATI_SOP_STOCK.PISO'
          + '   and ACF123.AREA(+) = ATI_SOP_STOCK.AREA '
          + '   and ACF123.AMBCOD(+) = ATI_SOP_STOCK.AMBCOD '
          + '   and ATI_PARTE_EQUIPO.NOMBRE_PARTE_EQUIPOID =ATI_NOM_PAR_EQU.NOMBRE_PARTE_EQUIPOID(+)'
          + '   and ATI_PARTE_EQUIPO.MARCAID = ATI_MARCA.MARCAID(+) '
          + '   and ATI_PARTE_EQUIPO.TIPOID = ATI_TIPOC.TIPOID(+)'
          + '   and ATI_PARTE_EQUIPO.CARACTERISTICAID = ATI_CARACT.CARACTERISTICAID(+)'
          + '   and ATI_PARTE_EQUIPO.UNIDADID = ATI_UNIDAD.UNIDADID(+)'
          + '   and ATI_PARTE_EQUIPO.ESTADOID = ATI_EST_PARTE.ESTADOID(+)'
          + '   and ACF201.ESTADOID = ACF109.ESTADOID(+)'
          + '   and ATI_SOP_STOCK.ARTCODBAR = ACF201.CODIGOBARRA' //ACF201.ARTCODBAR'
          + '   and ATI_SOP_STOCK.ARTCODBAR = ati_parte_equipo.ARTCODBAR'
          + '   and ATI_PAR_CONTROL.ARTCODBAR(+)      = ATI_PARTE_EQUIPO.ARTCODBAR '
          + '   and ATI_PAR_CONTROL.PARTE_EQUIPOID(+) = ATI_PARTE_EQUIPO.PARTE_EQUIPOID '
          + '   and ATI_PAR_CONTROL.FECSALPARTE IS NULL '
          + '   and ATI_SOP_STOCK.ARTCODBAR = ' + QuotedStr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString);
    DMATI.cdsQry37.Close;
    DMATI.cdsQry37.DataRequest(xSQL);
    DMATI.cdsQry37.Open;

    ppdbEntrada.DataSource := DMATI.dsQry37;

   {xRuta := 'C:\SOLEXES\Reportes';
   pprEntrada.template.FileName := xRuta + '\Entrada.rtm';
   pprEntrada.Template.LoadFromFile; }

//   ppdEntrada.report := pprEntrada;
//   ppdEntrada.Show;
   pprEntrada.Print;
   pprEntrada.Stop;
End;

Procedure TFInvParteEquipo.dbeStickerKeyPress(Sender: TObject;
    Var Key: Char);
Begin
    If Not (Key In ['0'..'9', #8, #45, #46]) Then
    Begin
        Key := #0;
    End;
End;

Procedure TFInvParteEquipo.dblcdTrabIdCloseUp(Sender: TObject; LookupTable,
    FillTable: TDataSet; modified: Boolean);
Begin
    If modified Then
        DMATI.cdsQRY33.FieldByName('S_recibenom').AsString := DMATI.cdsQry15.FieldByName('TRABNOMT').AsString;
End;

Procedure TFInvParteEquipo.dblcPisoCloseUp(Sender: TObject; LookupTable,
    FillTable: TDataSet; modified: Boolean);
Begin

   //CARGA AREA
    xSQL := ' SELECT LOCID, PISO, AREA, AREADES FROM '+DMATI.wwEsquemaPROD+'ACF122 '
        + ' WHERE LOCID = ' + QuotedStr(DMATI.cdsQry29.fieldByName('LOCID').AsString)
        + ' AND    PISO = ' + QuotedStr(DMATI.cdsQry29.fieldByName('PISO').AsString);

    DMATI.cdsQry30.Close;
    DMATI.cdsQry30.DataRequest(xSQL);
    DMATI.cdsQry30.Open;
    dblcArea.Enabled := True;
    dblcArea.LookupTable := DMATI.cdsQry30;
    dblcArea.LookupField := 'AREA';
    dblcArea.Selected.Add('AREA' + #9 + '3' + #9 + 'ID');
    dblcArea.Selected.Add('AREADES' + #9 + '25' + #9 + 'AREA');
    DMATI.cdsQRY33.FieldByName('PISODES').AsString := DMATI.cdsQRY29.FieldByName('PISODES').asstring;
    If DMATI.cdsQRY33.FieldByName('PISO').AsString <> DMATI.cdsQRY29.FieldByName('PISO').asstring Then
    Begin
        dblcArea.Enabled := False;
        dbePiso.Clear;
    End;
    dbeArea.Clear;
    dblcArea.Clear;
    dbeAmbiente.Clear;
    dblcAmbiente.Clear;
    dblcAmbiente.enabled := False;
End;

Procedure TFInvParteEquipo.dblcUbicacionCloseUp(Sender: TObject;
    LookupTable, FillTable: TDataSet; modified: Boolean);
Begin
   //CARGA PISO
    xSQL := ' SELECT LOCID, PISO, PISODES FROM '+DMATI.wwEsquemaProd+'ACF121 '
        + ' WHERE LOCID = ' + QuotedStr(DMATI.cdsQry28.fieldByName('locid').AsString);

    DMATI.cdsQry29.Close;
    DMATI.cdsQry29.DataRequest(xSQL);
    DMATI.cdsQry29.Open;
    dblcPiso.LookupTable := DMATI.cdsQry29;
    dblcPiso.LookupField := 'PISO';
    dblcPiso.Selected.Add('PISO' + #9 + '3' + #9 + 'ID');
    dblcPiso.Selected.Add('PISODES' + #9 + '10' + #9 + 'PISO');

    dblcPiso.Enabled := True;
    DMATI.cdsQry33.Edit;
    DMATI.cdsQry33.fieldByName('LOCDES').AsString := DMATI.cdsQry28.fieldByName('LOCDES').AsString;

    If DMATI.cdsQry28.fieldByName('LOCID').AsString <> DMATI.cdsQry33.fieldByName('LOCID').AsString Then
    Begin
        dbeUbi.Clear;
        dblcPiso.Enabled := False;
    End;
    dblcPiso.Clear;
    dblcArea.Clear;
    dblcArea.Clear;
    dblcAmbiente.Clear;

    dbePiso.Clear;
    dbeArea.Clear;
    dbeAmbiente.Clear;

    dblcArea.Enabled := False;
    dblcArea.Enabled := False;
    dblcAmbiente.Enabled := False;

End;

Procedure TFInvParteEquipo.dblcAreaCloseUp(Sender: TObject; LookupTable,
    FillTable: TDataSet; modified: Boolean);
Begin

   //CARGA AMBIENTE
    xSQL := ' SELECT LOCID, PISO, AREA, AREADES, AMBCOD, AMBDES, CIAID FROM '+DMATI.wwEsquemaPROD+'ACF123 '
        + ' WHERE  LOCID = ' + QuotedStr(DMATI.cdsQry30.fieldByName('locid').AsString)
        + ' AND    PISO  = ' + QuotedStr(DMATI.cdsQry30.fieldByName('piso').AsString)
        + ' AND    AREA  = ' + QuotedStr(DMATI.cdsQry30.fieldByName('area').AsString);

    DMATI.cdsQry31.Close;
    DMATI.cdsQry31.DataRequest(xSQL);
    DMATI.cdsQry31.Open;
    dblcAmbiente.LookupTable := DMATI.cdsQry31;
    dblcAmbiente.LookupField := 'AMBCOD';
    dblcAmbiente.Selected.Add('AMBCOD' + #9 + '3' + #9 + 'ID');
    dblcAmbiente.Selected.Add('AMBDES' + #9 + '25' + #9 + 'AMBIENTE');
    dblcAmbiente.Enabled := True;
    DMATI.cdsQry33.fieldByName('AREADES').AsString := DMATI.cdsQry30.fieldByName('AREADES').AsString;

    If DMATI.cdsQry33.fieldByName('AREA').AsString <> DMATI.cdsQry30.fieldByName('AREA').AsString Then
    Begin
        dblcAmbiente.Enabled := False;
        dbeArea.Clear;
    End;
    dbeAmbiente.Clear;
    dblcAmbiente.Clear;

End;

Procedure TFInvParteEquipo.dblcAmbienteCloseUp(Sender: TObject;
    LookupTable, FillTable: TDataSet; modified: Boolean);
Begin
    DMATI.cdsQry33.fieldByName('AMBDES').AsString := DMATI.cdsQry31.fieldByName('AMBDES').AsString;
    If DMATI.cdsQry33.fieldByName('AMBCOD').AsString <> DMATI.cdsQry31.fieldByName('AMBCOD').AsString Then
    Begin
        dbeAmbiente.clear
    End;
End;

Procedure TFInvParteEquipo.btInformeClick(Sender: TObject);
Begin
    FInfoTec := TFInfoTec.Create(Self);
    Try
        FInfoTec.ShowModal;
    Finally
        FInfoTec.Free;
    End;
End;

Procedure TFInvParteEquipo.validaBotones;
Begin
    If DMATI.cdsQRY33.FieldByName('STOCKENT').AsString = 'T' Then
    Begin
        //=====================================================================
        // Inicio HPC_201401_ATI
        //=====================================================================
        //dbgParteEquipo.Enabled := False;
        //dbgbActualizar.Enabled := False;
        //=====================================================================
        // Fin HPC_201401_ATI
        //=====================================================================
        dbeSticker.Enabled := False;
        dbeInforme.Enabled := False;
        dbmmObservacion.Enabled := False;
    End;
End;

Procedure TFInvParteEquipo.dbgParteEquipoKeyDown(Sender: TObject;
    Var Key: Word; Shift: TShiftState);
Begin
    If (key = VK_Delete) And (ssCtrl In Shift) Then
    Begin

        If MessageDlg(' ¿Retirar Componente? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        Begin

            FControlParte := TFControlParte.Create(Self);
            Try
                FControlParte.ShowModal;
            Finally
                FControlParte.Free;
            End;

        End;
    End;
End;

End.

