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
    object FdqSetor_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      KeyFields = 'id'
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
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 15
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FdqPessoanome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 65
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object FdqPessoacpf: TIntegerField
      DisplayLabel = 'CPF'
      DisplayWidth = 13
      FieldName = 'cpf'
      Origin = 'cpf'
      Visible = False
    end
    object FdqPessoanascimento: TDateField
      DisplayLabel = 'Nascimento'
      DisplayWidth = 12
      FieldName = 'nascimento'
      Origin = 'nascimento'
      Visible = False
    end
    object FdqPessoasexo: TWideStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 17
      FieldName = 'sexo'
      Origin = 'sexo'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DsPessoa: TDataSource
    DataSet = FdqPessoa
    Left = 112
    Top = 144
  end
  object FdqEndereco: TFDQuery
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evRecordCountMode, evDetailCascade, evDetailServerCascade]
    SQL.Strings = (
      'select * from localizacao')
    Left = 48
    Top = 200
    object FdqEnderecoid: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FdqEnderecorua: TWideStringField
      DisplayLabel = 'Rua'
      FieldName = 'rua'
      Origin = 'rua'
      Size = 40
    end
    object FdqEndereconumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Origin = 'numero'
    end
    object FdqEnderecobairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object FdqEnderecocomplemento: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento'
      Origin = 'complemento'
    end
    object FdqEnderecocidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 40
    end
    object FdqEnderecoestado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Origin = 'estado'
      FixedChar = True
      Size = 2
    end
    object FdqEnderecocep: TIntegerField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Origin = 'cep'
    end
    object FdqEnderecoidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
  end
  object DsEndereco: TDataSource
    DataSet = FdqEndereco
    Left = 112
    Top = 200
  end
end
