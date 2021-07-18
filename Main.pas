unit Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  System.Actions,
  System.uitypes,
  Vcl.ActnList,
  System.ImageList,
  Vcl.ImgList,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ComCtrls;


type
  TfMain = class(TForm)
    PnCabecalho: TPanel;
    Panel2: TPanel;
    PnMenu: TPanel;
    PanelWorkArea: TPanel;
    ActionList1: TActionList;
    ActAbastece: TAction;
    ActRelatorios: TAction;
    BtAbastece: TBitBtn;
    BtRelatorio: TBitBtn;
    Tmdia: TTimer;
    pnrodape: TPanel;
    ShapeServ: TShape;
    lbservidor: TLabel;
    lbhora: TLabel;
    procedure ActAbasteceExecute(Sender: TObject);
    procedure ActRelatoriosExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TmdiaTimer(Sender: TObject);
    procedure SimulaTab(var Key: Word);
    procedure Evt_Sair;
    Function GetStateK (Key: integer): boolean;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFormActive: TForm;
    procedure LoadForm(AClass: TFormClass);

  public
    { Public declarations }
    fechar : boolean;
    Fx : integer;
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

uses UDados, UfrmConsulta, URelatorios;

procedure TfMain.LoadForm(AClass: TFormClass);
begin
  if Assigned(Self.FFormActive) then
    begin
      Self.FFormActive.Close;
      Self.FFormActive.Free;
      Self.FFormActive := nil;
    end;

  Self.FFormActive             := AClass.Create(nil);
  Self.FFormActive.Parent      := Self.PanelWorkArea;
  Self.FFormActive.BorderStyle := TFormBorderStyle.bsNone;

  Self.FFormActive.Top   := 0;
  Self.FFormActive.Left  := 0;
  Self.FFormActive.Align := TAlign.alClient;

  Self.FFormActive.Show;
end;

procedure TFMain.SimulaTab(var Key: Word);
begin
  Key := 0;
  perform(WM_NEXTDLGCTL, 0, 0);
end;

Function TFMain.GetStateK (Key: integer): boolean;
begin
  Result := Odd(GetKeyState (Key));
end;

procedure TfMain.Evt_Sair;
begin
  if MessageDlg('FINALIZAR APLICAÇÃO ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      fechar := true;
      Close;
    end;
end;

procedure TfMain.ActAbasteceExecute(Sender: TObject);
begin
  Self.LoadForm(TFrmConsulta);
end;

procedure TfMain.ActRelatoriosExecute(Sender: TObject);
begin
  Self.LoadForm(TFRelatorios);
end;

procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If fechar = false Then
    Action := caNone;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TDmDados, DmDados);
  lbservidor.caption := DmDados.Conectar;
  if DmDados.Fire_Conexao.Connected = true then
    begin
      ShapeServ.Brush.Color := cllime;
      btabastece.Enabled := true;
      btrelatorio.Enabled := true;
    end
  else
    begin
      ShapeServ.Brush.Color := clred;
      btabastece.Enabled := false;
      btrelatorio.Enabled := false;
    end;
end;

procedure TfMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_escape then
    Evt_Sair;
  If GetStateK (VK_LMENU) And (Key = VK_F4) Then
    Evt_Sair;
end;

procedure TfMain.FormShow(Sender: TObject);
begin
  tmdia.Enabled := true;
  fechar := false;
end;

procedure TfMain.TmdiaTimer(Sender: TObject);
begin
  lbhora.caption := datetostr( date )+'    '+timetostr( time );
end;

end.
