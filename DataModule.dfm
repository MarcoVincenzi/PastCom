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
      'Password=postgre'
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
    object FdqSetor_id: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FdqSetor_descricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
  end
  object DsSetor: TDataSource
    DataSet = FdqSetor
    Left = 112
    Top = 88
  end
  object FdqPessoa: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Pessoa')
    Left = 48
    Top = 144
    object FdqPessoaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FdqPessoanome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object FdqPessoacpf: TIntegerField
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object FdqPessoanascimento: TDateField
      FieldName = 'nascimento'
      Origin = 'nascimento'
    end
    object FdqPessoasexo: TWideStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      FixedChar = True
      Size = 1
    end
    object FdqPessoalocalizacaoid: TIntegerField
      FieldName = 'localizacaoid'
      Origin = 'localizacaoid'
    end
  end
  object DsPessoa: TDataSource
    Left = 112
    Top = 144
  end
end
