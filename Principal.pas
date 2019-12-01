unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Setor, Pessoa;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BtnSetor: TSpeedButton;
    BtnPessoa: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure BtnSetorClick(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnPessoaClick(Sender: TObject);
begin
  FrmPessoa := TFrmPessoa.Create(self);
  FrmPessoa.ShowModal;
end;

procedure TFrmPrincipal.BtnSetorClick(Sender: TObject);
begin
  FrmSetor := TFrmSetor.Create(self);
  FrmSetor.ShowModal;
end;

end.
