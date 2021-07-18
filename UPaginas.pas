unit UPaginas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLParser, RLRichFilter,
  RLHTMLFilter, RLFilters, RLPDFFilter;

type
  TFPaginas = class(TForm)
    RLRelatorio: TRLReport;
    Grupo: TRLGroup;
    bndGrupo: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLBand1: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RlOrdem1: TRLLabel;
    RlOrdem2: TRLLabel;
    Rlordem3: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBgrupo: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLExpressionParser1: TRLExpressionParser;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPaginas: TFPaginas;

implementation

{$R *.dfm}

uses UDados, Main;

procedure TFPaginas.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  if FMain.Fx mod 2 = 1 then
    TRLBand(sender).Color := $00E4E4E4
  else
    TRLBand(sender).Color := clWhite;
  inc(FMain.Fx);
end;

end.
