unit ATI910;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Buttons;

type
  TFRegInfAtenc = class(TForm)
    lblCodBarra: TLabel;
    dbeCodBar: TwwDBEdit;
    bbtnActCodBar: TBitBtn;
    edtNombreArt: TEdit;
    procedure FormShow(Sender: TObject);
    procedure dbeCodBarExit(Sender: TObject);
    procedure bbtnActCodBarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   FRegInfAtenc: TFRegInfAtenc;
   xSQL : String;

implementation

uses ATIDM1;

{$R *.dfm}

procedure TFRegInfAtenc.FormShow(Sender: TObject);
begin
   xSQL := 'Select ARTCODBAR from ATIADMIN.ATI_INFORME where 1<>1';
   DMATI.cdsQry12.Close;
   DMATI.cdsQry12.IndexFieldNames:='';
   DMATI.cdsQry12.Filter:='';
   DMATI.cdsQry12.Filtered:=False;
   DMATI.cdsQry12.DataRequest(xSQL);
   DMATI.cdsQry12.Open;
   dbeCodBar.DataField  := '';
   dbeCodBar.DataSource := DMATI.dsQry12;
   dbeCodBar.DataField  := 'ARTCODBAR';
end;

procedure TFRegInfAtenc.dbeCodBarExit(Sender: TObject);
begin
   xSQL := 'select ARTCODBAR, ACFDES '
      + '     from '+DMATI.wwEsquemaProd+'ACF201 '
      + '    where ARTCODBAR='+quotedstr(dbeCodBar.Text);
   DMATI.cdsQry12.Close;
   DMATI.cdsQry12.IndexFieldNames:='';
   DMATI.cdsQry12.Filter:='';
   DMATI.cdsQry12.Filtered:=False;
   DMATI.cdsQry12.DataRequest(xSQL);
   DMATI.cdsQry12.Open;
   if DMATI.cdsQry12.RecordCount=0 then
   Begin
      ShowMessage('Código de Barras No existe en el Maestro de Activos');
      dbeCodBar.SetFocus;
      exit;
   End;
   edtNombreArt.Text := DMATI.cdsQry12.FieldByName('ACFDES').AsString;
end;

procedure TFRegInfAtenc.bbtnActCodBarClick(Sender: TObject);
begin
   If MessageDlg(' ¿Liberar Código de Barras de los Informes de Atención? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      xSQL :=    'Update ATIADMIN.ATI_INFORME '
         + '         set ESTADO=''P'' '
         + '       where ARTCODBAR='+quotedstr(dbeCodBar.Text)
         + '         and ESTADO=''V'' ';
      Try
         DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
      Except
         ShowMessage('No se pudo Actualizar');
         exit;
      End;
      ShowMessage('ok');
   End;
   dbeCodBar.Text := '';
   dbeCodBar.SetFocus;
end;

end.
