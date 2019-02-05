Unit ATIDM1;

Interface

Uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Db, DBClient, MConnect, Wwdatsrc, wwclient, Provider, comctrls,
    StdCtrls, wwdblook, ExtCtrls, Mask, wwdbedit, IniFiles, Buttons, Wwdbdlg,
    wwdbdatetimepicker, DBCtrls, wwSpeedButton, wwDBNavigator, Grids,
    Wwdbigrd, Wwdbgrid, dbiProcs, Wwdotdot, Wwdbcomb,
    variants, RecError, Menus, Math, Excel2000, OleServer, DBGrids,
    ExcelXP, SConnect, winsock, DBXpress, FMTBcd, SqlExpr, SimpleDS, ShellApi, wwexport;

Type
    TDMATI = Class(TDataModule)
        ATISkt: TSocketConnection;
        cdsQry: TwwClientDataSet;
        dsQry: TwwDataSource;
        cdsQry1: TwwClientDataSet;
        dsQry1: TwwDataSource;
        cdsQRY12: TwwClientDataSet;
        dsQRY12: TwwDataSource;
        cdsQRY13: TwwClientDataSet;
        dsQRY13: TwwDataSource;
        cdsQry2: TwwClientDataSet;
        dsQry2: TwwDataSource;
        cdsQry3: TwwClientDataSet;
        dsQry3: TwwDataSource;
        cdsQry4: TwwClientDataSet;
        dsQry4: TwwDataSource;
        cdsQry5: TwwClientDataSet;
        dsQry5: TwwDataSource;
        cdsQry6: TwwClientDataSet;
        dsQry6: TwwDataSource;
        cdsQry7: TwwClientDataSet;
        dsQry7: TwwDataSource;
        cdsQry8: TwwClientDataSet;
        dsQry8: TwwDataSource;
        cdsQry9: TwwClientDataSet;
        dsQry9: TwwDataSource;
        cdsQry10: TwwClientDataSet;
        dsQry10: TwwDataSource;
        cdsQryR: TwwClientDataSet;
        dsQryR: TwwDataSource;
        cdsQryC: TwwClientDataSet;
        dsQryC: TwwDataSource;
        cdsQRY20: TwwClientDataSet;
        dsQRY20: TwwDataSource;
        cdsQry11: TwwClientDataSet;
        dsQRY11: TwwDataSource;
        cdsQry14: TwwClientDataSet;
        dsQRY14: TwwDataSource;
        cdsQry15: TwwClientDataSet;
        dsQRY15: TwwDataSource;
        cdsQry16: TwwClientDataSet;
        dsQRY16: TwwDataSource;
        cdsQry17: TwwClientDataSet;
        dsQRY17: TwwDataSource;
        cdsQry18: TwwClientDataSet;
        dsQRY18: TwwDataSource;
        cdsQry19: TwwClientDataSet;
        dsQRY19: TwwDataSource;
        cdsQRY22: TwwClientDataSet;
        dsQRY22: TwwDataSource;
        cdsQRY23: TwwClientDataSet;
        dsQRY23: TwwDataSource;
        cdsQRY30: TwwClientDataSet;
        dsQRY30: TwwDataSource;
        cdsQRY21: TwwClientDataSet;
        dsQRY21: TwwDataSource;
        cdsQRY24: TwwClientDataSet;
        dsQRY24: TwwDataSource;
        cdsQRY25: TwwClientDataSet;
        dsQRY25: TwwDataSource;
        cdsQRY26: TwwClientDataSet;
        dsQRY26: TwwDataSource;
        cdsQRY27: TwwClientDataSet;
        dsQRY27: TwwDataSource;
        cdsQRY28: TwwClientDataSet;
        dsQRY28: TwwDataSource;
        cdsQRY29: TwwClientDataSet;
        dsQRY29: TwwDataSource;
        cdsQRY32: TwwClientDataSet;
        dsQRY32: TwwDataSource;
        cdsQRY33: TwwClientDataSet;
        dsQRY33: TwwDataSource;
        cdsQRY40: TwwClientDataSet;
        dsQRY40: TwwDataSource;
        cdsQRY31: TwwClientDataSet;
        dsQRY31: TwwDataSource;
        cdsQRY34: TwwClientDataSet;
        dsQRY34: TwwDataSource;
        cdsQRY35: TwwClientDataSet;
        dsQRY35: TwwDataSource;
        cdsQRY36: TwwClientDataSet;
        dsQRY36: TwwDataSource;
        cdsQRY37: TwwClientDataSet;
        dsQRY37: TwwDataSource;
        cdsQRY38: TwwClientDataSet;
        dsQRY38: TwwDataSource;
        cdsQRY39: TwwClientDataSet;
        dsQRY39: TwwDataSource;
        cdsQRY22A: TwwClientDataSet;
        dsQRY22A: TwwDataSource;
        cdsQRY23A: TwwClientDataSet;
        dsQRY23A: TwwDataSource;
        cdsQRY30A: TwwClientDataSet;
        dsQRY30A: TwwDataSource;
        cdsQRY21A: TwwClientDataSet;
        dsQRY21A: TwwDataSource;
        cdsQRY24A: TwwClientDataSet;
        dsQRY24A: TwwDataSource;
        cdsQRY25A: TwwClientDataSet;
        dsQRY25A: TwwDataSource;
        cdsQRY26A: TwwClientDataSet;
        dsQRY26A: TwwDataSource;
        cdsQRY27A: TwwClientDataSet;
        dsQRY27A: TwwDataSource;
        cdsQRY28A: TwwClientDataSet;
        dsQRY28A: TwwDataSource;
        cdsQRY29A: TwwClientDataSet;
        dsQRY29A: TwwDataSource;
        cdsRepocitorio: TClientDataSet;
        dsRepocitorio: TDataSource;
        cdsQRY42: TwwClientDataSet;
        dsQRY42: TwwDataSource;
        cdsQRY43: TwwClientDataSet;
        dsQRY43: TwwDataSource;
        cdsati_det_retiro_parte: TwwClientDataSet;
        dsati_det_retiro_parte: TwwDataSource;
        cdsQRY41: TwwClientDataSet;
        dsQRY41: TwwDataSource;
        cdsQRY44: TwwClientDataSet;
        dsQRY44: TwwDataSource;
        cdsQRY45: TwwClientDataSet;
        dsQRY45: TwwDataSource;
        cdsQRY46: TwwClientDataSet;
        dsQRY46: TwwDataSource;
        cdsQRY47: TwwClientDataSet;
        dsQRY47: TwwDataSource;
        cdsQRY48: TwwClientDataSet;
        dsQRY48: TwwDataSource;
        cdsQRY49: TwwClientDataSet;
        dsQRY49: TwwDataSource;
        cdsInformetec: TClientDataSet;
        dsInformetec: TDataSource;
        cdsEntrada: TClientDataSet;
        dsEntrada: TDataSource;
        cdsInforme1: TClientDataSet;
        dsInforme1: TDataSource;
        cdsSalida: TClientDataSet;
        dsSalida: TDataSource;
        cdsQRY50: TwwClientDataSet;
        dsQRY50: TwwDataSource;
        Procedure DataModuleCreate(Sender: TObject);
        Procedure ds_manrespDataChange(Sender: TObject; Field: TField);
        Procedure DataModuleDestroy(Sender: TObject);
        Function sFecha: TDate;
    Private
      { Private declarations }

    Public { Public declarations }
        wBD, wUsuario, wModulo, cIP, wOfiId, widepc, ideconex, fechorcon: String;
        wNombreUsuario : String; 
        xResp: String;
        xEntrada, xSalida: String;
        xForm: String;
        // esquema de tablas de producción
        wwEsquemaProd:String;
        // esquema de tablas locales
        wwEsquemaATI : String;
        //COLOR
        xAnulado, xInicial, xFinal, xVisado, xSinInfo,xAceptado: TColor;

        Function ComputerName: String;
        Function ObtenerIpdeNetbios(Host: String): String;
        Procedure ExportaGridExcel(xDataGrid: TwwDBGrid; xFileName: String);
        Function Correlativo(Tabla, campo: String): String;

    End;

Var
    DMATI: TDMATI;

Implementation

Uses ATI002;

{$R *.dfm}

Function TDMATI.ComputerName: String;
Var
    Buffer: Array[0..100] Of Char;
    MaxSize: Cardinal;
Begin
    MaxSize := SizeOf(Buffer);
    If Not GetComputerName(@Buffer, MaxSize) Then
        Raise Exception.Create('No puedo determinar el nombre de la máquina');
    Result := StrPas(@Buffer);

End;

Procedure TDMATI.DataModuleCreate(Sender: TObject);
Var
    IniFile: TIniFile;
    xIpServer: String;
    xPortServer: String;

Begin
   // obtiene la direccion IP del servidor
    IniFile := TIniFile.Create('C:\DemaExes\DemaConf.ini');
    xIpServer := IniFile.ReadString('TCPIP', 'ADDRESS', '');
    xPortServer := IniFile.ReadString('TCPIP', 'PORT', '');
    If (Length(Trim(xIpServer)) = 0) Or (Length(Trim(xPortServer)) = 0) Then
    Begin
        Showmessage('No tiene la Direccion de IP/PUERTO del Servidor.');
        Application.Terminate;
    End;

   // coloca el ip del servidor
    DMATI.ATISkt.Address := xIpServer;
    DMATI.ATISkt.Port := StrToInt(xPortServer);
    Try
        ATISkt.Connected := true;
    Except
        Showmessage('No hay comunicación con el Servidor de Aplicaciones');
        Application.Terminate;
    End;
    DMATI.wModulo := 'ATI';

    xAnulado  := $009D9D9D;
    xInicial  := $0001D9E4;
    xFinal    := $00FF8888;
    xVisado   := $002BCE3F;
    xSinInfo  := $00DAC296;
    xAceptado := $00ACD68D;

    //Asiganación de Variable Link
//    wwEsquemaProd := IniFile.ReadString('ESQUEMAS', 'PRODUCCION', '');
//    wwEsquemaATI  := IniFile.ReadString('ESQUEMAS', 'ADMINISETI', '');
    wwEsquemaProd := 'DB2ADMIN.';
    wwEsquemaATI  := 'ATIADMIN.';
//    wwEsquema:= '';
End;

Procedure TDMATI.ds_manrespDataChange(Sender: TObject; Field: TField);
Begin

End;
//{ TDM1 }

Function TDMATI.ObtenerIpdeNetbios(Host: String): String;
Var
    WSAData: TWSADATA;
    HostEnt: phostent;
Begin
    Result := '';
    If WSAStartup(MAKEWORD(1, 1), WSADATA) = 0 Then
    Begin
        HostEnt := gethostbyname(PChar(Host));
        If HostEnt <> Nil Then
            Result := String(inet_ntoa(PInAddr(HostEnt.h_addr_list^)^));
        WSACleanup;
    End;

End;

Procedure TDMATI.DataModuleDestroy(Sender: TObject);
Begin

    Try
        DMATI.ATISkt.AppServer.ConexionOFF(wUsuario, ideconex);
    Except
        ShowMessage('Salida Repentina de la Aplicación');
    End;
End;

Procedure TDMATI.ExportaGridExcel(xDataGrid: TwwDBGrid; xFileName: String);
Begin
    Screen.Cursor := crHourGlass;
    With xDataGrid, xDataGrid.ExportOptions Do
    Begin
        ExportType := wwgetSYLK;
        FileName := xFileName + '.xls';
        Save;
        If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(xDataGrid.exportoptions.Filename),
                Nil, Nil, sw_shownormal);
    End;
    Screen.Cursor := crDefault;
End;

Function TDMATI.sFecha: TDate;
Var
    xSQL: String;
Begin
    xSQL := 'select trunc(sysdate) FECHA from dual';
    cdsQry.Close;
    cdsQry.DataRequest(xSQL);
    cdsQry.Open;
    result := cdsQry.FieldbyName('FECHA').AsDateTime;
End;

Function TDMATI.Correlativo(Tabla, campo: String): String;
Var
    xSQL: String;
Begin
    xSQL := ' SELECT TO_CHAR(SYSDATE,''YYYY'')||'
        + '   CASE WHEN NVL(MAX(SUBSTR(' + campo + ',5,4)),0)+1<10 THEN ''000'' '
        + '        WHEN NVL(MAX(SUBSTR(' + campo + ',5,4)),0)+1>=10 '
        + '         AND NVL(MAX(SUBSTR(' + campo + ',5,4)),0)+1<100 THEN ''00'' '
        + '        WHEN NVL(MAX(SUBSTR(' + campo + ',5,4)),0)+1>=100 '
        + '         AND NVL(MAX(SUBSTR(' + campo + ',5,4)),0)+1<1000 THEN ''0'' '
        + '   END||TRIM(NVL(MAX(SUBSTR(' + campo + ',5,4)),0)+1) NUMERO, SYSDATE FECHA '
        + ' FROM ' + Tabla
        + ' WHERE SUBSTR(' + campo + ',1,4)=TO_CHAR(SYSDATE,''YYYY'') ';

    DMATI.cdsQry.Close;
    DMATI.cdsQry.DataRequest(xSQL);
    DMATI.cdsQry.Open;
    Result := cdsQry.FieldbyName('NUMERO').AsString;
End;

End.

