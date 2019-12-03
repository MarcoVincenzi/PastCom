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
    ExplicitLeft = 8
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 783
      Height = 105
      Align = alTop
      Caption = 'Produto'
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 777
      object BtnSetor: TSpeedButton
        Left = 8
        Top = 19
        Width = 105
        Height = 78
        Caption = 'Setor'
        OnClick = BtnSetorClick
      end
      object SpeedButton3: TSpeedButton
        Left = 119
        Top = 19
        Width = 105
        Height = 78
        Caption = 'Tipo'
        OnClick = SpeedButton3Click
      end
      object BtnProduto: TSpeedButton
        Left = 341
        Top = 19
        Width = 105
        Height = 78
        Caption = 'Produto'
        OnClick = BtnProdutoClick
      end
      object BtnAutor: TSpeedButton
        Left = 230
        Top = 19
        Width = 105
        Height = 78
        Caption = 'Autor'
        OnClick = BtnAutorClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 106
      Width = 783
      Height = 105
      Align = alTop
      Caption = 'Visitantes'
      TabOrder = 1
      ExplicitLeft = 64
      ExplicitTop = 144
      ExplicitWidth = 185
      object BtnPessoa: TSpeedButton
        Left = 8
        Top = 17
        Width = 105
        Height = 78
        Caption = 'Visitantes'
        OnClick = BtnPessoaClick
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 211
      Width = 783
      Height = 105
      Align = alTop
      Caption = 'Exposi'#231#245'es'
      TabOrder = 2
      ExplicitLeft = 80
      ExplicitTop = 248
      ExplicitWidth = 185
      object EdtExposição: TSpeedButton
        Left = 8
        Top = 17
        Width = 105
        Height = 78
        Caption = 'Exposi'#231#227'o'
        OnClick = EdtExposiçãoClick
      end
      object BtnExposicaoItem: TSpeedButton
        Left = 119
        Top = 17
        Width = 105
        Height = 78
        Caption = 'Exposi'#231#227'o Item'
        OnClick = BtnExposicaoItemClick
      end
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 316
      Width = 783
      Height = 105
      Align = alTop
      Caption = 'Relat'#243'rios'
      TabOrder = 3
      ExplicitLeft = 0
      ExplicitTop = 312
      object BtnRelatorio: TSpeedButton
        Left = 8
        Top = 16
        Width = 105
        Height = 78
        Caption = 'Relat'#243'rio'
        OnClick = BtnRelatorioClick
      end
    end
  end
end
