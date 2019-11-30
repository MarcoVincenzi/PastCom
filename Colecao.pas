unit Colecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmColecao = class(TForm)
    Panel1: TPanel;
    lblIdColecao: TLabeledEdit;
    lblDescricao: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmColecao: TFrmColecao;

implementation

{$R *.dfm}

end.
