unit Visita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TExposi��o = class(TForm)
    Panel1: TPanel;
    Exposi��o: TLabeledEdit;
    Pessoa: TLabeledEdit;
    btnEntrada: TButton;
    btnSaida: TButton;
    lblDHEntrada: TLabel;
    lblDHSaida: TLabel;
    procedure btnEntradaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Exposi��o: TExposi��o;

implementation

{$R *.dfm}

procedure TExposi��o.btnEntradaClick(Sender: TObject);
 begin
     lblDHEntrada.Caption := DateTimeToStr(Now);
 end;

end.
