program PastCom;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  Setor in 'Setor.pas' {FrmSetor},
  Pessoa in 'Pessoa.pas' {FrmPessoa},
  frameBotoes in 'frameBotoes.pas' {FrmBotoes: TFrame},
  Produto in 'Produto.pas' {FrmProduto},
  Exposicao in 'Exposicao.pas' {FrmExposicao},
  Tipo in 'Tipo.pas' {FrmTipo},
  Autor in 'Autor.pas' {FrmAutor},
  ExposicaoItem in 'ExposicaoItem.pas' {FrmExposicaoItem},
  Relatorio in 'Relatorio.pas' {FrmRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmProduto, FrmProduto);
  Application.CreateForm(TFrmExposicao, FrmExposicao);
  Application.CreateForm(TFrmTipo, FrmTipo);
  Application.CreateForm(TFrmAutor, FrmAutor);
  Application.CreateForm(TFrmExposicaoItem, FrmExposicaoItem);
  Application.CreateForm(TFrmRelatorio, FrmRelatorio);
  Application.Run;
end.
