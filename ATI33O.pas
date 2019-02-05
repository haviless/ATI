Unit ATI33O;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FMTBcd, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, DB,
    SqlExpr, ExtCtrls, ppModule, daDataModule, ppCtrls, ppMemo, ppBands,
    ppCTMain, ppStrtch, ppRegion, ppPrnabl, ppClass, ppCache, ppEndUsr,
    ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppVar;

Type
    TFTransGuiSali = Class(TForm)
        lable_title: TLabel;
        SQLQuery1: TSQLQuery;
        DataSource1: TDataSource;
        GroupBox5: TGroupBox;
        Label2: TLabel;
        Label4: TLabel;
        GroupBox4: TGroupBox;
        DBGrid2: TDBGrid;
        GroupBox1: TGroupBox;
        Label1: TLabel;
        E_serie: TEdit;
        GroupBox2: TGroupBox;
        Label15: TLabel;
        Label16: TLabel;
        Label17: TLabel;
        Label18: TLabel;
        Label19: TLabel;
        Label20: TLabel;
        Label21: TLabel;
        Label22: TLabel;
        Label23: TLabel;
        Label24: TLabel;
        Label25: TLabel;
        DBE_fru: TDBEdit;
        DBE_tipo: TDBEdit;
        DBE_estado: TDBEdit;
        DBE_color: TDBEdit;
        DBE_marca: TDBEdit;
        DBE_Nom: TDBEdit;
        DBE_tecno: TDBEdit;
        DBE_inv: TDBEdit;
        DBE_usu: TDBEdit;
        DBE_ofi: TDBEdit;
        DBE_modelo: TDBEdit;
        E_ticked: TEdit;
        M_Ops: TMemo;
        Panel1: TPanel;
        BitBtn3: TBitBtn;
        BitBtn2: TBitBtn;
        BitBtn4: TBitBtn;
        BitBtn5: TBitBtn;
        Bt_BUSCAR: TBitBtn;
        Label9: TLabel;
        L_Ops: TLabel;
        ppDBP_GS: TppDBPipeline;
        ppR_GS: TppReport;
        ppParameterList1: TppParameterList;
        ppD_GS: TppDesigner;
        Panel2: TPanel;
        Label5: TLabel;
        E_NGS: TEdit;
        ppDesigner1: TppDesigner;
        E_nge: TEdit;
        Label6: TLabel;
        ppHeaderBand1: TppHeaderBand;
        ppImage1: TppImage;
        ppLabel1: TppLabel;
        ppLabel3: TppLabel;
        ppRegion1: TppRegion;
        ppLabel2: TppLabel;
        ppDBText2: TppDBText;
        ppRegion2: TppRegion;
        ppLabel4: TppLabel;
        ppLabel6: TppLabel;
        ppLabel7: TppLabel;
        ppLabel8: TppLabel;
        ppLabel5: TppLabel;
        ppLabel10: TppLabel;
        ppLabel17: TppLabel;
        ppLabel18: TppLabel;
        ppLabel11: TppLabel;
        ppDBText5: TppDBText;
        ppDBText7: TppDBText;
        ppDBText8: TppDBText;
        ppDBText9: TppDBText;
        ppDBText10: TppDBText;
        ppDBText11: TppDBText;
        ppDBText12: TppDBText;
        ppDBText6: TppDBText;
        ppDBText14: TppDBText;
        ppRegion3: TppRegion;
        ppLabel12: TppLabel;
        ppDBText1: TppDBText;
        ppRegion7: TppRegion;
        ppLabel9: TppLabel;
        ppSystemVariable2: TppSystemVariable;
        ppSystemVariable1: TppSystemVariable;
        ppLabel21: TppLabel;
        ppDBText4: TppDBText;
        ppLabel22: TppLabel;
        ppRegion5: TppRegion;
        ppLabel14: TppLabel;
        ppLabel15: TppLabel;
        ppLabel16: TppLabel;
        ppLabel19: TppLabel;
        ppLabel20: TppLabel;
        ppLabel13: TppLabel;
        ppDBText19: TppDBText;
        ppLabel25: TppLabel;
        ppDetailBand1: TppDetailBand;
        ppRegion4: TppRegion;
        ppDBText13: TppDBText;
        ppDBText15: TppDBText;
        ppDBText17: TppDBText;
        ppDBText18: TppDBText;
        ppCrossTab1: TppCrossTab;
        ppLine2: TppLine;
        ppLine4: TppLine;
        ppLine5: TppLine;
        ppLine6: TppLine;
        ppLine7: TppLine;
        ppDBText3: TppDBText;
        ppDBText16: TppDBText;
        ppFooterBand1: TppFooterBand;
        ppRegion6: TppRegion;
        ppLabel23: TppLabel;
        ppDBMemo1: TppDBMemo;
        ppLine1: TppLine;
        ppDBText21: TppDBText;
        ppLabel24: TppLabel;
        ppLine3: TppLine;
        ppLabel26: TppLabel;
        ppLine9: TppLine;
        ppLabel55: TppLabel;
        ppLabel56: TppLabel;
        ppSystemVariable3: TppSystemVariable;
        Procedure Bt_BUSCARClick(Sender: TObject);
        Procedure M_OpsChange(Sender: TObject);
        Procedure BitBtn2Click(Sender: TObject);
        Procedure BitBtn4Click(Sender: TObject);
        Procedure E_reqKeyPress(Sender: TObject; Var Key: Char);
        Procedure M_OpsKeyPress(Sender: TObject; Var Key: Char);
    Private
    { Private declarations }
    Public
    { Public declarations }
    End;

Var
    FTransGuiSali: TFTransGuiSali;

Implementation

Uses ATIDM1, funciones;

{$R *.dfm}

Procedure TFTransGuiSali.Bt_BUSCARClick(Sender: TObject);
Var
    xsql: String;
Begin
    SQLQuery1.Close;
    SQLQuery1.Params[0].AsString := cambio(E_serie.Text);
    SQLQuery1.Open;

    xSQL := ' SELECT componente.serie_com AS SERIE, componente.nom_com AS NOMBRE, componente.est_com AS ESTADO, '
        + ' componente.mar_com AS MARCA, componente.tip_com AS TIPO'
        + ' FROM equipo, componente '
        + ' WHERE  equipo.eq_id = componente.eq_id '
        + ' AND equipo.serie_eq =' + QuotedStr(E_serie.Text);



    xsql := 'select MAX(NGS) from '+DMATI.wwEsquemaATI+'ATI_SALIDA WHERE EQ_ID=' + QuotedStr(cambio(E_serie.Text));

    If valida('MAX(NGS)', xSQL) <> '' Then
    Begin
        Panel2.Visible := True;
        E_NGS.Text := valida('MAX(NGS)', xSQL);
    End
    Else
        Panel2.Visible := False;

End;

Procedure TFTransGuiSali.M_OpsChange(Sender: TObject);
Begin
    L_Ops.caption := IntToStr(Palabras(M_Ops.Text));
End;

Procedure TFTransGuiSali.BitBtn2Click(Sender: TObject);
Var
    xSQL: String;
Begin

    If DBE_Nom.Text = '' Then
    Begin
        MessageDlg('Seleccione el equipo', mtCustom, [mbOk], 0);
        E_serie.SetFocus;
        Exit;
    End;

    xSQL := 'SELECT NGE FROM '+DMATI.wwEsquemaATI+'ATI_ENT WHERE NGE=' + QuotedStr(E_nge.Text);

    If valida('NGE', xSQL) = '' Then
    Begin
        MessageDlg('Ingrese N° de Guía de Entrada valida', mtCustom, [mbOk], 0);
        E_serie.SetFocus;
        Exit;
    End;

    If E_ticked.Text = '' Then
    Begin
        MessageDlg('Ingrese N° de ticked', mtCustom, [mbOk], 0);
        E_serie.SetFocus;
        Exit;
    End;

    xSQL := 'select eq_id from '+DMATI.wwEsquemaATI+'ATI_ENT where NGE=' + QuotedStr(E_nge.Text);

    If cambio(E_serie.text) <> valida('eq_id', xSQL) Then
    Begin
        MessageDlg('Inconsistencia de datos, Guía de Entrada no corresponde con el Equipo', mtCustom, [mbOk], 0);
        E_serie.SetFocus;
        Exit;
    End;

    xSQL := 'select NGE from '+DMATI.wwEsquemaATI+'ATI_SALIDA where NGE=' + QuotedStr(E_nge.Text);

    If valida('NGE', xSQL) <> '' Then
    Begin
        MessageDlg('Guía de Entrada ya fue Utilizada', mtCustom, [mbOk], 0);
        E_serie.SetFocus;
        Exit;
    End;



    xsql := 'select MAX(NGS) from '+DMATI.wwEsquemaATI+'ATI_SALIDA WHERE EQ_ID=' + QuotedStr(cambio(E_serie.Text));

    ShowMessage('Se Grabó Correctamente con codigo:' + valida('MAX(NGS)', xSQL));
    Panel2.Visible := True;
    E_NGS.Text := valida('MAX(NGS)', xSQL);

End;

Procedure TFTransGuiSali.BitBtn4Click(Sender: TObject);
Var
    xSQL: String;
Begin
    xSQL := 'SELECT ATI_ENT.tec_id, ATI_SALIDA.nge, componente.serie_com, componente.nom_com,'
        + ' componente.est_com, componente.mar_com, componente.tip_com,'
        + ' componente.car_com, componente.cap_com, componente.fru_com,'
        + ' equipo.serie_eq, equipo.nom_eq, equipo.est_eq, equipo.mod_eq,'
        + ' equipo.mar_eq, equipo.tec_eq, equipo.tipo_eq, equipo.col_eq,'
        + ' equipo.usu, equipo.ofi, equipo.fru_eq, equipo.num_inv,'
        + ' ATI_ENT.req_num, ATI_ENT.ninf, ATI_SALIDA.ngs,'
        + ' ATI_SALIDA.gs_ops, ATI_SALIDA.fec_sal, ATI_SALIDA.sticker'
        + ' FROM '+DMATI.wwEsquemaATI+'ATI_ENT, '+DMATI.wwEsquemaATI+'ATI_SALIDA, '+DMATI.wwEsquemaATI+'equipo, '+DMATI.wwEsquemaATI+'componente'
        + ' WHERE  ATI_ENT.nge = ATI_SALIDA.nge'
        + ' AND    equipo.eq_id = ATI_ENT.eq_id'
        + ' AND    equipo.eq_id = ATI_SALIDA.eq_id'
        + ' AND    equipo.eq_id = componente.eq_id'
        + ' AND    ATI_SALIDA.ngs = ' + QuotedStr(E_NGS.Text);


   //ppR_GS.Template.FileName:='REPORTE_GS.rtm';
   //ppR_GS.Template.LoadFromFile;
   //ppD_GS.ShowModal;
    ppR_GS.Print;
End;

Procedure TFTransGuiSali.E_reqKeyPress(Sender: TObject; Var Key: Char);
Begin
    Key := isNumeric(Key);
End;

Procedure TFTransGuiSali.M_OpsKeyPress(Sender: TObject; Var Key: Char);
Begin
    Key := UpCase(Key);
End;

End.

