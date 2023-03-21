program LeitorCodigo;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {ufrmPrincipal},
  uOpcoes in 'uOpcoes.pas' {ufrmOpcoes},
  ufrm_impressao in 'ufrm_impressao.pas' {frm_impressao},
  udmCodigo_de_Barras in 'udmCodigo_de_Barras.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TufrmPrincipal, ufrmPrincipal);
  Application.CreateForm(TufrmOpcoes, ufrmOpcoes);
  Application.CreateForm(Tfrm_impressao, frm_impressao);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
