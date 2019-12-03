unit Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  frameBotoes, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFrmProduto = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    EdtCodigo: TEdit;
    EdtDescricao: TEdit;
    LblCodigo: TLabel;
    LblDescricao: TLabel;
    LblAquisicao: TLabel;
    EdtAquisicao: TDateTimePicker;
    CmbTipo: TComboBox;
    CmbAutor: TComboBox;
    CmbSetor: TComboBox;
    CmbInstituicao: TComboBox;
    FrmBotoes1: TFrmBotoes;
    LblTipo: TLabel;
    LblAutor: TLabel;
    LblSetor: TLabel;
    LblInstituicao: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    LinkFillControlToField3: TLinkFillControlToField;
    LinkFillControlToField4: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB4: TBindSourceDB;
    BindSourceDB5: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    LblCriacao: TLabel;
    EdtCriacao: TDateTimePicker;
    LinkControlToField4: TLinkControlToField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmBotoes1btnNovoClick(Sender: TObject);
    procedure FrmBotoes1btnExcluirClick(Sender: TObject);
    procedure FrmBotoes1btnSalvarClick(Sender: TObject);
    procedure FrmBotoes1btnEditarClick(Sender: TObject);
  private

    procedure ControlarCampos(AHabilitar: Boolean; AHabilitarCodigo: Boolean = False;
      ALimpar: Boolean = True);
    procedure ControlarBotoes(ABotao: TObject = nil);
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}

uses DataModule;

procedure TFrmProduto.ControlarBotoes(ABotao: TObject);
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

procedure TFrmProduto.ControlarCampos(AHabilitar, AHabilitarCodigo, ALimpar: Boolean);
begin
  LblDescricao.Enabled := AHabilitar;
  LblCriacao.Enabled := AHabilitar;
  LblAquisicao.Enabled := AHabilitar;
  LblTipo.Enabled := AHabilitar;
  LblAutor.Enabled := AHabilitar;
  LblSetor.Enabled := AHabilitar;

  EdtDescricao.Enabled := AHabilitar;
  EdtCriacao.Enabled := AHabilitar;
  EdtAquisicao.Enabled := AHabilitar;
  CmbTipo.Enabled := AHabilitar;
  CmbAutor.Enabled := AHabilitar;
  CmbSetor.Enabled := AHabilitar;

  if ((not(AHabilitar)) and (ALimpar)) then
  begin
    EdtCodigo.Clear;
    EdtDescricao.Clear;
    EdtCriacao.Date := Now;
    EdtAquisicao.Date := Now;

    CmbTipo.ItemIndex := -1;
    CmbAutor.ItemIndex := -1;
    CmbSetor.ItemIndex := -1;
  end;
end;

procedure TFrmProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.FdqInstituicao.Active := False;
  DataModule1.FdqAutor.Active := False;
  DataModule1.FdqTipo.Active := False;
  DataModule1.FdqSetor.Active := False;
  DataModule1.FdqProduto.Active := False;

  FrmProduto := nil;
end;

procedure TFrmProduto.FormShow(Sender: TObject);
begin
  DataModule1.FdqInstituicao.Active := True;
  DataModule1.FdqAutor.Active := True;
  DataModule1.FdqTipo.Active := True;
  DataModule1.FdqSetor.Active := True;
  DataModule1.FdqProduto.Active := True;

  CmbInstituicao.ItemIndex := 0;

  ControlarBotoes;
end;

procedure TFrmProduto.FrmBotoes1btnEditarClick(Sender: TObject);
begin
  ControlarCampos(True);
  ControlarBotoes(Sender);

  DataModule1.FdqProduto.Edit;

  EdtDescricao.SetFocus;
end;

procedure TFrmProduto.FrmBotoes1btnExcluirClick(Sender: TObject);
begin
  DataModule1.FdqProduto.Delete;
  DataModule1.FdqProduto.Refresh;

  ControlarBotoes;
  ControlarCampos(False, False, False);

  DBGrid1.SetFocus;
end;

procedure TFrmProduto.FrmBotoes1btnNovoClick(Sender: TObject);
begin
  DataModule1.FdqProduto.Append;

  DataModule1.FdqProdutoinstituicaoid.AsInteger := 1;
  DataModule1.FdqProdutoaquisicao.AsDateTime := Now;

  ControlarBotoes(Sender);
  ControlarCampos(True);

  EdtCriacao.Date := Now;
  EdtAquisicao.Date := Now;
end;

procedure TFrmProduto.FrmBotoes1btnSalvarClick(Sender: TObject);
begin
  DataModule1.FdqProduto.Post;
  DataModule1.FdqProduto.Refresh;

  ControlarBotoes;
  ControlarCampos(False);

  DBGrid1.SetFocus;
end;

end.
