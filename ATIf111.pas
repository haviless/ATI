Unit ATIf111;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FMTBcd, DB, SqlExpr, Grids, Wwdbigrd, Wwdbgrid,
   Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, Mask,
   wwdbedit, ppBands, ppCache, ppClass, ppEndUsr, ppProd, ppReport, ppComm,
   ppRelatv, ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppParameter,
   fcButton, fcImgBtn, fcShapeBtn, wwdblook, DBCtrls;

Type
   TFCabeceraIngreso1 = Class(TForm)
      Label1: TLabel;
      pnlPie: TPanel;
      ppdbOficjna: TppDBPipeline;
      pprOficina: TppReport;
      ppdOficina: TppDesigner;
      ppParameterList1: TppParameterList;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLine1: TppLine;
      ppLabel3: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppLabel4: TppLabel;
      ppLine11: TppLine;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppLine6: TppLine;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppLine10: TppLine;
      ppDBText3: TppDBText;
      ppLine12: TppLine;
      ppSummaryBand1: TppSummaryBand;
      dbgCabeceraIngreso: TwwDBGrid;
      dbgOficinaIButton: TwwIButton;
      pnlEntrada: TPanel;
      Label2: TLabel;
      lbTecnico: TLabel;
      Label11: TLabel;
      dblcSSGG: TwwDBLookupCombo;
      dbeNumDoc: TwwDBEdit;
      dbeTencico: TwwDBEdit;
      dbeNumCabIng: TwwDBEdit;
      Label3: TLabel;
      dblcTipoDoc: TwwDBLookupCombo;
      Label4: TLabel;
      btnAcepta: TfcShapeBtn;
      z2bbtnCancelar: TfcShapeBtn;
      lbTipo: TLabel;
      dblcTipoEntrada: TwwDBLookupCombo;
      Label5: TLabel;
      dbmmObservacion: TDBMemo;
      btnRetorno: TfcShapeBtn;
      Procedure FormCreate(Sender: TObject);
      Procedure dbgCabeceraIngresoDblClick(Sender: TObject);
      Procedure dbgOficinaIButtonClick(Sender: TObject);
      Procedure z2bbtnCancelarClick(Sender: TObject);
      Procedure dbeNumDocKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnAceptaClick(Sender: TObject);
      Procedure btnRetornoClick(Sender: TObject);

   Private
      xSQL: String;
      xModo: String; // I=Insercion M=Modificacion
   Public
      { Public declarations }
   End;

Var
   FCabeceraIngreso1: TFCabeceraIngreso1;

Implementation

Uses ATIDM1, funciones, ATI301, ATI110;

{$R *.dfm}

Procedure TFCabeceraIngreso1.FormCreate(Sender: TObject);
Begin
   xSQL := ' select NUMCABING,'
      + ' nrodoc,'
      + ' to_date(fecha),'
      + ' userid,'
      + ' ssgg.ssggid,'
      + ' ssgg.nombre ssgg,'
      + ' tipdocid,'
      + ' guia_entrada_tipo.guia_entrada_tipoid,'
      + ' guia_entrada_tipo.nombre Tipo_Entrada,'
      + ' observacion'
      + ' from ati_cab_ing, ssgg, guia_entrada_tipo'
      + ' where ati_cab_ing.ssggid = ssgg.ssggid'
      + ' and ati_cab_ing.guia_entrada_tipoid ='
      + ' guia_entrada_tipo.guia_entrada_tipoid(+)'
      + ' and numcabing <> ''0'''
      + ' order by to_number(NUMCABING)';

   DMATI.cdsQry3.Close;
   DMATI.cdsQry3.DataRequest(xSQL);
   DMATI.cdsQry3.Open;
   dbgCabeceraIngreso.DataSource := DMATI.dsQry3;

   dbgCabeceraIngreso.Selected.Clear;
   dbgCabeceraIngreso.Selected.Add('NUMCABING' + #9 + '5' + #9 + 'N°');
   dbgCabeceraIngreso.Selected.Add('nrodoc' + #9 + '25' + #9 + 'N° DOCUMENTO');
   dbgCabeceraIngreso.Selected.Add('tipdocid' + #9 + '25' + #9 + 'TIPO DOCUMENTO');
   dbgCabeceraIngreso.Selected.Add('fecha' + #9 + '15' + #9 + 'FECHA');
   dbgCabeceraIngreso.Selected.Add('ssgg' + #9 + '25' + #9 + 'SSGG');
   dbgCabeceraIngreso.Selected.Add('userid' + #9 + '25' + #9 + 'TECNICO');
   dbgCabeceraIngreso.ApplySelected;

   //CARGA EL COMBO DE REPONSABLES DE SSGG
   xSQL := ' select nombre, clave, descripcion, ssggid from ssgg'
      + ' ORDER BY nombre';
   DMATI.cdsQRY26A.Close;
   DMATI.cdsQRY26A.DataRequest(xSQL);
   DMATI.cdsQRY26A.Open;
   dblcSSGG.LookupTable := DMATI.cdsQRY26A;
   dblcSSGG.Selected.Add('nombre' + #9 + '15' + #9 + 'SSGG');
   dblcSSGG.LookupField := 'nombre';

   //CARGA EL COMBO DE TIPO DE GUIA DE ENTRADA
   xSQL := ' select guia_entrada_tipoid, nombre, descripcion from guia_entrada_tipo'
      + ' ORDER BY nombre';
   DMATI.cdsQRY28A.Close;
   DMATI.cdsQRY28A.DataRequest(xSQL);
   DMATI.cdsQRY28A.Open;
   dblcTipoEntrada.LookupTable := DMATI.cdsQRY28A;
   dblcTipoEntrada.Selected.Add('nombre' + #9 + '15' + #9 + 'TIPO ENTRADA');
   dblcTipoEntrada.LookupField := 'nombre';

   xSQL := ' select tipdocnom, tipodocid from ati_tip_doc'
      + ' order by tipdocnom';

   DMATI.cdsQry21.Close;
   DMATI.cdsQry21.DataRequest(xSQL);
   DMATI.cdsQry21.open;
   dblcTipoDoc.LookupTable := DMATI.cdsQry21;
   dblcTipoDoc.Selected.Add('tipdocnom' + #9 + '15' + #9 + 'TIPO DOCUMENTO°');
   dblcTipoDoc.LookupField := 'tipdocnom';

End;

Procedure TFCabeceraIngreso1.dbgCabeceraIngresoDblClick(Sender: TObject);
Begin
   FDetalleIngreso := TFDetalleIngreso.Create(Self);
   Try
      FDetalleIngreso.ShowModal;
   Finally
      FDetalleIngreso.Free;
   End;
End;

Procedure TFCabeceraIngreso1.dbgOficinaIButtonClick(Sender: TObject);
Begin

   xSQL := 'select max(to_number(NUMCABING)+1) NUMERO from ati_cab_ing';
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   DMATI.cdsQry3.Append;
   DMATI.cdsQry3.FieldByName('NUMCABING').AsString := DMATI.cdsQry.FieldByName('NUMERO').AsString;
   dbeNumCabIng.DataField := 'NUMCABING';
   dbeNumCabIng.DataSource := DMATI.dsQry3;
   //CARGA TECNICO ENCARGADO
   DMATI.cdsQry3.FieldByName('userid').AsString := DMATI.xResp;
   pnlEntrada.Visible := True;
   btnAcepta.Enabled := True;

End;

Procedure TFCabeceraIngreso1.z2bbtnCancelarClick(Sender: TObject);
Begin
   pnlEntrada.Visible := False;
   DMATI.cdsQry3.CancelUpdates;
   Close;
End;

Procedure TFCabeceraIngreso1.dbeNumDocKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Not (Key In ['0'..'9', #8, #45, #46]) Then
      Begin
         Key := #0;
      End;
End;

Procedure TFCabeceraIngreso1.btnAceptaClick(Sender: TObject);
Begin
   If MessageDlg('¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If Length(DMATI.cdsQry3.FieldByName('observacion').AsString) = 0 Then
            Begin
               ShowMessage('Es necesario dejar una observación');
               dbmmObservacion.SetFocus;
               Exit;
            End;
         If Length(DMATI.cdsQry3.FieldByName('nrodoc').AsString) = 0 Then
            Begin
               ShowMessage('Es necesario, el numero de Documento');
               dbeNumDoc.SetFocus;
               Exit;
            End;
         If Length(DMATI.cdsQry3.FieldByName('tipdocid').AsString) = 0 Then
            Begin
               ShowMessage('Es necesario, escojer el tipo de documento');
               dblcTipoDoc.SetFocus;
               Exit;
            End;

         If Length(DMATI.cdsQry3.FieldByName('ssggid').AsString) = 0 Then
            Begin
               ShowMessage('Es necesario señalar quien trajo el Equipo');
               dblcSSGG.SetFocus;
               Exit;
            End;

         xSQL := 'select numcabing, nrodoc '
            + ' from ati_cab_ing '
            + ' where nrodoc=' + quotedstr(DMATI.cdsQry3.FieldByName('nrodoc').AsString)
            + ' and numcabing<>' + quotedstr(DMATI.cdsQry3.FieldByName('numcabing').AsString);

         DMATI.cdsQry.Close;
         DMATI.cdsQry.DataRequest(xSQL);
         DMATI.cdsQry.Open;
         If DMATI.cdsQry.Recordcount > 0 Then
            Begin
               ShowMessage('Este N° de Documento ya fue Registrado');
               dbeNumDoc.SetFocus;
               exit;
            End;

         xSQL := 'insert into ati_cab_ing'
            + ' (numcabing,'
            + ' nrodoc,'
            + ' fecha,'
            + ' userid,'
            + ' ssggid,'
            + ' tipdocid,'
            + ' guia_entrada_tipoid,'
            + ' observacion)'
            + ' values ('
            + QuotedStr(DMATI.cdsQry3.FieldByName('numcabing').AsString) + ','
            + QuotedStr(DMATI.cdsQry3.FieldByName('nrodoc').AsString) + ','
            + 'sysdate' + ','
            + QuotedStr(DMATI.cdsQry3.FieldByName('userid').AsString) + ','
            + QuotedStr(DMATI.cdsQRY26A.FieldByName('ssggid').AsString) + ','
            + QuotedStr(DMATI.cdsQry3.FieldByName('tipdocid').AsString) + ','
            + QuotedStr(DMATI.cdsQRY28A.FieldByName('guia_entrada_tipoid').AsString) + ','
            + QuotedStr(DMATI.cdsQry3.FieldByName('observacion').AsString) + ')';

         //ACTUALIZA LISTA
         DMATI.cdsQRY3.FieldByName('ssggid').AsString := DMATI.cdsQRY26A.FieldByName('ssggid').AsString;
         DMATI.cdsQRY3.FieldByName('ssgg').AsString := DMATI.cdsQRY26A.FieldByName('nombre').AsString;
         DMATI.cdsQRY3.FieldByName('Tipo_Entrada').AsString := DMATI.cdsQRY28A.FieldByName('nombre').AsString;

         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Grabar');
            exit;
         End;

      End
   Else
      Begin
         btnAcepta.Enabled := False;
         pnlEntrada.Visible := False;
         Exit;
      End;

   btnAcepta.Enabled := False;
   pnlEntrada.Visible := False;

   FDetalleIngreso := TFDetalleIngreso.Create(Self);
   Try
      FDetalleIngreso.ShowModal;
   Finally
      FDetalleIngreso.Free;
   End;

End;

Procedure TFCabeceraIngreso1.btnRetornoClick(Sender: TObject);
Begin
   pnlEntrada.Visible := False;
   DMATI.cdsQry3.CancelUpdates;
   btnAcepta.Enabled := False;
End;

End.

