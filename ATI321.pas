Unit ATI321;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, ExtCtrls, StdCtrls, Mask,
  wwdbedit, Wwdbdlg, wwdblook, fcButton, fcImgBtn, fcShapeBtn, ppEndUsr,
  ppParameter, ppMemo, ppBands, ppBarCod, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppStrtch, ppRegion, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, db, DBCtrls, ppModule, daDataModule, wwidlg, ppSubRpt;

Type
  TFInfoTec = Class(TForm)
    Label9: TLabel;
    pnlPie: TPanel;
    btnAcepta: TfcShapeBtn;
    btnCancelar: TfcShapeBtn;
    btImprimir: TfcShapeBtn;
    pnlInforme: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbmmEvaTec: TDBMemo;
    dbmmConTec: TDBMemo;
    Label5: TLabel;
    dbeInfoTec: TwwDBEdit;
    dbeInfAtenc: TwwDBEdit;
    Label11: TLabel;
    dbeNomEquipo: TwwDBEdit;
    Label12: TLabel;
    dbeSerie: TwwDBEdit;
    ppdbInforme: TppDBPipeline;
    pprInforme: TppReport;
    ppParameterList1: TppParameterList;
    ppdInforme: TppDesigner;
    ppdbInformeMax: TppDBPipeline;
    pprInformeMax: TppReport;
    ppParameterList2: TppParameterList;
    dblcEstado: TwwDBLookupCombo;
    Label4: TLabel;
    Label3: TLabel;
    dbeTecnico: TwwDBEdit;
    dbeNunInv: TwwDBEdit;
    Label6: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label10: TLabel;
    wwDBEdit3: TwwDBEdit;
    btnVisar: TfcShapeBtn;
    btnAnular: TfcShapeBtn;
    ppdInformeMax: TppDesigner;
    lbInfoEst: TLabel;
    cbGarantia: TCheckBox;
    Imagen: TImage;
    ppTitleBand1: TppTitleBand;
    ppRegion6: TppRegion;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppLabel21: TppLabel;
    ppDBText14: TppDBText;
    ppLabel22: TppLabel;
    ppDBText17: TppDBText;
    ppLabel25: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText7: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText1: TppDBText;
    ppRegion7: TppRegion;
    ppDBText11: TppDBText;
    ppLabel36: TppLabel;
    ppDBBarCode2: TppDBBarCode;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppImage2: TppImage;
    ppSystemVariable5: TppSystemVariable;
    ppLabel39: TppLabel;
    ppDBText2: TppDBText;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBText3: TppDBText;
    ppLabel42: TppLabel;
    ppDBText12: TppDBText;
    ppLabel24: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLabel5: TppLabel;
    ppLabel45: TppLabel;
    ppDBText34: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine4: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel46: TppLabel;
    ppLine20: TppLine;
    ppLine23: TppLine;
    ppDBText9: TppDBText;
    ppLine25: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    pplblGarantiaMax1: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel47: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText36: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel48: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText37: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppTitleBand2: TppTitleBand;
    ppRegion1: TppRegion;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel1: TppLabel;
    ppDBText6: TppDBText;
    ppLabel2: TppLabel;
    ppDBText8: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppDBText15: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText16: TppDBText;
    ppRegion2: TppRegion;
    ppDBText18: TppDBText;
    ppLabel9: TppLabel;
    ppDBBarCode1: TppDBBarCode;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppImage1: TppImage;
    ppSystemVariable1: TppSystemVariable;
    ppLabel12: TppLabel;
    ppDBText19: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText20: TppDBText;
    ppLabel15: TppLabel;
    ppDBText21: TppDBText;
    ppLabel16: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText28: TppDBText;
    ppHeaderBand1: TppHeaderBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel23: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText35: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel28: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText42: TppDBText;
    ppLine5: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel54: TppLabel;
    pplblGarantia1: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLabel56: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText43: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppLabel57: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText44: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    pplblGarantiaMax2: TppLabel;
    pplblGarantia2: TppLabel;
    ppLabel60: TppLabel;
    ppLabel55: TppLabel;
    ppLine43: TppLine;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLine6: TppLine;
    pplblGarantiaMax3: TppLabel;
    pplblGarantiaMax0: TppLabel;
    pplblGarantia3: TppLabel;
    pplblGarantia0: TppLabel;
    ppspGarantiaMax: TppShape;
    ppspGarantia: TppShape;
    Procedure btnCancelarClick(Sender: TObject);
    Procedure btnAceptaClick(Sender: TObject);
    Procedure FormKeyPress(Sender: TObject; Var Key: Char);
    Procedure FormCreate(Sender: TObject);
    Procedure ControlForm;
    Procedure CierreControl;
    Procedure btnVisarClick(Sender: TObject);
    Procedure btnAnularClick(Sender: TObject);
    Procedure btImprimirClick(Sender: TObject);

  Private
    xSQL: String;
    xModo: String;

  Public
      { Public declarations }

  End;

Var
  FInfoTec: TFInfoTec;

Implementation

Uses funciones, ATIDM1, ATI500, ATI530;

{$R *.dfm}
Procedure TFInfoTec.FormCreate(Sender: TObject);
Begin
  xSQL := 'SELECT ESTADOID, NOMBRE FROM ' + DMATI.wwEsquemaATI + 'ATI_EST_PARTE';
  DMATI.cdsQRY27.Close;
  DMATI.cdsQRY27.DataRequest(xSQL);
  DMATI.cdsQRY27.Open;

  dblcEstado.LookupField := 'NOMBRE';
  dblcEstado.LookupTable := DMATI.cdsQRY27;
  dblcEstado.Selected.Add('NOMBRE' + #9 + '25' + #9 + 'NOMBRE'#9#9);

  ControlForm;
End;

Procedure TFInfoTec.btnCancelarClick(Sender: TObject);
Begin
  Close;
  DMATI.cdsQry14.Close;
  DMATI.cdsQry14.IndexName := '';
  FCabInfoTecnico.FormCreate(Self);
End;

Procedure TFInfoTec.btnAceptaClick(Sender: TObject);
Var
  xCond, xValor: Integer;
  xNumInf: String;
  xNumInfTec: String;

Begin
  If MessageDlg('¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
      If Length(dbmmEvaTec.Text) = 0 Then
        Begin
          ShowMessage('Es necesario señalar la Evalucación Técnica');
          dbmmEvaTec.SetFocus;
          Exit;
        End;

      If Length(dbmmConTec.Text) = 0 Then
        Begin
          ShowMessage('Es necesario dar la Conclusión Técnica');
          dbmmConTec.SetFocus;
          Exit;
        End;

      xSQL := ' SELECT  NUMINF, ARTCODBAR FROM ' + DMATI.wwEsquemaATI + 'ATI_INFORME '
        + ' WHERE ARTCODBAR =' + QuotedStr(DMATI.cdsQRY14.FieldByName('ARTCODBAR').AsString)
        + ' AND  NUMINF =' + QuotedStr(DMATI.cdsQRY14.FieldByName('INFOTECID').AsString)
        + ' AND  ESTADO =' + QuotedStr('V');

      DMATI.cdsQry.Close;
      DMATI.cdsQry.DataRequest(xSQL);
      DMATI.cdsQry.Open;

      If DMATI.cdsQry.RecordCount = 0 Then
        Begin
          xCond := 1;
        End;

      If DMATI.cdsQRY14.FieldByName('INFOTECID').AsString = '' Then
        Begin
          xCond := 0;
        End;

      If xCond = 1 Then
        Begin
          ShowMessage('Número de Inf Atencion, no coincide con el Mencionado y/o no esta Visado');
          dbeInfAtenc.SetFocus;
          Exit;
        End;

      xSQL := 'SELECT NUMINFTEC '
        + '      FROM ' + DMATI.wwEsquemaATI + 'ATI_INF_TEC'
        + '     WHERE NUMINFTEC=' + quotedstr(DMATI.cdsQRY14.FieldByName('NUMINFTEC').AsString);
      DMATI.cdsQRY.Close;
      DMATI.cdsQRY.DataRequest(xSQL);
      DMATI.cdsQRY.Open;

      If DMATI.cdsQRY.RecordCount = 0 Then
        Begin
               //INGRESA ATI_INF_TEC
          xSQL := ' INSERT INTO ' + DMATI.wwEsquemaATI + 'ATI_INF_TEC '
            + ' (INFOTECID,'
            + ' NUMINFTEC,'
            + ' ARTCODBAR,'
            + ' FECHA, '
            + ' USUSOPTEC,'
            + ' USUARIO, '
            + ' UBICACION,'
            + ' EVATEC,'
            + ' CONTEC, '
            + ' ESTADO,'
            + ' INFESTADO,'
            + ' CABINFOTECID)'
            + ' VALUES ('
            + quotedstr(DMATI.cdsQRY14.FieldByName('INFOTECID').AsString) + ','
            + quotedstr(DMATI.cdsQRY14.FieldByName('NUMINFTEC').AsString) + ','
            + quotedstr(DMATI.cdsQRY14.FieldByName('ARTCODBAR').AsString) + ','
            + 'SYSDATE' + ','
            + quotedstr(UpperCase(DMATI.xResp)) + ','
            + quotedstr(DMATI.cdsQRY14.FieldByName('USUARIO').AsString) + ','
            + quotedstr(DMATI.cdsQRY14.FieldByName('UBICACION').AsString) + ','
            + quotedstr(DMATI.cdsQRY14.FieldByName('EVATEC').AsString) + ','
            + quotedstr(DMATI.cdsQRY14.FieldByName('CONTEC').AsString) + ','
            + quotedstr('I') + ','
            + quotedstr(DMATI.cdsQRY14.FieldByName('INFESTADO').AsString) + ','
            + quotedstr('NULL') + ')';

          Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
          Except
            ShowMessage('No se pudo Grabar');
            exit;
          End;

        End
      Else
        Begin
          xSQL := 'SELECT TO_DATE(SYSDATE) FECHA FROM DUAL';

          DMATI.cdsQry.Close;
          DMATI.cdsQry.DataRequest(xSQL);
          DMATI.cdsQry.Open;
          DMATI.cdsQRY14.FieldByName('FECHA').AsString := DMATI.cdsQry.FieldByName('FECHA').AsString;
            //ACTUALIZA EL ESTADO Y USUARIO DEL EQUIPO
          xSQL := ' UPDATE ' + DMATI.wwEsquemaATI + 'ATI_INF_TEC'
            + ' SET EVATEC =' + quotedstr(DMATI.cdsQRY14.FieldByName('EVATEC').AsString) + ','
            + '     CONTEC =' + quotedstr(DMATI.cdsQRY14.FieldByName('CONTEC').AsString) + ','
            + '     FECHA =' + quotedstr(DMATI.cdsQRY14.FieldByName('FECHA').AsString) + ','
            + '     INFESTADO =' + quotedstr(DMATI.cdsQRY14.FieldByName('INFESTADO').AsString) + ','
            + '     ESTADO =' + quotedstr('I')
            + ' WHERE NUMINFTEC = ' + quotedstr(DMATI.cdsQRY14.FieldByName('NUMINFTEC').AsString);

          Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
          Except
            ShowMessage('No se pudo Actualicar el Equipo');
            exit;
          End;
        End;

        //INSERTAR SI VA IR PARA GARANTIA
      xNumInf := dbeInfAtenc.Text; //DMATI.cdsQRY14.FieldByName('INFOTECID').AsString;
      xNumInfTec := DMATI.cdsQRY14.FieldByName('NUMINFTEC').AsString;

      If cbGarantia.Checked = true Then
        Begin

          xSQL := 'SELECT NUMINF, NUMINFTEC '
            + '      FROM ' + DMATI.wwEsquemaATI + 'ATI_ACT_GAR '
            + '     WHERE NUMINF=' + QuotedStr(xNumInf)
            + '        OR NUMINFTEC=' + QuotedStr(xNumInfTec);
          DMATI.cdsQry.Close;
          DMATI.cdsQry.DataRequest(xSQL);
          DMATI.cdsQry.Open;

          If (DMATI.cdsQry.RecordCount <= 0) Then
            Begin
              Try
                xSQL := ' INSERT INTO ' + DMATI.wwEsquemaATI + 'ATI_ACT_GAR '
                  + ' (ARTCODBAR, '
                  + ' FECHA, '
                  + ' NUMINF,'
                  + ' NUMINFTEC, '
                  + ' FECHAFIN, '
                  + ' GARANCOD, '
                  + ' TECNICOINI,'
                  + ' TECNICOFIN, '
                  + ' ESTADO ) '
                  + ' VALUES ( '
                  + quotedstr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString) + ','
                  + 'SYSDATE' + ',';

                If (xNumInf = '') Then
                  xSQL := xSQL + quotedstr('NO') + ','
                Else
                  xSQL := xSQL + quotedstr(xNumInf) + ',';

                xSQL := xSQL + quotedstr(xNumInfTec) + ','
                  + quotedstr('') + ','
                  + quotedstr(DMATI.Correlativo(DMATI.wwEsquemaATI + 'ATI_ACT_GAR', 'GARANCOD')) + ','
                  + quotedstr(DMATI.xResp) + ','
                  + quotedstr('') + ','
                  + quotedstr('INICIAL') + ')';
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
              Except
                ShowMessage('No se pudo Insertar la Garantía');
                exit;
              End;

            End
          Else
            Begin
              // SOLO SI NUMINFTEC = NO QUIERE DECIR QUE EXISET EL NUMINF ENTONCES
              // SOLO SE ACTUALIZA EL NUMINFTEC
              // SI NUMINFTEC <> NO ENTONCE NO HAY NADA QUE ACTUALIZAR
              If (DMATI.cdsQry.FieldByName('NUMINFTEC').AsString = 'NO') Then
                Begin
                  Try
                    xSQL := 'UPDATE ' + DMATI.wwEsquemaATI + 'ATI_ACT_GAR  '
                      + '       SET NUMINFTEC = ' + QuotedStr(xNumInfTec)
                      + '     WHERE NUMINF = ' + QuotedStr(xNumInf);

                    DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
                  Except
                    ShowMessage('No se pudo Actualizar la Garantía');
                    exit;
                  End;
                End;
            End;
        End
      Else
        Begin
          (*
          xSQL := 'DELETE FROM ' + DMATI.wwEsquemaATI + 'ATI_ACT_GAR  '
            + ' WHERE  NUMINF=' + QuotedStr(DMATI.cdsQRY14.FieldByName('INFOTECID').AsString);
            //+ ' WHERE  NUMINF=' + QuotedStr(DMATI.cdsQRY14.FieldByName('NUMINFTEC').AsString);
          *)

          xSQL := 'SELECT NUMINF, NUMINFTEC '
            + '      FROM ' + DMATI.wwEsquemaATI + 'ATI_ACT_GAR '
            + '     WHERE NUMINF=' + QuotedStr(xNumInf)
            + '        OR NUMINFTEC=' + QuotedStr(xNumInfTec);
          DMATI.cdsQry.Close;
          DMATI.cdsQry.DataRequest(xSQL);
          DMATI.cdsQry.Open;
          Try
            If (DMATI.cdsQry.FieldByName('NUMINF').AsString = 'NO') Then
              Begin
                xSQL := 'DELETE FROM ' + DMATI.wwEsquemaATI + 'ATI_ACT_GAR  '
                  + '     WHERE NUMINFTEC = ' + QuotedStr(xNumInfTec);

              End
            Else
              Begin
                xSQL := 'UPDATE ' + DMATI.wwEsquemaATI + 'ATI_ACT_GAR  '
                  + '       SET NUMINFTEC= ''NO'''
                  + '     WHERE NUMINF = ' + QuotedStr(xNumInf);
              End;
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
          Except
            ShowMessage('No se pudo Actualizar la Garantía');
            exit;
          End;
        End;

    End;

   //PARAMENTROS DE COMPORTAMIENTO DEL FORMULARIO
  ShowMessage('Ok');
  ControlForm;

End;

Procedure TFInfoTec.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
  If Key = #13 Then
    Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
    End;
End;

Procedure TFInfoTec.ControlForm;
Begin
  CierreControl;
//SITUACIÓN DEL INFORME TÈCNICO

  xSQL := 'SELECT  GARA.GARANCOD ,INFO.ESTADO '
    + '      FROM ' + DMATI.wwEsquemaATI + 'ATI_INF_TEC INFO, ' + DMATI.wwEsquemaATI + 'ATI_ACT_GAR GARA '
    + '     WHERE  INFO.NUMINFTEC = GARA.NUMINFTEC(+) '
    + '       AND INFO.NUMINFTEC = ' + QuotedStr(DMATI.cdsQRY14.FieldByName('NUMINFTEC').AsString);

  DMATI.cdsQRY.Close;
  DMATI.cdsQRY.DataRequest(xSQL);
  DMATI.cdsQRY.Open;
    //-------------Nuevo---------------------
  If DMATI.cdsQRY.RecordCount = 0 Then
    Begin
      btnAcepta.Enabled := True;
      lbInfoEst.Font.Color := clBlue;
      lbInfoEst.Caption := 'Nuevo';
    End
  Else
    btImprimir.Enabled := True;
    //-------------Modificable------------------
  If DMATI.cdsQRY.FieldByName('ESTADO').AsString = 'I' Then
    Begin
      btnVisar.Enabled := True;
      btnAnular.Enabled := True;
      btnAcepta.Enabled := True;
      lbInfoEst.Font.Color := DMATI.xInicial;
      lbInfoEst.Caption := 'Inicial';
    End;
    //------------visado----------------------
  If DMATI.cdsQRY.FieldByName('ESTADO').AsString = 'P' Then
    Begin
      lbInfoEst.Font.Color := DMATI.xFinal;
      lbInfoEst.Caption := 'Atendido';
      cbGarantia.Enabled := True
    End;
    //------------Anulado-----------------------
  If DMATI.cdsQRY.FieldByName('ESTADO').AsString = 'A' Then
    Begin
      Imagen.Visible := True;
      lbInfoEst.Font.Color := DMATI.xAnulado;
      lbInfoEst.Caption := '';
    End;

    //-----------------GARANTIA---------------------
  If Length(DMATI.cdsQry.FieldByName('GARANCOD').AsString) > 0 Then
    cbGarantia.Checked := True
  Else
    cbGarantia.Checked := False;

End;

Procedure TFInfoTec.CierreControl;
Begin
  btnAcepta.Enabled := False;
  btnVisar.Enabled := False;
  btnAcepta.Enabled := False;
  btnAnular.Enabled := False;
  btImprimir.Enabled := False;
  Imagen.Visible := False;
End;

Procedure TFInfoTec.btnVisarClick(Sender: TObject);
Begin
  If MessageDlg('¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
      xSQL := 'SELECT TO_DATE(SYSDATE) FECHA FROM DUAL';

      DMATI.cdsQry.Close;
      DMATI.cdsQry.DataRequest(xSQL);
      DMATI.cdsQry.Open;
      DMATI.cdsQRY14.FieldByName('FECHA').AsString := DMATI.cdsQry.FieldByName('FECHA').AsString;
            //ACTUALIZA EL ESTADO INFORME TECNICO
      xSQL := ' UPDATE ' + DMATI.wwEsquemaATI + 'ATI_INF_TEC'
        + ' SET ESTADO =' + quotedstr('P')
        + ' WHERE NUMINFTEC = ' + quotedstr(DMATI.cdsQRY14.FieldByName('NUMINFTEC').AsString);

      Try
        DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
      Except
        ShowMessage('No se pudo Actualicar el Equipo');
        exit;
      End;

        //ACTUALIZA EL ESTADO DEL INFORME
      xSQL := ' UPDATE ' + DMATI.wwEsquemaATI + 'ATI_INFORME '
        + ' SET ESTADO=''P'' '
        + ' WHERE NUMINF = ' + QuotedStr(DMATI.cdsQRY14.FieldByName('INFOTECID').AsString);

      Try
        DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
      Except
        ShowMessage('No se pudo Actualicar el Informe');
        exit;
      End;

        //ACTUALIZA EL ESTADO DEL MAESTRO DE SOPORTE
      xSQL := ' UPDATE ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK'
        + ' SET  ESTADO =' + quotedstr(DMATI.cdsQRY27.FieldByName('ESTADOID').AsString)
        + ' WHERE ARTCODBAR = ' + quotedstr(DMATI.cdsQRY14.FieldByName('ARTCODBAR').AsString);

      Try
        DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
      Except
        ShowMessage('No se pudo Actualicar el Equipo');
        exit;
      End;

      ControlForm;
    End;
End;

Procedure TFInfoTec.btnAnularClick(Sender: TObject);
Begin
  If MessageDlg('¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
      xSQL := 'SELECT TO_DATE(SYSDATE) FECHA FROM DUAL';

      DMATI.cdsQry.Close;
      DMATI.cdsQry.DataRequest(xSQL);
      DMATI.cdsQry.Open;
      DMATI.cdsQRY14.FieldByName('FECHA').AsString := DMATI.cdsQry.FieldByName('FECHA').AsString;
            //ACTUALIZA EL ESTADO INFORME TECNICO
      xSQL := ' UPDATE ' + DMATI.wwEsquemaATI + 'ATI_INF_TEC'
        + ' SET ESTADO =' + quotedstr('A')
        + ' WHERE NUMINFTEC = ' + quotedstr(DMATI.cdsQRY14.FieldByName('NUMINFTEC').AsString);

      Try
        DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
      Except
        ShowMessage('No se pudo Actualicar el Equipo');
        exit;
      End;
      ControlForm;
    End;
End;

Procedure TFInfoTec.btImprimirClick(Sender: TObject);
Begin
  xSQL := ' SELECT A.INFOTECID,'
    + ' A.PARTE_EQUIPOID, '
    + ' A.PARTE_SERIE,'
    + ' A.PARTE_NOMBRE,'
    + ' A.PARTE_TIPO,'
    + ' A.PARTE_MARCA,'
    + ' A.PARTE_CARACTERISTICA,'
    + ' A.PARTE_UNIDAD,'
    + ' A.PARTE_FRU, '
    + ' A.PARTE_ESTADO, '
    + ' A.NUMINFTEC,'
    + ' A.ARTCODBAR,'
    + ' A.INFESTADO,'
    + ' TO_DATE(A.FECHA) FECHA,'
    + ' TO_CHAR(A.FECHA,''HH:MM P.M.'') HORA,'
    + ' UPPER(A.USUSOPTEC) TECNICO, '
    + ' A.USUARIO,'
    + ' A.UBICACION,'
    + ' A.EVATEC, '
    + ' A.CONTEC, '
    + ' A.EQUIPO,'
    + ' A.EQUIPO_SERIE,'
    + ' A.EQUIPO_COLOR,'
    + ' A.EQUIPO_MODELO, '
    + ' A.EQUIPO_MARCA, '
    + ' A.EQUIPO_ESTADO,'
    + ' B.ARTCODBAR,'
    + ' B.SG_RECIBENOM,'
    + ' B.SG_UBICACION, '
    + ' A.GARANCOD '
    + ' FROM (SELECT ATI_INF_TEC.INFOTECID, '
    + ' ATI_PARTE_EQUIPO.PARTE_EQUIPOID,'
    + ' ATI_PARTE_EQUIPO.SERIE PARTE_SERIE,'
    + ' ATI_NOM_PAR_EQU.NOMBRE PARTE_NOMBRE,'
    + ' ATI_TIPOC.NOMBRE PARTE_TIPO, '
    + ' ATI_MARCA.NOMBRE PARTE_MARCA,'
    + ' ATI_CARACT.NOMBRE PARTE_CARACTERISTICA,'
    + ' ATI_PARTE_EQUIPO.CAPACIDAD || '''' || ATI_UNIDAD.NOMBRE PARTE_UNIDAD, '
    + ' ATI_PARTE_EQUIPO.FRU PARTE_FRU, '
    + ' ATI_EST_PARTE.NOMBRE PARTE_ESTADO,'
    + ' ATI_INF_TEC.NUMINFTEC,'
    + ' ATI_INF_TEC.FECHA,'
    + ' ATI_INF_TEC.USUSOPTEC,'
    + ' ATI_INF_TEC.USUARIO, '
    + ' ATI_INF_TEC.UBICACION, '
    + ' ATI_INF_TEC.EVATEC, '
    + ' ATI_INF_TEC.CONTEC, '
    + ' ATI_INF_TEC.INFESTADO, '
    + ' ARTICULO.ARTCODBAR, '
    + ' ARTICULO.ACFDES EQUIPO,'
    + ' ARTICULO.ACFSERIE EQUIPO_SERIE, '
    + ' ARTICULO.ACFCOLOR EQUIPO_COLOR,'
    + ' ARTICULO.ACFMODELO EQUIPO_MODELO,'
    + ' ATI_ACT_GAR.GARANCOD ,'
    + ' ARTICULO.ACFMARCA EQUIPO_MARCA, '
    + ' ACF109.ESTADODES EQUIPO_ESTADO'
    + ' FROM ' + DMATI.wwEsquemaATI + 'ATI_PARTE_EQUIPO, '
    + ' ' + DMATI.wwEsquemaATI + 'ATI_NOM_PAR_EQU, '
    + ' ' + DMATI.wwEsquemaATI + 'ATI_MARCA,'
    + ' ' + DMATI.wwEsquemaATI + 'ATI_TIPOC, '
    + ' ' + DMATI.wwEsquemaATI + 'ATI_CARACT,'
    + ' ' + DMATI.wwEsquemaATI + 'ATI_UNIDAD, '
    + ' ' + DMATI.wwEsquemaATI + 'ATI_EST_PARTE,'
    + ' ' + DMATI.wwEsquemaATI + 'ATI_INF_TEC,'
    + ' ' + DMATI.wwEsquemaATI + 'ATI_ACT_GAR, '
    + ' ' + DMATI.wwEsquemaProd + 'ACF201 ARTICULO,'
    + ' ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK ARTICULO1,'
    + ' ' + DMATI.wwEsquemaProd + 'ACF109,'
    + ' ' + DMATI.wwEsquemaProd + 'ACF123,'
    + ' ' + DMATI.wwEsquemaProd + 'ACF122,'
    + ' ' + DMATI.wwEsquemaProd + 'ACF121, '
    + ' ' + DMATI.wwEsquemaProd + 'ACF120, '
    + ' ' + DMATI.wwEsquemaATI + 'ATI_PAR_CONTROL '
    + ' WHERE ACF120.LOCID(+) = ARTICULO.LOCID '
    + ' AND ATI_INF_TEC.NUMINFTEC  = ATI_ACT_GAR.NUMINFTEC(+) '
    + ' AND ACF121.LOCID(+) = ARTICULO.LOCID '
    + ' AND ACF121.PISO(+) = ARTICULO.PISO '
    + ' AND ACF122.LOCID(+) = ARTICULO.LOCID '
    + ' AND ACF122.PISO(+) = ARTICULO.PISO '
    + ' AND ACF122.AREA(+) = ARTICULO.AREA '
    + ' AND ACF123.LOCID(+) = ARTICULO.LOCID '
    + ' AND ACF123.PISO(+) = ARTICULO.PISO '
    + ' AND ACF123.AREA(+) = ARTICULO.AREA '
    + ' AND ACF123.AMBCOD(+) = ARTICULO.AMBCOD '
    + ' AND ATI_PARTE_EQUIPO.NOMBRE_PARTE_EQUIPOID = ATI_NOM_PAR_EQU.NOMBRE_PARTE_EQUIPOID(+)'
    + ' AND ATI_PARTE_EQUIPO.MARCAID = ATI_MARCA.MARCAID(+)'
    + ' AND ATI_PARTE_EQUIPO.TIPOID = ATI_TIPOC.TIPOID(+)'
    + ' AND ATI_PARTE_EQUIPO.CARACTERISTICAID = ATI_CARACT.CARACTERISTICAID(+) '
    + ' AND ATI_PARTE_EQUIPO.UNIDADID = ATI_UNIDAD.UNIDADID(+) '
    + ' AND ATI_PARTE_EQUIPO.ESTADOID = ATI_EST_PARTE.ESTADOID(+)'
    + ' AND ATI_INF_TEC.ARTCODBAR = ATI_PARTE_EQUIPO.ARTCODBAR(+)'
    + ' AND ATI_INF_TEC.ARTCODBAR = ARTICULO.ARTCODBAR '
    + ' AND ARTICULO.ARTCODBAR = ARTICULO1.ARTCODBAR(+)'
    + ' AND ARTICULO1.ESTADO = ACF109.ESTADOID(+) '
    + ' AND ATI_PAR_CONTROL.ARTCODBAR(+)=ATI_PARTE_EQUIPO.ARTCODBAR '
    + ' AND ATI_PAR_CONTROL.PARTE_EQUIPOID (+)= ATI_PARTE_EQUIPO.PARTE_EQUIPOID '
    + ' AND ATI_PAR_CONTROL.FECSALPARTE IS NULL '
    + ' /*AND ARTICULO.TACFID = ''03''*/) A ,'
    + ' (SELECT ARTICULO.ARTCODBAR, '
    + ' ARTICULO.RECIBENOM SG_RECIBENOM, '
    + ' LOCALIZACION.LOCDES || '' - '' || PISO.PISODES || '' - '' ||'
    + ' AREA.AREADES || '' - '' || AMBIENTE.AMBDES SG_UBICACION '
    + ' FROM ' + DMATI.wwEsquemaProd + 'ACF201 ARTICULO,'
    + ' ' + DMATI.wwEsquemaProd + 'ACF123 AMBIENTE,'
    + ' ' + DMATI.wwEsquemaProd + 'ACF122 AREA,'
    + ' ' + DMATI.wwEsquemaProd + 'ACF121 PISO,'
    + ' ' + DMATI.wwEsquemaProd + 'ACF120 LOCALIZACION'
    + ' WHERE LOCALIZACION.LOCID(+) = ARTICULO.LOCID '
    + ' AND PISO.LOCID(+) = ARTICULO.LOCID '
    + ' AND PISO.PISO(+) = ARTICULO.PISO '
    + ' AND AREA.LOCID(+) = ARTICULO.LOCID'
    + ' AND AREA.PISO(+) = ARTICULO.PISO '
    + ' AND AREA.AREA(+) = ARTICULO.AREA '
    + ' AND AMBIENTE.LOCID(+) = ARTICULO.LOCID '
    + ' AND AMBIENTE.PISO(+) = ARTICULO.PISO '
    + ' AND AMBIENTE.AREA(+) = ARTICULO.AREA '
    + ' AND AMBIENTE.AMBCOD(+) = ARTICULO.AMBCOD) B'
    + ' WHERE A.ARTCODBAR = B.ARTCODBAR(+) '
    + ' AND A.NUMINFTEC = ' + QuotedStr(DMATI.cdsQRY14.FieldByName('NUMINFTEC').AsString);
  screen.cursor := crhourglass;
  DMATI.cdsQRY45.Close;
  DMATI.cdsQRY45.DataRequest(xSQL);
  DMATI.cdsQRY45.Open;
  screen.cursor := crdefault;
  ppdbinforme.DataSource := DMATI.dsQry45;

  If (copy(DMATI.cdsQry45.FieldByName('EQUIPO').AsString, 1, 14) <> 'UNIDAD CENTRAL') Or
//    If (DMATI.cdsQRY45.FieldByName('equipo').AsString = 'UNIDAD CENTRAL DE PROCESO - CPU') Or
  (DMATI.cdsQRY45.FieldByName('EQUIPO').AsString = 'SERVIDOR') Then
    Begin
      pplblGarantiaMax2.Caption := '';
      If length(trim(DMATI.cdsQRY45.FieldByName('GARANCOD').AsString)) > 0 Then
        pplblGarantiaMax2.Caption := 'Equipo en Garantía con referencia :' + trim(DMATI.cdsQRY45.FieldByName('GARANCOD').AsString);

      pplblGarantiaMax0.Visible := cbGarantia.Checked;
      pplblGarantiaMax1.Visible := cbGarantia.Checked;
      pplblGarantiaMax2.Visible := cbGarantia.Checked;
      pplblGarantiaMax3.Visible := cbGarantia.Checked;
      ppspGarantiaMax.Visible := cbGarantia.Checked;

      //ppdInformeMax.Show;
      pprinformeMax.Print;
      pprinformeMax.Stop;
    End
  Else
    Begin
      pplblGarantia2.Caption := '';
      If length(trim(DMATI.cdsQRY45.FieldByName('GARANCOD').AsString)) > 0 Then
        pplblGarantia2.Caption := 'Equipo en Garantía con referencia :' + trim(DMATI.cdsQRY45.FieldByName('GARANCOD').AsString);

      pplblGarantia0.Visible := cbGarantia.Checked;
      pplblGarantia1.Visible := cbGarantia.Checked;
      pplblGarantia2.Visible := cbGarantia.Checked;
      pplblGarantia3.Visible := cbGarantia.Checked;
      ppspGarantia.Visible := cbGarantia.Checked;

      //ppdInforme.Show;
      pprinforme.Print;
      pprinforme.Stop;
    End;
End;

End.

