Program ATI000;

uses
  Forms,
  Windows,
  Controls,
  Msgdlgs,
  ATI001 in 'ATI001.pas' {FPrincipal},
  ATI002 in 'ATI002.pas' {FAcceso},
  ATI33O in 'ATI33O.pas' {FTransGuiSali},
  ATI100 in 'ATI100.pas' {FManUsuario},
  ATI110 in 'ATI110.pas' {FRegEquipo},
  ATI120 in 'ATI120.pas' {FManComponente},
  ATI130 in 'ATI130.pas' {FCabeceraIngreso},
  ATI140 in 'ATI140.pas' {FManResponsable},
  ATI200 in 'ATI200.pas' {FInvEquipo},
  ATI300 in 'ATI300.pas' {FStock},
  ATI310 in 'ATI310.pas' {FSalida},
  ATI320 in 'ATI320.pas' {FInfoAtencion},
  ATI500 in 'ATI500.pas' {FInfoTecnico},
  ATI510 in 'ATI510.pas' {FInformeBaja},
  ATI530 in 'ATI530.pas' {FCabInfoTecnico},
  ATIDM1 in 'ATIDM1.pas' {DMATI: TDataModule},
  ATI112 in 'ATI112.pas' {FManEquipoModel},
  ATI113 in 'ATI113.pas' {FManEquipoMarca},
  ATI114 in 'ATI114.pas' {FManEquipoTipo},
  ATI121 in 'ATI121.pas' {FManComCarac},
  ATI122 in 'ATI122.pas' {FManComMarca},
  ATI123 in 'ATI123.pas' {FManComTipo},
  ATI124 in 'ATI124.pas' {FManComUnidad},
  ATI201 in 'ATI201.pas' {FInvEquipo1},
  ATI301 in 'ATI301.pas' {FReporteUsuUbi},
  ATI311 in 'ATI311.pas' {FDetaInfAte},
  ATI131 in 'ATI131.pas' {FDetalleEntrada},
  ATI132 in 'ATI132.pas' {FDetalleSalida},
  ATI133 in 'ATI133.pas' {FInfoAten},
  ATI135 in 'ATI135.pas' {FCabeceraSalida},
  ATI321 in 'ATI321.pas' {FInfoTec},
  Utilitarios in 'Utilitarios.pas' {FTrabajoInterno},
  ATI150 in 'ATI150.pas' {FImpActivosTI},
  ATI211 in 'ATI211.pas' {FInvParteEquipo1},
  ATI115 in 'ATI115.pas' {FControlParte},
  ATI210 in 'ATI210.pas' {FInvParteEquipo},
  ATI910 in 'ATI910.pas' {FRegInfAtenc};

{$R *.res}

Var
   HMutex: THandle;
Begin

   {Application.Initialize;
   Application.CreateForm(TDMATI, DMATI);
   Application.CreateForm(TFPrincipal, FPrincipal);
   Application.Run;}

   HMutex := CreateMutex(Nil, False, 'OneCopyMutexATI');
   //PATRON DE DISEÑO SINGLETON

   If WaitForSingleObject(HMutex, 0) <> wait_TimeOut Then
   Begin
      Application.Initialize;
      Application.Title := 'Modulo ATI';
      Application.CreateForm(TDMATI, DMATI);
  FAcceso := TFAcceso.Create(Nil);
      Try
         If FAcceso.ShowModal = mrOk Then
            Application.CreateForm(TFPrincipal, FPrincipal);
      Finally
         FAcceso.Free;
      End;
      Application.Run;
   End
   Else
      ErrorMsg('Modulo ATI', 'Ya se Encuentra en ejecución el Modulo');
End.

