unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons,

  Setor, Pessoa, Tipo, Produto, Autor;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BtnSetor: TSpeedButton;
    BtnPessoa: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BtnProduto: TSpeedButton;
    BtnAutor: TSpeedButton;
    procedure BtnSetorClick(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BtnProdutoClick(Sender: TObject);
    procedure BtnAutorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnAutorClick(Sender: TObject);
begin
  FrmAutor := TFrmAutor.Create(self);
  FrmAutor.ShowModal;
end;

procedure TFrmPrincipal.BtnPessoaClick(Sender: TObject);
begin
  FrmPessoa := TFrmPessoa.Create(self);
  FrmPessoa.ShowModal;
end;

procedure TFrmPrincipal.BtnProdutoClick(Sender: TObject);
begin
  FrmProduto := TFrmProduto.Create(self);
  FrmProduto.ShowModal;
end;

procedure TFrmPrincipal.BtnSetorClick(Sender: TObject);
begin
  FrmSetor := TFrmSetor.Create(self);
  FrmSetor.ShowModal;
end;

procedure TFrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
  FrmTipo:= TFrmTipo.Create(self);
  FrmTipo.ShowModal;
end;

end.
