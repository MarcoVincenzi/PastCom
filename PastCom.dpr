program PastCom;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {PastCom};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPastCom, PastCom);
  Application.Run;
end.
