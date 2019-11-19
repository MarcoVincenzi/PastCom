object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 416
  Width = 422
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = 'C:\PastCom\Win64\Debug'
    Left = 48
    Top = 16
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=museu'
      'User_Name=postgres'
      'Password=postgres'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 152
    Top = 16
  end
  object FdqSetor: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select id, descricao from setor')
    Left = 48
    Top = 88
  end
  object DsSetor: TDataSource
    DataSet = FdqSetor
    Left = 112
    Top = 88
  end
end
