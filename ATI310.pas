Unit ATI310;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ActnList, Menus, ExtCtrls,
   ImgList, Buttons, ppEndUsr, ppParameter, ppBands, ppRichTx, ppCtrls,
   ppVar, ppCTMain, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppProd,
   ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppMemo, ppModule,
   daDataModule, Mask, wwdbedit, Wwdbigrd, Wwdbgrid, wwdblook, Wwdbdlg,
   fcButton, fcImgBtn, fcShapeBtn, ppBarCod;

Type
   TFSalida = Class(TForm)
      Label8: TLabel;
      ppdbSalida: TppDBPipeline;
      pprSalida: TppReport;
      ppParameterList1: TppParameterList;
      ppdSalida: TppDesigner;
      pnlPie: TPanel;
      pnlSalida: TPanel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      Label16: TLabel;
      Label17: TLabel;
      Label19: TLabel;
      lbTipo: TLabel;
      dbeSalida1: TwwDBEdit;
      dblcSSGG: TwwDBLookupCombo;
      dbeCodEquipo: TwwDBEdit;
      mmObservacion: TMemo;
      dblcEntradaTipo: TwwDBLookupCombo;
      dblcEstado: TwwDBLookupCombo;
      dbeTicker: TwwDBEdit;
      edtTecnico: TEdit;
      z2bbtnAcepta: TfcShapeBtn;
      z2bbtnCancelar: TfcShapeBtn;
      btImprimir: TfcShapeBtn;
      ppHeaderBand1: TppHeaderBand;
      ppRegion2: TppRegion;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppLabel11: TppLabel;
      ppLabel23: TppLabel;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLine4: TppLine;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppLine10: TppLine;
      ppLine11: TppLine;
      ppLine12: TppLine;
      ppLine14: TppLine;
      ppImage1: TppImage;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel28: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppLine3: TppLine;
      ppLine5: TppLine;
      ppLine6: TppLine;
      ppLine13: TppLine;
      ppLine15: TppLine;
      ppLine16: TppLine;
      ppLine17: TppLine;
      ppLine18: TppLine;
      ppLine19: TppLine;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppLabel9: TppLabel;
      ppRegion1: TppRegion;
      ppLine20: TppLine;
      ppLine21: TppLine;
      ppLine22: TppLine;
      ppLabel10: TppLabel;
      Procedure FormCreate(Sender: TObject);
      Procedure dbeTickerKeyPress(Sender: TObject; Var Key: Char);
      Procedure z2bbtnCancelarClick(Sender: TObject);
      Procedure z2bbtnAceptaClick(Sender: TObject);
      Procedure dblcdUsuarioChange(Sender: TObject);
      Procedure btImprimirClick(Sender: TObject);

   Private
      { Private declarations }
      xSQL: String;
      xSalida: String;
   Public
      { Public declarations }
   End;

Var
   FSalida: TFSalida;

Implementation

Uses ATIDM1, DB, StrUtils;

{$R *.dfm}

Procedure TFSalida.FormCreate(Sender: TObject);
Begin

   xSalida := DMATI.cdsQRY36.FieldByName('guia_entradaid').AsString;
   edtTecnico.Text := UpperCase(DMATI.xResp);
   //CARGA COMBO DE ESTADO
   xSQL := ' SELECT ESTADOID,NOMBRE FROM '+DMATI.wwEsquemaATI+'ATI_EST_PARTE';
   DMATI.cdsQRY27A.Close;
   DMATI.cdsQRY27A.DataRequest(xSQL);
   DMATI.cdsQRY27A.open;
   dblcEstado.LookupTable := DMATI.cdsQRY27A;
   dblcEstado.LookupField := 'nombre';
   //CARGA EL COMBO DE REPONSABLES DE SSGG
   xSQL := ' select nombre, clave, descripcion, ssggid from '+DMATI.wwEsquemaATI+'ATI_SSGG'
      + ' ORDER BY nombre';
   DMATI.cdsQRY26A.Close;
   DMATI.cdsQRY26A.DataRequest(xSQL);
   DMATI.cdsQRY26A.Open;
   dblcSSGG.LookupTable := DMATI.cdsQRY26A;
   dblcSSGG.LookupField := 'nombre';
   dblcSSGG.Text := DMATI.cdsQRY26A.FieldByName('nombre').AsString;

   //CARGA EL COMBO DE TIPO DE GUIA DE SALIDA
   XSQL := ' SELECT GUIA_SALIDA_TIPOID, NOMBRE, DESCRIPCION FROM '+DMATI.wwEsquemaATI+'ATI_TIP_SALIDA'
      + ' ORDER BY NOMBRE';
   DMATI.cdsQRY30A.Close;
   DMATI.cdsQRY30A.DataRequest(xSQL);
   DMATI.cdsQRY30A.Open;
   dblcEntradaTipo.LookupTable := DMATI.cdsQRY30A;
   dblcEntradaTipo.LookupField := 'nombre';
   dblcEntradaTipo.Text := DMATI.cdsQRY30A.FieldByName('nombre').AsString;

End;

Procedure TFSalida.dbeTickerKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Not (Key In ['0'..'9', #8, #45]) Then
      Begin
         Key := #0;
      End;
End;

Procedure TFSalida.z2bbtnCancelarClick(Sender: TObject);
Begin
   If z2bbtnAcepta.Enabled = True Then
      z2bbtnAcepta.Enabled := False;

   btImprimir.Visible := False;
   pnlSalida.Enabled := True;
   Close;
End;

Procedure TFSalida.z2bbtnAceptaClick(Sender: TObject);
Begin

   If MessageDlg('¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If Length(mmObservacion.Text) = 0 Then
            Begin
               ShowMessage('Es necesario dejar una observación');
               mmObservacion.SetFocus;
               Exit;
            End;
         If Length(dbeTicker.Text) = 0 Then
            Begin
               ShowMessage('Es necesario indicar los Sticker');
               dbeTicker.SetFocus;
               Exit;
            End;
         //INGRESA LA GUIA DE SALIDA
         xSQL := ' insert into '+DMATI.wwEsquemaATI+'guia_salida '
            + ' (guia_salidaid, '
            + ' fecha,'
            + ' observaciones, '
            + ' numsticker,'
            + ' ssggid,'
            + ' userid,'
            + ' estado_equipoid, '
            + ' guia_entradaid, '
            + ' guia_salida_tipoid,'
            + ' artcodbar) '
            + ' values( '
            + quotedstr(DMATI.cdsQRY36.FieldByName('guia_entradaid').AsString) + ','
            + 'sysdate' + ','
            + quotedstr(mmObservacion.Text) + ','
            + quotedstr(dbeTicker.Text) + ','
            + quotedstr(DMATI.cdsQRY26A.FieldByName('ssggid').AsString) + ','
            + quotedstr(DMATI.wUsuario) + ','
            + quotedstr(DMATI.cdsQRY27A.FieldByName('ESTADOID').AsString) + ','
            + quotedstr(DMATI.cdsQRY36.FieldByName('guia_entradaid').AsString) + ','
            + quotedstr(DMATI.cdsQRY30A.FieldByName('guia_salida_tipoid').AsString) + ','
            + quotedstr(DMATI.cdsQRY36.FieldByName('artcodbar').AsString) + ')';

         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Grabar');
            exit;
         End;
         //INGRESA EL DETALLE DE LA GUIA DE SALIDA

         xSQL := ' BEGIN '
            + ' SP_DETALLE_SALIDA (' + QuotedStr(DMATI.cdsQry36.FieldByName('guia_entradaid').AsString) + ' ); '
            + ' END;';
         Try
            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo Grabar Detalle');
            exit;
         End;

         DMATI.cdsQry36.Delete;
      End;

   btImprimir.Visible := True;
   z2bbtnAcepta.Enabled := False;
   pnlSalida.Enabled := False;
End;

Procedure TFSalida.dblcdUsuarioChange(Sender: TObject);
Begin
   btImprimir.Visible := False;
   z2bbtnAcepta.Enabled := True;
End;

Procedure TFSalida.btImprimirClick(Sender: TObject);
Var
   xRuta: String;
Begin
   xSQL := 'SELECT DISTINCT ATI_PARTE_EQUIPO.PARTE_EQUIPOID,'
      + ' ATI_PARTE_EQUIPO.SERIE PARTE_SERIE,'
      + ' ATI_NOM_PAR_EQU.NOMBRE PARTE_NOMBRE,'
      + ' ATI_TIPOC.NOMBRE PARTE_TIPO,'
      + ' ATI_MARCA.NOMBRE PARTE_MARCA,'
      + ' ATI_CARACT.NOMBRE PARTE_CARACTERISTICA,'
      + ' ATI_PARTE_EQUIPO.CAPACIDAD || '' '' || ATI_UNIDAD.NOMBRE PARTE_UNIDAD,'
      + ' ATI_PARTE_EQUIPO.FRU PARTE_FRU,'
      + ' ATI_EST_PARTE.NOMBRE PARTE_ESTADO,'
      + ' ACF201.ACFDES EQUIPO,'
      + ' ACF201.ACFSERIE EQUIPO_SERIE,'
      + ' ACF201.ACFCOLOR EQUIPO_COLOR,'
      + ' ACF201.ACFMODELO EQUIPO_MODELO,'
      + ' ACF201.ACFMARCA EQUIPO_MARCA,'
      + ' ACF109.ESTADODES EQUIPO_ESTADO,'
      + ' ATI_SSGG.NOMBRE SSGG,'
      + ' ACF201.CODIGOBARRA ARTCODBAR,' //ACF201.ARTCODBAR,'
      + ' ATI_TIP_SALIDA.NOMBRE TIPO_SALIDA,'
      + ' ATI_SALIDA.GUIA_SALIDAID,'
      + ' ATI_SALIDA.FECHA,'
      + ' ATI_SALIDA.OBSERVACIONES,'
      + ' ATI_SALIDA.NUMSTICKER,'
      + ' ATI_SALIDA.USERID,'
      + ' ATI_END.NROREQUERIMIENTO'
      + ' FROM '+DMATI.wwEsquemaATI+'ATI_PARTE_EQUIPO,'
      + ' ATI_NOM_PAR_EQU,'
      + ' ATI_MARCA,'
      + ' ATI_TIPOC,'
      + ' ATI_CARACT,'
      + ' ATI_UNIDAD,'
      + ' ATI_EST_PARTE,'
      + ' ACF201'+DMATI.wwEsquemaProd+','
      + ' ACF109,'
      + ' ATI_SSGG,'
      + ' ATI_SALIDA,'
      + ' ATI_TIP_SALIDA,'
      + ' ATI_END'
      + ' WHERE ATI_PARTE_EQUIPO.NOMBRE_PARTE_EQUIPOID ='
      + ' ATI_NOM_PAR_EQU.NOMBRE_PARTE_EQUIPOID(+)'
      + ' AND ATI_PARTE_EQUIPO.MARCAID = ATI_MARCA.MARCAID(+)'
      + ' AND ATI_PARTE_EQUIPO.TIPOID =ATI_TIPOC.TIPOID(+)'
      + ' AND ATI_PARTE_EQUIPO.CARACTERISTICAID = ATI_CARACT.CARACTERISTICAID(+)'
      + ' AND ATI_PARTE_EQUIPO.UNIDADID = ATI_UNIDAD.UNIDADID(+)'
      + ' AND ATI_PARTE_EQUIPO.ESTADOID = ATI_EST_PARTE.ESTADOID(+)'
      + ' AND ACF201.ESTADOID = ACF109.ESTADOID(+)'
      + ' AND ATI_SALIDA.GUIA_SALIDA_TIPOID ='
      + ' ATI_TIP_SALIDA.GUIA_SALIDA_TIPOID(+)'
      + ' AND ATI_SALIDA.ARTCODBAR = ACF201.CODIGOBARRA' //ACF201.ARTCODBAR'
      + ' AND ATI_SALIDA.ARTCODBAR = ATI_PARTE_EQUIPO.ARTCODBAR'
      + ' AND ATI_SALIDA.GUIA_SALIDAID= ATI_END.GUIA_ENTRADAID'
      + ' AND ATI_SALIDA.SSGGID = ATI_SSGG.SSGGID(+)'
      + ' /*AND ACF201.TACFID = ''03''*/'
      + ' AND ATI_SALIDA.GUIA_SALIDAID = ' + QuotedStr(xSalida);

   DMATI.cdsQry38.Close;
   DMATI.cdsQry38.DataRequest(xSQL);
   DMATI.cdsQry38.Open;

   ppdbSalida.DataSource := DMATI.dsQry38;

   xRuta := 'C:\SOLEXES\Reportes';
   pprSalida.template.FileName := xRuta + '\Salida.rtm';
   pprSalida.Template.LoadFromFile;

   ppdSalida.Show;

   {pprSalida.Print;
   pprSalida.Stop;}

End;

End.

