Unit ATI124;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, wwdbedit, Buttons, ExtCtrls, Wwdbigrd, Grids,
   Wwdbgrid, wwdblook, DB;

Type
   TFManComUnidad = Class(TForm)
      Label3: TLabel;
      dbgTecnologia: TwwDBGrid;
      wwDBGrid1IButton: TwwIButton;
      pnlPie: TPanel;
      BitBtn1: TBitBtn;
      dbgRel: TwwDBGrid;
      wwIButton1: TwwIButton;
      pnlActualizacionR: TPanel;
      Label7: TLabel;
      BitBtn3: TBitBtn;
      BitBtn4: TBitBtn;
      dblcEquipo: TwwDBLookupCombo;
      pnlActualizacion: TPanel;
      Label2: TLabel;
      Label1: TLabel;
      Z2bbtnCanc3: TBitBtn;
      BModificar: TBitBtn;
      dbeCodigo: TwwDBEdit;
      dbeNombre: TwwDBEdit;
      lblTecnologia: TLabel;
      dbeRelTecnologia: TwwDBEdit;
    dbeNombreCom: TwwDBEdit;
      dbeEquipo: TwwDBEdit;
      edtBuscar: TEdit;
      Label4: TLabel;
      Procedure FormCreate(Sender: TObject);
      Procedure wwDBGrid1IButtonClick(Sender: TObject);
      Procedure BModificarClick(Sender: TObject);
      Procedure Z2bbtnCanc3Click(Sender: TObject);
      Procedure dbgTecnologiaDblClick(Sender: TObject);
      Procedure dbgTecnologiaKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgTecnologiaRowChanged(Sender: TObject);
      Procedure wwIButton1Click(Sender: TObject);
      Procedure cargacombo;
      Procedure BitBtn3Click(Sender: TObject);
      Procedure dblcEquipoChange(Sender: TObject);
      Procedure BitBtn4Click(Sender: TObject);
      Procedure dbgRelKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgRelDblClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure edtBuscarChange(Sender: TObject);
      Procedure edtBuscarKeyPress(Sender: TObject; Var Key: Char);
   Private
      { Private declarations }
      xSQL: String;
      xModo: String;
      xAxi: String;
   Public
      { Public declarations }
   End;

Var
   FManComUnidad: TFManComUnidad;

Implementation

Uses ATIDM1;

{$R *.dfm}

Procedure TFManComUnidad.FormCreate(Sender: TObject);
Begin
   xSQL := ' SELECT UNIDADID, NOMBRE FROM '+DMATI.wwEsquemaATI+'ATI_UNIDAD '
      + ' ORDER BY TO_NUMBER(UNIDADID)';

   DMATI.cdsQry16.Close;
   DMATI.cdsQry16.DataRequest(xSQL);
   DMATI.cdsQry16.open;
   dbgTecnologia.DataSource := DMATI.dsQRY16;

   dbgTecnologia.Selected.Clear;
   dbgTecnologia.Selected.Add('UNIDADID' + #9 + '5' + #9 + 'CÓDIGO');
   dbgTecnologia.Selected.Add('NOMBRE' + #9 + '25' + #9 + 'NOMBRE');
   dbgTecnologia.ApplySelected;

   dbeCodigo.DataField := 'UNIDADID';
   dbeCodigo.DataSource := DMATI.dsQRY16;

   dbeNombre.DataField := 'NOMBRE';
   dbeNombre.DataSource := DMATI.dsQRY16;

   dbeRelTecnologia.DataField := 'UNIDADID';
   dbeRelTecnologia.DataSource := DMATI.dsQRY16;

   dbeNombreCom.DataField := 'NOMBRE';
   dbeNombreCom.DataSource := DMATI.dsQRY16;

End;

Procedure TFManComUnidad.wwDBGrid1IButtonClick(Sender: TObject);
Begin
   //Abre el panel de Actualizaciones
   dbgRel.Enabled := False;
   pnlActualizacionR.Visible := False;
   pnlPie.Enabled := False;
   dbgTecnologia.Enabled := False;
   pnlActualizacion.Visible := True;
   //registra el modo de Grabar
   xModo := 'I';
   //selecciona el mayor valor y le añade uno al código
   xSQL := 'select MAX(TO_NUMBER(UNIDADID)+1) NUMERO from '+DMATI.wwEsquemaATI+'ATI_UNIDAD';
   DMATI.cdsQRY.Close;
   DMATI.cdsQRY.DataRequest(xSQL);
   DMATI.cdsQRY.Open;
   DMATI.cdsQry16.Append;
   DMATI.cdsQry16.FieldByName('UNIDADID').AsString := IntToStr(DMATI.cdsQry.FieldByName('NUMERO').AsInteger);
   dbeNOMBRE.SetFocus;

End;

Procedure TFManComUnidad.BModificarClick(Sender: TObject);
Begin
   // verifica que NOMBRE de equipo no este vacío
   If length(DMATI.cdsQry16.FieldByName('NOMBRE').AsString) = 0 Then
      Begin
         ShowMessage('El NOMBRE no puede ir en blanco');
         dbeNOMBRE.SetFocus;
         exit;
      End;

   // verifica que NOMBRE de la ofina no este registrado con otro código

   xSQL := ' select NOMBRE '
      + ' from '+DMATI.wwEsquemaATI+'ATI_UNIDAD '
      + ' where NOMBRE=' + quotedstr(DMATI.cdsQry16.FieldByName('NOMBRE').AsString)
      + ' and UNIDADID<>' + inttostr(DMATI.cdsQry16.FieldByName('UNIDADID').AsInteger);
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   If DMATI.cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('El NOMBRE ya fue registrado con otro código');
         dbeNOMBRE.SetFocus;
         exit;
      End;
   //Graba la nueva tecnologia
   If MessageDlg(' ¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If xModo = 'I' Then
            Begin
               xSQL := ' Insert into '+DMATI.wwEsquemaATI+'ATI_UNIDAD(NOMBRE, UNIDADID) '
                  + ' values( '
                  + quotedstr(DMATI.cdsQry16.FieldByName('NOMBRE').AsString) + ','
                  + quotedstr(DMATI.cdsQry16.FieldByName('UNIDADID').AsString) + ')';
            End
               //Modifica la Oficina
         Else
            Begin
               xSQL := ' update '+DMATI.wwEsquemaATI+'ATI_UNIDAD '
                  + ' set NOMBRE =' + QuotedStr(DMATI.cdsQry16.FieldByName('NOMBRE').AsString)
                  + ' where UNIDADID =' + QuotedStr(DMATI.cdsQry16.FieldByName('UNIDADID').AsString);
            End;

         Try

            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Grabar');
            exit;
         End;
         DMATI.cdsQry16.Post;
         ShowMessage('ok');
      End
   Else
      Begin
         DMATI.cdsQry16.CancelUpdates;
      End;
   dbgTecnologia.Enabled := true;
   dbgRel.Enabled := true;
   pnlPie.Enabled := true;
   pnlActualizacion.Visible := False;
End;

Procedure TFManComUnidad.Z2bbtnCanc3Click(Sender: TObject);
Begin
   DMATI.cdsQry16.CancelUpdates;
   DMATI.cdsQry16.open;
   DMATI.cdsQry16.Refresh;
   dbgTecnologia.Enabled := true;
   dbgRel.Enabled := true;
   pnlPie.Enabled := true;
   pnlActualizacion.Visible := False;
   dbgRel.Enabled := true;
End;

Procedure TFManComUnidad.dbgTecnologiaDblClick(Sender: TObject);
Begin
   //Abra el panel del Actualizaciones en modo de Modificación
   xModo := 'M';
   pnlActualizacion.Visible := True;
   DMATI.cdsQry16.Edit;
   dbgTecnologia.Enabled := False;
   pnlPie.Enabled := False;
   dbeNOMBRE.SetFocus;
End;

Procedure TFManComUnidad.dbgTecnologiaKeyDown(Sender: TObject;
   Var Key: Word; Shift: TShiftState);
Begin
   //Captura la centetencia Ctrl+Del para eliminar
   If (key = VK_Delete) And (ssCtrl In Shift) Then
      Begin

         //Abre la opción de Eliminacion
         If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               xSQL := 'delete from '+DMATI.wwEsquemaATI+'ATI_UNIDAD '
                  + 'where UNIDADID=' + IntToStr(DMATI.cdsQry16.FieldByName('UNIDADID').AsInteger);
               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo Eliminar');
                  exit;
               End;
               DMATI.cdsQry16.Delete;
            End;
      End;
End;

Procedure TFManComUnidad.dbgTecnologiaRowChanged(Sender: TObject);
Begin
   xSQL := 'SELECT DISTINCT  '
      + ' ATI_NOM_PAR_EQU.NOMBRE, '
      + ' ATI_NOM_PAR_EQU.NOMBRE_PARTE_EQUIPOID,  '
      + ' ATI_UNIDAD.UNIDADID  '
      + ' FROM '+DMATI.wwEsquemaATI+'ATI_UNIDAD, '+DMATI.wwEsquemaATI+'ATI_UNI_CTRL, '+DMATI.wwEsquemaATI+'ATI_NOM_PAR_EQU  '
      + ' WHERE ATI_UNI_CTRL.NOMBRE_PARTE_EQUIPOID = ATI_NOM_PAR_EQU.NOMBRE_PARTE_EQUIPOID '
      + ' AND ATI_UNI_CTRL.UNIDADID = ATI_UNIDAD.UNIDADID  '
      + ' AND ATI_UNI_CTRL.UNIDADID =' + QuotedStr(DMATI.cdsQry16.FieldByName('UNIDADID').AsString);

   DMATI.cdsQryR.Close;
   DMATI.cdsQryR.DataRequest(xSQL);
   DMATI.cdsQryR.Open;
   dbgRel.DataSource := DMATI.dsQryR;
   dbgRel.Selected.Clear;
   dbgRel.Selected.Add('NOMBRE' + #9 + '25' + #9 + 'NOMBRE EQUIPO');
   dbgRel.Selected.Add('NOMBRE_PARTE_EQUIPOID' + #9 + '5' + #9 + 'CÓDIGO');
   dbgRel.ApplySelected;
End;

Procedure TFManComUnidad.wwIButton1Click(Sender: TObject);
Begin

   //Abre el panel de Actualizaciones
   pnlPie.Enabled := False;
   dbgTecnologia.Enabled := False;
   pnlActualizacionR.Visible := True;
   dbgRel.Enabled := False;
   pnlActualizacion.Visible := False;
   //registra el modo de Grabar
   xModo := 'I';
   //Se añade campos
   DMATI.cdsQryR.Append;
   DMATI.cdsQryR.FieldByName('UNIDADID').AsInteger := DMATI.cdsQry16.FieldByName('UNIDADID').AsInteger;
   //carga combo grid del Equipo
   cargacombo;
   //focaliza
   dblcEquipo.SetFocus;
End;

Procedure TFManComUnidad.cargacombo;
Begin
   //carga el combo en el Panel de Actualizaciones
   xSQL := 'select NOMBRE_PARTE_EQUIPOID, NOMBRE from '+DMATI.wwEsquemaATI+'ATI_NOM_PAR_EQU';
   DMATI.cdsQryC.Close;
   DMATI.cdsQryC.DataRequest(xSQL);
   DMATI.cdsQryC.Open;
   dblcEquipo.LookupTable := DMATI.cdsQryC;
   dblcEquipo.LookupField := 'NOMBRE';
End;

Procedure TFManComUnidad.BitBtn3Click(Sender: TObject);
Begin
   //Cierra el panel de Actualizaciones
   DMATI.cdsQryC.Close;
   DMATI.cdsQryR.CancelUpdates;
   DMATI.cdsQryR.open;
   DMATI.cdsQryR.Refresh;
   dbgRel.Enabled := true;
   pnlPie.Enabled := true;
   pnlActualizacionR.Visible := False;
   dbgTecnologia.Enabled := true;
End;

Procedure TFManComUnidad.dblcEquipoChange(Sender: TObject);
Begin
   If DMATI.cdsQryC.Active = true Then
      Begin
         DMATI.cdsQryR.Edit;
         DMATI.cdsQryR.FieldByName('NOMBRE_PARTE_EQUIPOID').AsInteger := DMATI.cdsQryC.fieldbyname('NOMBRE_PARTE_EQUIPOID').AsInteger;
      End;
End;

Procedure TFManComUnidad.BitBtn4Click(Sender: TObject);
Begin
   // verifica que NOMBRE de equipo no este vacío
   If length(DMATI.cdsQryR.FieldByName('NOMBRE').AsString) = 0 Then
      Begin
         ShowMessage('El NOMBRE, no puede ir en blanco');
         dblcEquipo.SetFocus;
         exit;
      End;

   // verifica que NOMBRE de la ofina no este registrado con otro código
   xSQL := ' select NOMBRE_PARTE_EQUIPOID '
      + ' from '+DMATI.wwEsquemaATI+'ATI_UNI_CTRL '
      + ' where NOMBRE_PARTE_EQUIPOID=' + dbeEquipo.Text
      + ' and UNIDADID=' + QuotedStr(DMATI.cdsQry16.FieldByName('UNIDADID').AsString);
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   If DMATI.cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('El NOMBRE de este Equipo ya fue relacionado');
         dblcEquipo.SetFocus;
         exit;
      End;
   //Graba la nueva reacion tecnologia equipo
   If MessageDlg(' ¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If xModo = 'I' Then
            Begin
               xSQL := ' insert into '+DMATI.wwEsquemaATI+'ATI_UNI_CTRL (NOMBRE_PARTE_EQUIPOID, UNIDADID) '
                  + ' values ('
                  + QuotedStr(dbeEquipo.Text) + ','
                  + QuotedStr(DMATI.cdsQry16.FieldByName('UNIDADID').AsString) + ')';
            End
         Else
            Begin
               xSQL := ' update '+DMATI.wwEsquemaATI+'ATI_UNI_CTRL '
                  + ' set NOMBRE_PARTE_EQUIPOID = ' + dbeEquipo.Text
                  + ' where UNIDADID = ' + QuotedStr(DMATI.cdsQry16.FieldByName('UNIDADID').AsString)
                  + ' and NOMBRE_PARTE_EQUIPOID = ' + QuotedStr(DMATI.cdsQryR.fieldByname('NOMBRE_PARTE_EQUIPOID').AsString);
            End;
         Try

            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);

         Except
            ShowMessage('No se pudo Grabar');
            exit;
         End;
         DMATI.cdsQryR.Post;
         ShowMessage('ok');
      End
   Else
      Begin
         DMATI.cdsQryR.CancelUpdates;
      End;
   DMATI.cdsQryC.Close;
   dbgRel.Enabled := true;
   dbgTecnologia.Enabled := true;
   pnlPie.Enabled := true;
   pnlActualizacion.Visible := False;
   pnlActualizacionR.Visible := False;

End;

Procedure TFManComUnidad.dbgRelKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   //Captura la centetencia Ctrl+Del para eliminar
   If (key = VK_Delete) And (ssCtrl In Shift) Then
      Begin

         //Abre la opción de Eliminacion
         If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               xSQL := 'delete from '+DMATI.wwEsquemaATI+'ATI_UNI_CTRL '
                  + 'where NOMBRE_PARTE_EQUIPOID=' + QuotedStr(DMATI.cdsQryR.FieldByName('NOMBRE_PARTE_EQUIPOID').AsString)
                  + 'AND UNIDADID=' + QuotedStr(DMATI.cdsQryR.FieldByName('UNIDADID').AsString);
               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo Eliminar');
                  exit;
               End;
               DMATI.cdsQryR.Delete;
            End;
      End;
End;

Procedure TFManComUnidad.dbgRelDblClick(Sender: TObject);
Begin
   //Abre el panel de Actualizaciones ene modo Modificar
   xModo := 'M';
   //Abre el panel de Actualizaciones
   pnlPie.Enabled := False;
   dbgRel.Enabled := False;
   dbgTecnologia.Enabled := False;
   pnlActualizacion.Visible := False;
   pnlActualizacionR.Visible := True;
   cargacombo;
   DMATI.cdsQryR.Edit;
   //codigo
   //xAxi:= DMATI.cdsQryR.fieldByname('ATI_NOM_PAR_EQU').AsString;
   dbeEquipo.text := DMATI.cdsQryR.fieldByname('NOMBRE_PARTE_EQUIPOID').AsString;
   //NOMBRE
   dblcEquipo.Text := DMATI.cdsQryR.fieldByname('NOMBRE').AsString;

End;

Procedure TFManComUnidad.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DMATI.cdsQryR.Close;
   DMATI.cdsQryC.Close;
End;

Procedure TFManComUnidad.edtBuscarChange(Sender: TObject);
Begin
   DMATI.cdsQry16.Locate('NOMBRE', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);
End;

Procedure TFManComUnidad.edtBuscarKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         If Length(Trim(edtBuscar.Text)) > 0 Then
            Begin
               dbgTecnologia.SetFocus;
               edtBuscar.Text := '';
               // dbgPAgos.OnDblClick(dbgPAgos);
            End
         Else
            Begin
               MessageDlg('Debe Digitar El Nombre de un Usuario para comenzar la busqueda', mtError, [mbOk], 0);
               edtBuscar.SetFocus;
            End;
      End;
End;

End.

