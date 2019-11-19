unit Setor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, DataModule, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, frameBotoes;

type
  TFrmSetor = class(TForm)
    PnlArea: TPanel;
    EdtCodigo: TDBEdit;
    EdtDescricao: TDBEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LblCodigo: TLabel;
    LblDescricao: TLabel;
    DBGrid1: TDBGrid;
    FrmBotoes1: TFrmBotoes;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSetor: TFrmSetor;

implementation

{$R *.dfm}

procedure TFrmSetor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.FdqSetor.Active := False;
end;

procedure TFrmSetor.FormShow(Sender: TObject);
begin
  DataModule1.FdqSetor.Active := True;
end;

end.
