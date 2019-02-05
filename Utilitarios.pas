unit Utilitarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppEndUsr, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  DBXpress, FMTBcd, Provider, DB, SqlExpr, DBTables, Wwquery, ExtCtrls;

type
  TFTrabajoInterno = class(TForm)
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppDesigner1: TppDesigner;
    qryQry1: TwwQuery;
    qryQry2: TwwQuery;
    qryQry3: TwwQuery;
    qryQry4: TwwQuery;
    Panel1: TPanel;
    Memo1: TMemo;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn1: TBitBtn;
    btnExcel: TButton;
    Splitter1: TSplitter;
    dbgReporte: TwwDBGrid;
    btnInfAtenc: TButton;
    btnInfTec: TButton;
    btnParteEquipos: TButton;
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    function dspQRY1DataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function dspQRY2DataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function dspQRY3DataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function dspQRY4DataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnInfAtencClick(Sender: TObject);
    procedure btnInfTecClick(Sender: TObject);
    procedure btnParteEquiposClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTrabajoInterno: TFTrabajoInterno;
  xDiasTrab : double;

implementation

uses ATIDM1;

{$R *.dfm}

procedure TFTrabajoInterno.BitBtn8Click(Sender: TObject);
var
   xSQL : String;
begin
   xSQL := trim(Memo1.Text);
   if pos('----',xSQL)>0 then
      xSQL := copy(xSQL,1,pos('----',xSQL)-1);
   DMATI.cdsQry12.Close;
   DMATI.cdsQry12.IndexFieldNames:='';
   DMATI.cdsQry12.Filter:='';
   DMATI.cdsQry12.Filtered:=False;
   DMATI.cdsQry12.DataRequest(xSQL);
   DMATI.cdsQry12.Open;
   dbgReporte.DataSource:=DMATI.dsQry12;
end;

procedure TFTrabajoInterno.BitBtn9Click(Sender: TObject);
begin
   ppdesigner1.show;
end;

function TFTrabajoInterno.dspQRY1DataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
begin
   qryQry1.SQL.Text := Input;
end;

function TFTrabajoInterno.dspQRY2DataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
begin
   qryQry2.SQL.Text := Input;
end;

function TFTrabajoInterno.dspQRY3DataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
begin
   qryQry3.SQL.Text := Input;
end;

function TFTrabajoInterno.dspQRY4DataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
begin
   qryQry4.SQL.Text := Input;
end;

procedure TFTrabajoInterno.BitBtn1Click(Sender: TObject);
var
   xSQL : String;
begin
   xSQL := trim(Memo1.Text);
   if pos('----',xSQL)>0 then
      xSQL := copy(xSQL,1,pos('----',xSQL)-1);

   DMATI.cdsQry12.Close;
   DMATI.cdsQry12.IndexFieldNames:='';
   DMATI.cdsQry12.Filter:='';
   DMATI.cdsQry12.Filtered:=False;
   dbgReporte.DataSource:=nil;

   Try
      DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
   Except
      ShowMessage('No se pudo Actualizar');
      exit;
   End;
   ShowMessage('ok');
end;

procedure TFTrabajoInterno.btnExcelClick(Sender: TObject);
begin
    DMATI.ExportaGridExcel(dbgReporte, 'Reporte');
end;

procedure TFTrabajoInterno.btnInfAtencClick(Sender: TObject);
begin
   Memo1.Lines.Clear;
   Memo1.Lines.Add('-- consulta de artículo en archivo de Informes Técnicos ');
   Memo1.Lines.Add('select * from ATIADMIN.ATI_INFORME');
   Memo1.Lines.Add('  where ARTCODBAR='''' ');
   Memo1.Lines.Add('');
   Memo1.Lines.Add('');
   Memo1.Lines.Add('-- actualiza estado a VISADO para que sea relacionado a Informe Técnico');
   Memo1.Lines.Add('update ATIADMIN.ATI_INFORME');
   Memo1.Lines.Add('  set ESTADO=''V'' ');
   Memo1.Lines.Add('  where ARTCODBAR='''' ');
   Memo1.Lines.Add('   and ESTADO=''P'' ');
end;

procedure TFTrabajoInterno.btnInfTecClick(Sender: TObject);
begin
   Memo1.Lines.Clear;
   Memo1.Lines.Add('-- consulta de artículo en archivo de Informes Técnicos ');
   Memo1.Lines.Add('select * from ATIADMIN.ATI_INF_TEC');
   Memo1.Lines.Add('  where ARTCODBAR='''' ');
end;

procedure TFTrabajoInterno.btnParteEquiposClick(Sender: TObject);
begin
   Memo1.Lines.Clear;
   Memo1.Lines.Add('-- Parte de Equipo ');
   Memo1.Lines.Add('select * from ATIADMIN.ATI_PARTE_EQUIPO ');
   Memo1.Lines.Add('where ARTCODBAR='''' ');
   Memo1.Lines.Add('');
   Memo1.Lines.Add('');
   Memo1.Lines.Add('-- busca parte por número de Serie en Archivo de Partes');
   Memo1.Lines.Add('select * from ATIADMIN.ATI_PARTE_EQUIPO ');
   Memo1.Lines.Add('where ATI_PARTE_EQUIPO.SERIE='''' ');
   Memo1.Lines.Add('');
   Memo1.Lines.Add('');
   Memo1.Lines.Add('-- busca Equipo en Archivo Maestro');
   Memo1.Lines.Add('select * from ATIADMIN.ATI_SOP_STOCK ');
   Memo1.Lines.Add('where ARTCODBAR='''' ');
end;

end.
