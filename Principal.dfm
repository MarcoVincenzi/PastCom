object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'PastCom'
  ClientHeight = 518
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 518
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 57
      Height = 13
      AutoSize = False
      Caption = 'Cadastros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnSetor: TSpeedButton
      Left = 0
      Top = 19
      Width = 105
      Height = 78
      Caption = 'Setor'
      OnClick = BtnSetorClick
    end
    object SpeedButton2: TSpeedButton
      Left = 111
      Top = 19
      Width = 105
      Height = 78
      Caption = 'Pessoa1'
    end
    object SpeedButton3: TSpeedButton
      Left = 222
      Top = 19
      Width = 105
      Height = 78
      Caption = 'Pessoa2'
    end
    object SpeedButton4: TSpeedButton
      Left = 333
      Top = 19
      Width = 105
      Height = 78
      Caption = 'Pessoa3'
    end
  end
end
