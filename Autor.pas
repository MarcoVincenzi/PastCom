unit Autor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components, DataModule,
  Data.Bind.DBScope, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, frameBotoes;

type
  TFrmAutor = class(TForm)
    FrmBotoes1: TFrmBotoes;
    EdtCodigo: TLabeledEdit;
    EdtNome: TLabeledEdit;
    Panel: TPanel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmBotoes1btnNovoClick(Sender: TObject);
    procedure FrmBotoes1btnSalvarClick(Sender: TObject);
    procedure FrmBotoes1btnEditarClick(Sender: TObject);
    procedure FrmBotoes1btnExcluirClick(Sender: TObject);
  private
    procedure ControlarCampos(AHabilitar: Boolean; AHabilitarCodigo: Boolean = False; ALimpar: Boolean = True);
    procedure ControlarBotoes(ABotao: TObject = nil);

    procedure FdqAutorAfterScroll(ADataSet: TDataSet);
  end;

var
  FrmAutor: TFrmAutor;

implementation

{$R *.dfm}

procedure TFrmAutor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.FdqAutor.Active := False;
end;

procedure TFrmAutor.FormShow(Sender: TObject);
begin
  DataModule1.FdqAutor.Active := True;

  DataModule1.FdqAutor.AfterScroll := FdqAutorAfterScroll;

  ControlarBotoes;
end;

procedure TFrmAutor.FdqAutorAfterScroll(ADataSet: TDataSet);
begin
  ControlarCampos(False, False, False);
end;

procedure TFrmAutor.FrmBotoes1btnEditarClick(Sender: TObject);
begin
  ControlarCampos(True);
  ControlarBotoes(Sender);

  DataModule1.FdqAutor.Edit;

  EdtNome.SetFocus;
end;

procedure TFrmAutor.FrmBotoes1btnExcluirClick(Sender: TObject);
begin
  DataModule1.FdqAutor.Delete;
  DataModule1.FdqAutor.Refresh;

  ControlarBotoes;
  ControlarCampos(False, False, False);

  DBGrid1.SetFocus;
end;

procedure TFrmAutor.FrmBotoes1btnNovoClick(Sender: TObject);
begin
  DataModule1.FdqAutor.Append;

  ControlarBotoes(Sender);
  ControlarCampos(True, True);

  EdtNome.SetFocus;
end;

procedure TFrmAutor.FrmBotoes1btnSalvarClick(Sender: TObject);
begin
  if (Trim(EdtNome.Text) <> '') then
  begin
    DataModule1.FdqAutor.Post;
    DataModule1.FdqAutor.Refresh;

    ControlarBotoes;
    ControlarCampos(False);

    DBGrid1.SetFocus;
  end
  else
  begin
    ShowMessage('Informe a descrição.');
    EdtNome.SetFocus;
  end;
end;

procedure TFrmAutor.ControlarBotoes(ABotao: TObject);
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

procedure TFrmAutor.ControlarCampos(AHabilitar: Boolean; AHabilitarCodigo: Boolean;
  ALimpar: Boolean);
begin
  EdtNome.Enabled := AHabilitar;

  if ((not(AHabilitar)) and (ALimpar)) then
  begin
    EdtCodigo.Clear;
    EdtNome.Clear;
  end;
end;

end.
