object FrmPessoa: TFrmPessoa
  Left = 0
  Top = 0
  Caption = 'Cadastro de pessoas'
  ClientHeight = 474
  ClientWidth = 554
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
    Width = 554
    Height = 474
    Align = alClient
    Alignment = taRightJustify
    TabOrder = 0
    object Label1: TLabel
      Left = 172
      Top = 200
      Width = 59
      Height = 13
      Caption = 'Nascimento:'
      Enabled = False
    end
    inline FrmBotoes1: TFrmBotoes
      Left = 1
      Top = 391
      Width = 552
      Height = 82
      Align = alBottom
      TabOrder = 7
      ExplicitLeft = 1
      ExplicitTop = 391
      ExplicitWidth = 552
      inherited DBNavigator1: TDBNavigator
        Left = 152
        DataSource = DataModule1.DsPessoa
        Hints.Strings = ()
        ExplicitLeft = 152
      end
      inherited btnNovo: TButton
        Left = 152
        OnClick = FrmBotoes1btnNovoClick
        ExplicitLeft = 152
      end
      inherited btnSalvar: TButton
        Left = 272
        OnClick = FrmBotoes1btnSalvarClick
        ExplicitLeft = 272
      end
      inherited btnEditar: TButton
        Left = 212
        OnClick = FrmBotoes1btnEditarClick
        ExplicitLeft = 212
      end
      inherited btnExcluir: TButton
        Left = 332
        OnClick = FrmBotoes1btnExcluirClick
        ExplicitLeft = 332
      end
    end
    object EdtCodigo: TLabeledEdit
      Left = 16
      Top = 173
      Width = 89
      Height = 21
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo:'
      Enabled = False
      TabOrder = 1
    end
    object EdtNome: TLabeledEdit
      Left = 120
      Top = 173
      Width = 418
      Height = 21
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome:'
      Enabled = False
      TabOrder = 2
    end
    object EdtCpf: TLabeledEdit
      Left = 16
      Top = 214
      Width = 137
      Height = 21
      EditLabel.Width = 23
      EditLabel.Height = 13
      EditLabel.Caption = 'CPF:'
      Enabled = False
      NumbersOnly = True
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 242
      Width = 552
      Height = 149
      Align = alBottom
      Caption = 'Endere'#231'o'
      TabOrder = 6
      object EdtRua: TLabeledEdit
        Left = 15
        Top = 32
        Width = 434
        Height = 21
        EditLabel.Width = 23
        EditLabel.Height = 13
        EditLabel.Caption = 'Rua:'
        Enabled = False
        TabOrder = 0
      end
      object EdtComplemento: TLabeledEdit
        Left = 269
        Top = 72
        Width = 268
        Height = 21
        EditLabel.Width = 69
        EditLabel.Height = 13
        EditLabel.Caption = 'Complemento:'
        Enabled = False
        TabOrder = 3
      end
      object Edtbairro: TLabeledEdit
        Left = 15
        Top = 72
        Width = 243
        Height = 21
        EditLabel.Width = 32
        EditLabel.Height = 13
        EditLabel.Caption = 'Bairro:'
        Enabled = False
        TabOrder = 2
      end
      object EdtMunicipio: TLabeledEdit
        Left = 15
        Top = 112
        Width = 352
        Height = 21
        EditLabel.Width = 47
        EditLabel.Height = 13
        EditLabel.Caption = 'Munic'#237'pio:'
        Enabled = False
        TabOrder = 4
      end
      object EdtEstado: TLabeledEdit
        Left = 378
        Top = 112
        Width = 53
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'Estado:'
        Enabled = False
        TabOrder = 5
      end
      object EdtNumero: TLabeledEdit
        Left = 464
        Top = 32
        Width = 73
        Height = 21
        EditLabel.Width = 41
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#250'mero:'
        Enabled = False
        TabOrder = 1
      end
      object EdtCEP: TLabeledEdit
        Left = 440
        Top = 112
        Width = 97
        Height = 21
        EditLabel.Width = 23
        EditLabel.Height = 13
        EditLabel.Caption = 'CEP:'
        Enabled = False
        TabOrder = 6
      end
    end
    object RgbSexo: TRadioGroup
      Left = 353
      Top = 203
      Width = 185
      Height = 35
      Caption = 'Sexo:'
      Columns = 2
      Enabled = False
      Items.Strings = (
        'Masculino'
        'Feminino')
      TabOrder = 5
    end
    object EdtNascimento: TDateTimePicker
      Left = 172
      Top = 214
      Width = 149
      Height = 21
      Date = 43800.678985578710000000
      Time = 43800.678985578710000000
      Enabled = False
      TabOrder = 4
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 552
      Height = 144
      Align = alTop
      DataSource = DataModule1.DsPessoa
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FdqEndereco
    ScopeMappings = <>
    Left = 80
    Top = 392
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 140
    Top = 413
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cep'
      Control = EdtCEP
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'id'
      Control = EdtCodigo
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'nome'
      Control = EdtNome
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cpf'
      Control = EdtCpf
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'nascimento'
      Control = EdtNascimento
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'estado'
      Control = EdtEstado
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cidade'
      Control = EdtMunicipio
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'complemento'
      Control = EdtComplemento
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'bairro'
      Control = Edtbairro
      Track = True
    end
    object LinkControlToField10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'numero'
      Control = EdtNumero
      Track = True
    end
    object LinkControlToField11: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'rua'
      Control = EdtRua
      Track = True
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.FdqPessoa
    ScopeMappings = <>
    Left = 16
    Top = 392
  end
end
