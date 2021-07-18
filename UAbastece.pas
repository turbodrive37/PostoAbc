unit UAbastece;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms, ComCtrls,
  system.UITypes, messages, dialogs, variants, uDados;

type
  TAbastecimento = class

  private

    FId_Abastece                : Integer;
    FNr_Bomba                   : String;
    FNr_Tanque                  : String;
    FData_Abastece              : TDatetime;
    FQtde                       : Real;
    FPreco_Litro                : Real;
    FValor_Abastecido           : Real;
    FAliquota                   : Real;
    FImposto                    : Real;
    FForma_Pgto                 : String;

  public

    function InsereAbastecimento : Boolean;
    function AlteraAbastecimento( Id : integer ): Boolean;
    function ExcluirAbastecimento( Id : integer ): Boolean;

    property IdAbastece : Integer read FId_Abastece write FId_Abastece;
    property NrBomba : String read FNr_Bomba write FNr_Bomba;
    property NrTanque : String read FNr_Tanque write FNr_Tanque;
    property DataAbastece : TDateTime read FData_Abastece write FData_Abastece;
    property Qtde : Real read FQtde write FQtde;
    property PrecoLitro : Real read FPreco_Litro write FPreco_Litro;
    property ValorAbastecido : Real read FValor_Abastecido write FValor_Abastecido;
    property Aliquota : Real read FAliquota write FAliquota;
    property Imposto : Real read FImposto write FImposto;
    property FormaPgto : String read FForma_Pgto write FForma_Pgto;

  end;

implementation

function TAbastecimento.InsereAbastecimento: Boolean;
begin
  try
    str_sql := 'INSERT into ABASTECIMENTOS (NR_BOMBA, NR_TANQUE, DATA_ABASTECE, QTDE, PRECO_LITRO, VALOR_ABASTECIDO, ALIQUOTA, IMPOSTO, FORMA_PGTO) VALUES (';
    str_sql := str_sql + ' '+quotedstr(Self.NrBomba)+', '+quotedstr(Self.NrTanque)+', :paramdia, :paramqtde, :parampreco, :paramvalor, :paramaliq, :paramimpos, '+quotedstr( self.FormaPgto )+' ) ';

    dmdados.Executa_Query(nil, Dmdados.QExecutor, str_sql, varArrayOf( [
    self.DataAbastece,
    self.Qtde,
    self.PrecoLitro,
    self.ValorAbastecido,
    self.Aliquota,
    self.Imposto ] ));

    result := true;
  except
    ON E : Exception do
      begin
        messagedlg('FALHA AO INSERIR O REGISTRO: '+e.message, mterror, [mbok], 0);
        Result := false;
      end;
  end;
end;

function TAbastecimento.AlteraAbastecimento( Id : integer ): Boolean;
begin
  try
    str_sql := 'UPDATE ABASTECIMENTOS set NR_BOMBA = '+quotedstr(Self.NrBomba)+', NR_TANQUE = '+quotedstr(Self.NrTanque)+', DATA_ABASTECE =:paramdia, ';
    str_sql := str_sql + 'QTDE =:paramqtde, PRECO_LITRO =:parampreco, VALOR_ABASTECIDO =:paramvalor, ALIQUOTA =:paramaliq, IMPOSTO =:paramimpos, ';
    str_sql := str_sql + 'FORMA_PGTO = '+quotedstr( self.FormaPgto )+' where ID_ABASTECE =:paramid ';

    dmdados.Executa_Query(nil, Dmdados.QExecutor, str_sql, varArrayOf( [
    self.DataAbastece,
    self.Qtde,
    self.PrecoLitro,
    self.ValorAbastecido,
    self.Aliquota,
    self.Imposto,
    id ] ));

    result := true;
  except
    ON E : Exception do
      begin
        messagedlg('FALHA AO ALTERAR O REGISTRO: '+e.message, mterror, [mbok], 0);
        Result := false;
      end;
  end;
end;

function TAbastecimento.ExcluirAbastecimento( Id : integer ): Boolean;
begin
  try
    str_sql := 'delete from ABASTECIMENTOS where ID_ABASTECE =:paramid';
    dmdados.Executa_Query(nil, Dmdados.QExecutor, str_sql, varArrayOf( [ id ]));

    result := true;
  except
    ON E : Exception do
      begin
        messagedlg('FALHA AO EXCLUIR O REGISTRO: '+e.message, mterror, [mbok], 0);
        Result := false;
      end;
  end;
end;

end.
