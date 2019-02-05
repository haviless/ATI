Unit ATI002;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, fcButton, fcImgBtn, fcShapeBtn;

Type
   /// <summary>TF_login
   /// </summary>
   TFAcceso = Class(TForm)
      Label1: TLabel;
      E_nombre: TEdit;
      Label2: TLabel;
      E_pass: TEdit;
    BLogin_Entrada: TfcShapeBtn;
    BLogin_Salir: TfcShapeBtn;
      Procedure BLogin_EntradaClick(Sender: TObject);
      Procedure E_passExit(Sender: TObject);
      Procedure E_passKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure BLogin_SalirClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
      xSQL: String;
      xVez: integer;
   Public
      { Public declarations }
      //wBD: String;
      xdiasduracpass: Integer;
   End;

Var
   FAcceso: TFAcceso;

Implementation

Uses ATI001, ATIDM1;

{$R *.dfm}

Procedure TFAcceso.BLogin_EntradaClick(Sender: TObject);
Var
   xfecfin: TDate;
   xdiasexppass: Integer;
   xdiasfaltantes: Integer;
   xdiasduracpass: Integer;
   xpassact, xctrl_ip, xingresa, xModulo: String;
Begin
   DMATI.wUsuario := E_nombre.Text;
   xModulo := 'ATI';
   // Obtiene IP del cliente

   Try
      DMATI.cIP := DMATI.ObtenerIpdeNetbios(DMATI.computerName);
   Except
      ShowMessage('ERROR de Conexión.');
      ModalResult := mrCancel;
      Exit;
   End;

   // Usuario se conecta a la base de datos
   xVez := xVez + 1;
   xIngresa := DMATI.ATISkt.AppServer.Conectate(xModulo, E_nombre.Text, E_pass.Text);
   If xIngresa = 'error' Then
      Begin
         Showmessage('Usuario+contraseña no reconocido por la Base de Datos');
         If xVez < 3 Then
            E_nombre.SetFocus
         Else
            Begin
               Close;
            End;
         Exit;
      End
   Else
      If Not DMATI.ATISkt.Connected Then
      DMATI.ATISkt.Connected := True;


   // busca en tabla DE USUARIO (TGE006) para determinar que es un usuario de base de datos
   xSQL := 'select USERID, USERNOM, FECEXP, OFDESID, nvl(CTRL_IP,''S'') CTRL_IP, '
      + '       TO_DATE(nvl(FECINI_PWD,sysdate-30)) FECINI_PWD, '
      + '       TO_DATE(nvl(FECFIN_PWD, sysdate-1)) FECFIN_PWD, '
      + '       nvl(DIASEXP_PWD,7) DIASEXP_PWD,'
      + '       nvl(DIASDURAC_PWD,30) DIASDURAC_PWD '
      + 'from '+DMATI.wwEsquemaATI+'TGE006 '
      + 'where USERID = ' + QuotedStr(DMATI.wUsuario);

   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSql);
   DMATI.cdsQry.Open;
   If DMATI.cdsQry.RecordCount = 0 Then
   Begin
      Showmessage('Usuario no reconocido para el uso de Aplicaciones');
      ModalResult := mrCancel;
      Exit;
   End;

   If Length(DMATI.cdsQry.FieldByName('userid').AsString) > 0 Then
      DMATI.xResp := DMATI.cdsQry.FieldByName('usernom').AsString;
{   DMATI.cdsQry.Close;
   Except
      Showmessage('Usuario y/o contraseña no reconocido por la Base de Datos');
      exit;
   End;
}
   // valida que contraseña en control de aplicaciones (TGE006), no haya expirado
   If (DMATI.cdsQry.FieldByName('FECEXP').AsDateTime > 0) And
      (DMATI.cdsQry.FieldByName('FECEXP').AsDateTime < Date) Then
      Begin
         Showmessage('Usuario ha caducado para el uso de Aplicaciones');
         ModalResult := mrCancel;
         Exit;
      End;
   xfecfin := DMATI.cdsQry.FieldByName('FECFIN_PWD').AsDateTime;
   xdiasexppass := DMATI.cdsQry.FieldByName('DIASEXP_PWD').AsInteger;
   xdiasduracpass := DMATI.cdsQry.FieldByName('DIASDURAC_PWD').AsInteger;
   xpassact := E_pass.Text;
   DMATI.wOfiId := DMATI.cdsQry.FieldByName('OFDESID').AsString;
   xctrl_ip := DMATI.cdsQry.FieldByName('CTRL_IP').AsString;
   DMATI.widepc := DMATI.computerName;

   // determina que el usuario tenga acceso al módulo
   // busca en tabla TGE006 para determinar que es un usuario de base de datos y de la aplicación
   xSQL := 'Select USUARIOS.USERID, USUARIOS.USERNOM, USUARIOGRUPO.GRUPOID, '
      + '       GRUPOS.GRUPODES, GRUPOS.GRUPOADM, ACCESOGRUPO.MODULOID, '
      + '       ACCESOGRUPO.TIPO, ACCESOGRUPO.OBJETO, ACCESOGRUPO.FORMA '
      + 'From '+DMATI.wwEsquemaATI+'TGE006 USUARIOS, '
      + '      '+DMATI.wwEsquemaATI+'TGE007 USUARIOGRUPO, '
      + '      '+DMATI.wwEsquemaATI+'TGE003 GRUPOS, '
      + '      '+DMATI.wwEsquemaATI+'TGE001 ACCESOGRUPO '
      + 'where USUARIOS.USERID=' + quotedstr(DMATI.wUsuario) // -- TGE006 USUARIOS
      + '  and USUARIOGRUPO.USERID=USUARIOS.USERID' // -- TGE007 USUARIOGRUPO
      + '  and GRUPOS.GRUPOID=USUARIOGRUPO.GRUPOID' // -- TGE003 GRUPOS
      + '  and ACCESOGRUPO.GRUPOID=USUARIOGRUPO.GRUPOID '
      + '  and ACCESOGRUPO.MODULOID=' + quotedstr(DMATI.wModulo)
      + '  and ACCESOGRUPO.TIPO=''0'' '; // TGE001 ACCESOGRUPO

   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;

   DMATI.wNombreUsuario := DMATI.cdsQry.FieldByName('USERNOM').AsString;
   If DMATI.cdsQry.RecordCount = 0 Then
   Begin
      ShowMessage('No tiene Acceso al módulo');
      ModalResult := mrCancel;
      Exit;
   End;

   // Identifica si el usuario puede ejecutar los sistemas de cualquier maquina
   // o solo de las máquina que se le han asignado
   xingresa := 'N';
   If xctrl_ip = 'S' Then
   Begin
      xSQL := 'SELECT IP_ASIGNADO '
             +'FROM '+DMATI.wwEsquemaATI+'TGE010 '
             +'WHERE USERID = ' + QuotedStr(DMATI.wUsuario);
      DMATI.cdsQry.Close;
      DMATI.cdsQry.DataRequest(xSQL);
      DMATI.cdsQry.Open;
      while Not DMATI.cdsQry.Eof Do
      Begin
         If DMATI.cdsQry.FieldByName('IP_ASIGNADO').AsString = DMATI.cIP Then xingresa := 'S';
         DMATI.cdsQry.Next;
      End;
   End;
   If (xingresa = 'N') And (xctrl_ip = 'S') Then
   Begin
      Showmessage('Usuario no autorizado para ingresar desde este equipo');
      ModalResult := mrCancel;
      Exit;
   End;


   // DETERMINA NRO DE IDENTIFICADOR PARA GRABAR EN ARCHIVO LOG DE ACCESOS
   // SE DETERMINA EN BASE A LA FECHA+HORA DE INGRESO A LA BASE DE DATOS
   xSQL := 'SELECT TO_CHAR(SYSDATE,''YYYYMMDDHH24MISS'') IDE, SYSDATE FECHORCON FROM DUAL';
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   DMATI.ideconex := DMATI.cdsQry.FieldByName('IDE').AsString;
   DMATI.fechorcon := DMATI.cdsQry.FieldByName('FECHORCON').AsString;

   // controla caducidad de contraseña
   xSQL := 'SELECT to_date('+QuotedStr(DateToStr(xfecfin))+') '
          +'      -to_date(SYSDATE) DIASFALTANTE FROM DUAL';
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;

   xdiasfaltantes := DMATI.cdsQry.FieldByName('DIASFALTANTE').AsInteger; // dias que faltan
   If xdiasfaltantes <= xdiasexppass Then
   Begin
      If xdiasfaltantes <= 0 Then
         MessageDlg('SU CONTRASEÑA HA CADUCADO, DEBE CAMBIARLA AHORA', mtCustom, [mbOk], 0)
      Else
         If xdiasfaltantes = 1 Then
            MessageDlg('!!! FALTA 1 DíA PARA EL VENCIMIENTO DE SU CONTRASEÑA ¡¡¡' + chr(13)
               + '            SE SUGIERE CAMBIARLA AHORA                  ', mtInformation, [mbOk], 0)
         Else
            MessageDlg('!!! FALTAN ' + IntToStr(xdiasfaltantes) + ' DÍAS PARA EL VENCIMIENTO DE SU CONTRASEÑA ¡¡¡' + chr(13)
               + '            SE SUGIERE CAMBIARLA AHORA                  ', mtInformation, [mbOk], 0);
         {FCambioContrasena:= TFCambioContrasena.create(self);
         Try
            FCambioContrasena.ShowModal;
         Finally
            FCambioContrasena.Free;
         End;  }
   End;
   If xdiasfaltantes <= 0 Then
   Begin
      ModalResult := mrCancel;
      Exit;
   End;

   // ENVIA PARAMETROS DE LA PC DEL USUARIO HACIA LA APLICACION SERVIDOR
   DMATI.ATISkt.AppServer.ConexionON(DMATI.wUsuario, DMATI.cIP, DMATI.wModulo, DMATI.ideconex, DMATI.fechorcon, DMATI.widepc);

   ModalResult := mrOk;

   //exit;
End;

Procedure TFAcceso.E_passExit(Sender: TObject);
Begin
   //    BLogin_Entrada.OnClick(BLogin_Entrada);
End;

Procedure TFAcceso.E_passKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   //  If Key =  13 then
   //      BLogin_Entrada.OnClick|(BLogin_Entrada);
End;

(*
Procedure TFAcceso.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   //   ModalResult := mrCancel;
   Action := caFree;
End;
      *)
Procedure TFAcceso.BLogin_SalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFAcceso.FormShow(Sender: TObject);
Begin
   xVez := 0;
End;

Procedure TFAcceso.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         BLogin_EntradaClick(Self);
      End;

End;

End.

