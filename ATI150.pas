unit ATI150;
// Actualizaciones
// HPC_201401_ATI	31/01/2014 Julio Alberto Rodriguez Grados
// Motivo: es de proveer la opción para la importación de Activos de TI que han
// sido registrados de manera previa por servicios generales. Todo el formulario
// pertenece al mismo HPC.
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, ExtCtrls,
  fcButton, fcImgBtn, fcShapeBtn;


type
  TFImpActivosTI = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label7: TLabel;
    dbgStock: TwwDBGrid;
    z2bbtnAcepta: TfcShapeBtn;
    lbNumEqui: TLabel;
    lblNroRegistros: TLabel;
    z2bbtnCancelar: TfcShapeBtn;
    procedure FormCreate(Sender: TObject);
    procedure z2bbtnAceptaClick(Sender: TObject);
    procedure z2bbtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
      xSQL: String;
      Procedure cargarGrid;
      Procedure insertarActivosTI;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImpActivosTI: TFImpActivosTI;

implementation

uses ATIDM1;

{$R *.dfm}

Procedure TFImpActivosTI.cargarGrid();
Begin

   xSQL := 'SELECT '
            + '0 NUMERO, '
            + 'ARTICULO.CODIGOBARRA ARTCODBAR, '
            + 'ARTICULO.ACFSERIE, '
            + 'ARTICULO.ACFDES, '
            + 'ARTICULO.ACFMARCA,  '
            + 'ARTICULO.ACFMODELO,  '
            + 'ARTICULO.ACFCOLOR,  '
            + 'ARTICULO.LOCID,  '
            + 'ARTICULO.PISO,  '
            + 'ARTICULO.AREA,  '
            + 'ARTICULO.AMBCOD,  '
            + '''T'' STOCKENT, '
            + 'ARTICULO.RECIBENOM,  '
            + 'ARTICULO.ESTADOID,  '
            + '''NO DEFINIDO'' TRABID, '
            + 'sysdate FECHA,  '
            + 'sysdate FECHAFINAL,  '
            + '''REGISTRO'' NRODOC, '
            + ''''' STICKER,  '
            + ''''' NUMINF,  '
            + '''SIN RESPONSABLE'' SSGG, '
            + '''REGISTRO DE EQUIPO'' OBSERVACION '
         + 'FROM '
            + DMATI.wwEsquemaProd + 'ACF201 ARTICULO, '
            + DMATI.wwEsquemaProd + 'ACF123 AMBIENTE, '
            + DMATI.wwEsquemaProd + 'ACF122 AREA, '
            + DMATI.wwEsquemaProd + 'ACF121 PISO,'
            + DMATI.wwEsquemaProd + 'ACF120 LOCALIZACION '
         + 'WHERE '
            + 'LOCALIZACION.locid(+) = ARTICULO.locid '
            + 'AND PISO.locid(+) = ARTICULO.locid '
            + 'AND PISO.piso(+) = ARTICULO.piso '
            + 'AND AREA.locid(+) = ARTICULO.locid '
            + 'AND AREA.piso(+) = ARTICULO.piso '
            + 'AND AREA.area(+) = ARTICULO.area '
            + 'AND AMBIENTE.locid(+) = ARTICULO.locid '
            + 'AND AMBIENTE.piso(+) = ARTICULO.piso '
            + 'AND AMBIENTE.area(+) = ARTICULO.area '
            + 'AND AMBIENTE.ambcod(+) = ARTICULO.ambcod '
            + 'AND ARTICULO.TACFID=''03'' '
            + 'AND ARTICULO.ACFFLAGACT IN (''A'',''P'') '
            + 'AND ARTICULO.CODIGOBARRA NOT IN (SELECT ARTCODBAR FROM ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK) ';

   screen.cursor := crhourglass;

   DMATI.cdsQRY33.Close;
   DMATI.cdsQRY33.IndexName := '';
   DMATI.cdsQRY33.DataRequest(xSQL);
   DMATI.cdsQRY33.Open;
   screen.cursor := crdefault;

   dbgStock.DataSource := DMATI.dsQRY33;
   dbgStock.Selected.clear;
   dbgStock.Selected.Add('ARTCODBAR' + #9 + '15' + #9 + 'CÓD INVENTARIO');
   dbgStock.Selected.Add('ACFSERIE' + #9 + '20' + #9 + 'CÓD ACTIVO TI');
   dbgStock.Selected.Add('ACFDES' + #9 + '45' + #9 + 'ACTIVO TI');
   dbgStock.Selected.Add('ACFMARCA' + #9 + '45' + #9 + 'MARCA');
   dbgStock.Selected.Add('ACFMODELO' + #9 + '45' + #9 + 'MODELO');
   dbgStock.Selected.Add('ACFCOLOR' + #9 + '45' + #9 + 'COLOR');
   dbgStock.Selected.Add('LOCID' + #9 + '45' + #9 + 'LOCID');
   dbgStock.Selected.Add('PISO' + #9 + '45' + #9 + 'PISO');
   dbgStock.Selected.Add('AREA' + #9 + '45' + #9 + 'AREA');
   dbgStock.Selected.Add('AMBCOD' + #9 + '45' + #9 + 'AMBCOD');
   dbgStock.Selected.Add('STOCKENT' + #9 + '45' + #9 + 'STOCKENT');
   dbgStock.Selected.Add('RECIBENOM' + #9 + '45' + #9 + 'USUARIO POR SSGG');
   dbgStock.Selected.Add('ESTADOID' + #9 + '45' + #9 + 'ESTADO');
   dbgStock.Selected.Add('TRABID' + #9 + '45' + #9 + 'TRABID');
   dbgStock.Selected.Add('FECHA' + #9 + '45' + #9 + 'FECHA');
   dbgStock.Selected.Add('FECHAFINAL' + #9 + '45' + #9 + 'FECHAFINAL');
   dbgStock.Selected.Add('NRODOC' + #9 + '45' + #9 + 'NRODOC');
   dbgStock.Selected.Add('STICKER' + #9 + '45' + #9 + 'STICKER');
   dbgStock.Selected.Add('NUMINF' + #9 + '45' + #9 + 'NUMINF');
   dbgStock.Selected.Add('SSGG' + #9 + '45' + #9 + 'SSGG');
   dbgStock.Selected.Add('OBSERVACION' + #9 + '45' + #9 + 'OBSERVACION');
   dbgStock.ApplySelected;

   //lbNumEqui.Caption := 'Activos por Importar: ' + IntToStr(DMATI.cdsQRY33.RecordCount);
   lblNroRegistros.Caption := IntToStr(DMATI.cdsQRY33.RecordCount);

End;

procedure TFImpActivosTI.FormCreate(Sender: TObject);
begin
   cargarGrid();
end;

procedure TFImpActivosTI.z2bbtnAceptaClick(Sender: TObject);
begin
    If DMATI.cdsQRY33.RecordCount > 0 Then
      Begin
          If MessageDlg('¿Desea Importar los Activos de TI? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
              //ShowMessage('Dijo si....');
              insertarActivosTI();
              cargarGrid();
              ShowMessage('Proceso de importación datos exitoso!!!');
              Exit;
            End
          else
            Begin
              Exit;
            End
      End
    else
      Begin
        ShowMessage('No dispone de registros de activos para tomar esta acción. Verifique...');
        Exit;
      End;
End;

Procedure TFImpActivosTI.insertarActivosTI();
var iReg,iNumero, iVeces: integer;
Begin
        //AVERIGUO EN QUE NUMERO SE QUEDO
        xSQL := 'select max(to_number(NVL(SOPSTOCKID,''0''))+1) NUMERO from ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK';
        DMATI.cdsQry.Close;
        DMATI.cdsQry.DataRequest(xSQL);
        DMATI.cdsQry.Open;

        //lo guardo en una variable
        iNumero:= DMATI.cdsQRY.FieldByName('NUMERO').AsInteger;
        iVeces:= StrToInt(lblNroRegistros.Caption);   //DMATI.cdsQRY33.RecordCount

        DMATI.cdsQRY33.First;
        FOR iReg:=1 TO iVeces DO
          begin
              xSQL := ' INSERT INTO ' + DMATI.wwEsquemaATI + 'ATI_SOP_STOCK '
                  + ' (SOPSTOCKID, ARTCODBAR, ACFSERIE, ACFDES, ACFMARCA, ACFMODELO, ACFCOLOR, LOCID, PISO, AREA, AMBCOD,'
                  + ' STOCKENT, RECIBENOM, ESTADO, TRABID, FECHA, FECHAFINAL, NRODOC, STICKER, NUMINF, SSGG, OBSERVACION)'
                  + ' Values ('
                  + quotedstr(IntToStr(iNumero)) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('ARTCODBAR').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('ACFSERIE').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('ACFDES').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('ACFMARCA').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('ACFMODELO').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('ACFCOLOR').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('LOCID').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('PISO').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('AREA').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('AMBCOD').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('STOCKENT').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('RECIBENOM').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('ESTADOID').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('TRABID').AsString) + ','
                  + 'SYSDATE' + ','
                  + 'SYSDATE' + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('NRODOC').AsString) + ','
                  + 'null,'
                  + 'null,'
                  + quotedstr(DMATI.cdsQRY33.FieldByName('SSGG').AsString) + ','
                  + quotedstr(DMATI.cdsQRY33.FieldByName('OBSERVACION').AsString)
                  + ')';

                iNumero:=iNumero + 1;

                Try
                    DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
                    DMATI.cdsQRY33.Next;
                Except
                    ShowMessage('No se pudo Actualicar el Equipo');
                    exit;
                End;
          end;

End;

procedure TFImpActivosTI.z2bbtnCancelarClick(Sender: TObject);
begin
    Close;
end;

//fin codigo form
procedure TFImpActivosTI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMATI.cdsQRY33.Close;
   DMATI.cdsQRY33.IndexName := '';
end;

end.
