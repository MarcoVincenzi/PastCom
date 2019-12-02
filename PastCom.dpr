program PastCom;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  Setor in 'Setor.pas' {FrmSetor},
  Pessoa in 'Pessoa.pas' {FrmPessoa},
  frameBotoes in 'frameBotoes.pas' {FrmBotoes: TFrame},
  Produto in 'Produto.pas' {FrmProduto},
  Explosicao in 'Explosicao.pas' {Form2},
  Tipo in 'Tipo.pas' {FrmTipo},
  Autor in 'Autor.pas' {FrmAutor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmProduto, FrmProduto);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFrmTipo, FrmTipo);
  Application.CreateForm(TFrmAutor, FrmAutor);
  Application.Run;
end.
