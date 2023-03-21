unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids, System.IniFiles,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, MidasLib,
  Vcl.Mask, JvExMask, JvSpin;

type
  TufrmPrincipal = class(TForm)
    Panel1: TPanel;
    bntCapturar: TButton;
    pnlTotal: TPanel;
    Label1: TLabel;
    edtPesquisa: TEdit;
    btnLImpar: TButton;
    btnImprimir: TButton;
    GroupBox1: TGroupBox;
    dbdCodigos: TDBGrid;
    cdsdados: TClientDataSet;
    Action: TActionList;
    acCapturar: TAction;
    acImprimir: TAction;
    cdsdadosCODIGO: TStringField;
    dsdados: TDataSource;
    acLimpar: TAction;
    cdsdadosSEQ: TIntegerField;
    GroupBox2: TGroupBox;
    edtLargura: TJvSpinEdit;
    Label2: TLabel;
    edtAltura: TJvSpinEdit;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    edtSuperior: TJvSpinEdit;
    edtInferior: TJvSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtEsquerda: TJvSpinEdit;
    edtDireita: TJvSpinEdit;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acCapturarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure acImprimirExecute(Sender: TObject);
    procedure acLimparExecute(Sender: TObject);
    procedure cdsdadosAfterPost(DataSet: TDataSet);
    procedure cdsdadosNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure GravarIni;
    procedure LerIni;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ufrmPrincipal: TufrmPrincipal;
const
  ARQ_INI = 'Leitor.ini';

implementation

{$R *.dfm}

uses ufrm_impressao, udmCodigo_de_Barras, uOpcoes;

procedure TufrmPrincipal.acCapturarExecute(Sender: TObject);
var
c1 : real;
c2 : string;
begin
//Capturar
  cdsDados.OPEN;
  if edtPesquisa.Text <> '' then
  begin
    cdsDados.Append;
    cdsDadosCODIGO.AsString := edtPesquisa.Text;
    cdsDados.Post;
    edtPesquisa.Clear;
    edtPesquisa.SetFocus;
  end;

end;


procedure TufrmPrincipal.acImprimirExecute(Sender: TObject);
begin
  try
    frm_impressao := Tfrm_impressao.Create(Self);
    with frm_impressao.rlEtiqueta do
    begin
      PageSetup.PaperWidth := edtLargura.AsInteger;
      PageSetup.PaperHeight := edtAltura.AsInteger;
      Margins.BottomMargin := edtInferior.Value;
      Margins.TopMargin := edtSuperior.Value;
      Margins.LeftMargin := edtEsquerda.Value;
      Margins.RightMargin := edtDireita.Value;
    end;
    frm_impressao.rlEtiqueta.Preview();
  finally
    FreeAndNil(frm_impressao);
  end;
end;

procedure TufrmPrincipal.acLimparExecute(Sender: TObject);
begin
//Limpar
  cdsdados.Close;
  cdsdados.CreateDataSet;
  edtPesquisa.SetFocus;
end;

procedure TufrmPrincipal.cdsdadosAfterPost(DataSet: TDataSet);
begin
  pnlTotal.Caption := cdsdados.RecordCount.ToString + ' CODIGOS LIGOS';
end;

procedure TufrmPrincipal.cdsdadosNewRecord(DataSet: TDataSet);
begin
   cdsdadosSEQ.AsInteger := cdsdados.RecordCount + 1
end;

procedure TufrmPrincipal.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  acCapturarExecute(Self);
end;

procedure TufrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 GravarIni;
end;

procedure TufrmPrincipal.FormCreate(Sender: TObject);
begin
  cdsDados.CreateDataSet;
end;

procedure TufrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  acCapturarExecute(Self);
end;

procedure TufrmPrincipal.FormShow(Sender: TObject);
begin
  LerIni;
  edtPesquisa.SetFocus;
end;

procedure TufrmPrincipal.GravarIni;
var
ArqINI : TIniFile;
begin
 ArqINI := TIniFile.Create(ExtractFilePath(ParamStr(0)) + ARQ_INI);
 try
  ArqINI.WriteInteger('[ETIQUETA]', 'Largura: ', edtLargura.AsInteger);
  ArqINI.WriteInteger('[ETIQUETA]', 'Altura: ', edtAltura.AsInteger);
  ArqINI.WriteFloat('[MARGEM]', 'Superior: ', edtSuperior.Value);
  ArqINI.WriteFloat('[MARGEM]', 'Inferior: ', edtInferior.Value);
  ArqINI.WriteFloat('[MARGEM]', 'Esquedo: ', edtEsquerda.Value);
  ArqINI.WriteFloat('[MARGEM]', 'Direito: ', edtDireita.Value);
 finally
   FreeAndNil(ArqINI);
 end;
end;

procedure TufrmPrincipal.LerIni;
var
ArqINI : TIniFile;
begin
 ArqINI := TIniFile.Create(ExtractFilePath(ParamStr(0)) + ARQ_INI);
 try
  edtLargura.AsInteger := ArqINI.ReadInteger('[ETIQUETA]', 'Largura: ', 85);
  edtAltura.AsInteger := ArqINI.ReadInteger('[ETIQUETA]', 'Altura: ', 85);
  edtSuperior.Value := ArqINI.ReadFloat('[MARGEM]', 'Superior: ', 0.25);
  edtInferior.Value := ArqINI.ReadFloat('[MARGEM]', 'Inferior: ', 0.25);
  edtEsquerda.Value := ArqINI.ReadFloat('[MARGEM]', 'Esquedo: ', 0.25);
  edtDireita.Value := ArqINI.ReadFloat('[MARGEM]', 'Direito: ', 0.25);
 finally
  FreeAndNil(ArqINI);
 end;

end;

end.
