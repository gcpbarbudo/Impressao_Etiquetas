object ufrmPrincipal: TufrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'C'#243'digo de Barras'
  ClientHeight = 654
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 368
    Height = 131
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 119
      Height = 13
      Caption = 'Digite o c'#243'digo de barras'
    end
    object bntCapturar: TButton
      Left = 16
      Top = 55
      Width = 337
      Height = 34
      Action = acCapturar
      TabOrder = 0
    end
    object edtPesquisa: TEdit
      Left = 16
      Top = 28
      Width = 337
      Height = 21
      TabOrder = 1
      OnKeyPress = edtPesquisaKeyPress
    end
    object btnLImpar: TButton
      Left = 16
      Top = 95
      Width = 161
      Height = 25
      Action = acLimpar
      TabOrder = 2
    end
    object btnImprimir: TButton
      Left = 192
      Top = 95
      Width = 161
      Height = 25
      Action = acImprimir
      TabOrder = 3
    end
  end
  object pnlTotal: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 630
    Width = 362
    Height = 21
    Align = alBottom
    Caption = 'Sem Contagem'
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 141
    Width = 348
    Height = 349
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    Caption = 'C'#243'digos Capturados'
    TabOrder = 2
    object dbdCodigos: TDBGrid
      AlignWithMargins = True
      Left = 12
      Top = 25
      Width = 324
      Height = 312
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      DataSource = dsdados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 500
    Width = 348
    Height = 117
    Margins.Left = 10
    Margins.Top = 0
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    Caption = 'Configura'#231#227'o da etiqueta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label2: TLabel
      Left = 16
      Top = 21
      Width = 37
      Height = 13
      Caption = 'Largura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 66
      Width = 29
      Height = 13
      Caption = 'Altura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtLargura: TJvSpinEdit
      Left = 16
      Top = 38
      Width = 50
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtAltura: TJvSpinEdit
      Left = 16
      Top = 83
      Width = 50
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox3: TGroupBox
      Left = 75
      Top = 21
      Width = 246
      Height = 84
      Caption = 'Margens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label4: TLabel
        Left = 16
        Top = 29
        Width = 40
        Height = 13
        Caption = 'Superior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 72
        Top = 29
        Width = 36
        Height = 13
        Caption = 'Inferior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 128
        Top = 29
        Width = 45
        Height = 13
        Caption = 'Esquerda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 184
        Top = 29
        Width = 31
        Height = 13
        Caption = 'Direita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtSuperior: TJvSpinEdit
        Left = 16
        Top = 46
        Width = 50
        Height = 21
        ValueType = vtFloat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtInferior: TJvSpinEdit
        Left = 72
        Top = 46
        Width = 50
        Height = 21
        ValueType = vtFloat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtEsquerda: TJvSpinEdit
        Left = 128
        Top = 46
        Width = 50
        Height = 21
        ValueType = vtFloat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edtDireita: TJvSpinEdit
        Left = 184
        Top = 46
        Width = 50
        Height = 21
        ValueType = vtFloat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object cdsdados: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsdadosAfterPost
    OnNewRecord = cdsdadosNewRecord
    Left = 208
    Top = 441
    object cdsdadosSEQ: TIntegerField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'SEQ'
    end
    object cdsdadosCODIGO: TStringField
      DisplayWidth = 40
      FieldName = 'CODIGO'
      Size = 50
    end
  end
  object Action: TActionList
    Left = 304
    Top = 440
    object acCapturar: TAction
      Caption = 'Capturar'
      OnExecute = acCapturarExecute
    end
    object acImprimir: TAction
      Caption = 'Imprimir'
      OnExecute = acImprimirExecute
    end
    object acLimpar: TAction
      Caption = 'Limpar'
      OnExecute = acLimparExecute
    end
  end
  object dsdados: TDataSource
    DataSet = cdsdados
    Left = 256
    Top = 441
  end
end
