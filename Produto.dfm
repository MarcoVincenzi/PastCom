object FrmProduto: TFrmProduto
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 397
  ClientWidth = 497
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
    Width = 497
    Height = 397
    Align = alClient
    TabOrder = 0
    object LblCodigo: TLabel
      Left = 15
      Top = 182
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      Enabled = False
    end
    object LblDescricao: TLabel
      Left = 127
      Top = 182
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
      Enabled = False
    end
    object LblAquisicao: TLabel
      Left = 127
      Top = 224
      Width = 89
      Height = 13
      Caption = 'Data de aquisi'#231#227'o:'
      Enabled = False
    end
    object LblTipo: TLabel
      Left = 15
      Top = 270
      Width = 65
      Height = 13
      Caption = 'Tipo Produto:'
      Enabled = False
    end
    object LblAutor: TLabel
      Left = 249
      Top = 224
      Width = 31
      Height = 13
      Caption = 'Autor:'
      Enabled = False
    end
    object LblSetor: TLabel
      Left = 249
      Top = 270
      Width = 82
      Height = 13
      Caption = 'Setor Localizado:'
      Enabled = False
    end
    object LblInstituicao: TLabel
      Left = 15
      Top = 138
      Width = 116
      Height = 13
      Caption = 'Institui'#231#227'o Pertencente:'
      Enabled = False
    end
    object LblCriacao: TLabel
      Left = 15
      Top = 224
      Width = 79
      Height = 13
      Caption = 'Data de cria'#231#227'o:'
      Enabled = False
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 495
      Height = 120
      Align = alTop
      DataSource = DataModule1.DsProduto
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object EdtCodigo: TEdit
      Left = 15
      Top = 197
      Width = 97
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object EdtDescricao: TEdit
      Left = 127
      Top = 197
      Width = 354
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object EdtAquisicao: TDateTimePicker
      Left = 127
      Top = 240
      Width = 97
      Height = 21
      Date = 43801.805988020830000000
      Time = 43801.805988020830000000
      Enabled = False
      TabOrder = 4
    end
    object CmbTipo: TComboBox
      Left = 15
      Top = 284
      Width = 216
      Height = 21
      Enabled = False
      TabOrder = 5
      Items.Strings = (
        'teste2'
        'rerereere')
    end
    object CmbAutor: TComboBox
      Left = 243
      Top = 240
      Width = 238
      Height = 21
      Enabled = False
      TabOrder = 6
      Items.Strings = (
        'Autor 1'
        'Autor 2'
        'Autor 3')
    end
    object CmbSetor: TComboBox
      Left = 244
      Top = 284
      Width = 237
      Height = 21
      Enabled = False
      TabOrder = 7
      Items.Strings = (
        'teste'
        'dadasd'
        'dsadasda'
        '25775257'
        'dfdsfsdf')
    end
    object CmbInstituicao: TComboBox
      Left = 15
      Top = 153
      Width = 466
      Height = 21
      Enabled = False
      TabOrder = 8
      Items.Strings = (
        'Museu da computa'#231#227'o')
    end
    inline FrmBotoes1: TFrmBotoes
      Left = 1
      Top = 314
      Width = 495
      Height = 82
      Align = alBottom
      TabOrder = 9
      ExplicitLeft = 1
      ExplicitTop = 314
      ExplicitWidth = 495
      inherited DBNavigator1: TDBNavigator
        Left = 122
        DataSource = DataModule1.DsProduto
        Hints.Strings = ()
        ExplicitLeft = 122
      end
      inherited btnNovo: TButton
        Left = 122
        OnClick = FrmBotoes1btnNovoClick
        ExplicitLeft = 122
      end
      inherited btnSalvar: TButton
        Left = 242
        OnClick = FrmBotoes1btnSalvarClick
        ExplicitLeft = 242
      end
      inherited btnEditar: TButton
        Left = 182
        OnClick = FrmBotoes1btnEditarClick
        ExplicitLeft = 182
      end
      inherited btnExcluir: TButton
        Left = 302
        OnClick = FrmBotoes1btnExcluirClick
        ExplicitLeft = 302
      end
    end
    object EdtCriacao: TDateTimePicker
      Left = 15
      Top = 240
      Width = 97
      Height = 21
      Date = 43801.805988020830000000
      Time = 43801.805988020830000000
      Enabled = False
      TabOrder = 3
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FdqProduto
    ScopeMappings = <>
    Left = 368
    Top = 24
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 292
    Top = 21
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
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'aquisicao'
      Control = EdtAquisicao
      Track = True
    end
    object LinkFillControlToField2: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'instituicaoid'
      Control = CmbInstituicao
      Track = True
      FillDataSource = BindSourceDB3
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField3: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'autorid'
      Control = CmbAutor
      Track = True
      FillDataSource = BindSourceDB4
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField4: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'setorid'
      Control = CmbSetor
      Track = True
      FillDataSource = BindSourceDB2
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tipoid'
      Control = CmbTipo
      Track = True
      FillDataSource = BindSourceDB5
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'datacriacao'
      Control = EdtCriacao
      Track = True
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.FdqSetor
    ScopeMappings = <>
    Left = 448
    Top = 24
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = DataModule1.FdqInstituicao
    ScopeMappings = <>
    Left = 448
    Top = 72
  end
  object BindSourceDB4: TBindSourceDB
    DataSet = DataModule1.FdqAutor
    ScopeMappings = <>
    Left = 288
    Top = 72
  end
  object BindSourceDB5: TBindSourceDB
    DataSet = DataModule1.FdqTipo
    ScopeMappings = <>
    Left = 368
    Top = 72
  end
end
