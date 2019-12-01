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
    DBGrid1: TDBGrid;
    FrmBotoes1: TFrmBotoes;
    EdtCodigo: TLabeledEdit;
    EdtDescricao: TLabeledEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmBotoes1btnNovoClick(Sender: TObject);
    procedure FrmBotoes1btnSalvarClick(Sender: TObject);
    procedure FrmBotoes1btnEditarClick(Sender: TObject);
    procedure FrmBotoes1btnExcluirClick(Sender: TObject);
  private
    procedure ControlarCampos(AHabilitar: Boolean; AHabilitarCodigo: Boolean = False;
      ALimpar: Boolean = True);
    procedure ControlarBotoes(ABotao: TObject = nil);

    procedure FdqSetorAfterScroll(ADataSet: TDataSet);
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

  DataModule1.FdqSetor.AfterScroll := FdqSetorAfterScroll;

  ControlarBotoes;
end;

procedure TFrmSetor.FdqSetorAfterScroll(ADataSet: TDataSet);
begin
  ControlarCampos(False, False, False);
end;

procedure TFrmSetor.FrmBotoes1btnEditarClick(Sender: TObject);
begin
  ControlarCampos(True);
  ControlarBotoes(Sender);

  DataModule1.FdqSetor.Edit;

  EdtDescricao.SetFocus;
end;

procedure TFrmSetor.FrmBotoes1btnExcluirClick(Sender: TObject);
begin
  DataModule1.FdqSetor.Delete;

  ControlarBotoes;
  ControlarCampos(False, False, False);

  DBGrid1.SetFocus;
end;

procedure TFrmSetor.FrmBotoes1btnNovoClick(Sender: TObject);
begin
  DataModule1.FdqSetor.Append;

  ControlarBotoes(Sender);
  ControlarCampos(True, True);

  EdtDescricao.SetFocus;
end;

procedure TFrmSetor.FrmBotoes1btnSalvarClick(Sender: TObject);
begin
  if (Trim(EdtDescricao.Text) <> '') then
  begin
    DataModule1.FdqSetor.Post;

    ControlarBotoes;
    ControlarCampos(False);

    DBGrid1.SetFocus;
  end
  else
  begin
    ShowMessage('Informe a descrição.');
    EdtDescricao.SetFocus;
  end;
end;

procedure TFrmSetor.ControlarBotoes(ABotao: TObject);
begin
  if (ABotao = nil) then
  begin
    FrmBotoes1.btnNovo.Enabled := True;
    FrmBotoes1.btnEditar.Enabled := True;
    FrmBotoes1.btnSalvar.Enabled := False;
    FrmBotoes1.btnExcluir.Enabled := True;
  end
  else if (ABotao = FrmBotoes1.btnNovo) then
  begin
    FrmBotoes1.btnNovo.Enabled := False;
    FrmBotoes1.btnEditar.Enabled := False;
    FrmBotoes1.btnSalvar.Enabled := True;
    FrmBotoes1.btnExcluir.Enabled := True;
  end
  else if (ABotao = FrmBotoes1.btnEditar) then
  begin
    FrmBotoes1.btnNovo.Enabled := False;
    FrmBotoes1.btnEditar.Enabled := False;
    FrmBotoes1.btnSalvar.Enabled := True;
    FrmBotoes1.btnExcluir.Enabled := False;
  end;
end;

procedure TFrmSetor.ControlarCampos(AHabilitar: Boolean; AHabilitarCodigo: Boolean;
  ALimpar: Boolean);
begin
  EdtDescricao.Enabled := AHabilitar;

  if ((not(AHabilitar)) and (ALimpar)) then
  begin
    EdtCodigo.Clear;
    EdtDescricao.Clear;
  end;
end;

end.
