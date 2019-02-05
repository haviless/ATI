Unit ATI500;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
   wwdbdatetimepicker, wwmonthcalendar, Buttons, Mask, wwdbedit, wwdblook,
   Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn, DBCtrls, ppEndUsr, ppParameter,
   ppMemo, ppStrtch, ppRegion, ppBands, ppBarCod, ppCtrls, ppVar, ppPrnabl,
   ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe;

Type
   TFInfoTecnico = Class(TForm)
      lbUbicacion: TLabel;
      pnlPie: TPanel;
      pnlInforme: TPanel;
      Label1: TLabel;
      Label5: TLabel;
      Label3: TLabel;
      Label2: TLabel;
      Label6: TLabel;
      Label4: TLabel;
      dbmmObservacion: TDBMemo;
      dbeCodInfo: TwwDBEdit;
      wwDBEdit2: TwwDBEdit;
      wwDBEdit1: TwwDBEdit;
      wwDBEdit3: TwwDBEdit;
      wwDBEdit4: TwwDBEdit;
      dbgDetalleInforme: TwwDBGrid;
      btnIngDetalle: TwwIButton;
      btnTerminar: TfcShapeBtn;
      btnAnular: TfcShapeBtn;
      btnAcepta: TfcShapeBtn;
      btnImprimir: TfcShapeBtn;
      btnGrabar: TfcShapeBtn;
      ppdbInfoTec: TppDBPipeline;
      pprInfoTec: TppReport;
      ppParameterList2: TppParameterList;
      ppdInfoTec: TppDesigner;
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
      Procedure btnTerminarClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure DisabledButtons;
      Procedure EnabledButtons;
      Procedure btnGrabarClick(Sender: TObject);
      Procedure btnIngDetalleClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure dbgDetalleInformeDblClick(Sender: TObject);
      Procedure btnGuardarClick(Sender: TObject);
      Procedure btnAceptaClick(Sender: TObject);
      Procedure btnAnularClick(Sender: TObject);
      Procedure btnImprimirClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbgDetalleInformeKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);

   Private
      xSQL: String;
      { Private declarations }
   Public
      xModo: String;
      { Public declarations }
   End;

Var
   FInfoTecnico: TFInfoTecnico;

Implementation

Uses ATIDM1, ATI321, ATI530;

{$R *.dfm}
Procedure TFInfoTecnico.FormCreate(Sender: TObject);
Begin
   xSQL := 'SELECT DISTINCT ATI_INF_TEC.INFOTECID, '
      + ' ATI_INF_TEC.NUMINFTEC , '
      + ' ATI_INF_TEC.CABINFOTECID , '
      + ' ATI_INF_TEC.ARTCODBAR,'
      + ' ACF201.ACFSERIE,'
      + ' ACF201.ACFDES,'
      + ' ATI_INF_TEC.FECHA, '
      + ' ATI_INF_TEC.USUARIO, '
      + ' ATI_INF_TEC.UBICACION,'
      + ' ATI_INF_TEC.EVATEC, '
      + ' ATI_INF_TEC.CONTEC, '
      + ' ATI_INF_TEC.SOLUCIONADO,'
      + ' ATI_INF_TEC.INFESTADO,'
      + ' ACF109.ESTADODES, '
      + ' ATI_SOP_STOCK.RECIBENOM S_RECIBENOM,'
      + ' ACF120.LOCDES || '' - '' ||ACF121.PISODES|| '' - '' || '
      + ' ACF122.AREADES|| '' - '' ||ACF123.AMBDES S_UBICACION, '
      + ' ''' + DMATI.XRESP + ''' TECNICO '
      + ' FROM '+DMATI.wwEsquemaProd+'ACF201,  '
      + ' '+DMATI.wwEsquemaATI+'ATI_INF_TEC, '
      + ' '+DMATI.wwEsquemaProd+'ACF109,'
      + ' '+DMATI.wwEsquemaProd+'ACF123,'
      + ' '+DMATI.wwEsquemaProd+'ACF122,'
      + ' '+DMATI.wwEsquemaProd+'ACF121,'
      + ' '+DMATI.wwEsquemaProd+'ACF120, '
      + ' '+DMATI.wwEsquemaATI+'ATI_SOP_STOCK '
      + ' WHERE ACF120.LOCID(+) = ATI_SOP_STOCK.LOCID '
      + ' AND ACF121.LOCID(+) = ATI_SOP_STOCK.LOCID '
      + ' AND ACF121.PISO(+) = ATI_SOP_STOCK.PISO'
      + ' AND ACF122.LOCID(+) = ATI_SOP_STOCK.LOCID '
      + ' AND ACF122.PISO(+) = ATI_SOP_STOCK.PISO '
      + ' AND ACF122.AREA(+) = ATI_SOP_STOCK.AREA '
      + ' AND ACF123.LOCID(+) = ATI_SOP_STOCK.LOCID '
      + ' AND ACF123.PISO(+) = ATI_SOP_STOCK.PISO'
      + ' AND ACF123.AREA(+) = ATI_SOP_STOCK.AREA'
      + ' AND ACF123.AMBCOD(+) = ATI_SOP_STOCK.AMBCOD '
      + ' AND ATI_SOP_STOCK.ARTCODBAR(+) = ACF201.CODIGOBARRA' //ACF201.ARTCODBAR '
      + ' AND ACF201.CODIGOBARRA = ATI_INF_TEC.ARTCODBAR'//ACF201.ARTCODBAR = ATI_INF_TEC.ARTCODBAR '
      + ' AND ATI_SOP_STOCK.ESTADO = ACF109.ESTADOID(+) '
      + ' AND ATI_INF_TEC.CABINFOTECID = ' + QUOTEDSTR(DMATI.cdsQry14.FIELDBYNAME('CABINFOTECID').AsString)
      + ' ORDER BY TO_NUMBER(ATI_INF_TEC.NUMINFTEC) ';

   DMATI.cdsQRY44.Close;
   DMATI.cdsQRY44.DataRequest(xSQL);
   DMATI.cdsQRY44.Open;
   dbgDetalleInforme.DataSource := DMATI.dsQRY44;

   dbgDetalleInforme.Selected.clear;
   dbgDetalleInforme.Selected.Add('NUMINF' + #9 + '10' + #9 + 'N° ATI_INF_TEC');
   dbgDetalleInforme.Selected.Add('ARTCODBAR' + #9 + '15' + #9 + 'N° INVENTARIO');
   dbgDetalleInforme.Selected.Add('SERIE' + #9 + '10' + #9 + 'SERIE');
   dbgDetalleInforme.Selected.Add('ACFDES' + #9 + '35' + #9 + 'EQUIPO');
   dbgDetalleInforme.Selected.Add('FECHA' + #9 + '25' + #9 + 'FECHA');

   dbgDetalleInforme.ApplySelected;
   EnabledButtons;
End;

Procedure TFInfoTecnico.btnTerminarClick(Sender: TObject);
Begin
   FCabInfoTecnico.FormCreate(Self);
   close;
End;

Procedure TFInfoTecnico.EnabledButtons;
Begin
   DisabledButtons;
   If DMATI.cdsQry14.FieldByName('INFESTADO').AsString = 'P' Then
      Begin
         btnImprimir.Enabled := True;
         dbgDetalleInforme.Enabled := True;
      End;
   If DMATI.cdsQry14.FieldByName('INFESTADO').AsString = 'I' Then
      Begin
         dbmmObservacion.Enabled := True;
         btnIngDetalle.Enabled := True;
         btnAnular.Enabled := True;
         btnAcepta.Enabled := True;
         btnGrabar.Enabled := True;
         dbgDetalleInforme.Enabled := True;
         {If DMATI.cdsQry14.RecordCount > 0 Then
            Begin
               btnImprimir.Enabled := True;
            End;}
      End;
   If DMATI.cdsQry14.FieldByName('INFESTADO').AsString = 'A' Then
      Begin
         btnImprimir.Enabled := True;
      End;

   If FCabInfoTecnico.xModo = 'A' Then
      Begin
         btnGrabar.Enabled := True;
         dbmmObservacion.Enabled := True;
      End;

End;

Procedure TFInfoTecnico.DisabledButtons;
Begin
   btnIngDetalle.Enabled := False;
   btnAnular.Enabled := False;
   btnAcepta.Enabled := False;
   btnImprimir.Enabled := False;
   btnGrabar.Enabled := False;
   dbgDetalleInforme.Enabled := False;
   dbmmObservacion.Enabled := False;

End;

Procedure TFInfoTecnico.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   If btnAcepta.Enabled Then
      DMATI.cdsQry14.CancelUpdates;
   If btnGrabar.Enabled Then
      DMATI.cdsQry14.CancelUpdates;

End;

Procedure TFInfoTecnico.btnGrabarClick(Sender: TObject);
Begin
   If MessageDlg('¿Guardar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If Length(DMATI.cdsQry14.FieldByName('observacion').AsString) = 0 Then
            Begin
               ShowMessage('Debe dejar una Observación');
               dbmmObservacion.SetFocus;
               Exit;
            End;
         If FCabInfoTecnico.xModo = 'A' Then
            Begin
               xSQL := 'INSERT INTO '+DMATI.wwEsquemaATI+'ATI_CAB_INF_TEC'
                  + ' (CABINFOTECID,'
                  + ' FECHA, '
                  + ' USUSOPTEC, '
                  + ' OBSERVACION,'
                  + ' INFESTADO)'
                  + ' values('
                  + quotedstr(DMATI.cdsQRY14.FieldByName('CABINFOTECID').AsString) + ','
                  + 'SYSDATE' + ','
                  + quotedstr(DMATI.cdsQRY14.FieldByName('USUSOPTEC').ASString) + ','
                  + quotedstr(DMATI.cdsQRY14.FieldByName('OBSERVACION').AsString) + ','
                  + '''I''' + ')';
            End;
         If FCabInfoTecnico.xModo = 'M' Then
            Begin
               xSQL := 'UPDATE '+DMATI.wwEsquemaATI+'ATI_CAB_INF_TEC'
                  + ' set USUSOPTEC = ' + quotedstr(DMATI.cdsQRY14.FieldByName('USUSOPTEC').AsString) + ','
                  + ' OBSERVACION = ' + quotedstr(DMATI.cdsQRY14.FieldByName('OBSERVACION').AsString) + ','
                  + ' INFESTADO = ''I'''
                  + ' where CABINFOTECID = ' + quotedstr(DMATI.cdsQRY14.FieldByName('CABINFOTECID').AsString);
            End;
         DMATI.cdsQRY14.FieldByName('INFESTADO').AsString := 'I';
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Grabar');
            exit;
         End;

         btnGrabar.Enabled := False;
         btnIngDetalle.Enabled := True;
         dbgDetalleInforme.Enabled := True;
      End;

End;

Procedure TFInfoTecnico.btnIngDetalleClick(Sender: TObject);
Begin
   xModo := 'A';
   xSQL := ' select nvl(max(to_number(INFOTECID)+1),1) NUMERO from '+DMATI.wwEsquemaATI+'ATI_INF_TEC ';

   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   DMATI.cdsQRY44.Append;
   DMATI.cdsQRY44.FieldByName('INFOTECID').AsString := DMATI.cdsQry.FieldByName('NUMERO').AsString;
   DMATI.cdsQRY44.FieldByName('CABINFOTECID').AsString := DMATI.cdsQry14.FieldByName('CABINFOTECID').AsString;

   xSQL := ' SELECT NVL((MAX(TO_NUMBER(NUMINFTEC)+1)),1)NUMERO1'
      + ' ,TRIM(TO_CHAR(SYSDATE,''YYYY'')||''0000'')+1 NUMERO2 FROM '+DMATI.wwEsquemaATI+'ATI_INF_TEC'
      + ' WHERE SUBSTR(NUMINFTEC,1,4)=TO_CHAR(SYSDATE,''YYYY'')';

   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;

   If DMATI.cdsQry.FieldByName('NUMERO1').AsInteger = 1 Then
      Begin
         DMATI.cdsQRY44.FieldByName('NUMINFTEC').AsString := DMATI.cdsQry.FieldByName('NUMERO2').AsString;
      End
   Else
      Begin
         DMATI.cdsQRY44.FieldByName('NUMINFTEC').AsString := DMATI.cdsQry.FieldByName('NUMERO1').AsString;
      End;

   FInfoTec := TFInfoTec.Create(Self);
   Try
      FInfoTec.ShowModal;
   Finally
      FInfoTec.Free;
   End;

End;

Procedure TFInfoTecnico.dbgDetalleInformeDblClick(Sender: TObject);

Begin
   xModo := 'M';
   DMATI.cdsQRY44.Edit;
   FInfoTec := TFInfoTec.Create(Self);
   Try
      FInfoTec.ShowModal;
   Finally
      FInfoTec.Free;
   End;

End;

Procedure TFInfoTecnico.btnGuardarClick(Sender: TObject);
Begin
   //CONTROL DE COMPORTAMIENTO DEL FORMULARIO
   btnAcepta.Enabled := True;
   btnAnular.Enabled := True;
End;

Procedure TFInfoTecnico.btnAceptaClick(Sender: TObject);
Begin
   If MessageDlg('¿Guardar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin

         xSQL := 'update '+DMATI.wwEsquemaATI+'ATI_CAB_INF_TEC '
            + ' set INFESTADO = ''P'' '
            + ' where CABINFOTECID= ' + QuotedStr(DMATI.cdsQRY14.FieldByName('CABINFOTECID').AsString);
         DMATI.cdsQRY14.Edit;
         DMATI.cdsQRY14.FieldByName('INFESTADO').AsString := 'P';
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Grabar');
            exit;
         End;

         DMATI.cdsQRY44.First;
         While Not DMATI.cdsQRY44.Eof Do
            Begin
               xSQL := ' update '+DMATI.wwEsquemaATI+'ATI_INF_TEC '
                  + ' set INFESTADO = ''P'' '
                  + ' where CABINFOTECID = ' + QuotedStr(DMATI.cdsQRY14.FieldByName('CABINFOTECID').AsString);

               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo Grabar');
                  exit;
               End;
               DMATI.cdsQRY44.Edit;
               DMATI.cdsQRY44.FieldByName('INFESTADO').AsString := 'P';
               DMATI.cdsQRY44.Next;
            End;

         //CONTROL DE COMPORTAMIENTO DEL FORMULARIO
         btnImprimir.Enabled := True;
         btnAnular.Enabled := False;
         btnAcepta.Enabled := False;
      End;
End;

Procedure TFInfoTecnico.btnAnularClick(Sender: TObject);
Begin
   If MessageDlg('¿Seguro de Anular el Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin

         xSQL := 'update '+DMATI.wwEsquemaATI+'ATI_CAB_INF_TEC '
            + ' set INFESTADO = ''A'' '
            + ' where CABINFOTECID= ' + QuotedStr(DMATI.cdsQRY14.FieldByName('CABINFOTECID').AsString);

         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Grabar');
            exit;
         End;
         DMATI.cdsQRY14.Edit;
         DMATI.cdsQRY14.FieldByName('INFESTADO').AsString := 'A';

         DMATI.cdsQRY44.First;
         While Not DMATI.cdsQRY44.Eof Do
            Begin
               xSQL := ' update '+DMATI.wwEsquemaATI+'ATI_INF_TEC '
                  + ' set INFESTADO = ''A'' '
                  + ' where CABINFOTECID = ' + QuotedStr(DMATI.cdsQRY14.FieldByName('CABINFOTECID').AsString);

               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo Grabar');
                  exit;
               End;
               DMATI.cdsQRY44.Edit;
               DMATI.cdsQRY44.FieldByName('INFESTADO').AsString := 'A';
               DMATI.cdsQRY44.Next;
            End;

         //CONTROL DE COMPORTAMIENTO DEL FORMULARIO
         btnAcepta.Enabled := False;
         btnAnular.Enabled := False;
         btnGrabar.Enabled := False;
         btnImprimir.Enabled := True;
      End;

End;

Procedure TFInfoTecnico.btnImprimirClick(Sender: TObject);
Begin
   xSQL := 'Select INFORMECAB.CABINFOTECID, ARTICULO.ARTCODBAR, ARTICULO.ACFSERIE, ARTICULO.ACFDES, ARTICULO.ACFMARCA, '
         + '       ARTICULO.ACFMODELO, ARTICULO.ACFCOLOR, ESTADO.ESTADODES, TO_DATE(INFORMECAB.FECHA) FECHA, '
         + '       TO_CHAR(INFORMECAB.FECHA,''HH:MM:SS P.M.'') HORA, INFORMECAB.OBSERVACION, INFORMECAB.USUSOPTEC, '
         + '       INFORMEDET.NUMINFTEC '
         + '  from '+DMATI.wwEsquemaATI+'ATI_SOP_STOCK ARTICULO,'
                    +DMATI.wwEsquemaATI+'ATI_CAB_INF_TEC INFORMECAB,'
                    +DMATI.wwEsquemaATI+'ATI_INF_TEC INFORMEDET,'
         + '        ACF109 ESTADO'
         + ' where INFORMEDET.CABINFOTECID = INFORMECAB.CABINFOTECID '
         + '   and ARTICULO.ESTADO = ESTADO.ESTADOID(+) '
         + '   and INFORMEDET.ARTCODBAR = ARTICULO.ARTCODBAR(+)'
         + '   and INFORMECAB.CABINFOTECID=' + quotedstr(DMATI.cdsQRY14.FieldByName('CABINFOTECID').AsString);
   DMATI.cdsQry5.Close;
   DMATI.cdsQry5.DataRequest(xSQL);
   DMATI.cdsQry5.Open;
   ppdbInfoTec.DataSource := DMATI.dsQry5;
   pprInfoTec.Print;
   pprInfoTec.Stop;
End;

Procedure TFInfoTecnico.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(CM_DialogKey, VK_TAB, 0);
      End;
End;

Procedure TFInfoTecnico.dbgDetalleInformeKeyDown(Sender: TObject;
   Var Key: Word; Shift: TShiftState);
Begin
   If (key = VK_Delete) Then
      Begin
         //
         If DMATI.cdsQRY44.FieldByName('INFESTADO').AsString = 'P' Then
            Begin
               ShowMessage('El documento ya ha sido Aceptado, no se permite Eliminar detalle');
               exit;
            End;
         If DMATI.cdsQRY44.FieldByName('INFESTADO').AsString = 'A' Then
            Begin
               ShowMessage('El documento ya ha sido Anulado, no se permite Eliminar detalle');
               exit;
            End;

         If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               xSQL := ' DELETE '
                  + ' from '+DMATI.wwEsquemaATI+'ATI_INF_TEC '
                  + ' where CABINFOTECID =' + quotedstr(DMATI.cdsQRY14.FieldByName('CABINFOTECID').AsString)
                  + '   AND ARTCODBAR= ' + quotedstr(DMATI.cdsQRY44.FieldByName('ARTCODBAR').AsString);
               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo Eliminar el Equipo');
                  exit;
               End;
               DMATI.cdsQRY44.Delete;
            End;

      End;
End;

End.

