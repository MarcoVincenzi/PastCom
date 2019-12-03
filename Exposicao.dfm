object FrmExposicao: TFrmExposicao
  Left = 0
  Top = 0
  Caption = 'Exposi'#231#227'o'
  ClientHeight = 307
  ClientWidth = 448
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
    Width = 448
    Height = 307
    Align = alClient
    TabOrder = 0
    object LblCodigo: TLabel
      Left = 16
      Top = 143
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      Enabled = False
    end
    object LblDescricao: TLabel
      Left = 103
      Top = 143
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
      Enabled = False
    end
    object LblInicio: TLabel
      Left = 16
      Top = 184
      Width = 29
      Height = 13
      Caption = 'Inicio:'
      Enabled = False
    end
    object LblFim: TLabel
      Left = 127
      Top = 184
      Width = 20
      Height = 13
      Caption = 'Fim:'
      Enabled = False
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 446
      Height = 136
      Align = alTop
      DataSource = DataModule1.DsExposicao
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    inline FrmBotoes1: TFrmBotoes
      Left = 1
      Top = 224
      Width = 446
      Height = 82
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 224
      ExplicitWidth = 446
      inherited DBNavigator1: TDBNavigator
        Hints.Strings = ()
      end
      inherited btnNovo: TButton
        OnClick = FrmBotoes1btnNovoClick
      end
      inherited btnSalvar: TButton
        OnClick = FrmBotoes1btnSalvarClick
      end
      inherited btnEditar: TButton
        OnClick = FrmBotoes1btnEditarClick
      end
      inherited btnExcluir: TButton
        OnClick = FrmBotoes1btnExcluirClick
      end
    end
    object EdtCodigo: TEdit
      Left = 16
      Top = 157
      Width = 69
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object EdtDescricao: TEdit
      Left = 103
      Top = 157
      Width = 330
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object EdtInicioExp: TDateTimePicker
      Left = 16
      Top = 199
      Width = 98
      Height = 21
      Date = 43802.728516296290000000
      Time = 43802.728516296290000000
      Enabled = False
      TabOrder = 4
    end
    object EdtFimExp: TDateTimePicker
      Left = 126
      Top = 199
      Width = 83
      Height = 21
      Date = 43802.728516342590000000
      Time = 43802.728516342590000000
      Enabled = False
      TabOrder = 5
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FdqExposicao
    ScopeMappings = <>
    Left = 344
    Top = 392
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 340
    Top = 349
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'inicio'
      Control = EdtInicioExp
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'fim'
      Control = EdtFimExp
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'descricao'
      Control = EdtDescricao
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'id'
      Control = EdtCodigo
      Track = True
    end
  end
end
