object FrmTipo: TFrmTipo
  Left = 0
  Top = 0
  Caption = 'Tipo'
  ClientHeight = 326
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 329
    TabOrder = 0
    object LblCodTipo: TLabel
      Left = 16
      Top = 142
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object LblDescTipo: TLabel
      Left = 16
      Top = 196
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 16
      Width = 345
      Height = 120
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object EdtCodTipo: TDBEdit
      Left = 16
      Top = 161
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object EdtDescTipo: TDBEdit
      Left = 16
      Top = 215
      Width = 321
      Height = 21
      TabOrder = 2
    end
    inline FrmBotoes1: TFrmBotoes
      Left = 0
      Top = 234
      Width = 281
      Height = 82
      TabOrder = 3
      ExplicitTop = 234
      ExplicitWidth = 281
      inherited DBNavigator1: TDBNavigator
        DataSource = DataModule1.DsSetor
        Hints.Strings = ()
      end
      inherited btnEditar: TButton
        OnClick = FrmBotoes1btnEditarClick
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    ScopeMappings = <>
    Left = 200
    Top = 160
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 272
    Top = 160
  end
end
