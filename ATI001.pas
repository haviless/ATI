Unit ATI001;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Menus, ComCtrls, ToolWin, ExtCtrls, jpeg;

Type
   TFPrincipal = Class(TForm)
      MainMenu1: TMainMenu;
      Archivo1: TMenuItem;
      Mantenimiento1: TMenuItem;
      MantenimientodeComponente1: TMenuItem;
      MantenimientodeResponsable1: TMenuItem;
      clbPrincipal: TCoolBar;
      StatusBar1: TStatusBar;
      Nombre1: TMenuItem;
      Caracteristica1: TMenuItem;
      Marca2: TMenuItem;
      ipo2: TMenuItem;
      Unidad1: TMenuItem;
      Entrada1: TMenuItem;
      Entrada2: TMenuItem;
      Stock1: TMenuItem;
      SalidadeEquipos1: TMenuItem;
      Reportes1: TMenuItem;
      ReportedeEquiposporUbicacin1: TMenuItem;
    Label1: TLabel;
    Image1: TImage;
    lblVersion: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    InformesdeAtencin1: TMenuItem;
    InformedeAtencin1: TMenuItem;
    ImportarActivosTI1: TMenuItem;
    Utilitarios1: TMenuItem;
    RegularizaInfAtencin1: TMenuItem;
      Procedure Inventariar1Click(Sender: TObject);
      Procedure GuiadeSalida1Click(Sender: TObject);
      Procedure MantenimientodeResponsable1Click(Sender: TObject);
      Procedure Modelo1Click(Sender: TObject);
      Procedure Marca1Click(Sender: TObject);
      Procedure ipo1Click(Sender: TObject);
      Procedure Nombre1Click(Sender: TObject);
      Procedure Caracteristica1Click(Sender: TObject);
      Procedure Marca2Click(Sender: TObject);
      Procedure ipo2Click(Sender: TObject);
      Procedure Unidad1Click(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure Entrada2Click(Sender: TObject);
      Procedure Stock1Click(Sender: TObject);
      Procedure SalidadeEquipos1Click(Sender: TObject);
      Procedure ReportedeEquiposporUbicacin1Click(Sender: TObject);
    procedure Archivo1Click(Sender: TObject);
    procedure InformedeAtencin1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImportarActivosTI1Click(Sender: TObject);
    procedure Utilitarios1Click(Sender: TObject);
    procedure RegularizaInfAtencin1Click(Sender: TObject);
   Private
      { Private declarations }
   Public
      { Public declarations }
   End;

Var
   FPrincipal: TFPrincipal;

Implementation

Uses ATI100, ATI110, ATI120, ATI130, ATI140, ATI200, ATI201, ATI300,
   ATI310, ATI320, ATI33O, ATI500, ATI510, ATI530, ATIDM1,
   ATI115, ATI112, ATI113, ATI114, ATI121, ATI122, ATI123, ATI124, ATI301,
   ATI131, ATI135, ATI133, Utilitarios, ATI150, ATI910;

{$R *.dfm}

Procedure TFPrincipal.Inventariar1Click(Sender: TObject);
Begin
   FInvEquipo := TFInvEquipo.Create(Self);
   Try
      FInvEquipo.ShowModal;
   Finally
      FInvEquipo.FREE;
   End;
End;

Procedure TFPrincipal.GuiadeSalida1Click(Sender: TObject);
Begin
   FTransGuiSali := TFTransGuiSali.Create(Self);
   Try
      FTransGuiSali.ShowModal;
   Finally
      FTransGuiSali.Free;
   End;
End;

Procedure TFPrincipal.MantenimientodeResponsable1Click(Sender: TObject);
Begin
   FManResponsable := TFManResponsable.Create(Self);
   Try
      FManResponsable.ShowModal;
   Finally
      FManResponsable.Free
   End;
End;

Procedure TFPrincipal.Modelo1Click(Sender: TObject);
Begin
   FManEquipoModel := TFManEquipoModel.Create(Self);
   Try
      FManEquipoModel.ShowModal;
   Finally
      FManEquipoModel.Free;
   End;
End;

Procedure TFPrincipal.Marca1Click(Sender: TObject);
Begin
   FManEquipoMarca := TFManEquipoMarca.Create(Self);
   Try
      FManEquipoMarca.ShowModal;
   Finally
      FManEquipoMarca.Free;
   End;
End;

Procedure TFPrincipal.ipo1Click(Sender: TObject);
Begin
   FManEquipoTipo := TFManEquipoTipo.Create(Self);
   Try
      FManEquipoTipo.ShowModal;
   Finally
      FManEquipoTipo.Free;
   End;
End;

Procedure TFPrincipal.Nombre1Click(Sender: TObject);
Begin
   FManComponente := TFManComponente.Create(Self);
   Try
      FManComponente.ShowModal;
   Finally
      FManComponente.Free;
   End;
End;

Procedure TFPrincipal.Caracteristica1Click(Sender: TObject);
Begin
   FManComCarac := TFManComCarac.Create(Self);
   Try
      FManComCarac.ShowModal;
   Finally
      FManComCarac.Free;
   End;
End;

Procedure TFPrincipal.Marca2Click(Sender: TObject);
Begin
   FManComMarca := TFManComMarca.Create(Self);
   Try
      FManComMarca.ShowModal;
   Finally
      FManComMarca.Free;
   End;

End;

Procedure TFPrincipal.ipo2Click(Sender: TObject);
Begin
   FManComTipo := TFManComTipo.Create(Self);
   Try
      FManComTipo.ShowModal;
   Finally
      FManComTipo.Free;
   End;
End;

Procedure TFPrincipal.Unidad1Click(Sender: TObject);
Begin
   FManComUnidad := TFManComUnidad.Create(Self);
   Try
      FManComUnidad.ShowModal;
   Finally
      FManComUnidad.Free;
   End;
End;

Procedure TFPrincipal.FormCreate(Sender: TObject);
Begin
   StatusBar1.Panels.Items[1].Text := 'USUARIO: ' + UpperCase(DMATI.xResp);
End;

Procedure TFPrincipal.Entrada2Click(Sender: TObject);
Begin
   FCabeceraIngreso := TFCabeceraIngreso.Create(Self);
   Try
      FCabeceraIngreso.ShowModal;
   Finally
      FCabeceraIngreso.Free;
   End;
End;

Procedure TFPrincipal.Stock1Click(Sender: TObject);
Begin
   FStock := TFStock.Create(Self);
   Try
      FStock.ShowModal;
   Finally
      FStock.Free;
   End;
End;

Procedure TFPrincipal.SalidadeEquipos1Click(Sender: TObject);
Begin
   FCabeceraSalida := TFCabeceraSalida.Create(Self);
   Try
      FCabeceraSalida.ShowModal;
   Finally
      FCabeceraSalida.Free;
   End;
End;

Procedure TFPrincipal.ReportedeEquiposporUbicacin1Click(Sender: TObject);
Begin
   FReporteUsuUbi := TFReporteUsuUbi.Create(Self);
   Try
      FReporteUsuUbi.ShowModal;
   Finally
      FReporteUsuUbi.Free;
   End;
End;

procedure TFPrincipal.Archivo1Click(Sender: TObject);
begin
   close;
end;

procedure TFPrincipal.InformedeAtencin1Click(Sender: TObject);
begin
   FInfoAten := TFInfoAten.Create(Self);
   Try
      FInfoAten.ShowModal;
   Finally
      FInfoAten.Free;
   End;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
var
   xSQL : String;
begin
   if (DMATI.cIP<>'192.168.20.36') and (DMATI.cIP<>'192.168.20.34') then
   begin
      xSQL := 'select * from '+DMATI.wwEsquemaATI+'ACCESOS_LOG '
             +'where FECHORREGING=(select max(FECHORREGING) '
             +'                    from '+DMATI.wwEsquemaATI+'ACCESOS_LOG '
             +'                    where USUCLIENTE='+quotedstr(DMATI.wUsuario)
             +'                      and IPCLIENTE<>'+QUOTEDSTR(DMATI.cIP)+')';
      DMATI.cdsQry.Close;
      DMATI.cdsQry.DataRequest(xSQL);
      DMATI.cdsQry.Open;
      if DMATI.cdsQry.RecordCount>0 then
      begin
         if DMATI.cdsQry.FieldByName('FECHORREGOUT').AsString = '' then
         begin
            ShowMessage('Ya hay otra aplicación de '+DMATI.xResp+' en Ejecución');
            Application.Terminate;
         end;
      end;
   end;

// CONTROLA LA VERSION DEL MÓDULO
   xSQL := 'select VERSION from '+DMATI.wwEsquemaATI+'TGE600 where CODIGO='+quotedstr('ATI');
   DMATI.cdsQry.Close;
   DMATI.cdsQry.DataRequest(xSQL);
   DMATI.cdsQry.Open;
   if DMATI.cdsQry.FieldByName('VERSION').AsString <> lblVersion.Caption then
   begin
      ShowMessage('Debe actualizar la versión');
      Application.Terminate;
   end;

end;

//=====================================================================
// Inicio HPC_201401_ATI
//=====================================================================
procedure TFPrincipal.ImportarActivosTI1Click(Sender: TObject);
begin
   FImpActivosTI := TFImpActivosTI.Create(Self);
   Try
      FImpActivosTI.ShowModal;
   Finally
      FImpActivosTI.Free;
   End;
end;
//=====================================================================
// Fin HPC_201401_ATI
//=====================================================================

procedure TFPrincipal.Utilitarios1Click(Sender: TObject);
begin
   if (DMATI.cIP<>'10.10.11.16') then
   begin
      ShowMessage('No tiene acceso a esta Opción');
      exit;
   end;
   FTrabajoInterno := TFTrabajoInterno.Create(Self);
   Try
      FTrabajoInterno.ShowModal;
   Finally
      FTrabajoInterno.Free;
   End;
end;

procedure TFPrincipal.RegularizaInfAtencin1Click(Sender: TObject);
begin
   FRegInfAtenc := TFRegInfAtenc.Create(Self);
   Try
      FRegInfAtenc.ShowModal;
   Finally
      FRegInfAtenc.Free;
   End;
end;

End.


