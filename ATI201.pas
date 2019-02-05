Unit ATI201;

Interface

Uses
   {  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, DBXpress, DB, SqlExpr,
     DBClient, SimpleDS, ExtCtrls, FMTBcd, Mask, CustomizeDlg, ComCtrls,
     ToolWin, Calendar, dblookup;
    }
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
   ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
   ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection,
   IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl,
   ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons,
   jpeg, IniFiles, DateUtils, Math, FMTBcd, SqlExpr, DBCtrls, Wwdotdot,
   fcButton, fcImgBtn, fcShapeBtn;

Type
   TFInvEquipo1 = Class(TForm)
      Panel1: TPanel;
      Equipo: TLabel;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      dblcTipoEquipo: TwwDBLookupCombo;
      dblcTecnologia: TwwDBLookupCombo;
      dblcModelo: TwwDBLookupCombo;
      dblcMarca: TwwDBLookupCombo;
      dblcTipo: TwwDBLookupCombo;
      Label11: TLabel;
      Label7: TLabel;
      pnlPie: TPanel;
      Panel2: TPanel;
      Label5: TLabel;
      Label6: TLabel;
      Label12: TLabel;
      dblcEstado: TwwDBLookupCombo;
      dblcColor: TwwDBLookupCombo;
      z2bbtnAcepta: TfcShapeBtn;
      Panel3: TPanel;
      Label8: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label17: TLabel;
      dbeEserie: TwwDBEdit;
      dbeENunInv: TwwDBEdit;
      dbeFru: TwwDBEdit;
      Label16: TLabel;
      dbeECodigo: TwwDBEdit;
      z2bbtnCancelar: TfcShapeBtn;
      dblcSSGG: TwwDBLookupCombo;
      Label13: TLabel;
    Label14: TLabel;
    EReq: TEdit;
      Procedure FormCreate(Sender: TObject);
      Procedure dblcTipoEquipoExit(Sender: TObject);
      Procedure dblcdUsuarioExit(Sender: TObject);
      Procedure dbeENunInvKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure z2bbtnAceptaClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure dblcMarcaClick(Sender: TObject);
      Procedure dblcTipoEquipoChange(Sender: TObject);
      Procedure dblcTecnologiaChange(Sender: TObject);
      Procedure dblcModeloChange(Sender: TObject);
      Procedure dblcMarcaChange(Sender: TObject);
      Procedure z2bbtnCancelarClick(Sender: TObject);
      Procedure dbeENunInvExit(Sender: TObject);
   Private
      xSQL: String;
   Public

   End;

Var
   FInvEquipo1: TFInvEquipo1;
Implementation

Uses ATIDM1, funciones, ATI200;

{$R *.dfm}

Procedure TFInvEquipo1.FormCreate(Sender: TObject);
Begin
   //CARGA COMBO DE EQUIPOS
   xSQL := ' select nombre, observaciones, nombre_equipoid from '+DMATI.wwEsquemaATI+'tipo_equipo'
      + ' order by nombre_equipoid';

   DMATI.cdsQry21.Close;
   DMATI.cdsQry21.DataRequest(xSQL);
   DMATI.cdsQry21.open;
   dblcTipoEquipo.LookupTable := DMATI.cdsQry21;
   dblcTipoEquipo.LookupField := 'nombre';
   //  dblcTipoEquipo.Selected.Strings =('nombre'#9'25'#9'nombre'#9'F');

//CARGA COMBO DE TECNOLOGIAS
   xSQL := ' select tecnologia.nombre,'
      + ' tecnologia.tecnologiaid, '
      + ' tecnocontrol.nombre_equipoid'
      + ' from '+DMATI.wwEsquemaATI+'tecnologia, '
      + ' '+DMATI.wwEsquemaATI+'tecnocontrol '
      + ' where tecnologia.tecnologiaid= tecnocontrol.tecnologiaid';

   DMATI.cdsQry22.Close;
   DMATI.cdsQry22.DataRequest(xSQL);
   DMATI.cdsQry22.open;
   //CARGA COMBO DE MODELOS
   xSQL := ' select MODELO.nombre,'
      + ' MODELO.MODELOID, '
      + ' MODELOCONTROL.nombre_equipoid'
      + ' from '+DMATI.wwEsquemaATI+'MODELO, '
      + ' MODELOCONTROL '
      + ' where MODELO.MODELOID= MODELOCONTROL.MODELOID';

   DMATI.cdsQry23.Close;
   DMATI.cdsQry23.DataRequest(xSQL);
   DMATI.cdsQry23.open;
   //CARGA COMBO DE MARCA
   xSQL := ' select MARCA.nombre,'
      + ' MARCA.MARCAID, '
      + ' MARCACONTROL.nombre_equipoid'
      + ' from '+DMATI.wwEsquemaATI+'MARCA, '
      + ' '+DMATI.wwEsquemaATI+'MARCACONTROL '
      + ' where MARCA.MARCAID= MARCACONTROL.MARCAID';

   DMATI.cdsQry24.Close;
   DMATI.cdsQry24.DataRequest(xSQL);
   DMATI.cdsQry24.open;
   //CARGA COMBO DE TIPO
   xSQL := ' select TIPO.nombre,'
      + ' TIPO.TIPOID, '
      + ' ATI_TIP_CTRL.nombre_equipoid'
      + ' from '+DMATI.wwEsquemaATI+'TIPO, '
      + ' '+DMATI.wwEsquemaATI+'ATI_TIP_CTRL '
      + ' where TIPO.TIPOID= ATI_TIP_CTRL.TIPOID';

   DMATI.cdsQry25.Close;
   DMATI.cdsQry25.DataRequest(xSQL);
   DMATI.cdsQry25.open;
   //CARGA COMBO DE COLOR
   xSQL := ' select COLORID,nombre FROM '+DMATI.wwEsquemaATI+'COLOR';

   DMATI.cdsQry26.Close;
   DMATI.cdsQry26.DataRequest(xSQL);
   DMATI.cdsQry26.open;
   dblcColor.LookupTable := DMATI.cdsQry26;
   dblcColor.LookupField := 'nombre';
   //CARGA COMBO DE ESTADO
   xSQL := ' select ESTADOID,nombre FROM '+DMATI.wwEsquemaATI+'ESTADO';
   DMATI.cdsQry27.Close;
   DMATI.cdsQry27.DataRequest(xSQL);
   DMATI.cdsQry27.open;
   //CARGA EL COMBO DE REPONSABLES DE SSGG
   xSQL := ' select nombre, clave, descripcion, ssggid from '+DMATI.wwEsquemaATI+'ATI_SSGG'
      + ' ORDER BY nombre';
   DMATI.cdsQRY26A.Close;
   DMATI.cdsQRY26A.DataRequest(xSQL);
   DMATI.cdsQRY26A.Open;
   dblcSSGG.LookupTable := DMATI.cdsQRY26A;
   dblcSSGG.LookupField := 'nombre';
   dblcSSGG.Text := DMATI.cdsQRY26A.FieldByName('nombre').AsString;

   //COMBO  ESTADO DE EQUI
   dblcEstado.LookupTable := DMATI.cdsQry27;
   dblcEstado.LookupField := 'nombre';
End;

Procedure TFInvEquipo1.dblcTipoEquipoExit(Sender: TObject);
Begin

   //FILTRA TECNOLOGIA DE EQUIPO
   DMATI.cdsQry22.Filtered := False;
   DMATI.cdsQry22.Filter := '';
   DMATI.cdsQry22.Filter := 'nombre_equipoid=' + IntToStr(DMATI.cdsQry21.fieldbyName('nombre_equipoid').AsInteger);
   DMATI.cdsQry22.Filtered := True;
   dblcTecnologia.LookupTable := DMATI.cdsQry22;
   dblcTecnologia.LookupField := 'nombre';
   //FILTRAL MODELOS DE EQUIPO
   DMATI.cdsQry23.Filtered := False;
   DMATI.cdsQry23.Filter := '';
   DMATI.cdsQry23.Filter := 'nombre_equipoid=' + IntToStr(DMATI.cdsQry21.fieldbyName('nombre_equipoid').AsInteger);
   DMATI.cdsQry23.Filtered := True;
   dblcModelo.LookupTable := DMATI.cdsQry23;
   dblcModelo.LookupField := 'nombre';
   //FILTRAL MARCA DE EQUIPO
   DMATI.cdsQry24.Filtered := False;
   DMATI.cdsQry24.Filter := '';
   DMATI.cdsQry24.Filter := 'nombre_equipoid=' + IntToStr(DMATI.cdsQry21.fieldbyName('nombre_equipoid').AsInteger);
   DMATI.cdsQry24.Filtered := True;
   dblcMarca.LookupTable := DMATI.cdsQry24;
   dblcMarca.LookupField := 'nombre';
   //FILTRAL TIPO DE EQUIPO
   DMATI.cdsQry25.Filtered := False;
   DMATI.cdsQry25.Filter := '';
   DMATI.cdsQry25.Filter := 'nombre_equipoid=' + IntToStr(DMATI.cdsQry21.fieldbyName('nombre_equipoid').AsInteger);
   DMATI.cdsQry25.Filtered := True;
   dblcTipo.LookupTable := DMATI.cdsQry25;
   dblcTipo.LookupField := 'nombre';
   //ABRE EL COMBO DE TECNOLOGIAS

End;

Procedure TFInvEquipo1.dblcdUsuarioExit(Sender: TObject);
Begin
   {DMATI.cdsQry35.Filtered:= False;
   DMATI.cdsQry35.Filter:='';
   DMATI.cdsQry35.Filter:='usuarioid='+IntToStr(DMATI.cdsQry28.fieldbyName('usuarioid').AsInteger);
   DMATI.cdsQry35.Filtered:= True;
   dblcUbicacion.LookupTable:= DMATI.cdsQry35;
   dblcUbicacion.LookupField:='UBICACION'; }
End;

Procedure TFInvEquipo1.dbeENunInvKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Not (Key In ['0'..'9', #8]) Then
      Begin
         Key := #0;
      End;

End;

Procedure TFInvEquipo1.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DMATI.cdsQRY33.CancelUpdates;
   EReq.Clear;
   {
      If FInvEquipo.xModo <> 'I' Then
      DMATI.cdsQRY33.CancelUpdates;

      DMATI.cdsQRY21.Close;
      DMATI.cdsQRY22.Close;
      DMATI.cdsQRY23.Close;
      DMATI.cdsQRY24.Close;
      DMATI.cdsQRY25.Close;
      DMATI.cdsQRY26.Close;
      DMATI.cdsQRY27.Close;
      DMATI.cdsQRY28.Close;
   }
End;

Procedure TFInvEquipo1.z2bbtnAceptaClick(Sender: TObject);
Begin
   // verifica que el equipo asignado no tenga el mismo codigo
   xSQL := 'select EQUIPOID, SERIE '
      + 'from '+DMATI.wwEsquemaATI+'EQUIPO '
      + 'where SERIE=' + quotedstr(DMATI.cdsQry33.FieldByName('SERIE').AsString)
      + '  and EQUIPOID<>' + quotedstr(DMATI.cdsQry33.FieldByName('EQUIPOID').AsString);
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   If DMATI.cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('El Equipo ya fue registrado con otra Código');
         dbeEserie.SetFocus;
         exit;
      End;

   // Graba la nueva tecnologia
   If MessageDlg(' ¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If FInvEquipo.xModo = 'I' Then
            Begin
               // verifica la serie no este vacía
               If length(DMATI.cdsQRY33.FieldByName('serie').AsString) = 0 Then
                  Begin
                     ShowMessage('La Serie no puede ir vacía');
                     dbeEserie.SetFocus;
                     exit;
                  End;

               // verifica que el numero de Inventario  no este vacío
               If length(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString) = 0 Then
                  Begin
                     ShowMessage('El N° de Inventario no puede ir vacío');
                     dbeENunInv.SetFocus;
                     exit;
                  End;

               // verifica que el numero de Inventario  no este vacío
               If length(DMATI.cdsQRY33.FieldByName('EQUIPO').AsString) = 0 Then
                  Begin
                     ShowMessage('El nombre de Parte no Puede ir vacío');
                     dblcTipoEquipo.SetFocus;
                     exit;
                  End;
               //VERIFICA QUE EL ESTADO DEL EQUIPO SEA IMGRESADO
               If length(DMATI.cdsQRY33.FieldByName('estado').AsString) = 0 Then
                  Begin
                     ShowMessage('Indique el estado del Equipo');
                     dblcEstado.SetFocus;
                     exit;
                  End;

               // INSERTA EL INVENTARIO DE EQUIPO
               xSQL := ' Insert into '+DMATI.wwEsquemaATI+'equipo '
                  + ' (equipoid, serie, estadoid,'
                  + ' usuarioid, estacionid, ARTCODBAR,'
                  + ' fru, tecnologiaid, modeloid, marcaid,'
                  + ' tipoid, nombre_equipoid, colorid)'
                  + ' values( '
                  + quotedstr(DMATI.cdsQry33.FieldByName('equipoid').AsString) + ','
                  + quotedstr(DMATI.cdsQry33.FieldByName('serie').AsString) + ','
                  + quotedstr(DMATI.cdsQry27.FieldByName('estadoid').AsString) + ','
                  + quotedstr('613') + ','
                  + quotedstr('1') + ','
                  + quotedstr(DMATI.cdsQry33.FieldByName('ARTCODBAR').AsString) + ','
                  + quotedstr(DMATI.cdsQry33.FieldByName('fru').AsString) + ','
                  + IntToStr(DMATI.cdsQry22.FieldByName('tecnologiaid').AsInteger) + ','
                  + IntToStr(DMATI.cdsQry23.FieldByName('modeloid').AsInteger) + ','
                  + IntToStr(DMATI.cdsQry24.FieldByName('marcaid').AsInteger) + ','
                  + IntToStr(DMATI.cdsQry25.FieldByName('tipoid').AsInteger) + ','
                  + IntToStr(DMATI.cdsQry21.FieldByName('nombre_equipoid').AsInteger) + ','
                  + IntToStr(DMATI.cdsQry26.FieldByName('colorid').AsInteger) + ')';
               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo Grabar');
                  exit;
               End;

               DMATI.cdsQry33.FieldByName('usuario').AsString := 'Soporte Técnico';
               DMATI.cdsQry33.FieldByName('ubicacion').AsString := 'Sede Central-5to Piso-Sistemas-Sala de Servidores';

               //REGISTRA FECHA DE NACIMIENTO DE EQUIP0
               xSQL := 'select max(to_number(ficnacequipoid)+1) NUMERO from '+DMATI.wwEsquemaATI+'ficnacequipo';
               DMATI.cdsQry.Close;
               DMATI.cdsQry.DataRequest(xSQL);
               DMATI.cdsQry.Open;

               xSQL := ' insert into '+DMATI.wwEsquemaATI+'ficnacequipo '
                  + ' (ficnacequipoid, fecha, userid, '
                  + ' equipoid, estado_equipoid) '
                  + ' values( '
                  + quotedstr(DMATI.cdsQry.FieldByName('NUMERO').AsString) + ','
                  + 'SYSDATE' + ','
                  + quotedstr(DMATI.wUsuario) + ','
                  + quotedstr(DMATI.cdsQry33.FieldByName('equipoid').AsString) + ','
                  + quotedstr(DMATI.cdsQry27.FieldByName('estadoid').AsString) + ')';
               Try
                  DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
               Except
                  ShowMessage('No se pudo Grabar');
                  exit;
               End;

               //REGISTRA GUIA DE ENTRADA DE EQUIPO INVENTARIADO
               xSQL := 'SELECT MAX(TO_NUMBER(GUIA_ENTRADAID)+1) NUMERO FROM '+DMATI.wwEsquemaATI+'ATI_ENT';
               DMATI.cdsQry.Close;
               DMATI.cdsQry.DataRequest(xSQL);
               DMATI.cdsQry.Open;
               DMATI.xEntrada := DMATI.cdsQry.FieldByName('NUMERO').AsString;

               xSQL := 'INSERT INTO '+DMATI.wwEsquemaATI+'ATI_ENT '
                  + ' (GUIA_ENTRADAID, '
                  + ' FECHA, '
                  + ' OBSERVACIONES, '
                  + ' SSGGID, '
                  + ' USERID, '
                  + ' EQUIPOID, '
                  + ' ESTADO_EQUIPOID, '
                  + ' USUARIOID, '
                  + ' NROREQUERIMIENTO, '
                  + ' ATI_TIP_ENT, '
                  + ' USUARIOCONTROID, '
                  + ' REFERENCIAID, '
                  + ' PROCEDENCIAID) '
                  + ' VALUES( '
                  + quotedstr(DMATI.cdsQry.FieldByName('NUMERO').AsString) + ','
                  + 'sysdate' + ','
                  + QuotedStr('ENTRADA POR INVENTARIO TECNICO') + ','
                  + QuotedStr(DMATI.cdsQRY26A.FieldByName('ssggid').AsString) + ','
                  + QuotedStr(UpperCase(DMATI.wUsuario)) + ','
                  + QuotedStr(DMATI.cdsQRY33.FieldByName('equipoid').AsString) + ','
                  + QuotedStr(DMATI.cdsQRY27.FieldByName('ESTADOID').AsString) + ','
                  + QuotedStr('613') + ','
                  + QuotedStr(EReq.Text) + ','
                  + QuotedStr('ENTINV') + ','
                  + QuotedStr('28') + ','
                  + QuotedStr('541') + ','
                  + QuotedStr('541') + ')';

            End
               //MODIFICA LA PARTE
         Else
            Begin
               xSQL := ' update '+DMATI.wwEsquemaATI+'equipo '
                  + ' set serie =' + quotedstr(DMATI.cdsQry33.FieldByName('serie').AsString) + ',';

               If DMATI.cdsQry27.FieldByName('estadoid').AsInteger = 1 Then
                  Begin
                     xSQL := xSQL + ' estadoid =' + quotedstr(DMATI.cdsQry33.FieldByName('estadoid').AsString) + ',';
                  End
               Else
                  Begin
                     xSQL := xSQL + ' estadoid =' + quotedstr(DMATI.cdsQry27.FieldByName('estadoid').AsString) + ',';
                     //  DMATI.cdsQry33.FieldByName('estado').AsString:=DMATI.cdsQry27.FieldByName('nombre').AsString;
                  End;
               xSQL := xSQL + ' ARTCODBAR =' + quotedstr(DMATI.cdsQry33.FieldByName('ARTCODBAR').AsString) + ',';
               xSQL := xSQL + ' fru =' + quotedstr(DMATI.cdsQry33.FieldByName('fru').AsString) + ',';

               If DMATI.cdsQry22.FieldByName('tecnologiaid').AsInteger = 1 Then
                  Begin
                     xSQL := xSQL + ' tecnologiaid =' + IntToStr(DMATI.cdsQry33.FieldByName('tecnologiaid').AsInteger) + ',';
                  End
               Else
                  Begin
                     xSQL := xSQL + ' tecnologiaid =' + IntToStr(DMATI.cdsQry22.FieldByName('tecnologiaid').AsInteger) + ',';
                     //   DMATI.cdsQry33.FieldByName('tecnologia').AsString:=DMATI.cdsQry22.FieldByName('nombre').AsString;
                  End;
               If DMATI.cdsQry23.FieldByName('modeloid').AsInteger = 1 Then
                  Begin
                     xSQL := xSQL + ' modeloid =' + IntToStr(DMATI.cdsQry33.FieldByName('modeloid').AsInteger) + ',';
                  End
               Else
                  Begin
                     xSQL := xSQL + ' modeloid =' + IntToStr(DMATI.cdsQry23.FieldByName('modeloid').AsInteger) + ',';
                     //   DMATI.cdsQry33.FieldByName('modelo').AsString:=DMATI.cdsQry23.FieldByName('nombre').AsString;
                  End;
               If DMATI.cdsQry24.FieldByName('marcaid').AsInteger = 1 Then
                  Begin
                     xSQL := xSQL + ' marcaid =' + IntToStr(DMATI.cdsQry33.FieldByName('marcaid').AsInteger) + ',';
                  End
               Else
                  Begin
                     xSQL := xSQL + ' marcaid =' + IntToStr(DMATI.cdsQry24.FieldByName('marcaid').AsInteger) + ',';
                     //  DMATI.cdsQry33.FieldByName('marca').AsString:=DMATI.cdsQry24.FieldByName('nombre').AsString;
                  End;
               If DMATI.cdsQry25.FieldByName('tipoid').AsInteger = 1 Then
                  Begin
                     xSQL := xSQL + ' tipoid =' + IntToStr(DMATI.cdsQry33.FieldByName('tipoid').AsInteger) + ',';
                  End
               Else
                  Begin
                     xSQL := xSQL + ' tipoid =' + IntToStr(DMATI.cdsQry25.FieldByName('tipoid').AsInteger) + ',';
                     //  DMATI.cdsQry33.FieldByName('tipo').AsString:=DMATI.cdsQry25.FieldByName('nombre').AsString;
                  End;
               If DMATI.cdsQry21.FieldByName('nombre_equipoid').AsInteger = 1 Then
                  Begin
                     xSQL := xSQL + ' nombre_equipoid =' + IntToStr(DMATI.cdsQry33.FieldByName('nombre_equipoid').AsInteger) + ',';
                  End
               Else
                  Begin
                     xSQL := xSQL + ' nombre_equipoid =' + IntToStr(DMATI.cdsQry21.FieldByName('nombre_equipoid').AsInteger) + ',';
                     //  DMATI.cdsQry33.FieldByName('equipo').AsString:=DMATI.cdsQry21.FieldByName('nombre').AsString;
                  End;
               If DMATI.cdsQry26.FieldByName('colorid').AsInteger = 1 Then
                  Begin
                     xSQL := xSQL + ' colorid =' + IntToStr(DMATI.cdsQry33.FieldByName('colorid').AsInteger);
                  End
               Else
                  Begin
                     xSQL := xSQL + ' colorid =' + IntToStr(DMATI.cdsQry26.FieldByName('colorid').AsInteger);
                     //  DMATI.cdsQry33.FieldByName('color').AsString:=DMATI.cdsQry26.FieldByName('nombre').AsString;
                  End;
               xSQL := xSQL + ' where equipoid =' + quotedstr(DMATI.cdsQry33.FieldByName('equipoid').AsString);
            End;

         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            DMATI.cdsQry33.post;
         Except
            ShowMessage('No se pudo Grabar');
            exit;
         End;
         //DMATI.cdsQry33.Post;
         ShowMessage('ok');
         close;
      End
End;

Procedure TFInvEquipo1.FormShow(Sender: TObject);
Begin
   If FInvEquipo.xModo = 'I' Then
      Begin
         dblcTipoEquipo.Enabled := True;
         dblcTecnologia.Enabled := False;
         dblcModelo.Enabled := False;
         dblcMarca.Enabled := False;
         dblcTipo.Enabled := False;
      End;
   If FInvEquipo.xModo = 'M' Then
      Begin
         // FILTRA TECNOLOGIA DE EQUIPO
         DMATI.cdsQry22.Filtered := False;
         DMATI.cdsQry22.Filter := '';
         DMATI.cdsQry22.Filter := 'nombre_equipoid=' + IntToStr(DMATI.cdsQry33.fieldbyName('nombre_equipoid').AsInteger);
         DMATI.cdsQry22.Filtered := True;
         dblcTecnologia.LookupTable := DMATI.cdsQry22;
         dblcTecnologia.LookupField := 'nombre';

         //FILTRAL MODELOS DE EQUIPO
         DMATI.cdsQry23.Filtered := False;
         DMATI.cdsQry23.Filter := '';
         DMATI.cdsQry23.Filter := 'nombre_equipoid=' + IntToStr(DMATI.cdsQry33.fieldbyName('nombre_equipoid').AsInteger);
         DMATI.cdsQry23.Filtered := True;
         dblcModelo.LookupTable := DMATI.cdsQry23;
         dblcModelo.LookupField := 'nombre';
         //FILTRAL MARCA DE EQUIPO
         DMATI.cdsQry24.Filtered := False;
         DMATI.cdsQry24.Filter := '';
         DMATI.cdsQry24.Filter := 'nombre_equipoid=' + IntToStr(DMATI.cdsQry33.fieldbyName('nombre_equipoid').AsInteger);
         DMATI.cdsQry24.Filtered := True;
         dblcMarca.LookupTable := DMATI.cdsQry24;
         dblcMarca.LookupField := 'nombre';
         //FILTRAL TIPO DE EQUIPO
         DMATI.cdsQry25.Filtered := False;
         DMATI.cdsQry25.Filter := '';
         DMATI.cdsQry25.Filter := 'nombre_equipoid=' + IntToStr(DMATI.cdsQry33.fieldbyName('nombre_equipoid').AsInteger);
         DMATI.cdsQry25.Filtered := True;
         dblcTipo.LookupTable := DMATI.cdsQry25;
         dblcTipo.LookupField := 'nombre';

         dblcTipoEquipo.Enabled := False;
      End;
End;

Procedure TFInvEquipo1.dblcMarcaClick(Sender: TObject);
Begin
   dblcTipo.Enabled := True;
End;

Procedure TFInvEquipo1.dblcTipoEquipoChange(Sender: TObject);
Begin
   dblcTecnologia.Enabled := True;
   //LIMPIA LOS COMBOS
   dblcTecnologia.Clear;
   dblcModelo.Clear;
   dblcMarca.Clear;
   dblcTipo.Clear;

End;

Procedure TFInvEquipo1.dblcTecnologiaChange(Sender: TObject);
Begin
   dblcModelo.Enabled := True;
End;

Procedure TFInvEquipo1.dblcModeloChange(Sender: TObject);
Begin
   dblcMarca.Enabled := True;
End;

Procedure TFInvEquipo1.dblcMarcaChange(Sender: TObject);
Begin
   dblcTipo.Enabled := True;
End;

Procedure TFInvEquipo1.z2bbtnCancelarClick(Sender: TObject);
Begin
   close;
End;

Procedure TFInvEquipo1.dbeENunInvExit(Sender: TObject);
Begin
   xSQL := 'select ACF201.CODIGOBARRA ARTCODBAR,' //acf201.artcodbar,'
      + ' acf201.acfdes, '
      + ' acf201.RECIBENOM,'
      + ' acf201.acfdesl,'
      + ' acf201.acftipadqu,'
      + ' acf201.estadoid, '
      + ' acf201.materialid,'
      + ' acf201.acfmarca, '
      + ' acf201.acfmodelo, '
      + ' acf201.acfserie, '
      + ' acf201.acfcolor,'
      + ' acf201.tacfdeprec, '
      + ' acf120.locid,'
      + ' acf121.piso, '
      + ' acf122.area,'
      + ' acf123.ambcod, '
      + ' acf120.LOCDES||''-''||acf121.PISODES ||''-''||acf122.areades||''-''||acf123.ambdes UBICACION'
      + ' from '+DMATI.wwEsquemaProd+'ACF201,'
      + ' '+DMATI.wwEsquemaProd+'acf120,'
      + ' '+DMATI.wwEsquemaProd+'acf121,'
      + ' '+DMATI.wwEsquemaProd+'acf122,'
      + ' '+DMATI.wwEsquemaProd+'acf123'
      + ' where acf201.locid = acf120.locid (+)'
      + ' AND acf201.locid = acf121.locid (+)'
      + ' AND acf201.piso =  acf121.piso (+) '
      + ' AND acf201.locid = acf122.locid (+)'
      + ' AND acf201.piso =  acf122.piso (+)'
      + ' AND acf201.area =  acf122.area (+)'
      + ' AND acf201.locid = acf123.locid (+)'
      + ' AND acf201.piso =  acf123.piso (+)'
      + ' AND acf201.area =  acf123.area (+)'
      + ' AND acf201.ambcod =  acf123.ambcod (+)'
      + ' /*AND tacfid = ''03'' */'
      + ' AND ARTCODBAR = ' + QuotedStr(dbeENunInv.Text);

   DMATI.cdsQry42.Close;
   DMATI.cdsQry42.DataRequest(xSQL);
   DMATI.cdsQry42.Open;

   If DMATI.cdsQry42.RecordCount = 0 Then
      Begin
         If MessageDlg(' ¿N° Inventario no es encuentra Registrado en SSGG, Decea Inventaria Igual? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               Exit;
            End
         Else
            Begin
               Close;
            End
      End;
   //ShowMessage('Usted Registrara un '+DMATI.cdsQry42.FieldByName('acfdes').AsString);
   //dbeEserie.Text:=DMATI.cdsQry42.FieldByName('acfserie').AsString;
   DMATI.cdsQry33.FieldByName('SERIE').AsString := DMATI.cdsQry42.FieldByName('acfserie').AsString;
   dbeFru.SetFocus;
End;
End.

