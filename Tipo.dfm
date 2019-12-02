object FrmTipo: TFrmTipo
  Left = 0
  Top = 0
  Caption = 'Tipo'
  ClientHeight = 308
  ClientWidth = 377
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
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 308
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 375
      Height = 120
      Align = alTop
      DataSource = DataModule1.DsTipo
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    inline FrmBotoes1: TFrmBotoes
      Left = 1
      Top = 225
      Width = 375
      Height = 82
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 225
      ExplicitWidth = 375
      inherited DBNavigator1: TDBNavigator
        Left = 56
        DataSource = DataModule1.DsSetor
        Hints.Strings = ()
        ExplicitLeft = 56
      end
      inherited btnNovo: TButton
        Left = 56
        OnClick = FrmBotoes1btnNovoClick
        ExplicitLeft = 56
      end
      inherited btnSalvar: TButton
        Left = 176
        OnClick = FrmBotoes1btnSalvarClick
        ExplicitLeft = 176
      end
      inherited btnEditar: TButton
        Left = 116
        OnClick = FrmBotoes1btnEditarClick
        ExplicitLeft = 116
      end
      inherited btnExcluir: TButton
        Left = 236
        OnClick = FrmBotoes1btnExcluirClick
        ExplicitLeft = 236
      end
    end
    object EdtCodigo: TLabeledEdit
      Left = 16
      Top = 144
      Width = 121
      Height = 21
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo:'
      Enabled = False
      TabOrder = 2
    end
    object EdtDescricao: TLabeledEdit
      Left = 16
      Top = 189
      Width = 345
      Height = 21
      EditLabel.Width = 50
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o:'
      Enabled = False
      TabOrder = 3
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 276
    Top = 133
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'id'
      Control = EdtCodigo
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'descricao'
      Control = EdtDescricao
      Track = True
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.FdqTipo
    ScopeMappings = <>
    Left = 176
    Top = 128
  end
end
