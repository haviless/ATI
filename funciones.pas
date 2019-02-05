Unit funciones;

Interface
Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, DBXpress, DB, SqlExpr,
   DBClient, SimpleDS, ExtCtrls, FMTBcd, Mask;

Function isNumeric(IKey: Char): Char;

Procedure Activar(data: TSimpleDataSet; Var xsql: String);
Function Palabras(Cadena: String): integer;
Function valida(data: String; Var xsql: String): String;
Procedure AbrirEqui(Abre: Boolean);
Procedure parametro(Data: TSimpleDataSet; filtro: String);
Procedure AbrirCom(Abre: Boolean);
Procedure Abrir(Data: TSimpleDataSet; Abre: Boolean);
Function cambio(x: String): String;
Function cambio1(x: String): String;
Procedure filtro(data: TSimpleDataSet; v, x: String);
Procedure ABRE_ATI112;
Procedure ABRE_ATI113;
Function checks(Nun: String): Boolean;
Function checkNumber(bol: Boolean): String;

Implementation

Uses ATIDM1, VarUtils;

Function isNumeric(IKey: Char): Char;
Begin
   If Not (IKey In ['0'..'9', #8]) Then
      Begin
         IKey := #0;
      End;
   result := IKey;
End;

Procedure Activar(data: TSimpleDataSet; Var xsql: String);
Begin
   //data.FreeOnRelease;
   data.Close;
   data.DataSet.CommandText := xsql;
   data.DataSet.CommandType := ctQuery;
   data.Open;
End;
Function Palabras(Cadena: String): integer;
Var
   n: integer;
Begin

   If Cadena = '' Then
      Result := 0
   Else
      Result := 1;

   For n := 1 To Length(Cadena) Do
      Begin
         Inc(Result);
      End

End;

Function valida(data: String; Var xsql: String): String;
Begin

End;
Procedure AbrirEqui(Abre: Boolean);
Begin

End;

Procedure parametro(Data: TSimpleDataSet; filtro: String);
Begin
   Data.Close;
   Data.Params[0].Value := filtro;
   Data.Open;
End;
Procedure AbrirCom(Abre: Boolean);
Begin

End;
Procedure Abrir(Data: TSimpleDataSet; Abre: Boolean);
Begin
   Data.Close;
   Data.active := Abre;
   Data.Open;
End;

Function cambio(x: String): String;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT eq_id FROM equipo WHERE  equipo.serie_eq =' + QuotedStr(x);
   Result := valida('eq_id', xSQL);

End;

Function cambio1(x: String): String;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT COM_ID FROM COMPONENTE WHERE SERIE_COM  =' + QuotedStr(x);
   Result := valida('COM_ID', xSQL);

End;

Procedure filtro(data: TSimpleDataSet; v, x: String);

Begin

End;

Function checks(Nun: String): Boolean;
Begin

End;

Function checkNumber(bol: Boolean): String;
Begin

End;

Procedure ABRE_ATI112;
Begin

End;

Procedure ABRE_ATI113;
Begin

End;

End.

