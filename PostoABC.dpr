program PostoABC;

uses
  Vcl.Forms,
  UfrmConsulta in 'UfrmConsulta.pas' {FrmConsulta},
  Main in 'Main.pas' {fMain},
  UDados in 'UDados.pas' {DmDados: TDataModule},
  UAbastece in 'UAbastece.pas',
  UntMaskedit in 'UntMaskedit.pas',
  URelatorios in 'URelatorios.pas' {FRelatorios},
  UPaginas in 'UPaginas.pas' {FPaginas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TFrmConsulta, FrmConsulta);
  Application.CreateForm(TFRelatorios, FRelatorios);
  Application.CreateForm(TFPaginas, FPaginas);
  Application.Run;
end.
