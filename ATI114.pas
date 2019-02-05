Unit ATI114;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, wwdbedit, Buttons, ExtCtrls, Wwdbigrd, Grids,
   Wwdbgrid, wwdblook;

Type
   TFManEquipoTipo = Class(TForm)
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
      dbeEquipo: TwwDBEdit;
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
      wwDBEdit1: TwwDBEdit;
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
   Private
      { Private declarations }
      xSQL: String;
      xModo: String;
      xAxi: String;
   Public
      { Public declarations }
   End;

Var
   FManEquipoTipo: TFManEquipoTipo;

Implementation

Uses ATIDM1;

{$R *.dfm}

Procedure TFManEquipoTipo.FormCreate(Sender: TObject);
Begin
   xSQL := ' select NOMBRE, TIPOID  from '+DMATI.wwEsquemaATI+'TIPO '
      + ' order by TIPOID';

   DMATI.cdsQry5.Close;
   DMATI.cdsQry5.DataRequest(xSQL);
   DMATI.cdsQry5.open;
   dbgTecnologia.DataSource := DMATI.dsQry5;

   dbgTecnologia.Selected.Clear;
   dbgTecnologia.Selected.Add('TIPOID' + #9 + '5' + #9 + 'CÓDIGO');
   dbgTecnologia.Selected.Add('NOMBRE' + #9 + '25' + #9 + 'NOMBRE');
   dbgTecnologia.ApplySelected;

End;

Procedure TFManEquipoTipo.wwDBGrid1IButtonClick(Sender: TObject);
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
   xSQL := 'select max(TIPOID+1) NUMERO from '+DMATI.wwEsquemaATI+'TIPO';
   DMATI.cdsQRY.Close;
   DMATI.cdsQRY.DataRequest(xSQL);
   DMATI.cdsQRY.Open;
   DMATI.cdsQry5.Append;
   DMATI.cdsQry5.FieldByName('TIPOID').AsInteger := DMATI.cdsQry.FieldByName('NUMERO').AsInteger;
   dbeNombre.SetFocus;

End;

Procedure TFManEquipoTipo.BModificarClick(Sender: TObject);
Begin
   // verifica que nombre de equipo no este vacío
   If length(DMATI.cdsQRY5.FieldByName('NOMBRE').AsString) = 0 Then
      Begin
         ShowMessage('El nombre no puede ir en blanco');
         dbeNombre.SetFocus;
         exit;
      End;

   // verifica que Nombre de la ofina no este registrado con otro código

   xSQL := ' select NOMBRE '
      + ' from '+DMATI.wwEsquemaATI+'TIPO '
      + ' where NOMBRE=' + quotedstr(DMATI.cdsQry5.FieldByName('nombre').AsString)
      + ' and TIPOID<>' + inttostr(DMATI.cdsQry5.FieldByName('TIPOID').AsInteger);
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   If DMATI.cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('El nombre de este Equipo ya fue registrado con otro código');
         dbeNombre.SetFocus;
         exit;
      End;
   //Graba la nueva tecnologia
   If MessageDlg(' ¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If xModo = 'I' Then
            Begin
               xSQL := ' Insert into '+DMATI.wwEsquemaATI+'TIPO(NOMBRE, TIPOID) '
                  + ' values( '
                  + quotedstr(DMATI.cdsQry5.FieldByName('NOMBRE').AsString) + ','
                  + inttostr(DMATI.cdsQry5.FieldByName('TIPOID').AsInteger) + ')';
            End
               //Modifica la Oficina
         Else
            Begin
               xSQL := ' update '+DMATI.wwEsquemaATI+'TIPO '
                  + ' set NOMBRE =' + QuotedStr(DMATI.cdsQry5.FieldByName('NOMBRE').AsString)
                  + ' where TIPOID =' + inttostr(DMATI.cdsQry5.FieldByName('TIPOID').AsInteger);
            End;

         Try

            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Grabar');
            exit;
         End;
         DMATI.cdsQry5.Post;
         ShowMessage('ok');
      End
   Else
      Begin
         DMATI.cdsQry5.CancelUpdates;
      End;
   dbgTecnologia.Enabled := true;
   dbgRel.Enabled := true;
   pnlPie.Enabled := true;
   pnlActualizacion.Visible := False;
End;

Procedure TFManEquipoTipo.Z2bbtnCanc3Click(Sender: TObject);
Begin
   DMATI.cdsQry5.CancelUpdates;
   DMATI.cdsQry5.open;
   DMATI.cdsQry5.Refresh;
   dbgTecnologia.Enabled := true;
   dbgRel.Enabled := true;
   pnlPie.Enabled := true;
   pnlActualizacion.Visible := False;
   dbgRel.Enabled := true;
End;

Procedure TFManEquipoTipo.dbgTecnologiaDblClick(Sender: TObject);
Begin
   //Abra el panel del Actualizaciones en modo de Modificación
   xModo := 'M';
   pnlActualizacion.Visible := True;
   DMATI.cdsQRY5.Edit;
   dbgTecnologia.Enabled := False;
   pnlPie.Enabled := False;
   dbeNombre.SetFocus;
End;

Procedure TFManEquipoTipo.dbgTecnologiaKeyDown(Sender: TObject;
   Var Key: Word; Shift: TShiftState);
Begin
   //Captura la centetencia Ctrl+Del para eliminar
   If (key = VK_Delete) And (ssCtrl In Shift) Then
      Begin

         //Abre la opción de Eliminacion
         If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               xSQL := 'delete from '+DMATI.wwEsquemaATI+'TIPO '
                  + 'where TIPOID=' + IntToStr(DMATI.cdsQry5.FieldByName('TIPOID').AsInteger);
               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo eliminar Equipo');
                  exit;
               End;
               DMATI.cdsQRY5.Delete;
            End;
      End;
End;

Procedure TFManEquipoTipo.dbgTecnologiaRowChanged(Sender: TObject);
Begin
   xSQL := 'select DISTINCT  '
      + ' tipo_equipo.nombre, '
      + ' tipo_equipo.nombre_equipoid,  '
      + ' TIPO.TIPOID  '
      + ' from '+DMATI.wwEsquemaATI+'TIPO, '+DMATI.wwEsquemaATI+'ATI_TIP_CTRL, '+DMATI.wwEsquemaATI+'TIPO_EQUIPO  '
      + ' where ATI_TIP_CTRL.nombre_equipoid = tipo_equipo.nombre_equipoid '
      + ' And ATI_TIP_CTRL.TIPOID = TIPO.TIPOID  '
      + ' And ATI_TIP_CTRL.TIPOID =' + IntToStr(DMATI.cdsQry5.FieldByName('TIPOID').AsInteger);

   DMATI.cdsQryR.Close;
   DMATI.cdsQryR.DataRequest(xSQL);
   DMATI.cdsQryR.Open;
   dbgRel.DataSource := DMATI.dsQryR;
   dbgRel.Selected.Clear;
   dbgRel.Selected.Add('NOMBRE' + #9 + '25' + #9 + 'NOMBRE EQUIPO');
   dbgRel.Selected.Add('NOMBRE_EQUIPOID' + #9 + '5' + #9 + 'CÓDIGO');
   dbgRel.ApplySelected;
End;

Procedure TFManEquipoTipo.wwIButton1Click(Sender: TObject);
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
   DMATI.cdsQryR.FieldByName('TIPOID').AsInteger := DMATI.cdsQry5.FieldByName('TIPOID').AsInteger;
   //carga combo grid del Equipo
   cargacombo;
   //focaliza
   dblcEquipo.SetFocus;
End;

Procedure TFManEquipoTipo.cargacombo;
Begin
   //carga el combo en el Panel de Actualizaciones
   xSQL := 'select nombre, nombre_equipoid from '+DMATI.wwEsquemaATI+'tipo_equipo';
   DMATI.cdsQryC.Close;
   DMATI.cdsQryC.DataRequest(xSQL);
   DMATI.cdsQryC.Open;
   dblcEquipo.LookupTable := DMATI.cdsQryC;
   dblcEquipo.LookupField := 'NOMBRE';
End;

Procedure TFManEquipoTipo.BitBtn3Click(Sender: TObject);
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

Procedure TFManEquipoTipo.dblcEquipoChange(Sender: TObject);
Begin
   If DMATI.cdsQryC.Active = true Then
      Begin
         DMATI.cdsQryR.Edit;
         DMATI.cdsQryR.FieldByName('NOMBRE_EQUIPOID').AsInteger := DMATI.cdsQryC.fieldbyname('NOMBRE_EQUIPOID').AsInteger;
      End;
End;

Procedure TFManEquipoTipo.BitBtn4Click(Sender: TObject);
Begin
   // verifica que nombre de equipo no este vacío
   If length(DMATI.cdsQryR.FieldByName('NOMBRE').AsString) = 0 Then
      Begin
         ShowMessage('El nombre, no puede ir en blanco');
         dblcEquipo.SetFocus;
         exit;
      End;

   // verifica que Nombre de la ofina no este registrado con otro código
   xSQL := ' select NOMBRE_EQUIPOID '
      + ' from '+DMATI.wwEsquemaATI+'ATI_TIP_CTRL '
      + ' where NOMBRE_EQUIPOID=' + dbeEquipo.Text
      + ' and TIPOID=' + inttostr(DMATI.cdsQry5.FieldByName('TIPOID').AsInteger);
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   If DMATI.cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('El nombre de este Equipo ya fue relacionado');
         dblcEquipo.SetFocus;
         exit;
      End;
   //Graba la nueva reacion tecnologia equipo
   If MessageDlg(' ¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If xModo = 'I' Then
            Begin
               xSQL := ' insert into '+DMATI.wwEsquemaATI+'ATI_TIP_CTRL (NOMBRE_EQUIPOID, TIPOID) '
                  + ' values ('
                  + dbeEquipo.Text + ','
                  + inttostr(DMATI.cdsQry5.FieldByName('TIPOID').AsInteger) + ')';
            End
         Else
            Begin
               xSQL := ' update '+DMATI.wwEsquemaATI+'ATI_TIP_CTRL '
                  + ' set nombre_equipoid = ' + dbeEquipo.Text
                  + ' where TIPOID = ' + inttostr(DMATI.cdsQry5.FieldByName('TIPOID').AsInteger)
                  + ' and NOMBRE_EQUIPOID = ' + DMATI.cdsQryR.fieldByname('NOMBRE_EQUIPOID').AsString;
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

Procedure TFManEquipoTipo.dbgRelKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   //Captura la centetencia Ctrl+Del para eliminar
   If (key = VK_Delete) And (ssCtrl In Shift) Then
      Begin
         {//Valida que no haya sido asignada a ningun equipo
            xSQL:= ' select  marcaid  from equipo '
                  +' where marcaid ='+inttostr(DMATI.cdsQry4.FieldByName('marcaid').AsInteger);
            DMATI.cdsQry.Close;
            DMATI.cdsQry.DataRequest(xSQL);
            DMATI.cdsQry.Open;
            if DMATI.cdsQry.Recordcount>0 then
            begin
               ShowMessage('Fue Asignado a un equipo no se puede Eliminar');
               exit;
            end;

         //Valida que la  no este Ligada
            xSQL:= ' select nombre_equipoid, marcaid from marcacontrol '
                  +' where marcaid ='+inttostr(DMATI.cdsQry4.FieldByName('marcaid').AsInteger);
            DMATI.cdsQry.Close;
            DMATI.cdsQry.DataRequest(xSQL);
            DMATI.cdsQry.Open;
            if DMATI.cdsQry.Recordcount>0 then
            begin
               ShowMessage('Esta Relacionada con un equipo, no puede Eliminar');
               exit;
            end; }

         //Abre la opción de Eliminacion
         If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               xSQL := 'delete from '+DMATI.wwEsquemaATI+'ATI_TIP_CTRL '
                  + 'where NOMBRE_EQUIPOID=' + IntToStr(DMATI.cdsQryR.FieldByName('NOMBRE_EQUIPOID').AsInteger)
                  + 'AND TIPOID=' + IntToStr(DMATI.cdsQryR.FieldByName('TIPOID').AsInteger);
               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo eliminar');
                  exit;
               End;
               DMATI.cdsQryR.Delete;
            End;
      End;
End;

Procedure TFManEquipoTipo.dbgRelDblClick(Sender: TObject);
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
   xAxi := DMATI.cdsQryR.fieldByname('NOMBRE_EQUIPOID').AsString;
   dbeEquipo.text := DMATI.cdsQryR.fieldByname('NOMBRE_EQUIPOID').AsString;
   //Nombre
   dblcEquipo.Text := DMATI.cdsQryR.fieldByname('NOMBRE').AsString;

End;

Procedure TFManEquipoTipo.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DMATI.cdsQryR.Close;
   DMATI.cdsQryC.Close;
End;

Procedure TFManEquipoTipo.edtBuscarChange(Sender: TObject);
Begin
   DMATI.cdsQry5.Filtered := False;
   DMATI.cdsQry5.Filter := '';
   DMATI.cdsQry5.Filter := 'NOMBRE=' + QuotedStr(edtBuscar.Text + '*');
   If Length(edtBuscar.Text) = 0 Then
      DMATI.cdsQry5.Filter := '';
   DMATI.cdsQry5.Filtered := True;
End;

End.

