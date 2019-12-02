object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 427
  Width = 413
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
    Left = 112
    Top = 16
  end
  object FdqSetor: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select id, descricao from setor')
    Left = 232
    Top = 80
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
    Left = 312
    Top = 80
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
    object FdqPessoacpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Visible = False
      Size = 15
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
    Left = 128
    Top = 144
  end
  object FdqProduto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from objeto')
    Left = 232
    Top = 192
    object FdqProdutoid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FdqProdutodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 65
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
    object FdqProdutoaquisicao: TDateField
      FieldName = 'aquisicao'
      Origin = 'aquisicao'
      Visible = False
    end
    object FdqProdutotipoid: TIntegerField
      FieldName = 'tipoid'
      Origin = 'tipoid'
      Visible = False
    end
    object FdqProdutoautorid: TIntegerField
      FieldName = 'autorid'
      Origin = 'autorid'
      Visible = False
    end
    object FdqProdutosetorid: TIntegerField
      FieldName = 'setorid'
      Origin = 'setorid'
      Visible = False
    end
    object FdqProdutoinstituicaoid: TIntegerField
      FieldName = 'instituicaoid'
      Origin = 'instituicaoid'
      Visible = False
    end
  end
  object DsProduto: TDataSource
    DataSet = FdqProduto
    Left = 312
    Top = 192
  end
  object FdqExposicao: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from exposicao')
    Left = 48
    Top = 352
    object FdqExposicaoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FdqExposicaodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
    object FdqExposicaoinicio: TDateField
      FieldName = 'inicio'
      Origin = 'inicio'
    end
    object FdqExposicaofim: TDateField
      FieldName = 'fim'
      Origin = 'fim'
    end
    object FdqExposicaolocalizacaoid: TIntegerField
      FieldName = 'localizacaoid'
      Origin = 'localizacaoid'
    end
  end
  object DsExposicao: TDataSource
    Left = 128
    Top = 352
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
    Left = 128
    Top = 200
  end
  object FdqInstituicao: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from instituicao')
    Left = 48
    Top = 80
    object FdqInstituicaoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FdqInstituicaodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
  end
  object DsInstituicao: TDataSource
    DataSet = FdqInstituicao
    Left = 128
    Top = 80
  end
  object FdqTipo: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tipo')
    Left = 232
    Top = 136
    object FdqTipoid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FdqTipodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
  end
  object DsTipo: TDataSource
    DataSet = FdqTipo
    Left = 312
    Top = 136
  end
  object FdqAutor: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from autor')
    Left = 48
    Top = 256
    object FdqAutorid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FdqAutordescricao: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
  end
  object DsAutor: TDataSource
    DataSet = FdqAutor
    Left = 128
    Top = 256
  end
end
