unit Tipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components, DataModule,
  Data.Bind.DBScope, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, frameBotoes;

type
  TFrmTipo = class(TForm)
    DBGrid1: TDBGrid;
    FrmBotoes1: TFrmBotoes;
    EdtCodigo: TLabeledEdit;
    EdtDescricao: TLabeledEdit;
    Panel: TPanel;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmBotoes1btnNovoClick(Sender: TObject);
    procedure FrmBotoes1btnSalvarClick(Sender: TObject);
    procedure FrmBotoes1btnEditarClick(Sender: TObject);
    procedure FrmBotoes1btnExcluirClick(Sender: TObject);
  private
    procedure ControlarCampos(AHabilitar: Boolean; AHabilitarCodigo: Boolean = False; ALimpar: Boolean = True);
    procedure ControlarBotoes(ABotao: TObject = nil);

    procedure FdqTipoAfterScroll(ADataSet: TDataSet);
  end;

var
  FrmTipo: TFrmTipo;

implementation

{$R *.dfm}

procedure TFrmTipo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.FdqTipo.Active := False;
end;

procedure TFrmTipo.FormShow(Sender: TObject);
begin
  DataModule1.FdqTipo.Active := True;

  DataModule1.FdqTipo.AfterScroll := FdqTipoAfterScroll;

  ControlarBotoes;
end;

procedure TFrmTipo.FdqTipoAfterScroll(ADataSet: TDataSet);
begin
  ControlarCampos(False, False, False);
end;

procedure TFrmTipo.FrmBotoes1btnEditarClick(Sender: TObject);
begin
  ControlarCampos(True);
  ControlarBotoes(Sender);

  DataModule1.FdqTipo.Edit;

  EdtDescricao.SetFocus;
end;

procedure TFrmTipo.FrmBotoes1btnExcluirClick(Sender: TObject);
begin
  DataModule1.FdqTipo.Delete;
  DataModule1.FdqTipo.Refresh;

  ControlarBotoes;
  ControlarCampos(False, False, False);

  DBGrid1.SetFocus;
end;

procedure TFrmTipo.FrmBotoes1btnNovoClick(Sender: TObject);
begin
  DataModule1.FdqTipo.Append;

  ControlarBotoes(Sender);
  ControlarCampos(True, True);

  EdtDescricao.SetFocus;
end;

procedure TFrmTipo.FrmBotoes1btnSalvarClick(Sender: TObject);
begin
  if (Trim(EdtDescricao.Text) <> '') then
  begin
    DataModule1.FdqTipo.Post;
    DataModule1.FdqTipo.Refresh;

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

procedure TFrmTipo.ControlarBotoes(ABotao: TObject);
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

procedure TFrmTipo.ControlarCampos(AHabilitar: Boolean; AHabilitarCodigo: Boolean;
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
