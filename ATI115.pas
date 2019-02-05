Unit ATI115;
// Actualizaciones
// HPC_201401_ATI	31/01/2014  Julio Alberto Rodriguez Grados
// Motivo del cambio: es de eliminar el registro de la Parte de un Equipo para
// que sea posible su reingreso de nuevo.

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, wwdbedit, Buttons, Wwdbigrd, Grids, Wwdbgrid,
   ExtCtrls, DBCtrls, fcButton, fcImgBtn, fcShapeBtn;

Type
   TFControlParte = Class(TForm)
      pnlPie: TPanel;
      Label3: TLabel;
      btnCancelar: TfcShapeBtn;
      fcShapeBtn1: TfcShapeBtn;
      Label1: TLabel;
      Label2: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      dbecodigo: TwwDBEdit;
      dbeserie: TwwDBEdit;
      dbeparte: TwwDBEdit;
      dbeEstado: TwwDBEdit;
      Label7: TLabel;
      dbefecha: TwwDBEdit;
      Label6: TLabel;
      mmObservacion: TMemo;
      Procedure FormCreate(Sender: TObject);
      Procedure btnCancelarClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure fcShapeBtn1Click(Sender: TObject);
   Private
      { Private declarations }
      xSQL: String;
      {xModo: String;}
   Public
      { Public declarations }
   End;

Var
   FControlParte: TFControlParte;

Implementation

Uses ATIDM1, ATI210;

{$R *.dfm}

Procedure TFControlParte.FormCreate(Sender: TObject);
Begin
   xSQL := 'SELECT TO_DATE(SYSDATE) FECHA FROM DUAL';
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   dbefecha.Text := DMATI.cdsQry.FieldByName('FECHA').AsString;

   dbecodigo.DataField := 'parte_equipoid';
   dbecodigo.DataSource := DMATI.dsQRY34;

   dbeserie.DataField := 'serie';
   dbeserie.DataSource := DMATI.dsQRY34;

   dbeparte.DataField := 'TIPO';
   dbeparte.DataSource := DMATI.dsQRY34;

   dbeEstado.DataField := 'ESTADO';
   dbeEstado.DataSource := DMATI.dsQRY34;

End;

Procedure TFControlParte.btnCancelarClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFControlParte.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   FInvParteEquipo.FormCreate(Self);
End;

Procedure TFControlParte.fcShapeBtn1Click(Sender: TObject);
Begin
   xSQL := 'select * from '+DMATI.wwEsquemaATI+'ati_par_control  '
          +'where parte_equipoid ='+ QuotedStr(DMATI.cdsQRY34.FieldByName('parte_equipoid').AsString);
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;

   if DMATI.cdsQry.RecordCount>0 then
        begin
        xSQL := 'update '+DMATI.wwEsquemaATI+'ATI_PAR_CONTROL  '
            + ' Set USERID = '+quotedstr(DMATI.wUsuario) + ','
            + '     PARTE_SERIE = '+quotedstr(DMATI.cdsQry34.FieldByName('SERIE').AsString)+','
            + '     FECSALPARTE = sysdate ,'
            + '     OBSERVACION =' + QuotedStr(mmObservacion.Text)
            + ' where PARTE_EQUIPOID ='+ QuotedStr(DMATI.cdsQRY34.FieldByName('PARTE_EQUIPOID').AsString);

         //=====================================================================
         // Inicio HPC_201401_ATI
         //=====================================================================
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo actualizar los datos en la Partida de Control');
            exit;
         End;
         xSQL := 'Delete ' + DMATI.wwEsquemaATI + 'ATI_PARTE_EQUIPO  '
               + 'where serie = ' + quotedstr(DMATI.cdsQry34.FieldByName('SERIE').AsString)
               + ' and artcodbar = ' + quotedstr(DMATI.cdsQry34.FieldByName('artcodbar').AsString);
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Eliminar la relación de la Parte con el Equipo concurrente.');
            exit;
         End;
         //=====================================================================
         // Fin HPC_201401_ATI
         //=====================================================================

         ShowMessage('Esta Pieza de Equipo fue Removida Correctamente');
         Close;

        end
   Else
        begin
      xSQL := 'select max(to_number(ficnacparequipoid)+1) NUMERO from '+DMATI.wwEsquemaATI+'ATI_PAR_CONTROL';
      DMATI.cdsQRY.Close;
      DMATI.cdsQRY.DataRequest(xSQL);
      DMATI.cdsQRY.Open;

      xSQL := ' Insert into '+DMATI.wwEsquemaATI+'ati_par_control'
            + ' (ficnacparequipoid,'
            + ' fecingparte, '
            + ' userid, '
            + ' parte_equipoid,'
            + ' estado_parte_equipoid,'
            + ' artcodbar,'
            + ' parte_nombre,'
            + ' parte_serie,'
            + ' fecsalparte,'
            + ' observacion)'
            + ' values('
            + quotedstr(DMATI.cdsQry.FieldByName('NUMERO').AsString) + ','
            + 'SYSDATE' + ','
            + quotedstr(DMATI.wUsuario) + ','
            + quotedstr(DMATI.cdsQry34.FieldByName('parte_equipoid').AsString) + ','
            + quotedstr(DMATI.cdsQry27A.FieldByName('estadoid').AsString) + ','
            + quotedstr(DMATI.cdsQRY33.FieldByName('artcodbar').AsString) + ','
            + quotedstr(DMATI.cdsQry21A.FieldByName('nombre').AsString) + ','
            + quotedstr(DMATI.cdsQry34.FieldByName('serie').AsString) + ','
            + 'SYSDATE' + ','
            + quotedstr(mmObservacion.Text) + ')';

            Try
              DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
              ShowMessage('No se pudo Grabar Detalle');
              exit;
            End;
            ShowMessage('Esta Pieza de Equipo fue Removida Correctamente');
            Close;
          end;

         //=====================================================================
         // Inicio HPC_201401_ATI
         //=====================================================================
         {
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Grabar Detalle');
            exit;
         End;
         ShowMessage('Esta Pieza de Equipo fue Removida Correctamente');
         Close;
         }
         //=====================================================================
         // Fin HPC_201401_ATI
         //=====================================================================
  End;

End.

