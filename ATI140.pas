Unit ATI140;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Mask,
    wwdbedit, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
    ppBands, ppCache, ppEndUsr, ppCtrls, ppVar, ppPrnabl, ppParameter;

Type
    TFManResponsable = Class(TForm)
        pnlPie: TPanel;
        dbgResponsables: TwwDBGrid;
        DBG_manrespIButton: TwwIButton;
        Label1: TLabel;
        pnlActualizacion: TPanel;
        Label2: TLabel;
        Z2bbtnCanc3: TBitBtn;
        BModificar: TBitBtn;
        Label3: TLabel;
        dbeCodigo: TwwDBEdit;
        dbeNomResponsable: TwwDBEdit;
        ppdbReporte: TppDBPipeline;
        pprResponsable: TppReport;
        BitBtn1: TBitBtn;
        ppdResponsable: TppDesigner;
        ppParameterList1: TppParameterList;
        wwDBEdit1: TwwDBEdit;
        Label4: TLabel;
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
        Procedure Z2bbtnCanc3Click(Sender: TObject);
        Procedure dbgResponsablesDblClick(Sender: TObject);
        Procedure DBG_manrespIButtonClick(Sender: TObject);
        Procedure BModificarClick(Sender: TObject);
        Procedure dbgResponsablesKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure FormCreate(Sender: TObject);
        Procedure BitBtn1Click(Sender: TObject);
    Private
    { Private declarations }
        xSQL: String;
        xModo: String; // I=Insercion M=Modificacion
    Public
        codres: Integer;
        nomres: String;
    End;

Var
    FManResponsable: TFManResponsable;

Implementation

Uses ATIDM1, DB, funciones;

{$R *.dfm}

{ TFManResponsable }
//*****************************************************************
Procedure TFManResponsable.Z2bbtnCanc3Click(Sender: TObject);
Begin
//    DMATI.cdsQry13.CancelUpdates;
    DMATI.cdsQry13.open;
    DMATI.cdsQry13.Refresh;
    dbgResponsables.Enabled := true;
    pnlPie.Enabled := true;
    pnlActualizacion.Visible := False;
End;

Procedure TFManResponsable.dbgResponsablesDblClick(Sender: TObject);
Begin
    xModo := 'M';
    pnlActualizacion.Visible := True;
    //dbeNomResponsable.SetFocus;
    DMATI.cdsQry13.Edit;
    dbgResponsables.Enabled := false;
    pnlPie.Enabled := false;

End;

Procedure TFManResponsable.DBG_manrespIButtonClick(Sender: TObject);
Begin
   //DMATI.cdsQry13.Refresh;
    xModo := 'I';
    dbgResponsables.Enabled := false;
    pnlPie.Enabled := false;
    pnlActualizacion.Visible := True;
    xSQL := ' SELECT MAX(SSGGID+1) NUMERO  '
        + ' FROM '+DMATI.wwEsquemaATI+'ATI_SSGG';
    DMATI.cdsQRY.Close;
    DMATI.cdsQRY.DataRequest(xSQL);
    DMATI.cdsQRY.Open;
    DMATI.cdsQry13.Append;
    DMATI.cdsQry13.FieldByName('SSGGID').AsInteger := DMATI.cdsQRY.FieldByName('NUMERO').AsInteger;
    dbeNomResponsable.SetFocus;
End;

Procedure TFManResponsable.BModificarClick(Sender: TObject);
Begin
// verifica que nombre de representante no este vacío
    If length(DMATI.cdsQry13.FieldByName('nombre').AsString) = 0 Then
    Begin
        ShowMessage('El nombre del Representante no puede ir en blanco');
        dbeNomResponsable.SetFocus;
        exit;
    End;

// verifica que Nombre de Representante no este registrado con otro código
    xSQL := 'select nombre '
        + 'from '+DMATI.wwEsquemaATI+'ATI_SSGG '
        + 'where nombre=' + quotedstr(DMATI.cdsQry13.FieldByName('SSGGID').AsString)
        + ' and SSGGid<>' + inttostr(DMATI.cdsQry13.FieldByName('SSGGID').AsInteger);
    DMATI.cdsQry.Close;
    DMATI.cdsQry.DataRequest(xSQL);
    DMATI.cdsQry.Open;
    If DMATI.cdsQry.Recordcount > 0 Then
    Begin
        ShowMessage('El nombre del Representante ya fue registrado con otro código');
        dbeNomResponsable.SetFocus;

        exit;
    End;

    If MessageDlg(' ¿Grabar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
        If xModo = 'I' Then
        Begin
            xSQL := ' Insert into '+DMATI.wwEsquemaATI+'ATI_SSGG(NOMBRE, CLAVE, DESCRIPCION,SSGGID) '
                + ' values( '
                + quotedstr(DMATI.cdsQry13.FieldByName('NOMBRE').AsString) + ','
                + QuotedStr(DMATI.cdsQry13.FieldByName('CLAVE').AsString) + ','
                + quotedstr(DMATI.cdsQry13.FieldByName('DESCRIPCION').AsString) + ','
                + inttostr(DMATI.cdsQry13.FieldByName('SSGGID').AsInteger) + ')';
        End
        Else
        Begin
            xSQL := 'UPDATE '+DMATI.wwEsquemaATI+'ATI_SSGG '
                + ' SET NOMBRE=' + QuotedStr(DMATI.cdsQry13.FieldByName('NOMBRE').AsString) + ','
                + ' DESCRIPCION=' + QuotedStr(DMATI.cdsQry13.FieldByName('DESCRIPCION').AsString)
                + ' WHERE SSGGID =' + inttostr(DMATI.cdsQry13.FieldByName('SSGGID').AsInteger);
        End;

        Try

            DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
        Except
            ShowMessage('No se pudo grabar el Responsable');
            exit;
        End;
        DMATI.cdsQry13.Post;
        ShowMessage('ok');
    End
    Else
    Begin
        DMATI.cdsQry13.CancelUpdates;
    End;
    dbgResponsables.Enabled := true;
    pnlPie.Enabled := true;

    pnlActualizacion.Visible := False;

End;

Procedure TFManResponsable.dbgResponsablesKeyDown(Sender: TObject;
    Var Key: Word; Shift: TShiftState);
Begin
{
//Validar que el responsambre no tenga movimientos
    If (key = VK_Delete) And (ssCtrl In Shift) Then
    Begin
        If MessageDlg(' ¿Eliminar Registro? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        Begin
            xSQL := 'delete fromATI_SSGG '
                + 'whereATI_SSGGid=' + IntToStr(DMATI.cdsQry13.FieldByName('ssggid').AsInteger);
            Try
                DMATI.ATISkt.AppServer.EjecutaSQL(xSQL);
            Except
                ShowMessage('No se pudo Eliminar');
                exit;
            End;
            DMATI.cdsQry13.Delete;
        End;
    End;
}
End;

Procedure TFManResponsable.FormCreate(Sender: TObject);

Begin
    xSQL := ' SELECT NOMBRE, CLAVE, DESCRIPCION,SSGGID FROM '+DMATI.wwEsquemaATI+'ATI_SSGG';

    DMATI.cdsQry13.Close;
    DMATI.cdsQry13.DataRequest(xSQL);
    DMATI.cdsQry13.Open;
    dbgResponsables.DataSource := DMATI.dsQRY13;
    dbgResponsables.Selected.clear;
    dbgResponsables.Selected.Add('SSGGID' + #9 + '10' + #9 + 'CÓDIGO');
    dbgResponsables.Selected.Add('NOMBRE' + #9 + '25' + #9 + 'RESPONSABLE');
    dbgResponsables.Selected.Add('DESCRIPCION' + #9 + '10' + #9 + 'DESCRIPCIÓN');
    dbgResponsables.ApplySelected;
End;

Procedure TFManResponsable.BitBtn1Click(Sender: TObject);
Var
    xRuta: String;
Begin
   //PPR_INFO.Template.FileName:='REPORTE_INF.rtm';
   //PPR_INFO.Template.LoadFromFile;
   //PPD_INFO.ShowModal;
   //PPR_INFO.Print;

    ppdbReporte.DataSource := DMATI.dsQry13;

    {xRuta := 'C:\SOLEXES\Reportes';
    pprResponsable.template.FileName := xRuta + '\Responsables.rtm';
    pprResponsable.Template.LoadFromFile;

    ppdResponsable.Show; }

   pprResponsable.Print;
   pprResponsable.Stop;


End;

End.

