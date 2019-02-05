Unit ATI510;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, FMTBcd, Buttons, DB,
   SqlExpr, ExtCtrls, ppEndUsr, ppProd, ppClass, ppReport, ppComm, ppRelatv,
   ppDB, ppDBPipe, ppBands, ppRichTx, ppStrtch, ppMemo, ppVar, ppCtrls,
   ppPrnabl, ppCache, ppParameter, ppCTMain, ppRegion, ppModule,
   daDataModule, wwdblook, Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn,
   Wwdbigrd, Wwdbgrid, ppBarCod, wwdbedit;

Type
   TFInformeBaja = Class(TForm)
      Label3: TLabel;
      Panel1: TPanel;
      Panel3: TPanel;
      ppdbInformeBaja: TppDBPipeline;
      pprInformeBaja: TppReport;
      ppdInformeBaja: TppDesigner;
      ppParameterList1: TppParameterList;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLine1: TppLine;
      ppLabel3: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppLabel4: TppLabel;
      ppLine11: TppLine;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppLine6: TppLine;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppLine10: TppLine;
      ppDBText3: TppDBText;
      ppLine12: TppLine;
      ppSummaryBand1: TppSummaryBand;
      z2bbtnAcepta: TfcShapeBtn;
      fcShapeBtn1: TfcShapeBtn;
      z2bbtnCancelar: TfcShapeBtn;
      Label4: TLabel;
      dbmmObservacion: TDBMemo;
      dbmmProblema: TDBMemo;
      Label2: TLabel;
      dbmmDiagnostico: TDBMemo;
      dbmmAccion: TDBMemo;
      Label8: TLabel;
      Label9: TLabel;
      dbgInformeBaja: TwwDBGrid;
      dbgBaja: TwwDBGrid;
      Label7: TLabel;
      Label5: TLabel;
      Label1: TLabel;
      dbeNumInfo: TwwDBEdit;
      edtBuscar: TEdit;
      Label6: TLabel;
      fcShapeBtn2: TfcShapeBtn;
      fcShapeBtn3: TfcShapeBtn;
      Procedure FormCreate(Sender: TObject);
      Procedure z2bbtnAceptaClick(Sender: TObject);
      Procedure z2bbtnCancelarClick(Sender: TObject);
      Procedure dbgInformeBajaDblClick(Sender: TObject);
      Procedure dbgBajaDblClick(Sender: TObject);
      Procedure edtBuscarKeyPress(Sender: TObject; Var Key: Char);

   Private
      { Private declarations }
      xSQL: String;
      xModo: String;
      xRuta: String;
      xNumero: String;
   Public
      { Public declarations }
   End;

Var
   FInformeBaja: TFInformeBaja;

Implementation

Uses ATIDM1, ATI310, ATI201, ATI300;

{$R *.dfm}

Procedure TFInformeBaja.FormCreate(Sender: TObject);
Var
   I, J: integer;
Begin



End;

Procedure TFInformeBaja.z2bbtnAceptaClick(Sender: TObject);
Begin
   ppdbInformeBaja.DataSource := DMATI.dsRepocitorio;

   xRuta := 'C:\SOLEXES\Reportes';
   pprInformeBaja.template.FileName := xRuta + '\InformeBaja.rtm';
   pprInformeBaja.Template.LoadFromFile;

   ppdInformeBaja.Show;

   {pprEntrada.Print;
   pprEntrada.Stop;}
End;

Procedure TFInformeBaja.z2bbtnCancelarClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFInformeBaja.dbgInformeBajaDblClick(Sender: TObject);
Var
   I: Integer;

Begin


End;

Procedure TFInformeBaja.dbgBajaDblClick(Sender: TObject);
Var
   I: Integer;
Begin


End;

Procedure TFInformeBaja.edtBuscarKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         If Length(Trim(edtBuscar.Text)) > 0 Then
            Begin
               dbgInformeBaja.SetFocus;
               edtBuscar.Text := '';
               // dbgPAgos.OnDblClick(dbgPAgos);
            End
         Else
            Begin
               MessageDlg('Debe Digitar El Nombre de un Equipo para comenzar la busqueda', mtError, [mbOk], 0);
               edtBuscar.SetFocus;
            End;
      End;
End;

End.

