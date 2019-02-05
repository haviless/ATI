Unit ATI100;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, SqlExpr, DB, Grids, DBGrids, Provider, DBClient, StdCtrls,
    DBLocal, DBTables, DBXpress, FMTBcd, ToolWin,
    DBActns, ActnList, ImgList, ComCtrls, ActnMan, ActnCtrls,
    XPStyleActnCtrls, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, DBCtrls,
    wwcheckbox, wwdblook, Mask, wwdbedit, ppDB, ppBands, ppCache, ppClass,
    ppEndUsr, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe;

Type
    TFManUsuario = Class(TForm)
        Label1: TLabel;
        dbgUsuario: TwwDBGrid;
        pnlPie: TPanel;
        pnlCabecera: TPanel;
        Label2: TLabel;
        edtBuscar: TEdit;
        dbpUsuario: TppDBPipeline;
        pprUsuario: TppReport;
        ppdUsuario: TppDesigner;
        bbUsuario: TBitBtn;
        ppHeaderBand1: TppHeaderBand;
        ppDetailBand1: TppDetailBand;
        ppFooterBand1: TppFooterBand;
    dbgUsuarioIButton: TwwIButton;
    pnlUbicacion: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dblcUbicacion: TwwDBLookupCombo;
    dblcPiso: TwwDBLookupCombo;
    dblcArea: TwwDBLookupCombo;
    dblcAmbiente: TwwDBLookupCombo;
    Label5: TLabel;
    dbeCodUsu: TwwDBEdit;
    dbeUsu: TwwDBEdit;
    bbModificaUbicacion: TBitBtn;
    dbeUbicacion: TwwDBEdit;
    dbePiso: TwwDBEdit;
    dbeArea: TwwDBEdit;
    dbeAmbiente: TwwDBEdit;
    dbgUbicacion: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    BitBtn1: TBitBtn;

        Procedure BitBtn3Click(Sender: TObject);
        Procedure BitBtn5Click(Sender: TObject);
        Procedure FormCreate(Sender: TObject);
        Procedure edtBuscarChange(Sender: TObject);
        Procedure edtBuscarKeyPress(Sender: TObject; Var Key: Char);
        Procedure bbUsuarioClick(Sender: TObject);
    procedure dbgUsuarioIButtonClick(Sender: TObject);
    procedure Z2bbtnCanc3Click(Sender: TObject);
    procedure dbgUsuarioDblClick(Sender: TObject);
    procedure BModificarClick(Sender: TObject);
    procedure dbgUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcPisoExit(Sender: TObject);
    procedure dblcAreaExit(Sender: TObject);
    procedure bbModificaUbicacionClick(Sender: TObject);
    procedure dblcUbicacionExit(Sender: TObject);
    procedure wwDBGrid1IButtonClick(Sender: TObject);
    procedure dbgUbicacionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgUbicacionDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

    Private
        xModo: String;
        xSQL: String;
    Protected
    { Private declarations }

    Public
    { Public declarations }
    End;

Var
    FManUsuario: TFManUsuario;

Implementation

Uses ATIDM1, funciones;

{$R *.DFM}

Procedure TFManUsuario.BitBtn3Click(Sender: TObject);
Var
    xSQL: String;
Begin

End;

Procedure TFManUsuario.BitBtn5Click(Sender: TObject);
Begin
    Close;
End;                      

Procedure TFManUsuario.FormCreate(Sender: TObject);
Begin
    xSQL :=  ' select idpers, pernom from '+DMATI.wwEsquemaATI+'personal '
            +' ORDER BY to_number(idpers) ';

    DMATI.cdsQry14.Close;
    DMATI.cdsQry14.DataRequest(xSQL);
    DMATI.cdsQry14.Open;
//DETERMINA EL USUARIO
    dbgUsuario.DataSource := DMATI.dsQRY14;

    dbgUsuario.Selected.clear;
    dbgUsuario.Selected.Add('idpers'+ #9 +'10'+ #9 + 'CÓDIGO');
    dbgUsuario.Selected.Add('pernom' + #9 +'25'+ #9 + 'USUARIO');
    dbgUsuario.ApplySelected;

 xSQL :=  ' select distinct'
            +' personal.idpers,'
            +' acf123.ambdes,'
            +' acf123.ambcod, '
            +' acf122.areades, '
            +' acf122.area,  '
            +' acf121.pisodes,'
            +' acf121.piso, '
            +' acf120.locdes,'
            +' acf120.locid,  '
            +' usuariocontrol.USUARIOCONTROID  '
            +' from '+DMATI.wwEsquemaATI+'personal, '
            +' '+DMATI.wwEsquemaATI+'usuariocontrol, '
            +' '+DMATI.wwEsquemaProd+'acf123, '
            +' '+DMATI.wwEsquemaProd+'acf122, '
            +' '+DMATI.wwEsquemaProd+'acf121, '
            +' '+DMATI.wwEsquemaProd+'acf120 '
            +' where personal.idpers = usuariocontrol.usuarioid AND '
            +' usuariocontrol.locid  = acf123.locid(+)  AND '
            +' usuariocontrol.piso   = acf123.piso(+)   AND '
            +' usuariocontrol.area   = acf123.area(+)   AND '
            +' usuariocontrol.ambcod = acf123.ambcod(+) AND '
            +' usuariocontrol.locid  = acf122.locid(+) AND '
            +' usuariocontrol.piso   = acf122.piso(+) AND  '
            +' usuariocontrol.area   = acf122.area(+) AND '
            +' usuariocontrol.locid  = acf121.locid(+) AND '
            +' usuariocontrol.piso   = acf121.piso(+) AND '
            +' usuariocontrol.locid  =  acf120.locid (+) '
            +' ORDER BY TO_NUMBER(idpers) ';

    DMATI.cdsQry15.Close;
    DMATI.cdsQry15.DataRequest(xSQL);
    DMATI.cdsQry15.Open;
    DMATI.cdsQry15.IndexFieldNames:='idpers';

    DMATI.cdsQry15.MasterSource:= DMATI.dsQRY14;
    DMATI.cdsQry15.MasterFields:='idpers';

    dbgUbicacion.DataSource := DMATI.dsQRY15;
    dbgUbicacion.Selected.clear;
    dbgUbicacion.Selected.Add('LOCDES'+ #9 +'15'+ #9 + 'UBICACIÓN');
    dbgUbicacion.Selected.Add('PISODES'+ #9 +'15'+ #9 + 'PISO');
    dbgUbicacion.Selected.Add('AREADES'+ #9 +'15'+ #9 + 'AREA');
    dbgUbicacion.Selected.Add('AMBDES'+ #9 +'15'+ #9 + 'AMBIENTE');
    dbgUbicacion.ApplySelected;

//CARGA UBICACION
xSQL:= ' select locid, locdes from '+DMATI.wwEsquemaPROD+'ACF120';
       DMATI.cdsQry28.Close;
       DMATI.cdsQry28.DataRequest(xSQL);
       DMATI.cdsQry28.Open;
       dblcUbicacion.LookupTable:= DMATI.cdsQry28;
       dblcUbicacion.LookupField:='locdes';

End;

Procedure TFManUsuario.edtBuscarChange(Sender: TObject);
Begin
    DMATI.cdsQry14.Locate('pernom', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);
    {DMATI.cdsQry14.Filtered:=False;
     DMATI.cdsQry14.Filter:='';
     DMATI.cdsQry14.Filter:='nombre='+QuotedStr(edtBuscar.Text+'*');
     if  Length(edtBuscar.Text)=0 then
     DMATI.cdsQry14.Filter:='';
     DMATI.cdsQry14.Filtered:=True;
    }

End;

Procedure TFManUsuario.edtBuscarKeyPress(Sender: TObject; Var Key: Char);
Begin
    If Key = #13 Then
    Begin
        If Length(Trim(edtBuscar.Text)) > 0 Then
        Begin
            dbgUsuario.SetFocus;
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

Procedure TFManUsuario.bbUsuarioClick(Sender: TObject);
Var
    xRuta: String;
Begin
   {dbpUsuario.DataSource :=DMATI.dsQRY14;
   xRuta := 'C:\SOLEXES\Reportes';
   pprUsuario.template.FileName := xRuta + '\Usuarios.rtm' ;
   pprUsuario.Template.LoadFromFile;
   ppdUsuario.Show;

   {
   ppReporte.Print;
   ppReporte.Stop;
   }

End;

procedure TFManUsuario.dbgUsuarioIButtonClick(Sender: TObject);
begin
{//Abre el panel de Actualizaciones
    pnlPie.Enabled := False;
    pnlCabecera.Enabled := False;
    dbgUsuario.Enabled := False;
    dbgUbicacion.Enabled := False;
    pnlActualizacion.Visible := True;
//registra el modo de Grabar
    xModo := 'I';
//selecciona el mayor valor y le añade uno al código
    xSQL := 'select max(to_number(idpers)+1) NUMERO from USUARIO';
    DMATI.cdsQRY.Close;
    DMATI.cdsQRY.DataRequest(xSQL);
    DMATI.cdsQRY.Open;
    DMATI.cdsQry14.Append;
    DMATI.cdsQry14.FieldByName('idpers').AsString := IntToStr(DMATI.cdsQry.FieldByName('NUMERO').AsInteger);
    dbeNombre.SetFocus;  }
end;


procedure TFManUsuario.Z2bbtnCanc3Click(Sender: TObject);
begin
   { DMATI.cdsQry14.CancelUpdates;
    DMATI.cdsQry14.open;
    DMATI.cdsQry14.Refresh;
    pnlPie.Enabled := True;
    pnlCabecera.Enabled := True;
    dbgUbicacion.Enabled := True;
    dbgUsuario.Enabled := True;
    pnlActualizacion.Visible := False; }
end;

procedure TFManUsuario.dbgUsuarioDblClick(Sender: TObject);
begin
{//Abra el panel del Actualizaciones en modo de Modificación
    xModo := 'M';
    pnlActualizacion.Visible := True;
    dbeNombre.SetFocus;
    DMATI.cdsQRY15.Edit;
    dbgUsuario.Enabled := False;
    pnlPie.Enabled := False; }
end;

procedure TFManUsuario.BModificarClick(Sender: TObject);
begin
{// verifica que nombre de equipo no este vacío
    If length(DMATI.cdsQry14.FieldByName('nombre').AsString) = 0 Then
    Begin
        ShowMessage('El nombre, no puede ir en blanco');
        dbeNombre.SetFocus;
        exit;
    End;

// verifica que Nombre de la ofina no este registrado con otro código

    xSQL := ' select nombre '
        + ' from USUARIO '
        + ' where nombre=' + quotedstr(DMATI.cdsQry14.FieldByName('nombre').AsString)
        + ' and USUARIOID<>' + quotedstr(DMATI.cdsQry14.FieldByName('USUARIOID').AsString);
    DMATI.cdsQry.Close;
    DMATI.cdsQry.DataRequest(xSQL);
    DMATI.cdsQry.Open;
    If DMATI.cdsQry.Recordcount > 0 Then
    Begin
        ShowMessage('El nombre de este Usuario ya fue registrado con otro código');
        dbeNombre.SetFocus;

        exit;
    End;

//Graba la nueva oficina
    If MessageDlg(' ¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
        If xModo = 'I' Then
        Begin
            xSQL := ' insert into USUARIO (USUARIOID, nombre, oficinaid) '
                + ' values( '
                + quotedstr(DMATI.cdsQry14.FieldByName('USUARIOID').AsString) + ','
                + quotedstr(DMATI.cdsQry14.FieldByName('NOMBRE').AsString) + ','
                + '1' +')';
        End
//Modifica la Oficina
        Else
        Begin
            xSQL := ' update USUARIO '
                + ' set NOMBRE =' + QuotedStr(DMATI.cdsQry14.FieldByName('NOMBRE').AsString)
                + ' where USUARIOID =' + QuotedStr(DMATI.cdsQry14.FieldByName('USUARIOID').AsString);
        End;

        Try

            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
        Except
            ShowMessage('No se pudo Actualizar');
            exit;
        End;
        DMATI.cdsQry14.Post;
        ShowMessage('ok');
    End
    Else
    Begin
        DMATI.cdsQry14.CancelUpdates;
    End;
    dbgUbicacion.Enabled := true;
    dbgUsuario.Enabled := true;
    pnlPie.Enabled := true;
    pnlActualizacion.Visible := False; }
end;

procedure TFManUsuario.dbgUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{If (key = VK_Delete) And (ssCtrl In Shift) Then
    Begin

        If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        Begin
            xSQL := 'delete from USUARIO '
                + 'where USUARIOID=' + QuotedStr(DMATI.cdsQry14.FieldByName('USUARIOID').AsString);
            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Eliminar');
                exit;
            End;
            DMATI.cdsQRY14.Delete;
        End;
    End;  }
end;

procedure TFManUsuario.dblcUbicacionExit(Sender: TObject);
begin
//CARGA PISO
xSQL:= ' select locid, piso, pisodes from '+DMATI.wwEsquemaPROD+'ACF121 '
      +' where locid = '+QuotedStr(DMATI.cdsQry28.fieldByName('locid').AsString);

       DMATI.cdsQry29.Close;
       DMATI.cdsQry29.DataRequest(xSQL);
       DMATI.cdsQry29.Open;

       dblcPiso.LookupTable:= DMATI.cdsQry29;
       dblcPiso.LookupField:='pisodes';
end;

procedure TFManUsuario.dblcPisoExit(Sender: TObject);
begin
//CARGA AREA
xSQL:= ' select locid, piso, area, areades from '+DMATI.wwEsquemaPROD+'ACF122 '
      +' where locid = '+QuotedStr(DMATI.cdsQry29.fieldByName('locid').AsString)
      +' and    piso = '+QuotedStr(DMATI.cdsQry29.fieldByName('piso').AsString);

       DMATI.cdsQry30.Close;
       DMATI.cdsQry30.DataRequest(xSQL);
       DMATI.cdsQry30.Open;

       dblcArea.LookupTable:= DMATI.cdsQry30;
       dblcArea.LookupField:='areades';
end;

procedure TFManUsuario.dblcAreaExit(Sender: TObject);
begin
//CARGA AMBIENTE
xSQL:= ' select locid, piso, area, areades, ambcod, ambdes, ciaid from '+DMATI.wwEsquemaPROD+'ACF123 '
      +' where  locid = '+QuotedStr(DMATI.cdsQry30.fieldByName('locid').AsString)
      +' and    piso  = '+QuotedStr(DMATI.cdsQry30.fieldByName('piso').AsString)
      +' and    area  = '+QuotedStr(DMATI.cdsQry30.fieldByName('area').AsString);

       DMATI.cdsQry31.Close;
       DMATI.cdsQry31.DataRequest(xSQL);
       DMATI.cdsQry31.Open;

       dblcAmbiente.LookupTable:= DMATI.cdsQry31;
       dblcAmbiente.LookupField:='ambdes';
end;

procedure TFManUsuario.bbModificaUbicacionClick(Sender: TObject);
begin
//DETECTA SI CDSQRY31 ESTA BASIO
       if  DMATI.cdsQry31.Active= False then Exit;

//CARGA EL GRID CON VALORES DE LA TABLA SUARIOCONTROL PARA VALIDAR UNA ACTUALIZACIÓN O INSERCION
       if (QuotedStr(DMATI.cdsQry31.fieldByName('locid').AsString)=QuotedStr(DMATI.cdsQry15.fieldByName('locid').AsString)) and
          (QuotedStr(DMATI.cdsQry31.fieldByName('piso').AsString)=QuotedStr(DMATI.cdsQry15.fieldByName('piso').AsString))and
          (QuotedStr(DMATI.cdsQry31.fieldByName('ambcod').AsString)=QuotedStr(DMATI.cdsQry15.fieldByName('ambcod').AsString))then
       Begin
       showmessage('La Ubicación ya fue ingresada con código diferente');
       exit;
       end;

       if  (DMATI.cdsQry31.active=False) and
           (Length(DMATI.cdsQry31.fieldByName('ambcod').AsString)=0)then
       begin
       showmessage('La Ubicación, tiene que ser llenada completamente');
       exit;
       end;

       If MessageDlg(' ¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
       Begin
             if  xModo='I' then
             begin
             xSQL:=  ' insert into '+DMATI.wwEsquemaATI+'usuariocontrol(locid, piso, area, ambcod, usuarioid,usuariocontroid)'
                    +' values('
                    + QuotedStr(DMATI.cdsQry31.fieldByName('locid').AsString)+','
                    + QuotedStr(DMATI.cdsQry31.fieldByName('piso').AsString)+','
                    + QuotedStr(DMATI.cdsQry31.fieldByName('area').AsString)+','
                    + QuotedStr(DMATI.cdsQry31.fieldByName('ambcod').AsString)+','
                    + QuotedStr(DMATI.cdsQry14.fieldByName('idpers').AsString)+','
                    + QuotedStr(DMATI.cdsQry.fieldByName('NUMERO').AsString)+')';

             end
             else
             begin
             xSQL:=  ' update '+DMATI.wwEsquemaATI+'usuariocontrol '
                    +' set '
                    +' locid ='+ QuotedStr(DMATI.cdsQry31.fieldByName('locid').AsString)+','
                    +' piso ='+ QuotedStr(DMATI.cdsQry31.fieldByName('piso').AsString)+','
                    +' area ='+ QuotedStr(DMATI.cdsQry31.fieldByName('area').AsString)+','
                    +' ambcod='+ QuotedStr(DMATI.cdsQry31.fieldByName('ambcod').AsString)
                    +' WHERE usuariocontroid ='+ QuotedStr(DMATI.cdsQry15.FieldByName('USUARIOCONTROID').AsString);

             end;
              //Ejecuta la operación
             Try

                 DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
             Except
                 ShowMessage('No se pudo Actualizar');
                 exit;
             End;
             ShowMessage('ok');
             DMATI.cdsQry15.Edit;
             DMATI.cdsQry15.fieldByName('locid').AsString :=DMATI.cdsQry31.fieldByName('locid').AsString;
             DMATI.cdsQry15.fieldByName('piso').AsString  :=DMATI.cdsQry31.fieldByName('piso').AsString;
             DMATI.cdsQry15.fieldByName('area').AsString  :=DMATI.cdsQry31.fieldByName('area').AsString;
             DMATI.cdsQry15.fieldByName('ambcod').AsString:=DMATI.cdsQry31.fieldByName('ambcod').AsString;


    end;
    pnlPie.Enabled := True;
    dbgUbicacion.Enabled := True;
    pnlCabecera.Enabled := True;
    dbgUsuario.Enabled := True;
    pnlUbicacion.Visible:= False;

end;

procedure TFManUsuario.wwDBGrid1IButtonClick(Sender: TObject);
begin
//Abre el panel de Actualizaciones
    pnlPie.Enabled := False;
    pnlUbicacion.Visible := True;
    pnlCabecera.Enabled := False;
    dbgUsuario.Enabled := False;
    dbgUbicacion.Enabled := False;
//registra el modo de Grabar
    xModo := 'I';
//CARGA USUARIO CONTROL PARA ASIGNARLE NUEVA RELACION
    xSQL := 'select max(to_number(USUARIOCONTROID)+1) NUMERO from '+DMATI.wwEsquemaATI+'USUARIOCONTROL';
    DMATI.cdsQRY.Close;
    DMATI.cdsQRY.DataRequest(xSQL);
    DMATI.cdsQRY.Open;
    DMATI.cdsQRY15.Append;

end;

procedure TFManUsuario.dbgUbicacionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If (key = VK_Delete) And (ssCtrl In Shift) Then
    Begin

        If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        Begin
            xSQL := 'delete from '+DMATI.wwEsquemaATI+'USUARIOCONTROL '
                + 'where USUARIOCONTROID=' + QuotedStr(DMATI.cdsQry15.FieldByName('USUARIOCONTROID').AsString);
            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Eliminar');
                exit;
            End;
            DMATI.cdsQRY15.Delete;
        End;
    End;

end;

procedure TFManUsuario.dbgUbicacionDblClick(Sender: TObject);
begin
    xModo := 'M';
    pnlPie.Enabled := False;
    pnlUbicacion.Visible := True;
    pnlCabecera.Enabled := False;
    dbgUsuario.Enabled := False;
    dbgUbicacion.Enabled := False;

end;

procedure TFManUsuario.BitBtn1Click(Sender: TObject);
begin
    DMATI.cdsQry15.CancelUpdates;
    DMATI.cdsQry15.open;
    DMATI.cdsQry15.Refresh;
    pnlPie.Enabled := True;
    dbgUbicacion.Enabled := True;
    pnlCabecera.Enabled := True;
    dbgUsuario.Enabled := True;
    pnlUbicacion.Visible := False;
end;

End.

