object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 519
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
    object FdqProdutodatacriacao: TDateField
      FieldName = 'datacriacao'
      Origin = 'datacriacao'
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
    Top = 312
    object FdqExposicaoid: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FdqExposicaodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 38
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
    object FdqExposicaoinicio: TDateField
      DisplayLabel = 'In'#237'cio'
      FieldName = 'inicio'
      Origin = 'inicio'
    end
    object FdqExposicaofim: TDateField
      DisplayLabel = 'Fim'
      FieldName = 'fim'
      Origin = 'fim'
    end
  end
  object DsExposicao: TDataSource
    DataSet = FdqExposicao
    Left = 128
    Top = 312
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
  object FdqExposicaoItem: TFDQuery
    IndexFieldNames = 'exposicaoid;objetoid'
    Connection = FDConnection1
    SQL.Strings = (
      'select * from exposicaoitem')
    Left = 48
    Top = 368
    object FdqExposicaoItemexposicaoid: TIntegerField
      FieldName = 'exposicaoid'
      Origin = 'exposicaoid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FdqExposicaoItemobjetoid: TIntegerField
      FieldName = 'objetoid'
      Origin = 'objetoid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object DsExposicaoItem: TDataSource
    DataSet = FdqExposicaoItem
    Left = 128
    Top = 368
  end
  object FdqAuxExposicaoItem: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select o.id, o.descricao'
      '  from exposicaoitem e'
      '  inner join objeto o on o.id = e.objetoid'
      '  where e.exposicaoid = :Exposicao')
    Left = 48
    Top = 424
    ParamData = <
      item
        Name = 'EXPOSICAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FdqAuxExposicaoItemid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object FdqAuxExposicaoItemdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
  end
  object DsAuxExposicaoItem: TDataSource
    DataSet = FdqAuxExposicaoItem
    Left = 128
    Top = 424
  end
  object FdqRelatorio: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select i.descricao as instituicao, s.descricao as setor, t.descr' +
        'icao as tipo, o.id as codigo, o.descricao as descricao, '
      '       o.datacriacao, a.descricao as autor, o.aquisicao '
      '  from objeto o'
      ' inner join setor s on s.id = o.setorid'
      ' inner join tipo t on t.id = o.tipoid'
      ' inner join autor a on a.id = o.autorid'
      ' inner join instituicao i on i.id = o.instituicaoid'
      'where s.id = :Setor'
      '  and t.id = :Tipo')
    Left = 232
    Top = 256
    ParamData = <
      item
        Name = 'SETOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end
      item
        Name = 'TIPO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FdqRelatorioinstituicao: TWideStringField
      FieldName = 'instituicao'
      Origin = 'instituicao'
      Size = 40
    end
    object FdqRelatoriosetor: TWideStringField
      FieldName = 'setor'
      Origin = 'setor'
      Size = 40
    end
    object FdqRelatoriotipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 40
    end
    object FdqRelatoriocodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object FdqRelatoriodescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
    object FdqRelatoriodatacriacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datacriacao'
      Origin = 'datacriacao'
    end
    object FdqRelatorioautor: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'autor'
      Origin = 'autor'
      Size = 40
    end
    object FdqRelatorioaquisicao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'aquisicao'
      Origin = 'aquisicao'
    end
  end
  object DsRelatorio: TDataSource
    DataSet = FdqRelatorio
    Left = 312
    Top = 256
  end
end
