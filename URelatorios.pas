unit URelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TFRelatorios = class(TForm)
    PnCima: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbtanque: TComboBox;
    cbbomba: TComboBox;
    cbformapgto: TComboBox;
    mkinicio: TMaskEdit;
    mkfinal: TMaskEdit;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    RgOrdem: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure LimpaConsulta;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorios: TFRelatorios;

implementation

{$R *.dfm}

uses UDados, UntMaskedit, Main, UPaginas;

procedure TFRelatorios.BitBtn2Click(Sender: TObject);
var
  ordem : string;
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

  case rgordem.ItemIndex of
    0 :
      begin
        ordem := ' order by data_abastece, nr_tanque, nr_bomba';
        Fpaginas.grupo.DataFormula := 'data_abastece';
        Fpaginas.rldbgrupo.dataformula := 'data_abastece';
        Fpaginas.rldbgrupo.text := 'Data: ';
        Fpaginas.rlordem1.Caption := 'Forma de Pagamento';
        Fpaginas.rldbtext1.dataformula := 'forma_pgto';
        Fpaginas.rlordem2.Caption := 'Nº do Tanque';
        Fpaginas.rldbtext2.dataformula := 'nr_tanque';
        Fpaginas.rlordem3.Caption := 'Nº da Bomba';
        Fpaginas.rldbtext3.dataformula := 'nr_bomba';
      end;
    1 :
      begin
        ordem := ' order by nr_tanque, data_abastece, nr_bomba';
        Fpaginas.grupo.DataFormula := 'nr_tanque';
        Fpaginas.rldbgrupo.dataformula := 'nr_tanque';
        Fpaginas.rldbgrupo.text := 'Nº do Tanque: ';
        Fpaginas.rlordem1.Caption := 'Forma de Pagamento';
        Fpaginas.rldbtext1.dataformula := 'forma_pgto';
        Fpaginas.rlordem2.Caption := 'Data';
        Fpaginas.rldbtext2.dataformula := 'data_abastece';
        Fpaginas.rlordem3.Caption := 'Nº da Bomba';
        Fpaginas.rldbtext3.dataformula := 'nr_bomba';
      end;
    2 :
      begin
        ordem := ' order by nr_bomba, data_abastece, nr_tanque';
        Fpaginas.grupo.DataFormula := 'nr_bomba';
        Fpaginas.rldbgrupo.dataformula := 'nr_bomba';
        Fpaginas.rldbgrupo.text := 'Nº da Bomba: ';
        Fpaginas.rlordem1.Caption := 'Forma de Pagamento';
        Fpaginas.rldbtext1.dataformula := 'forma_pgto';
        Fpaginas.rlordem2.Caption := 'Data';
        Fpaginas.rldbtext2.dataformula := 'data_abastece';
        Fpaginas.rlordem3.Caption := 'Nº do Tanque';
        Fpaginas.rldbtext3.dataformula := 'nr_tanque';
      end;
    3 :
      begin
        ordem := ' order by forma_pgto, data_abastece, nr_tanque, nr_bomba';
        Fpaginas.grupo.DataFormula := 'forma_pgto';
        Fpaginas.rldbgrupo.dataformula := 'forma_pgto';
        Fpaginas.rldbgrupo.text := 'Forma de Pagamento: ';
        Fpaginas.rlordem1.Caption := 'Nº da Bomba';
        Fpaginas.rldbtext1.dataformula := 'nr_bomba';
        Fpaginas.rlordem2.Caption := 'Data';
        Fpaginas.rldbtext2.dataformula := 'data_abastece';
        Fpaginas.rlordem3.Caption := 'Nº do Tanque';
        Fpaginas.rldbtext3.dataformula := 'nr_tanque';
      end;
  end;

  if (mkinicio.text <> '  /  /  ') and (mkfinal.text <> '  /  /  ') then
    begin
      if str_sql = '' then
        str_sql := 'where data_abastece between :dataini and :datafinal '
      else
        str_sql := str_sql + ' and data_abastece between :dataini and :datafinal ';

      dmdados.Executa_Query(nil, Dmdados.QListar, 'select * from ABASTECIMENTOS '+str_sql+ordem, varArrayOf( [
      strtodate( mkinicio.text ),
      strtodate( mkfinal.text ) ] ));
    end
  else
    dmdados.Executa_Query(nil, Dmdados.QListar, 'select * from ABASTECIMENTOS '+str_sql+ordem, null);

  fmain.Fx := 0;
  fpaginas.RLRelatorio.Preview;
end;

procedure TFRelatorios.LimpaConsulta;
begin
  cbtanque.ItemIndex := -1;
  cbbomba.ItemIndex := -1;
  cbformapgto.ItemIndex := -1;
  mkinicio.Clear;
  mkfinal.Clear
end;

procedure TFRelatorios.BitBtn4Click(Sender: TObject);
begin
  LimpaConsulta;
end;

procedure TFRelatorios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    FMain.Simulatab(key);
end;

procedure TFRelatorios.FormShow(Sender: TObject);
begin
  str_sql := 'select nr_tanque from tanques order by nr_tanque';
  DmDados.Popular_Combobox(cbtanque, str_sql, '');

  str_sql := 'select nr_bomba from bombas order by nr_bomba';
  DmDados.Popular_Combobox(cbbomba, str_sql, '');

  str_sql := 'select nm_formapgto from forma_pgto order by id_pgto';
  DmDados.Popular_Combobox(cbformapgto, str_sql, '');

  mkinicio.ChamaBtn;
  mkfinal.ChamaBtn;

  cbtanque.SetFocus;
end;

end.
