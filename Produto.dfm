object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 539
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 539
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 506
    ExplicitWidth = 539
    ExplicitHeight = 185
    object DBGrid1: TDBGrid
      Left = 24
      Top = 24
      Width = 320
      Height = 120
      DataSource = DataModule1.DsProduto
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
