object FrmSetor: TFrmSetor
  Left = 0
  Top = 0
  Caption = 'Setor'
  ClientHeight = 307
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
  object PnlArea: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 307
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 375
      Height = 120
      Align = alTop
      DataSource = DataModule1.DsSetor
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
      Width = 375
      Height = 82
      Align = alBottom
      TabOrder = 3
      ExplicitLeft = 1
      ExplicitTop = 224
      ExplicitWidth = 375
      inherited DBNavigator1: TDBNavigator
        Left = 63
        DataSource = DataModule1.DsSetor
        Hints.Strings = ()
        ExplicitLeft = 63
      end
      inherited btnNovo: TButton
        Left = 63
        OnClick = FrmBotoes1btnNovoClick
        ExplicitLeft = 63
      end
      inherited btnSalvar: TButton
        Left = 183
        OnClick = FrmBotoes1btnSalvarClick
        ExplicitLeft = 183
      end
      inherited btnEditar: TButton
        Left = 123
        OnClick = FrmBotoes1btnEditarClick
        ExplicitLeft = 123
      end
      inherited btnExcluir: TButton
        Left = 243
        OnClick = FrmBotoes1btnExcluirClick
        ExplicitLeft = 243
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
      TabOrder = 1
      Text = '7'
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
      TabOrder = 2
      Text = 'teste'
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FdqSetor
    ScopeMappings = <>
    Left = 272
    Top = 128
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 196
    Top = 133
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'id'
      Control = EdtCodigo
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'descricao'
      Control = EdtDescricao
      Track = True
    end
  end
end
