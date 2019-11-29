object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 539
  ClientWidth = 340
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
    Width = 340
    Height = 539
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitWidth = 691
    object LblCodigo: TLabel
      Left = 88
      Top = 184
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 75
      Top = 216
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object LblAquisicao: TLabel
      Left = 40
      Top = 248
      Width = 90
      Height = 13
      Caption = 'Data da Aquisi'#231#227'o:'
    end
    object LblTipo: TLabel
      Left = 56
      Top = 304
      Width = 65
      Height = 13
      Caption = 'Tipo Produto:'
    end
    object LblAutor: TLabel
      Left = 88
      Top = 331
      Width = 31
      Height = 13
      Caption = 'Autor:'
    end
    object LblSetor: TLabel
      Left = 37
      Top = 358
      Width = 82
      Height = 13
      Caption = 'Setor Localizado:'
    end
    object LblInstituicao: TLabel
      Left = 5
      Top = 385
      Width = 116
      Height = 13
      Caption = 'Institui'#231#227'o Pertencente:'
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 24
      Width = 305
      Height = 120
      DataSource = DataModule1.DsProduto
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object EdtCodigo: TEdit
      Left = 136
      Top = 186
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object EdtDescreve: TEdit
      Left = 136
      Top = 213
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object DtpAquisicao: TDateTimePicker
      Left = 136
      Top = 240
      Width = 147
      Height = 21
      Date = 43797.873190231480000000
      Time = 43797.873190231480000000
      TabOrder = 3
    end
    object CbTipo: TComboBox
      Left = 136
      Top = 301
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object CbAutor: TComboBox
      Left = 136
      Top = 328
      Width = 145
      Height = 21
      TabOrder = 5
    end
    object CbSetor: TComboBox
      Left = 136
      Top = 355
      Width = 145
      Height = 21
      TabOrder = 6
    end
    object CbInstituicao: TComboBox
      Left = 136
      Top = 382
      Width = 145
      Height = 21
      TabOrder = 7
    end
    inline FrmBotoes1: TFrmBotoes
      Left = 24
      Top = 440
      Width = 277
      Height = 82
      TabOrder = 8
      ExplicitLeft = 24
      ExplicitTop = 440
      inherited DBNavigator1: TDBNavigator
        Hints.Strings = ()
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FdqProduto
    ScopeMappings = <>
    Left = 304
    Top = 304
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 300
    Top = 253
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
      Control = EdtDescreve
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'aquisicao'
      Control = DtpAquisicao
      Track = True
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tipoid'
      Control = CbTipo
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField2: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'instituicaoid'
      Control = CbInstituicao
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField3: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'autorid'
      Control = CbAutor
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField4: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'setorid'
      Control = CbSetor
      Track = True
      FillDataSource = BindSourceDB2
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.FdqSetor
    ScopeMappings = <>
    Left = 304
    Top = 360
  end
end
