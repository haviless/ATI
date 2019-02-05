Unit ATI120;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Mask,
   wwdbedit;

Type
   TFManComponente = Class(TForm)
      Label3: TLabel;
      dbgNombre: TwwDBGrid;
      wwDBGrid1IButton: TwwIButton;
      pnlActualizacion: TPanel;
      Label2: TLabel;
      Label1: TLabel;
      Z2bbtnCanc3: TBitBtn;
      BModificar: TBitBtn;
      dbeCodigo: TwwDBEdit;
      dbeNombre: TwwDBEdit;
      pnlPie: TPanel;
      BitBtn1: TBitBtn;
      edtBuscar: TEdit;
      Label4: TLabel;
      Procedure FormCreate(Sender: TObject);
      Procedure wwDBGrid1IButtonClick(Sender: TObject);
      Procedure dbgNombreDblClick(Sender: TObject);
      Procedure Z2bbtnCanc3Click(Sender: TObject);
      Procedure BModificarClick(Sender: TObject);
      Procedure dbgNombreKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure edtBuscarChange(Sender: TObject);
      Procedure edtBuscarKeyPress(Sender: TObject; Var Key: Char);
   Private
      xSQL: String;
      xModo: String;
   Public
      { Public declarations }
   End;

Var
   FManComponente: TFManComponente;

Implementation

Uses funciones, ATIDM1;

{$R *.dfm}

Procedure TFManComponente.FormCreate(Sender: TObject);
Begin
   xSQL := ' SELECT NOMBRE_PARTE_EQUIPOID, NOMBRE FROM '+DMATI.wwEsquemaATI+'ATI_NOM_PAR_EQU'
      + ' ORDER BY TO_NUMBER(NOMBRE_PARTE_EQUIPOID)';

   DMATI.cdsQry7.Close;
   DMATI.cdsQry7.DataRequest(xSQL);
   DMATI.cdsQry7.open;
   dbgNombre.DataSource := DMATI.dsQry7;

   dbgNombre.Selected.Clear;
   dbgNombre.Selected.Add('nombre_parte_equipoid' + #9 + '5' + #9 + 'CÓDIGO');
   dbgNombre.Selected.Add('nombre' + #9 + '25' + #9 + 'CÓDIGO');
   dbgNombre.ApplySelected;

End;

Procedure TFManComponente.wwDBGrid1IButtonClick(Sender: TObject);
Begin
   //Abre el panel de Actualizaciones
   pnlPie.Enabled := False;
   dbgNombre.Enabled := False;
   pnlActualizacion.Visible := True;
   //registra el modo de Grabar
   xModo := 'I';
   //selecciona el mayor valor y le añade uno al código
   xSQL := 'SELECT MAX(TO_NUMBER(NOMBRE_PARTE_EQUIPOID)+1) NUMERO FROM '+DMATI.wwEsquemaATI+'ATI_NOM_PAR_EQU';
   DMATI.cdsQRY.Close;
   DMATI.cdsQRY.DataRequest(xSQL);
   DMATI.cdsQRY.Open;
   DMATI.cdsQry7.Append;
   DMATI.cdsQry7.FieldByName('nombre_parte_equipoid').AsString := IntToStr(DMATI.cdsQry.FieldByName('numero').AsInteger);
   dbeNombre.SetFocus;

End;

Procedure TFManComponente.dbgNombreDblClick(Sender: TObject);
Begin
   //Abra el panel del Actualizaciones en modo de Modificación
   xModo := 'M';
   pnlActualizacion.Visible := True;
   dbeNombre.SetFocus;
   DMATI.cdsQRY7.Edit;
   dbgNombre.Enabled := false;
   pnlPie.Enabled := false
End;

Procedure TFManComponente.Z2bbtnCanc3Click(Sender: TObject);
Begin
   DMATI.cdsQry7.CancelUpdates;
   DMATI.cdsQry7.open;
   DMATI.cdsQry7.Refresh;
   dbgNombre.Enabled := true;
   pnlPie.Enabled := true;
   pnlActualizacion.Visible := False;
End;

Procedure TFManComponente.BModificarClick(Sender: TObject);
Begin
   // verifica que nombre de equipo no este vacío
   If length(DMATI.cdsQRY7.FieldByName('nombre').AsString) = 0 Then
      Begin
         ShowMessage('El nombre, no puede ir en blanco');
         dbeNombre.SetFocus;
         exit;
      End;

   // verifica que Nombre de la ofina no este registrado con otro código

   xSQL := ' SELECT NOMBRE '
      + ' FROM '+DMATI.wwEsquemaATI+'ATI_NOM_PAR_EQU'
      + ' WHERE NOMBRE=' + quotedstr(DMATI.cdsQry7.FieldByName('NOMBRE').AsString)
      + ' AND NOMBRE_PARTE_EQUIPOID<>' + quotedstr(DMATI.cdsQry7.FieldByName('NOMBRE_PARTE_EQUIPOID').AsString);
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   If DMATI.cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('El nombre de este Equipo ya fue registrado con otro código');
         dbeNombre.SetFocus;

         exit;
      End;
   //Graba la nueva oficina
   If MessageDlg(' ¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If xModo = 'I' Then
            Begin
               xSQL := ' INSERT INTO '+DMATI.wwEsquemaATI+'ATI_NOM_PAR_EQU (NOMBRE_PARTE_EQUIPOID, NOMBRE) '
                  + ' VALUES( '
                  + quotedstr(DMATI.cdsQry7.FieldByName('NOMBRE_PARTE_EQUIPOID').AsString) + ','
                  + quotedstr(DMATI.cdsQry7.FieldByName('NOMBRE').AsString) + ')';

            End
               //Modifica la Oficina
         Else
            Begin
               xSQL := ' UPDATE '+DMATI.wwEsquemaATI+'ATI_NOM_PAR_EQU '
                  + ' SET NOMBRE =' + QuotedStr(DMATI.cdsQry7.FieldByName('nombre').AsString)
                  + ' WHERE NOMBRE_PARTE_EQUIPOID =' + QuotedStr(DMATI.cdsQry7.FieldByName('nombre_parte_equipoid').AsString);
            End;

         Try

            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Grabar');
            exit;
         End;
         DMATI.cdsQry7.Post;
         ShowMessage('ok');
      End
   Else
      Begin
         DMATI.cdsQry7.CancelUpdates;
      End;
   dbgNombre.Enabled := true;
   pnlPie.Enabled := true;
   pnlActualizacion.Visible := False;
End;

Procedure TFManComponente.dbgNombreKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
      Begin

         If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               xSQL := ' DELETE '+DMATI.wwEsquemaATI+'ATI_NOM_PAR_EQU ATI_NOM_PAR_EQU '
                  + ' WHERE NOMBRE_PARTE_EQUIPOID=' + QuotedStr(DMATI.cdsQry7.FieldByName('NOMBRE_PARTE_EQUIPOID').AsString);
               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo Eliminar');
                  exit;
               End;
               DMATI.cdsQRY7.Delete;
            End;
      End;

End;

Procedure TFManComponente.edtBuscarChange(Sender: TObject);
Begin
   DMATI.cdsQry14.Locate('ATI_NOM_PAR_EQU', VarArrayOf([TRIM(edtBuscar.Text)]), []);
End;

Procedure TFManComponente.edtBuscarKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         If Length(Trim(edtBuscar.Text)) > 0 Then
            Begin
               dbgNombre.SetFocus;
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

