object FrmSetor: TFrmSetor
  Left = 0
  Top = 0
  Caption = 'Setor'
  ClientHeight = 326
  ClientWidth = 361
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
    Width = 361
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
    object EdtCodigo: TDBEdit
      Left = 16
      Top = 160
      Width = 121
      Height = 21
      DataSource = DataModule1.DsSetor
      TabOrder = 0
    end
    object EdtDescricao: TDBEdit
      Left = 16
      Top = 211
      Width = 313
      Height = 21
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 15
      Width = 329
      Height = 120
      DataSource = DataModule1.DsSetor
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Descri'#231#227'o'
          Visible = True
        end>
    end
    inline FrmBotoes1: TFrmBotoes
      Left = 0
      Top = 238
      Width = 281
      Height = 82
      TabOrder = 3
      ExplicitTop = 238
      ExplicitWidth = 281
      inherited DBNavigator1: TDBNavigator
        DataSource = DataModule1.DsSetor
        Hints.Strings = ()
      end
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
    object LinkPropertyToFieldText: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'id'
      Component = EdtCodigo
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldText2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'descricao'
      Component = EdtDescricao
      ComponentProperty = 'Text'
    end
  end
end