object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Exposi'#231#227'o'
  ClientHeight = 433
  ClientWidth = 381
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
    Width = 381
    Height = 433
    Align = alClient
    TabOrder = 0
    ExplicitTop = 32
    object LblCodigo: TLabel
      Left = 56
      Top = 160
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object LblDescreve: TLabel
      Left = 56
      Top = 195
      Width = 54
      Height = 13
      Caption = 'Descre'#231#227'o:'
    end
    object LblInicio: TLabel
      Left = 56
      Top = 241
      Width = 29
      Height = 13
      Caption = 'Inicio:'
    end
    object LblFim: TLabel
      Left = 56
      Top = 268
      Width = 20
      Height = 13
      Caption = 'Fim:'
    end
    object LblLocalizacao: TLabel
      Left = 56
      Top = 299
      Width = 58
      Height = 13
      Caption = 'Localiza'#231#227'o:'
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 16
      Width = 320
      Height = 120
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    inline FrmBotoes1: TFrmBotoes
      Left = 67
      Top = 351
      Width = 277
      Height = 82
      TabOrder = 1
      ExplicitLeft = 67
      ExplicitTop = 351
      inherited DBNavigator1: TDBNavigator
        Hints.Strings = ()
      end
    end
    object EdtCodigo: TEdit
      Left = 112
      Top = 157
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object EdtDescricao: TEdit
      Left = 112
      Top = 192
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object DtpInicioExp: TDateTimePicker
      Left = 112
      Top = 233
      Width = 186
      Height = 21
      Date = 43797.888333946760000000
      Time = 43797.888333946760000000
      TabOrder = 4
    end
    object DtpFimExp: TDateTimePicker
      Left = 112
      Top = 260
      Width = 186
      Height = 21
      Date = 43797.888366423610000000
      Time = 43797.888366423610000000
      TabOrder = 5
    end
    object CbLocalizacao: TComboBox
      Left = 112
      Top = 296
      Width = 145
      Height = 21
      TabOrder = 6
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FdqExposicao
    ScopeMappings = <>
    Left = 304
    Top = 208
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 308
    Top = 149
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'inicio'
      Control = DtpInicioExp
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'fim'
      Control = DtpFimExp
      Track = True
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'localizacaoid'
      Control = CbLocalizacao
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
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
