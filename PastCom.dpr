program PastCom;

uses
  Vcl.Forms,
  Login in 'Login.pas' {frmLogin},
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
  Relatorio in 'Relatorio.pas' {FrmRelatorio},
  Sobre in 'Sobre.pas' {FrmSobre};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
