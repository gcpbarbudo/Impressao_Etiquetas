unit ufrm_impressao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLBarcode, Data.DB,
  Vcl.StdCtrls, Vcl.ExtCtrls, RLRichText;

type
  Tfrm_impressao = class(TForm)
    rlEtiqueta: TRLReport;
    RLBand1: TRLBand;
    rlBarCode: TRLDBBarcode;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_impressao: Tfrm_impressao;

implementation

{$R *.dfm}

uses uPrincipal;

end.
