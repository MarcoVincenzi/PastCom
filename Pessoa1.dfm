object Pessoa: TPessoa
  Left = 0
  Top = 0
  Caption = 'Pessoa'
  ClientHeight = 536
  ClientWidth = 301
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
    Width = 301
    Height = 536
    Align = alClient
    Alignment = taRightJustify
    TabOrder = 0
    ExplicitWidth = 606
    object LblCodigo: TLabel
      Left = 32
      Top = 196
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object LblNome: TLabel
      Left = 38
      Top = 223
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object LblCPF: TLabel
      Left = 46
      Top = 250
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object LblNascimento: TLabel
      Left = 1
      Top = 277
      Width = 68
      Height = 13
      Caption = 'Nascimaneto: '
    end
    object LblCodLoc: TLabel
      Left = 17
      Top = 405
      Width = 94
      Height = 13
      Caption = 'C'#243'digo Localiza'#231#227'o:'
    end
    inline FrmBotoes1: TFrmBotoes
      Left = 1
      Top = 424
      Width = 277
      Height = 82
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 424
      inherited DBNavigator1: TDBNavigator
        Hints.Strings = ()
      end
      inherited btnEditar: TButton
        Left = 143
        ExplicitLeft = 143
      end
    end
    object DbPessoa: TDBGrid
      Left = 32
      Top = 24
      Width = 217
      Height = 121
      DataSource = DataModule1.DsPessoa
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object EdtCodigo: TEdit
      Left = 75
      Top = 196
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object EdtNome: TEdit
      Left = 75
      Top = 223
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object DtpNascimento: TDateTimePicker
      Left = 75
      Top = 277
      Width = 186
      Height = 21
      Date = 43797.842196354170000000
      Time = 43797.842196354170000000
      TabOrder = 4
    end
    object MeCPF: TMaskEdit
      Left = 75
      Top = 250
      Width = 121
      Height = 21
      TabOrder = 5
      Text = '___.___.___-__'
    end
    object RgSexo: TRadioGroup
      Left = 75
      Top = 315
      Width = 185
      Height = 68
      Caption = 'Sexo:'
      Columns = 2
      Items.Strings = (
        'Masculino'
        'Feminino')
      TabOrder = 6
    end
    object EdtCodLoc: TEdit
      Left = 117
      Top = 402
      Width = 121
      Height = 21
      TabOrder = 7
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FdqPessoa
    ScopeMappings = <>
    Left = 256
    Top = 216
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 260
    Top = 173
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'nascimento'
      Control = DtpNascimento
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'nome'
      Control = EdtNome
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'id'
      Control = EdtCodigo
      Track = True
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'sexo'
      Component = RgSexo
      ComponentProperty = 'Caption'
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cpf'
      Control = MeCPF
      Track = False
    end
  end
end
