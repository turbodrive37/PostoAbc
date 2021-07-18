unit UfrmConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, untmaskedit,
  Vcl.Buttons, Data.DB, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, system.uitypes,
  Vcl.ExtCtrls;

type
  TFrmConsulta = class(TForm)
    PageControl1: TPageControl;
    TSConsulta: TTabSheet;
    TSCadastro: TTabSheet;
    Label5: TLabel;
    CbCadTanque: TComboBox;
    Label6: TLabel;
    CbCadBomba: TComboBox;
    Label7: TLabel;
    CbCadPgto: TComboBox;
    Label8: TLabel;
    MkDtCad: TMaskEdit;
    edqtde: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    edaliquota: TEdit;
    lbpreco: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lbvalor: TLabel;
    Label15: TLabel;
    lbimposto: TLabel;
    BitBtn1: TBitBtn;
    lbcombustivel: TLabel;
    PnCima: TPanel;
    Label1: TLabel;
    cbtanque: TComboBox;
    Label2: TLabel;
    cbbomba: TComboBox;
    Label3: TLabel;
    cbformapgto: TComboBox;
    Label4: TLabel;
    mkinicio: TMaskEdit;
    mkfinal: TMaskEdit;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    PnBaixo: TPanel;
    DBGrid1: TDBGrid;
    SbRodape: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure LimpaConsulta;
    procedure LimpaCampos;
    procedure TSConsultaShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CbCadTanqueChange(Sender: TObject);
    procedure edqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure edqtdeExit(Sender: TObject);
    procedure AtualizaValor;
    procedure edaliquotaExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    function ValidarCampos : boolean;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TSCadastroShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ModificarRegistro(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsulta: TFrmConsulta;
  registroatual : integer;

implementation

{$R *.dfm}

uses UDados, Main, UAbastece;

procedure TFrmConsulta.LimpaCampos;
var
  i : integer;
begin
  registroatual := 0;
  lbpreco.Caption := '0,00';
  lbvalor.Caption := '0,00';
  lbimposto.Caption := '0,00';
  lbcombustivel.Caption := '';

  for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TEdit then
        TEdit(Components[i]).text := '0,00';
      if Components[i] is TCombobox then
        TCombobox(Components[i]).itemindex := -1;
    end;
  edaliquota.Text := '13,00'; // valor padrão estabelecido no teste
end;

procedure TFrmConsulta.LimpaConsulta;
begin
  cbtanque.ItemIndex := -1;
  cbbomba.ItemIndex := -1;
  cbformapgto.ItemIndex := -1;
  mkinicio.Clear;
  mkfinal.Clear
end;

procedure TFrmConsulta.AtualizaValor;
begin
  lbvalor.caption := trim(format('%5.2f',[ strtofloat( edqtde.text ) * strtofloat( lbpreco.Caption ) ]));
  lbimposto.caption := trim(format('%5.2f',[ ( strtofloat( edaliquota.text ) / 100 ) * strtofloat( lbvalor.Caption ) ]));
end;

function TFrmConsulta.ValidarCampos : boolean;
var
  msg : string;
begin
  msg := '';
  Result := true;
  if cbcadtanque.ItemIndex < 0 then
    msg := 'Nº do Tanque';
  if cbcadbomba.ItemIndex < 0 then
    msg := msg + #13+'Nº da Bomba';
  if mkdtcad.Text = '  /  /  ' then
    msg := msg + #13+'Data do Abastecimento';
  if strtofloat(edqtde.text) = 0 then
    msg := msg + #13+'Qtde do Abastecimento deve ser superior a zero';
  if strtofloat(edaliquota.text) = 0 then
    msg := msg + #13+'Valor da Alíquota deve ser superior a zero';
  if cbcadpgto.ItemIndex < 0 then
    msg := msg + #13+'Forma de Pagamento';

  if trim(msg) <> '' then
    begin
      Result := false;
      messagedlg('VERIFICAR OS CAMPOS: '+msg, mtwarning, [mbok], 0);
    end;
end;

procedure TFrmConsulta.TSCadastroShow(Sender: TObject);
begin
  cbcadtanque.SetFocus;
end;

procedure TFrmConsulta.TSConsultaShow(Sender: TObject);
begin
  cbtanque.SetFocus;
  dmdados.Executa_Query(nil, Dmdados.QListar, 'select first 100 * from ABASTECIMENTOS order by data_abastece, nr_tanque, nr_bomba ', null);
end;

procedure TFrmConsulta.BitBtn1Click(Sender: TObject);
var
  Registro : TAbastecimento;
begin
  if ValidarCampos = true then
    begin
      Registro := TAbastecimento.Create;
      with Registro do
        begin
          NrTanque              := cbcadtanque.text;
          NrBomba               := cbcadbomba.text;
          PrecoLitro            := strtofloat( lbpreco.caption );
          DataAbastece          := strtodate( mkdtcad.text );
          Qtde                  := strtofloat( edqtde.text );
          ValorAbastecido       := strtofloat( lbvalor.caption );
          Aliquota              := strtofloat( edaliquota.text );
          Imposto               := strtofloat( lbimposto.caption );
          FormaPgto             := cbcadpgto.Text;

          if registroatual = 0 then
            InsereAbastecimento
          else
            AlteraAbastecimento( registroatual );

          Free;
        end;

      Dmdados.QListar.refresh;

      if registroatual = 0 then
        cbcadtanque.SetFocus  // permanece em tela para possibilitar a inclusão de mais registros
      else
        TsConsulta.Show;

      LimpaCampos;
    end;
end;

procedure TFrmConsulta.BitBtn2Click(Sender: TObject);
begin
  str_sql := '';

  if cbtanque.itemindex > -1 then
    str_sql := 'where nr_tanque = '+quotedstr( cbtanque.text )+' ';
  if cbbomba.itemindex > -1 then
    begin
      if str_sql = '' then
        str_sql := 'where nr_bomba = '+quotedstr( cbbomba.text )+' '
      else
        str_sql := str_sql + ' and nr_bomba = '+quotedstr( cbbomba.text )+' ';
    end;
  if cbformapgto.itemindex > -1 then
    begin
      if str_sql = '' then
        str_sql := 'where forma_pgto = '+quotedstr( cbformapgto.text )+' '
      else
        str_sql := str_sql + ' and forma_pgto = '+quotedstr( cbformapgto.text )+' ';
    end;
  if (mkinicio.text <> '  /  /  ') and (mkfinal.text <> '  /  /  ') then
    begin
      if str_sql = '' then
        str_sql := 'where data_abastece between :dataini and :datafinal '
      else
        str_sql := str_sql + ' and data_abastece between :dataini and :datafinal ';

      dmdados.Executa_Query(nil, Dmdados.QListar, 'select * from ABASTECIMENTOS '+str_sql+' order by data_abastece, nr_tanque, nr_bomba ', varArrayOf( [
      strtodate( mkinicio.text ),
      strtodate( mkfinal.text ) ] ));
    end
  else
    dmdados.Executa_Query(nil, Dmdados.QListar, 'select * from ABASTECIMENTOS '+str_sql+' order by data_abastece, nr_tanque, nr_bomba ', null);
  dbgrid1.SetFocus;

  sbrodape.Panels[3].Text := 'Nº de Registros: '+inttostr( Dmdados.QListar.RecordCount );
end;

procedure TFrmConsulta.BitBtn4Click(Sender: TObject);
begin
  LimpaConsulta;
end;

procedure TFrmConsulta.CbCadTanqueChange(Sender: TObject);
begin
  dmdados.Executa_Query(nil, Dmdados.QExecutor, 'select preco, combustivel from TANQUES where NR_TANQUE = '+quotedstr( cbcadtanque.text ), null);
  lbpreco.Caption := trim(format('%5.3f',[ Dmdados.QExecutor.Fieldbyname('preco').asfloat ]));
  lbcombustivel.Caption := Dmdados.QExecutor.Fieldbyname('combustivel').asstring;

  str_sql := 'select b.nr_bomba from bombas b, tanques t where b.id_tanque = t.id_tanque and t.nr_tanque = '+quotedstr( cbcadtanque.text )+' order by b.nr_bomba';
  DmDados.Popular_Combobox(cbcadbomba, str_sql, '');
end;

procedure TFrmConsulta.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(Dmdados.QListar.RecNo) then
   if not (gdSelected in State) then
     begin
       DBGrid1.Canvas.Brush.Color := clskyblue;;
       DBGrid1.Canvas.FillRect(Rect);
       DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
     end;
end;

procedure TFrmConsulta.ModificarRegistro(Sender: TObject);
begin
  cbcadtanque.ItemIndex := cbcadtanque.items.IndexOf(Dmdados.QListar.fieldbyname('nr_tanque').AsString);
  CbCadTanqueChange(sender);
  cbcadbomba.ItemIndex := cbcadbomba.items.IndexOf(Dmdados.QListar.fieldbyname('nr_bomba').AsString);
  cbcadpgto.ItemIndex := cbcadpgto.items.IndexOf(Dmdados.QListar.fieldbyname('forma_pgto').AsString);
  mkdtcad.text := Dmdados.QListar.fieldbyname('data_abastece').AsString;
  edqtde.Text := trim(format('%5.3f',[ Dmdados.QListar.fieldbyname('qtde').Asfloat ]));
  edaliquota.Text := trim(format('%5.2f',[ Dmdados.QListar.fieldbyname('aliquota').Asfloat ]));
  lbvalor.caption := trim(format('%5.2f',[ Dmdados.QListar.fieldbyname('valor_abastecido').Asfloat ]));
  lbimposto.caption := trim(format('%5.2f',[ Dmdados.QListar.fieldbyname('imposto').Asfloat ]));

  registroatual := Dmdados.QListar.fieldbyname('id_abastece').Asinteger;
  tscadastro.Show;
end;

procedure TFrmConsulta.DBGrid1DblClick(Sender: TObject);
begin
  if ( Dmdados.QListar.active = true ) and (Dmdados.QListar.Fieldbyname('id_abastece').asstring <> '') then
    ModificarRegistro(sender);
end;

procedure TFrmConsulta.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Registro : TAbastecimento;
begin
  if (key = VK_F2) and ( Dmdados.QListar.active = true ) and (Dmdados.QListar.Fieldbyname('id_abastece').asstring <> '') then
    ModificarRegistro(sender);

  if (key = VK_F3) and ( Dmdados.QListar.active = true ) and (Dmdados.QListar.Fieldbyname('id_abastece').asstring <> '') then
    begin
      if MessageDlg('CONFIRMA A EXCLUSÃO DO REGISTRO ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          Registro := TAbastecimento.Create;
          Registro.ExcluirAbastecimento( Dmdados.QListar.Fieldbyname('id_abastece').AsInteger );
          Registro.free;

          Dmdados.QListar.refresh;
          sbrodape.Panels[3].Text := 'Nº de Registros: '+inttostr( Dmdados.QListar.RecordCount );
        end;
    end;
end;

procedure TFrmConsulta.edaliquotaExit(Sender: TObject);
begin
  try
    edaliquota.text := trim(format('%5.2f',[ strtofloat( edaliquota.text ) ]));
  except
    edaliquota.text := '0,00';
  end;
  AtualizaValor;
end;

procedure TFrmConsulta.edqtdeExit(Sender: TObject);
begin
  try
    edqtde.text := trim(format('%5.3f',[ strtofloat( edqtde.text ) ]));
  except
    edqtde.text := '0,000';
  end;
  AtualizaValor;
end;

procedure TFrmConsulta.edqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( CharInSet( Key, ['0'..'9', #8, #13, ','] ) ) then
    key := #0;
end;

procedure TFrmConsulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    FMain.Simulatab(key);
  if key = VK_F1 then
    begin
      registroatual := 0;
      mkdtcad.Text := datetostr( date );
      edaliquota.Text := '13,00'; // valor padrão estabelecido no teste
      TsCadastro.show;
    end;
end;

procedure TFrmConsulta.FormShow(Sender: TObject);
begin
  str_sql := 'select nr_tanque from tanques order by nr_tanque';
  DmDados.Popular_Combobox(cbtanque, str_sql, '');
  DmDados.Popular_Combobox(cbcadtanque, str_sql, '');

  str_sql := 'select nr_bomba from bombas order by nr_bomba';
  DmDados.Popular_Combobox(cbbomba, str_sql, '');

  str_sql := 'select nm_formapgto from forma_pgto order by id_pgto';
  DmDados.Popular_Combobox(cbformapgto, str_sql, '');
  DmDados.Popular_Combobox(cbcadpgto, str_sql, '');

  cbcadbomba.Clear;

  registroatual := 0;
  TSConsulta.show;
  mkinicio.ChamaBtn;
  mkfinal.ChamaBtn;
  mkdtcad.ChamaBtn;
end;

end.
