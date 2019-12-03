unit Exposicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Vcl.StdCtrls, Vcl.ComCtrls, frameBotoes;

type
  TFrmExposicao = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    FrmBotoes1: TFrmBotoes;
    EdtCodigo: TEdit;
    EdtDescricao: TEdit;
    LblCodigo: TLabel;
    LblDescricao: TLabel;
    LblInicio: TLabel;
    LblFim: TLabel;
    EdtInicioExp: TDateTimePicker;
    EdtFimExp: TDateTimePicker;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
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
  end;

var
  FrmExposicao: TFrmExposicao;

implementation

{$R *.dfm}

uses DataModule;

procedure TFrmExposicao.ControlarBotoes(ABotao: TObject);
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

procedure TFrmExposicao.ControlarCampos(AHabilitar, AHabilitarCodigo, ALimpar: Boolean);
begin
  EdtDescricao.Enabled := AHabilitar;
  EdtInicioExp.Enabled := AHabilitar;
  EdtFimExp.Enabled := AHabilitar;

  LblDescricao.Enabled := AHabilitar;
  LblInicio.Enabled := AHabilitar;
  LblFim.Enabled := AHabilitar;

  if ((not(AHabilitar)) and (ALimpar)) then
  begin
    EdtCodigo.Clear;
    EdtDescricao.Clear;
    EdtInicioExp.Date := Now;
    EdtFimExp.Date := Now;
  end;
end;

procedure TFrmExposicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.FdqExposicao.Active := False;
end;

procedure TFrmExposicao.FormShow(Sender: TObject);
begin
  DataModule1.FdqExposicao.Active := True;

  ControlarBotoes;
end;

procedure TFrmExposicao.FrmBotoes1btnNovoClick(Sender: TObject);
begin
  DataModule1.FdqExposicao.Append;

  ControlarBotoes(Sender);
  ControlarCampos(True, True);

  EdtInicioExp.Date := Now;
  EdtFimExp.Date := Now;

  EdtDescricao.SetFocus;
end;

procedure TFrmExposicao.FrmBotoes1btnSalvarClick(Sender: TObject);
begin
  if (Trim(EdtDescricao.Text) <> '') then
  begin
    DataModule1.FdqExposicao.Post;
    DataModule1.FdqExposicao.Refresh;

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

procedure TFrmExposicao.FrmBotoes1btnEditarClick(Sender: TObject);
begin
  ControlarCampos(True);
  ControlarBotoes(Sender);

  DataModule1.FdqExposicao.Edit;

  EdtDescricao.SetFocus;
end;

procedure TFrmExposicao.FrmBotoes1btnExcluirClick(Sender: TObject);
begin
  DataModule1.FdqExposicao.Delete;
  DataModule1.FdqExposicao.Refresh;

  ControlarBotoes;
  ControlarCampos(False, False, False);

  DBGrid1.SetFocus;
end;

end.
