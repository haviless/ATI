Unit ATI211;
// Actualizaciones
// HPC_201401_ATI	31/01/2014  Julio Alberto Rodriguez Grados
// Motivo del cambio: es añadir la verificacion de uso de alguna parte Parte de
// un Equipo para evitar duplicidad.

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, wwdblook, StdCtrls, Mask, wwdbedit, fcButton, fcImgBtn,
   fcShapeBtn, ExtCtrls;

Type
   TFInvParteEquipo1 = Class(TForm)
      pnlPie: TPanel;
      z2bbtnAcepta: TfcShapeBtn;
      Label7: TLabel;
      pnlNr1: TPanel;
      Label8: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label17: TLabel;
      dbeParteSerie: TwwDBEdit;
      dbeECodigo: TwwDBEdit;
      dbeFru: TwwDBEdit;
      pnlNr2: TPanel;
      Equipo: TLabel;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label11: TLabel;
      dblcParteEquipo: TwwDBLookupCombo;
      dblcCarecteristica: TwwDBLookupCombo;
      dblcParteTipo: TwwDBLookupCombo;
      dblcParteMarca: TwwDBLookupCombo;
      pnlEstado: TPanel;
      Label6: TLabel;
      Label12: TLabel;
      dblcEstado: TwwDBLookupCombo;
      pnlUnidad: TPanel;
      Label5: TLabel;
      dblcUnidad: TwwDBLookupCombo;
      dbeUnidad: TwwDBEdit;
      Label4: TLabel;
      dbeParteCodigo: TwwDBEdit;
      z2bbtnCancela: TfcShapeBtn;
      lbCapacidad: TLabel;
      Procedure FormCreate(Sender: TObject);
      Procedure dblcParteEquipoExit(Sender: TObject);
      Procedure z2bbtnCancelaClick(Sender: TObject);
      Procedure dbeUnidadKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormShow(Sender: TObject);
      Procedure dblcCarecteristicaEnter(Sender: TObject);
      Procedure dblcParteTipoEnter(Sender: TObject);
      Procedure dblcParteMarcaEnter(Sender: TObject);
      Procedure dblcParteEquipoEnter(Sender: TObject);
      Procedure dblcParteEquipoChange(Sender: TObject);
      Procedure z2bbtnAceptaClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
      { Private declarations }
      xSQL: String;
   Public
      { Public declarations }
   End;

Var
   FInvParteEquipo1: TFInvParteEquipo1;

Implementation

Uses ATIDM1, ATI210, ATI200, ATI201;

{$R *.dfm}

Procedure TFInvParteEquipo1.FormCreate(Sender: TObject);
Begin
   //CARGA COMBO DE PARTES
   xSQL := ' SELECT NOMBRE_PARTE_EQUIPOID, NOMBRE FROM '+DMATI.wwEsquemaATI+' ATI_NOM_PAR_EQU'
      + ' ORDER BY NOMBRE';

   DMATI.cdsQRY21A.Close;
   DMATI.cdsQRY21A.DataRequest(xSQL);
   DMATI.cdsQRY21A.open;
   dblcParteEquipo.LookupTable := DMATI.cdsQRY21A;
   dblcParteEquipo.LookupField := 'nombre';
   //    dblcTipoEquipo.Selected.Strings =('nombre'#9'25'#9'nombre'#9'F');

//CARGA COMBO DE CARACTERISTICA
   xSQL := ' SELECT ATI_CAR_CTRL.NOMBRE_PARTE_EQUIPOID,'
      + ' ATI_CAR_CTRL.CARACTERISTICAID,'
      + ' ATI_CARACT.NOMBRE '
      + ' FROM '+DMATI.wwEsquemaATI+'ATI_CARACT,'
      + ' '+DMATI.wwEsquemaATI+'ATI_CAR_CTRL'
      + ' WHERE ATI_CAR_CTRL.CARACTERISTICAID= ATI_CARACT.CARACTERISTICAID(+)'
      + ' ORDER BY ATI_CARACT.NOMBRE';

   DMATI.cdsQRY22A.Close;
   DMATI.cdsQRY22A.DataRequest(xSQL);
   DMATI.cdsQRY22A.open;
   //CARGA COMBO DE TIPO
   xSQL := ' SELECT ATI_TIP_CTRL.TIPOID,'
      + ' ATI_TIP_CTRL.NOMBRE_PARTE_EQUIPOID,'
      + ' ATI_TIPOC.NOMBRE'
      + ' FROM '+DMATI.wwEsquemaATI+'ATI_TIP_CTRL,'
      + ' '+DMATI.wwEsquemaATI+'ATI_TIPOC'
      + ' WHERE ATI_TIP_CTRL.TIPOID = ATI_TIPOC.TIPOID(+)'
      + ' ORDER BY ATI_TIPOC.NOMBRE';
   DMATI.cdsQRY23A.Close;
   DMATI.cdsQRY23A.DataRequest(xSQL);
   DMATI.cdsQRY23A.open;
   //CARGA COMBO DE MARCA
   xSQL := ' select ATI_MARCA_CTRL.marcaid, '
      + ' ATI_MARCA_CTRL.nombre_parte_equipoid,'
      + ' ATI_MARCA.nombre'
      + ' from '+DMATI.wwEsquemaATI+'ATI_MARCA,'
      + ' '+DMATI.wwEsquemaATI+'ATI_MARCA_CTRL '
      + ' where ATI_MARCA_CTRL.marcaid= ATI_MARCA.marcaid(+)'
      + ' ORDER BY ATI_MARCA.nombre';

   DMATI.cdsQRY24A.Close;
   DMATI.cdsQRY24A.DataRequest(xSQL);
   DMATI.cdsQRY24A.open;

   //CARGA COMBO DE UNIDAD
   xSQL := ' SELECT ATI_UNI_CTRL.NOMBRE_PARTE_EQUIPOID,'
      + ' ATI_UNI_CTRL.UNIDADID,'
      + ' ATI_UNIDAD.NOMBRE'
      + ' FROM '+DMATI.wwEsquemaATI+'ATI_UNIDAD, '
      + ' '+DMATI.wwEsquemaATI+'ATI_UNI_CTRL '
      + ' WHERE ATI_UNI_CTRL.UNIDADID= ATI_UNIDAD.UNIDADID(+) '
      + ' ORDER BY ATI_UNIDAD.NOMBRE';

   DMATI.cdsQRY25A.Close;
   DMATI.cdsQRY25A.DataRequest(xSQL);
   DMATI.cdsQRY25A.open;

   //CARGA COMBO DE ESTADO
   xSQL := ' SELECT ESTADOID,NOMBRE FROM '+DMATI.wwEsquemaATI+'ATI_EST_PARTE';
   DMATI.cdsQRY27A.Close;
   DMATI.cdsQRY27A.DataRequest(xSQL);
   DMATI.cdsQRY27A.open;
   dblcEstado.LookupTable := DMATI.cdsQRY27A;
   dblcEstado.LookupField := 'nombre';
End;

Procedure TFInvParteEquipo1.dblcParteEquipoExit(Sender: TObject);
Begin

   //FILTRA CARACTERISTICA DE PARTE
   DMATI.cdsQRY22A.Filtered := False;
   DMATI.cdsQRY22A.Filter := '';
   DMATI.cdsQRY22A.Filter := 'nombre_parte_equipoid=' + QuotedStr(DMATI.cdsQRY21A.fieldbyName('nombre_parte_equipoid').AsString);
   DMATI.cdsQRY22A.Filtered := True;
   dblcCarecteristica.LookupTable := DMATI.cdsQRY22A;
   dblcCarecteristica.LookupField := 'nombre';

   //FILTRA TIPO DE PARTE

   DMATI.cdsQRY23A.Filtered := False;
   DMATI.cdsQRY23A.Filter := '';
   DMATI.cdsQRY23A.Filter := 'nombre_parte_equipoid=' + QuotedStr(DMATI.cdsQRY21A.fieldbyName('nombre_parte_equipoid').AsString);
   DMATI.cdsQRY23A.Filtered := True;
   dblcParteTipo.LookupTable := DMATI.cdsQRY23A;
   dblcParteTipo.LookupField := 'nombre';

   //FILTRA MARCA DE PARTE

   DMATI.cdsQRY24A.Filtered := False;
   DMATI.cdsQRY24A.Filter := '';
   DMATI.cdsQRY24A.Filter := 'nombre_parte_equipoid=' + QuotedStr(DMATI.cdsQRY21A.fieldbyName('nombre_parte_equipoid').AsString);
   DMATI.cdsQRY24A.Filtered := True;
   dblcParteMarca.LookupTable := DMATI.cdsQRY24A;
   dblcParteMarca.LookupField := 'nombre';

   //FILTRA UNIDAD DE PARTE

   DMATI.cdsQRY25A.Filtered := False;
   DMATI.cdsQRY25A.Filter := '';
   DMATI.cdsQRY25A.Filter := 'nombre_parte_equipoid=' + QuotedStr(DMATI.cdsQRY21A.fieldbyName('nombre_parte_equipoid').AsString);
   DMATI.cdsQRY25A.Filtered := True;
   dblcUnidad.LookupTable := DMATI.cdsQRY25A;
   dblcUnidad.LookupField := 'nombre';

End;

Procedure TFInvParteEquipo1.z2bbtnCancelaClick(Sender: TObject);
Begin
   DMATI.cdsQRY34.CancelUpdates;
   dblcParteEquipo.Enabled := True;
   dblcCarecteristica.Enabled := True;
   dblcParteTipo.Enabled := True;
   dblcParteMarca.Enabled := True;
   dbeUnidad.Enabled := True;
   dblcUnidad.Enabled := True;
   Close;
End;

Procedure TFInvParteEquipo1.dbeUnidadKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Not (Key In ['0'..'9', #8, #45, #46]) Then
      Begin
         Key := #0;
      End;
End;

Procedure TFInvParteEquipo1.FormShow(Sender: TObject);
Begin

   If FInvParteEquipo.xModo = 'I' Then
      Begin
         dblcParteEquipo.Enabled := True;

         dblcCarecteristica.Enabled := False;
         dblcParteTipo.Enabled := False;
         dblcParteMarca.Enabled := False;
         dbeUnidad.Enabled := False;
         dblcUnidad.Enabled := False;
      End;

   If FInvParteEquipo.xModo = 'M' Then
      Begin
         //DESAVILITA LA OPCIÓN DE FILTRAR CON EL EVENTO ONEXIT
         dblcParteEquipo.Enabled := False;

         //FILTRA CARACTERISTICA DE PARTE
         DMATI.cdsQRY22A.Filtered := False;
         DMATI.cdsQRY22A.Filter := '';
         DMATI.cdsQRY22A.Filter := 'nombre_parte_equipoid=' + QuotedStr(DMATI.cdsQRY34.fieldbyName('nombre_parte_equipoid').AsString);
         DMATI.cdsQRY22A.Filtered := True;
         dblcCarecteristica.LookupTable := DMATI.cdsQRY22A;
         dblcCarecteristica.LookupField := 'nombre';

         //FILTRA TIPO DE PARTE

         DMATI.cdsQRY23A.Filtered := False;
         DMATI.cdsQRY23A.Filter := '';
         DMATI.cdsQRY23A.Filter := 'nombre_parte_equipoid=' + QuotedStr(DMATI.cdsQRY34.fieldbyName('nombre_parte_equipoid').AsString);
         DMATI.cdsQRY23A.Filtered := True;
         dblcParteTipo.LookupTable := DMATI.cdsQRY23A;
         dblcParteTipo.LookupField := 'nombre';

         //FILTRA MARCA DE PARTE

         DMATI.cdsQRY24A.Filtered := False;
         DMATI.cdsQRY24A.Filter := '';
         DMATI.cdsQRY24A.Filter := 'nombre_parte_equipoid=' + QuotedStr(DMATI.cdsQRY34.fieldbyName('nombre_parte_equipoid').AsString);
         DMATI.cdsQRY24A.Filtered := True;
         dblcParteMarca.LookupTable := DMATI.cdsQRY24A;
         dblcParteMarca.LookupField := 'nombre';

         //FILTRA UNIDAD DE PARTE

         DMATI.cdsQRY25A.Filtered := False;
         DMATI.cdsQRY25A.Filter := '';
         DMATI.cdsQRY25A.Filter := 'nombre_parte_equipoid=' + QuotedStr(DMATI.cdsQRY34.fieldbyName('nombre_parte_equipoid').AsString);
         DMATI.cdsQRY25A.Filtered := True;
         dblcUnidad.LookupTable := DMATI.cdsQRY25A;
         dblcUnidad.LookupField := 'nombre';

      End;
End;

Procedure TFInvParteEquipo1.dblcCarecteristicaEnter(Sender: TObject);
Begin
   dblcParteTipo.Enabled := True;
End;

Procedure TFInvParteEquipo1.dblcParteTipoEnter(Sender: TObject);
Begin
   dblcParteMarca.Enabled := True;
End;

Procedure TFInvParteEquipo1.dblcParteMarcaEnter(Sender: TObject);
Begin
   If DMATI.cdsQRY25A.RecordCount > 0 Then
      Begin
         dbeUnidad.Enabled := True;
         dblcUnidad.Enabled := True;
      End;
End;
Procedure TFInvParteEquipo1.dblcParteEquipoEnter(Sender: TObject);
Begin
   dblcCarecteristica.Enabled := True;
End;

Procedure TFInvParteEquipo1.dblcParteEquipoChange(Sender: TObject);
Begin
   //LIMPIA LOS COMBOS
   dblcCarecteristica.Clear;
   dblcParteTipo.Clear;
   dblcParteMarca.Clear;
   dbeUnidad.Clear;
   dblcUnidad.Clear;
End;

Procedure TFInvParteEquipo1.z2bbtnAceptaClick(Sender: TObject);
Begin

   // verifica que el equipo asignado no tenga el mismo codigo
   xSQL := 'select parte_equipoid, serie, artcodbar '
      + 'from ' + DMATI.wwEsquemaATI + 'ATI_PARTE_EQUIPO '
      + 'where SERIE = ' + quotedstr(DMATI.cdsQry34.FieldByName('SERIE').AsString)
      + ' and parte_equipoid <> ' + quotedstr(DMATI.cdsQry34.FieldByName('parte_equipoid').AsString);
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   If DMATI.cdsQry.Recordcount > 0 Then
      Begin
        //=====================================================================
        // Inicio HPC_201401_ATI
        //=====================================================================
        If (DMATI.cdsQry.FieldByName('artcodbar').AsString = DMATI.cdsQry34.FieldByName('artcodbar').AsString) then
          Begin
              ShowMessage('La Serie de la Parte ya fue registrada para este mismo equipo');
          End
        Else
          Begin
              ShowMessage('La Serie de la Parte ya fue registrada para otro equipo');
          End;
          dbeParteSerie.SetFocus;
          exit;
        //=====================================================================
        // Fin HPC_201401_ATI
        //=====================================================================
      End;

   // Graba la nueva tecnologia
   If MessageDlg('¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If FInvParteEquipo.xModo = 'I' Then
            Begin
               // verifica la serie no este vacía
               If (length(DMATI.cdsQRY34.FieldByName('serie').AsString) = 0)
                    and (dblcCarecteristica.text<>'INTEGRADA') Then
                  Begin
                     ShowMessage('La Serie no puede ir vacía');
                     dbeParteSerie.SetFocus;
                     exit;
                  End;

               // VERIFICA QUE SE SELECCIONE UN NOMBRE PARA LA PARTE
               If length(DMATI.cdsQRY34.FieldByName('TIPO').AsString) = 0 Then
                  Begin
                     ShowMessage('La parte necesita un nombre');
                     dblcParteEquipo.SetFocus;
                     exit;
                  End;
               //VERIFICA QUE EL ESTADO DE LA PARTE SEA INGRESADO
               If length(DMATI.cdsQRY34.FieldByName('estado').AsString) = 0 Then
                  Begin
                     ShowMessage('Indique el estado de la parte');
                     dblcParteEquipo.SetFocus;
                     exit;
                  End;

               // INSERTA EL PARTE DEL EQUIPO
               xSQL := ' insert into '+DMATI.wwEsquemaATI+'ati_parte_equipo  '
                  + '(parte_equipoid, serie, nombre_parte_equipoid, '
                  + ' marcaid, tipoid, fru, capacidad, unidadid, '
                  + ' caracteristicaid, estadoid, artcodbar) '
                  + ' values( '
                  + quotedstr(DMATI.cdsQry34.FieldByName('parte_equipoid').AsString) + ','
                  + quotedstr(DMATI.cdsQry34.FieldByName('serie').AsString) + ','
                  + quotedstr(DMATI.cdsQRY21A.FieldByName('nombre_parte_equipoid').AsString) + ','
                  + quotedstr(DMATI.cdsQry24A.FieldByName('marcaid').AsString) + ','
                  + quotedstr(DMATI.cdsQRY23A.FieldByName('tipoid').AsString) + ','
                  + quotedstr(DMATI.cdsQry34.FieldByName('fru').AsString) + ','
                  + quotedstr(DMATI.cdsQry34.FieldByName('capacidad').AsString) + ','
                  + quotedstr(DMATI.cdsQRY25A.FieldByName('unidadid').AsString) + ','
                  + quotedstr(DMATI.cdsQRY22A.FieldByName('caracteristicaid').AsString) + ','
                  + quotedstr(DMATI.cdsQry27A.FieldByName('ESTADOID').AsString) + ','
                  + quotedstr(DMATI.cdsQry34.FieldByName('artcodbar').AsString) + ')';

               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo Grabar');
                  exit;
               End;

               //INGRESA FICHA DE NACIMIENTO DE LA PARTE
               xSQL := 'select max(to_number(ficnacparequipoid)+1) NUMERO from '+DMATI.wwEsquemaATI+'ATI_PAR_CONTROL';
               DMATI.cdsQRY.Close;
               DMATI.cdsQRY.DataRequest(xSQL);
               DMATI.cdsQRY.Open;

               xSQL := ' insert into '+DMATI.wwEsquemaATI+'ati_par_control'
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
                  + quotedstr(DMATI.cdsQRY34.FieldByName('artcodbar').AsString) + ','
                  + quotedstr(DMATI.cdsQry21A.FieldByName('nombre').AsString) + ','
                  + quotedstr(DMATI.cdsQry34.FieldByName('serie').AsString) + ','
                  + quotedstr('') + ','
                  + quotedstr('') + ')';

            End
               //Modifica el equipo
         Else
            Begin
               xSQL := ' update '+DMATI.wwEsquemaATI+'ati_parte_equipo '
                  + ' set serie =' + quotedstr(DMATI.cdsQry34.FieldByName('serie').AsString) + ',';

               If DMATI.cdsQRY27A.FieldByName('estadoid').AsString = '1' Then
                  Begin
                     xSQL := xSQL + ' estadoid =' + quotedstr(DMATI.cdsQry34.FieldByName('estadoid').AsString) + ',';
                  End
               Else
                  Begin
                     xSQL := xSQL + ' estadoid =' + quotedstr(DMATI.cdsQRY27A.FieldByName('estadoid').AsString) + ',';
                     //  DMATI.cdsQry33.FieldByName('estado').AsString:=DMATI.cdsQry27.FieldByName('nombre').AsString;
                  End;
               xSQL := xSQL + ' capacidad =' + quotedstr(DMATI.cdsQry34.FieldByName('capacidad').AsString) + ',';
               xSQL := xSQL + ' fru =' + quotedstr(DMATI.cdsQry34.FieldByName('fru').AsString) + ',';

               If DMATI.cdsQRY22A.FieldByName('caracteristicaid').AsString = '1' Then
                  Begin
                     xSQL := xSQL + ' caracteristicaid =' + QuotedStr(DMATI.cdsQry34.FieldByName('caracteristicaid').AsString) + ',';
                  End
               Else
                  Begin
                     xSQL := xSQL + ' caracteristicaid =' + QuotedStr(DMATI.cdsQRY22A.FieldByName('caracteristicaid').AsString) + ',';
                  End;

               If DMATI.cdsQRY24A.FieldByName('marcaid').AsString = '1' Then
                  Begin
                     xSQL := xSQL + ' marcaid =' + QuotedStr(DMATI.cdsQry34.FieldByName('marcaid').AsString) + ',';
                  End
               Else
                  Begin
                     xSQL := xSQL + ' marcaid =' + QuotedStr(DMATI.cdsQRY24A.FieldByName('marcaid').AsString) + ',';
                  End;

               If DMATI.cdsQRY23A.FieldByName('tipoid').AsString = '1' Then
                  Begin
                     xSQL := xSQL + ' tipoid =' + QuotedStr(DMATI.cdsQry34.FieldByName('tipoid').AsString) + ',';
                  End
               Else
                  Begin
                     xSQL := xSQL + ' tipoid =' + QuotedStr(DMATI.cdsQRY23A.FieldByName('tipoid').AsString) + ',';
                  End;

               If DMATI.cdsQRY21A.FieldByName('nombre_parte_equipoid').AsString = '1' Then
                  Begin
                     xSQL := xSQL + ' nombre_parte_equipoid =' + QuotedStr(DMATI.cdsQry34.FieldByName('nombre_parte_equipoid').AsString) + ',';
                  End
               Else
                  Begin
                     xSQL := xSQL + ' nombre_parte_equipoid =' + QuotedStr(DMATI.cdsQRY21A.FieldByName('nombre_parte_equipoid').AsString) + ',';
                  End;

               If DMATI.cdsQRY25A.FieldByName('unidadid').AsString = '1' Then
                  Begin
                     xSQL := xSQL + ' unidadid =' + QuotedStr(DMATI.cdsQry34.FieldByName('unidadid').AsString);
                  End
               Else
                  Begin
                     xSQL := xSQL + ' unidadid =' + QuotedStr(DMATI.cdsQRY25A.FieldByName('unidadid').AsString);
                  End;

               xSQL := xSQL + ' where parte_equipoid =' + quotedstr(DMATI.cdsQry34.FieldByName('parte_equipoid').AsString);

            End;

         DMATI.cdsQry34.FieldByName('CAPUNIDAD').AsString :=
            DMATI.cdsQry34.FieldByName('capacidad').AsString + ' ' +
            DMATI.cdsQry34.FieldByName('UNIDAD').AsString;

         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            DMATI.cdsQry34.post;
            FInvParteEquipo.lbContador.Caption := 'N° PARTES ' + IntToStr(DMATI.cdsQRY34.Recordcount);

         Except
            ShowMessage('No se pudo Grabar');
            exit;
         End;
      End;
   ShowMessage('ok');
   close;
End;

Procedure TFInvParteEquipo1.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(CM_DialogKey, VK_TAB, 0);
      End;
End;

End.

