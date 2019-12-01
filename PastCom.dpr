program PastCom;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  Setor in 'Setor.pas' {FrmSetor},
  frameBotoes in 'frameBotoes.pas' {FrmBotoes: TFrame},
  Pessoa in 'Pessoa.pas' {FrmPessoa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
