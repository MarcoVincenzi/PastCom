object Exposição: TExposição
  Left = 0
  Top = 0
  Caption = 'Visita'
  ClientHeight = 202
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 201
    TabOrder = 0
    object lblDHEntrada: TLabel
      Left = 16
      Top = 160
      Width = 3
      Height = 13
    end
    object lblDHSaida: TLabel
      Left = 206
      Top = 160
      Width = 3
      Height = 13
    end
    object Exposição: TLabeledEdit
      Left = 16
      Top = 32
      Width = 177
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Exposi'#231#227'o'
      TabOrder = 0
    end
    object Pessoa: TLabeledEdit
      Left = 16
      Top = 72
      Width = 265
      Height = 21
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Pessoa'
      TabOrder = 1
    end
    object btnEntrada: TButton
      Left = 16
      Top = 117
      Width = 75
      Height = 25
      Caption = 'Entrada'
      TabOrder = 2
      OnClick = btnEntradaClick
    end
    object btnSaida: TButton
      Left = 206
      Top = 117
      Width = 75
      Height = 25
      Caption = 'Sa'#237'da'
      TabOrder = 3
      OnClick = btnSaidaClick
    end
  end
end
