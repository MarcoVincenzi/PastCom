object FrmSetor: TFrmSetor
  Left = 0
  Top = 0
  Caption = 'Setor'
  ClientHeight = 326
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
    Height = 326
    Align = alClient
    TabOrder = 0
    object LblCodigo: TLabel
      Left = 16
      Top = 141
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object LblDescricao: TLabel
      Left = 16
      Top = 192
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 15
      Width = 345
      Height = 120
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
      Left = 0
      Top = 238
      Width = 281
      Height = 82
      TabOrder = 1
      ExplicitTop = 238
      ExplicitWidth = 281
      inherited DBNavigator1: TDBNavigator
        DataSource = DataModule1.DsSetor
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
      Top = 160
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = '2'
    end
    object EdtDescricao: TEdit
      Left = 16
      Top = 211
      Width = 345
      Height = 21
      Enabled = False
      TabOrder = 3
      Text = 'Setor 2'
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FdqSetor
    ScopeMappings = <>
    Left = 208
    Top = 152
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 284
    Top = 149
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
