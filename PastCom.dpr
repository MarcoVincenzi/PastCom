program PastCom;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  Setor in 'Setor.pas' {FrmSetor},
  Pessoa in 'Pessoa.pas' {FrmPessoa},
  frameBotoes in 'frameBotoes.pas' {FrmBotoes: TFrame},
  Produto in 'Produto.pas' {Form1},
  Explosicao in 'Explosicao.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
