unit UDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, inifiles, dialogs, messages, system.uitypes,
  vcl.forms, variants, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.StdCtrls;

type
  TDmDados = class(TDataModule)
    QExecutor: TFDQuery;
    DsConsulta: TDataSource;
    Fire_Conexao: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    QListar: TFDQuery;
    procedure LeINI;
    function Conectar : String;
    Procedure Executa_Query(NConexao : TFDConnection; MQuery : TFDQuery; SqlComb : string; parametros : variant);
    Procedure Popular_Combobox( MCombo : TCombobox; SqlComb, ValorPadComb : string);
    procedure QListarAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    Ip_Servidor, Porta, Database, Senha, Usuario, Diretoriodll : string;
  end;

var
  DmDados: TDmDados;
  str_sql, configini : string;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


Procedure tDmDados.Executa_Query(NConexao : TFDConnection; MQuery : TFDQuery; SqlComb : string; parametros : variant);
var
  i, j : integer;
begin
  With MQuery do
    begin
      Close;

      if Nconexao <> nil then
        MQuery.Connection := NConexao;

      Sql.clear;
      Sql.text := SqlComb;

      if not VarIsNull(parametros) then
        begin
          if VarIsArray(Parametros)  then
            begin
              i := VarArrayLowBound(Parametros, 1);
              j := VarArrayHighBound(Parametros, 1);
              while i <= j do
                begin
                  MQuery.Params[i].Value := Parametros[i];
                  Inc(i);
                end;
            end
          else
            MQuery.Params[0].Value := Parametros;
        end;

      if (Ansiuppercase(copy(sqlcomb, 1, 6)) = 'SELECT') or (Ansiuppercase(copy(sqlcomb, 1, 4)) = 'SHOW') then
        Open
      else
        Execute;
    end;
end;

Procedure tDmDados.Popular_Combobox( MCombo : TCombobox; SqlComb, ValorPadComb : string);
var
  QConComb : TFdQuery;
begin
  QConComb := TFdQuery.create(Nil);

  Executa_Query(Fire_Conexao, QConComb, SqlComb, null);

  QConComb.first;

  MCombo.clear;
  MCombo.items.clear;
  while not QConComb.eof do
    begin
      if trim( QConComb.fields[0].asstring ) <> '' then
        MCombo.Items.add( QConComb.fields[0].asstring );

      QConComb.next;
    end;
  if ValorPadComb <> '' then
    MCombo.ItemIndex := MCombo.items.IndexOf( ValorPadComb );

  QConComb.close;
  QConComb.Free;
end;

procedure TDmDados.QListarAfterOpen(DataSet: TDataSet);
begin
  TNumericField(Qlistar.FieldByName('qtde')).DisplayFormat := '0.000';
  TNumericField(Qlistar.FieldByName('preco_litro')).DisplayFormat := '0.000';
  TNumericField(Qlistar.FieldByName('valor_abastecido')).DisplayFormat := '0.00';
  TNumericField(Qlistar.FieldByName('aliquota')).DisplayFormat := '0.00';
  TNumericField(Qlistar.FieldByName('imposto')).DisplayFormat := '0.00';
end;

procedure tDmDados.LeINI;
var
  ArqIni : TIniFile;
begin
  ArqIni := TIniFile.Create(configini);
  try
    Ip_Servidor   := ArqIni.ReadString('BaseDados', 'Ip_Servidor', Ip_Servidor);
    Porta         := ArqIni.ReadString('BaseDados', 'Porta', Porta);
    Database      := ArqIni.ReadString('BaseDados', 'Database', DataBase);
    Senha         := ArqIni.ReadString('BaseDados', 'Senha', Senha);
    Usuario       := ArqIni.ReadString('BaseDados', 'Usuario', Usuario);
    Diretoriodll  := ArqIni.ReadString('BaseDados', 'DiretorioDll', diretoriodll);
  finally
    ArqIni.Free;
  end;
end;

function TDmDados.Conectar : String;
begin
  Result := '';
  Fire_Conexao.Connected := false;
  configini := ExtractFilePath(ParamStr(0)) +'PostoAbc.ini';

  if fileexists(configini) then
    begin
      Leini;
      try
        strtoint(porta);
      except
        porta := '3050';
      end;

      try
        FDPhysFBDriverLink1.VendorLib := diretoriodll + 'fbclient.dll';

        Fire_Conexao.Params.Clear;
        Fire_Conexao.LoginPrompt := false;
        Fire_Conexao.DriverName :=  'FB';
        Fire_Conexao.Params.DriverID  :=  'FB';
        Fire_Conexao.Params.Database  :=  Database;
        Fire_Conexao.Params.UserName  :=  Usuario;
        Fire_Conexao.Params.Password  :=  Senha;

        Fire_Conexao.Params.Add('CharacterSet=UTF8');
        Fire_Conexao.Params.Add('OpenMode=omOpen');
        Fire_Conexao.Params.Add('server='+ Ip_Servidor);
        Fire_Conexao.Params.Add('Port='+ Porta);
        Fire_Conexao.Params.Add('Protocol=ipTCPIP');
        Fire_Conexao.Params.Add('SQLDialect=3');

        Fire_Conexao.Connected := true;

        Result := 'Servidor: '+database+' ( '+ip_servidor+' )';
      Except
        on E:Exception do
          begin
            Fire_Conexao.Connected := false;
            Result := 'FALHA NA CONEXÃO COM O BANCO DE DADOS: '  + #13#10 + E.Message;
          end;
      end;
    end
  else
    Result := 'ARQUIVO '+configini+' NÃO ENCONTRADO';
end;

end.
