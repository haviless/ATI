Unit ATI112;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, wwdbedit, Buttons, ExtCtrls, Wwdbigrd, Grids,
   Wwdbgrid, wwdblook, wwDialog, wwfltdlg;

Type
   TFManEquipoModel = Class(TForm)
      Label3: TLabel;
      dbgTecnologia: TwwDBGrid;
      wwDBGrid1IButton: TwwIButton;
      pnlPie: TPanel;
      BitBtn1: TBitBtn;
      dbgRel: TwwDBGrid;
      wwIButton1: TwwIButton;
      pnlActualizacionR: TPanel;
      lblEquipo: TLabel;
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
   FManEquipoModel: TFManEquipoModel;

Implementation

Uses ATIDM1, DB;

{$R *.dfm}

Procedure TFManEquipoModel.FormCreate(Sender: TObject);
Begin
   xSQL := ' SELECT NOMBRE, MODELOID FROM '+DMATI.wwEsquemaATI+'MODELO '
      + ' ORDER BY MODELOID';

   {DMATI.cdsQry3.Close;
   DMATI.cdsQry3.DataRequest(xSQL);
   DMATI.cdsQry3.open;
   dbgTecnologia.DataSource := DMATI.dsQry3;

   dbgTecnologia.Selected.Clear;
   dbgTecnologia.Selected.Add('modeloid' + #9 + '5' + #9 + 'CÓDIGO');
   dbgTecnologia.Selected.Add('nombre' + #9 + '25' + #9 + 'NOMBRE');
   dbgTecnologia.ApplySelected; }

End;

Procedure TFManEquipoModel.wwDBGrid1IButtonClick(Sender: TObject);
Begin
   // Abre el panel de Actualizaciones
   dbgRel.Enabled := False;
   pnlActualizacionR.Visible := False;
   pnlPie.Enabled := False;
   dbgTecnologia.Enabled := False;
   pnlActualizacion.Visible := True;
   // registra el modo de Grabar
   xModo := 'I';
   // selecciona el mayor valor y le añade uno al código
   xSQL := ' SELECT MAX(MODELOID+1) NUMERO FROM '+DMATI.wwEsquemaATI+'MODELO';
   DMATI.cdsQRY.Close;
   DMATI.cdsQRY.DataRequest(xSQL);
   DMATI.cdsQRY.Open;
   DMATI.cdsQry3.Append;
   DMATI.cdsQry3.FieldByName('MODELOID').AsInteger := DMATI.cdsQry.FieldByName('NUMERO').AsInteger;
   dbeNombre.SetFocus;
End;

Procedure TFManEquipoModel.BModificarClick(Sender: TObject);
Begin
   // Verifica que nombre de equipo no este vacío
   If length(DMATI.cdsQRY3.FieldByName('nombre').AsString) = 0 Then
      Begin
         ShowMessage('El nombre no puede ir en blanco');
         dbeNombre.SetFocus;
         exit;
      End;

   // Verifica que Nombre de la ofina no este registrado con otro código
   xSQL := ' SELECT NOMBRE '
      + ' FROM '+DMATI.wwEsquemaATI+'MODELO '
      + ' WHERE NOMBRE=' + quotedstr(DMATI.cdsQry3.FieldByName('NOMBRE').AsString)
      + ' AND MODELOID <>' + inttostr(DMATI.cdsQry3.FieldByName('MODELOID').AsInteger);
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   If DMATI.cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('El nombre ya fue registrado con otro código');
         dbeNombre.SetFocus;
         exit;
      End;

   //Graba la nueva tecnologia
   If MessageDlg(' ¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If xModo = 'I' Then
            Begin
               xSQL := ' Insert into '+DMATI.wwEsquemaATI+'modelo(nombre, modeloid) '
                  + ' values( '
                  + quotedstr(DMATI.cdsQry3.FieldByName('nombre').AsString) + ','
                  + inttostr(DMATI.cdsQry3.FieldByName('modeloid').AsInteger) + ')';
            End
               //Modifica la Oficina
         Else
            Begin
               xSQL := ' update '+DMATI.wwEsquemaATI+'modelo '
                  + ' set nombre =' + QuotedStr(DMATI.cdsQry3.FieldByName('nombre').AsString)
                  + ' where modeloid =' + inttostr(DMATI.cdsQry3.FieldByName('modeloid').AsInteger);
            End;

         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo grabar Tecnologia');
            exit;
         End;
         DMATI.cdsQry3.Post;
         ShowMessage('ok');
      End
   Else
      Begin
         DMATI.cdsQry3.CancelUpdates;
      End;
   dbgTecnologia.Enabled := true;
   dbgRel.Enabled := true;
   pnlPie.Enabled := true;
   pnlActualizacion.Visible := False;
End;

Procedure TFManEquipoModel.Z2bbtnCanc3Click(Sender: TObject);
Begin
   DMATI.cdsQry3.CancelUpdates;
   DMATI.cdsQry3.open;
   DMATI.cdsQry3.Refresh;
   dbgTecnologia.Enabled := true;
   dbgRel.Enabled := true;
   pnlPie.Enabled := true;
   pnlActualizacion.Visible := False;
   dbgRel.Enabled := true;
End;

Procedure TFManEquipoModel.dbgTecnologiaDblClick(Sender: TObject);
Begin
   //Abra el panel del Actualizaciones en modo de Modificación
   xModo := 'M';
   pnlActualizacion.Visible := True;
   DMATI.cdsQRY3.Edit;
   dbgTecnologia.Enabled := False;
   pnlPie.Enabled := False;
   dbeNombre.SetFocus;
End;

Procedure TFManEquipoModel.dbgTecnologiaKeyDown(Sender: TObject;
   Var Key: Word; Shift: TShiftState);
Begin
   //Captura la centetencia Ctrl+Del para eliminar
   If (key = VK_Delete) And (ssCtrl In Shift) Then
      Begin

         //Abre la opción de Eliminacion
         If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               xSQL := 'delete from '+DMATI.wwEsquemaATI+'modelo '
                  + 'where modeloid =' + IntToStr(DMATI.cdsQry3.FieldByName('modeloid').AsInteger);
               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo eliminar');
                  exit;
               End;
               DMATI.cdsQRY3.Delete;
            End;
      End;
End;

Procedure TFManEquipoModel.dbgTecnologiaRowChanged(Sender: TObject);
Begin
   xSQL := 'select DISTINCT  '
      + ' TIPO_EQUIPO.NOMBRE, '
      + ' TIPO_EQUIPO.NOMBRE_EQUIPOID,  '
      + ' MODELO.MODELOID  '
      + ' from '+DMATI.wwEsquemaATI+'MODELO, '+DMATI.wwEsquemaATI+'MODELOCONTROL, '+DMATI.wwEsquemaATI+'TIPO_EQUIPO  '
      + ' where MODELOCONTROL.NOMBRE_EQUIPOID = TIPO_EQUIPO.NOMBRE_EQUIPOID '
      + '   And MODELOCONTROL.MODELOID = MODELO.MODELOID  '
      + '   And MODELOCONTROL.MODELOID =' + IntToStr(DMATI.cdsQry3.FieldByName('MODELOID').AsInteger);
   DMATI.cdsQryR.Close;
   DMATI.cdsQryR.DataRequest(xSQL);
   DMATI.cdsQryR.Open;
   dbgRel.DataSource := DMATI.dsQryR;
   dbgRel.Selected.Clear;
   dbgRel.Selected.Add('nombre' + #9 + '25' + #9 + 'NOMBRE EQUIPO');
   dbgRel.Selected.Add('nombre_equipoid' + #9 + '5' + #9 + 'CÓDIGO');
   dbgRel.ApplySelected;
End;

Procedure TFManEquipoModel.wwIButton1Click(Sender: TObject);
Begin
   // Abre el panel de Actualizaciones
   pnlPie.Enabled := False;
   dbgTecnologia.Enabled := False;
   pnlActualizacionR.Visible := True;
   dbgRel.Enabled := False;
   pnlActualizacion.Visible := False;

   // registra el modo de Grabar
   xModo := 'I';

   // Se añade campos
   DMATI.cdsQryR.Append;
   DMATI.cdsQryR.FieldByName('MODELOID').AsInteger := DMATI.cdsQry3.FieldByName('MODELOID').AsInteger;
   // carga combo grid del Equipo
   cargacombo;
   // focaliza
   dblcEquipo.SetFocus;
End;

Procedure TFManEquipoModel.cargacombo;
Begin
   //carga el combo en el Panel de Actualizaciones
   xSQL := 'select nombre, nombre_equipoid from '+DMATI.wwEsquemaATI+'tipo_equipo';
   DMATI.cdsQryC.Close;
   DMATI.cdsQryC.DataRequest(xSQL);
   DMATI.cdsQryC.Open;
   dblcEquipo.LookupTable := DMATI.cdsQryC;
   dblcEquipo.LookupField := 'nombre';
End;

Procedure TFManEquipoModel.BitBtn3Click(Sender: TObject);
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

Procedure TFManEquipoModel.dblcEquipoChange(Sender: TObject);
Begin
   If DMATI.cdsQryC.Active = true Then
      Begin
         DMATI.cdsQryR.Edit;
         DMATI.cdsQryR.FieldByName('nombre_equipoid').AsInteger := DMATI.cdsQryC.fieldbyname('nombre_equipoid').AsInteger;
      End
End;

Procedure TFManEquipoModel.BitBtn4Click(Sender: TObject);
Begin
   // verifica que nombre de equipo no este vacío
   If length(DMATI.cdsQryR.FieldByName('nombre').AsString) = 0 Then
      Begin
         ShowMessage('El nombre de la oficina no puede ir en blanco');
         dblcEquipo.SetFocus;
         exit;
      End;

   // verifica que Nombre de la ofina no este registrado con otro código
   xSQL := ' select nombre_equipoid '
      + ' from '+DMATI.wwEsquemaATI+'modelocontrol '
      + ' where nombre_equipoid=' + dbeEquipo.Text
      + ' and modeloid=' + inttostr(DMATI.cdsQry3.FieldByName('modeloid').AsInteger);
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   If DMATI.cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('El nombre de este Equipo ya fue relacionado');
         dblcEquipo.SetFocus;
         exit;
      End;

   // Graba la nueva relacion tecnologia equipo
   If MessageDlg(' ¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If xModo = 'I' Then
            Begin
               xSQL := ' insert into '+DMATI.wwEsquemaATI+'modelocontrol (nombre_equipoid, modeloid) '
                  + ' values ('
                  + dbeEquipo.Text + ','
                  + inttostr(DMATI.cdsQry3.FieldByName('modeloid').AsInteger) + ')';
            End
         Else
            Begin
               xSQL := ' update '+DMATI.wwEsquemaATI+'modelocontrol '
                  + ' set nombre_equipoid = ' + dbeEquipo.Text
                  + ' where modeloid = ' + inttostr(DMATI.cdsQry3.FieldByName('modeloid').AsInteger)
                  + ' and modeloid = ' + DMATI.cdsQryR.fieldByname('modeloid').AsString;
            End;
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo grabar Tecnologia');
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

Procedure TFManEquipoModel.dbgRelKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   //Captura la centetencia Ctrl+Del para eliminar
   If (key = VK_Delete) And (ssCtrl In Shift) Then
      Begin

         //Abre la opción de Eliminacion
         If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               xSQL := 'delete from '+DMATI.wwEsquemaATI+'modelocontrol '
                  + 'where nombre_equipoid=' + IntToStr(DMATI.cdsQryR.FieldByName('nombre_equipoid').AsInteger)
                  + 'AND modeloid=' + IntToStr(DMATI.cdsQryR.FieldByName('modeloid').AsInteger);
               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo eliminar Relación');
                  exit;
               End;
               DMATI.cdsQryR.Delete;
            End;
      End;
End;

Procedure TFManEquipoModel.dbgRelDblClick(Sender: TObject);
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
   xAxi := DMATI.cdsQryR.fieldByname('nombre_equipoid').AsString;
   dbeEquipo.text := DMATI.cdsQryR.fieldByname('nombre_equipoid').AsString;
   //Nombre
   dblcEquipo.Text := DMATI.cdsQryR.fieldByname('nombre').AsString;

End;

Procedure TFManEquipoModel.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DMATI.cdsQryR.Close;
   DMATI.cdsQryC.Close;
End;

Procedure TFManEquipoModel.edtBuscarChange(Sender: TObject);
Begin
   DMATI.cdsQry3.Filtered := False;
   DMATI.cdsQry3.Filter := '';
   DMATI.cdsQry3.Filter := 'NOMBRE=' + QuotedStr(edtBuscar.Text + '*');
   If Length(edtBuscar.Text) = 0 Then
      DMATI.cdsQry3.Filter := '';
   DMATI.cdsQry3.Filtered := True;
End;

End.

