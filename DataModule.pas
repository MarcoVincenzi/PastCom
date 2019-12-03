unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDConnection1: TFDConnection;
    FdqSetor: TFDQuery;
    DsSetor: TDataSource;
    FdqSetor_id: TIntegerField;
    FdqSetor_descricao: TWideStringField;
    FdqPessoa: TFDQuery;
    DsPessoa: TDataSource;
    FdqPessoaid: TIntegerField;
    FdqPessoanome: TWideStringField;
    FdqPessoanascimento: TDateField;
    FdqPessoasexo: TWideStringField;
    FdqEndereco: TFDQuery;
    DsEndereco: TDataSource;
    FdqEnderecoid: TIntegerField;
    FdqEnderecorua: TWideStringField;
    FdqEndereconumero: TIntegerField;
    FdqEnderecobairro: TWideStringField;
    FdqEnderecocomplemento: TWideStringField;
    FdqEnderecocidade: TWideStringField;
    FdqEnderecoestado: TWideStringField;
    FdqEnderecocep: TIntegerField;
    FdqEnderecoidpessoa: TIntegerField;
    FdqProduto: TFDQuery;
    DsProduto: TDataSource;
    FdqProdutoid: TIntegerField;
    FdqProdutodescricao: TWideStringField;
    FdqProdutoaquisicao: TDateField;
    FdqProdutotipoid: TIntegerField;
    FdqProdutoautorid: TIntegerField;
    FdqProdutosetorid: TIntegerField;
    FdqProdutoinstituicaoid: TIntegerField;
    FdqExposicao: TFDQuery;
    DsExposicao: TDataSource;
    FdqExposicaoid: TIntegerField;
    FdqExposicaodescricao: TWideStringField;
    FdqExposicaoinicio: TDateField;
    FdqExposicaofim: TDateField;
    FdqInstituicao: TFDQuery;
    DsInstituicao: TDataSource;
    FdqInstituicaoid: TIntegerField;
    FdqInstituicaodescricao: TWideStringField;
    FdqTipo: TFDQuery;
    FdqTipoid: TIntegerField;
    FdqTipodescricao: TWideStringField;
    DsTipo: TDataSource;
    FdqAutor: TFDQuery;
    DsAutor: TDataSource;
    FdqAutorid: TIntegerField;
    FdqAutordescricao: TWideStringField;
    FdqPessoacpf: TWideStringField;
    FdqExposicaoItem: TFDQuery;
    DsExposicaoItem: TDataSource;
    FdqAuxExposicaoItem: TFDQuery;
    DsAuxExposicaoItem: TDataSource;
    FdqExposicaoItemexposicaoid: TIntegerField;
    FdqExposicaoItemobjetoid: TIntegerField;
    FdqAuxExposicaoItemid: TIntegerField;
    FdqAuxExposicaoItemdescricao: TWideStringField;
    FdqProdutodatacriacao: TDateField;
    FdqRelatorio: TFDQuery;
    FdqRelatoriosetor: TWideStringField;
    FdqRelatoriotipo: TWideStringField;
    FdqRelatoriocodigo: TIntegerField;
    FdqRelatoriodescricao: TWideStringField;
    FdqRelatoriodatacriacao: TDateField;
    FdqRelatorioautor: TWideStringField;
    FdqRelatorioaquisicao: TDateField;
    DsRelatorio: TDataSource;
    FdqRelatorioinstituicao: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
