object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'PastCom'
  ClientHeight = 514
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 879
    Height = 514
    Align = alClient
    TabOrder = 0
    object GroupBox4: TGroupBox
      Left = 1
      Top = 421
      Width = 877
      Height = 105
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 466
      object BtnSobre: TSpeedButton
        Left = 8
        Top = 6
        Width = 105
        Height = 78
        Caption = 'Sobre'
        OnClick = BtnSobreClick
      end
    end
    object GroupBox5: TGroupBox
      Left = 1
      Top = 316
      Width = 877
      Height = 105
      Align = alTop
      Caption = 'Relat'#243'rios'
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 417
      object BtnRelatorio: TSpeedButton
        Left = 8
        Top = 16
        Width = 105
        Height = 78
        Caption = 'Relat'#243'rio'
        OnClick = BtnRelatorioClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 211
      Width = 877
      Height = 105
      Align = alTop
      Caption = 'Visitantes'
      TabOrder = 2
      ExplicitTop = 421
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
      Top = 106
      Width = 877
      Height = 105
      Align = alTop
      Caption = 'Exposi'#231#245'es'
      TabOrder = 3
      ExplicitTop = 211
      object EdtExposição: TSpeedButton
        Left = 8
        Top = 21
        Width = 105
        Height = 78
        Caption = 'Exposi'#231#227'o'
        OnClick = EdtExposiçãoClick
      end
      object BtnExposicaoItem: TSpeedButton
        Left = 119
        Top = 21
        Width = 105
        Height = 78
        Caption = 'Exposi'#231#227'o Item'
        OnClick = BtnExposicaoItemClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 877
      Height = 105
      Align = alTop
      Caption = 'Produto'
      TabOrder = 4
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
        Top = 21
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
  end
end
