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
    LblCodigo: TLabel;
    LblDescricao: TLabel;
    DBGrid1: TDBGrid;
    FrmBotoes1: TFrmBotoes;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmBotoes1btnNovoClick(Sender: TObject);
    procedure FrmBotoes1btnSalvarClick(Sender: TObject);
    procedure FrmBotoes1btnEditarClick(Sender: TObject);
    procedure FrmBotoes1btnExcluirClick(Sender: TObject);
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

procedure TFrmSetor.FrmBotoes1btnEditarClick(Sender: TObject);
begin
  DataModule1.FdqSetor.Edit;
end;

procedure TFrmSetor.FrmBotoes1btnExcluirClick(Sender: TObject);
begin
  DataModule1.FdqSetor.Delete;
end;

procedure TFrmSetor.FrmBotoes1btnNovoClick(Sender: TObject);
begin
  DataModule1.FdqSetor.Insert;
end;

procedure TFrmSetor.FrmBotoes1btnSalvarClick(Sender: TObject);
begin
  DataModule1.FdqSetor.Post;
end;

end.
