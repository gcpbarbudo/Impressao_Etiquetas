object frm_impressao: Tfrm_impressao
  Left = 0
  Top = 0
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Impress'#227'o Etiquetas'
  ClientHeight = 459
  ClientWidth = 1119
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object rlEtiqueta: TRLReport
    AlignWithMargins = True
    Left = 48
    Top = 29
    Width = 283
    Height = 299
    Margins.LeftMargin = 3.000000000000000000
    Margins.TopMargin = 3.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    Margins.BottomMargin = 0.250000000000000000
    AdjustableMargins = True
    DataSource = ufrmPrincipal.dsdados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 75.000000000000000000
    PageSetup.PaperHeight = 79.000000000000000000
    PreviewOptions.ShowModal = True
    object RLBand1: TRLBand
      Left = 11
      Top = 11
      Width = 261
      Height = 36
      Margins.LeftMargin = 0.250000000000000000
      Margins.RightMargin = 0.250000000000000000
      Margins.BottomMargin = 0.250000000000000000
      object rlBarCode: TRLDBBarcode
        Left = 1
        Top = 0
        Width = 259
        Height = 35
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
        Align = faClient
        Alignment = taCenter
        BarcodeType = bcCode128A
        DataField = 'CODIGO'
        DataSource = ufrmPrincipal.dsdados
        Ratio = 1.750000000000000000
        ShowText = boCode
      end
    end
  end
end
