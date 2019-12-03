object FrmExposicaoItem: TFrmExposicaoItem
  Left = 0
  Top = 0
  Caption = 'Exposi'#231#227'o'
  ClientHeight = 352
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 512
    Height = 352
    Align = alClient
    TabOrder = 0
    object LblExposicao: TLabel
      Left = 16
      Top = 217
      Width = 37
      Height = 13
      Caption = 'Objeto:'
      Enabled = False
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 67
      Width = 510
      Height = 136
      Align = alTop
      DataSource = DataModule1.DsAuxExposicaoItem
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    inline FrmBotoes1: TFrmBotoes
      Left = 1
      Top = 269
      Width = 510
      Height = 82
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 269
      ExplicitWidth = 510
      inherited DBNavigator1: TDBNavigator
        Left = 120
        Hints.Strings = ()
        ExplicitLeft = 120
      end
      inherited btnNovo: TButton
        Left = 120
        OnClick = FrmBotoes1btnNovoClick
        ExplicitLeft = 120
      end
      inherited btnSalvar: TButton
        Left = 240
        OnClick = FrmBotoes1btnSalvarClick
        ExplicitLeft = 240
      end
      inherited btnEditar: TButton
        Left = 180
        Enabled = False
        ExplicitLeft = 180
      end
      inherited btnExcluir: TButton
        Left = 300
        OnClick = FrmBotoes1btnExcluirClick
        ExplicitLeft = 300
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 510
      Height = 66
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 2
      object Label1: TLabel
        Left = 15
        Top = 12
        Width = 52
        Height = 13
        Caption = 'Exposi'#231#227'o:'
      end
      object CmbExposicao: TComboBox
        Left = 15
        Top = 28
        Width = 474
        Height = 21
        TabOrder = 0
        Text = 'teste de exposi'#231#227'o'
        OnChange = CmbExposicaoChange
      end
    end
    object CmbProduto: TComboBox
      Left = 16
      Top = 232
      Width = 474
      Height = 21
      Enabled = False
      TabOrder = 3
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FdqExposicao
    ScopeMappings = <>
    Left = 312
    Top = 176
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 212
    Top = 141
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = CmbExposicao
      Track = True
      FillDataSource = BindSourceDB1
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField2: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = CmbProduto
      Track = True
      FillDataSource = BindSourceDB3
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.FdqExposicaoItem
    ScopeMappings = <>
    Left = 360
    Top = 136
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = DataModule1.FdqProduto
    ScopeMappings = <>
    Left = 408
    Top = 184
  end
end
