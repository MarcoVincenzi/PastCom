unit ExposicaoItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Vcl.StdCtrls, Vcl.ComCtrls, frameBotoes;

type
  TFrmExposicaoItem = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    FrmBotoes1: TFrmBotoes;
    Panel2: TPanel;
    CmbExposicao: TComboBox;
    CmbProduto: TComboBox;
    LblExposicao: TLabel;
    Label1: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    BindSourceDB3: TBindSourceDB;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmBotoes1btnNovoClick(Sender: TObject);
    procedure FrmBotoes1btnSalvarClick(Sender: TObject);
    procedure FrmBotoes1btnExcluirClick(Sender: TObject);
    procedure CmbExposicaoChange(Sender: TObject);
  private
    procedure ControlarCampos(AHabilitar: Boolean; AHabilitarCodigo: Boolean = False;
      ALimpar: Boolean = True);
    procedure ControlarBotoes(ABotao: TObject = nil);
  end;

var
  FrmExposicaoItem: TFrmExposicaoItem;

implementation

{$R *.dfm}

uses DataModule, strUtils;

procedure TFrmExposicaoItem.CmbExposicaoChange(Sender: TObject);
var
  IdExposicao: Integer;
begin
  TryStrToInt(LinkFillControlToField1.BindList.GetSelectedValue.AsString, IdExposicao);

  DataModule1.FdqAuxExposicaoItem.Close;
  DataModule1.FdqAuxExposicaoItem.ParamByName('Exposicao').AsInteger := IdExposicao;
  DataModule1.FdqAuxExposicaoItem.Open;
end;

procedure TFrmExposicaoItem.ControlarBotoes(ABotao: TObject);
begin
  if (ABotao = nil) then
  begin
    FrmBotoes1.btnNovo.Enabled := True;
    FrmBotoes1.btnSalvar.Enabled := False;
    FrmBotoes1.btnExcluir.Enabled := True;
  end
  else if (ABotao = FrmBotoes1.btnNovo) then
  begin
    FrmBotoes1.btnNovo.Enabled := False;
    FrmBotoes1.btnSalvar.Enabled := True;
    FrmBotoes1.btnExcluir.Enabled := True;
  end;
end;

procedure TFrmExposicaoItem.ControlarCampos(AHabilitar, AHabilitarCodigo, ALimpar: Boolean);
begin
  CmbProduto.Enabled := AHabilitar;
  LblExposicao.Enabled := AHabilitar;

  if ((not(AHabilitar)) and (ALimpar)) then
    CmbProduto.ItemIndex := -1;
end;

procedure TFrmExposicaoItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.FdqExposicao.Active := False;
  DataModule1.FdqExposicaoItem.Active := False;
  DataModule1.FdqProduto.Active := False;
  DataModule1.FdqAuxExposicaoItem.Active := False;
end;

procedure TFrmExposicaoItem.FormShow(Sender: TObject);
begin
  DataModule1.FdqExposicao.Active := True;
  DataModule1.FdqExposicaoItem.Active := True;
  DataModule1.FdqProduto.Active := True;


  CmbExposicao.Text := '';

  ControlarBotoes;
end;

procedure TFrmExposicaoItem.FrmBotoes1btnNovoClick(Sender: TObject);
begin
  ControlarBotoes(Sender);
  ControlarCampos(True, True);

  CmbProduto.SetFocus;
end;

procedure TFrmExposicaoItem.FrmBotoes1btnSalvarClick(Sender: TObject);
var
  IdExposicao, IdObjeto: Integer;
begin
  TryStrToInt(LinkFillControlToField1.BindList.GetSelectedValue.AsString, IdExposicao);
  TryStrToInt(LinkFillControlToField2.BindList.GetSelectedValue.AsString, IdObjeto);

  DataModule1.FdqExposicaoItem.Insert;
  DataModule1.FdqExposicaoItemexposicaoid.AsInteger := IdExposicao;
  DataModule1.FdqExposicaoItemobjetoid.AsInteger    := IdObjeto;
  DataModule1.FdqExposicaoItem.Post;

  DataModule1.FdqAuxExposicaoItem.Refresh;

  ControlarBotoes;
  ControlarCampos(False);

  DBGrid1.SetFocus;
end;

procedure TFrmExposicaoItem.FrmBotoes1btnExcluirClick(Sender: TObject);
var
  IdExposicao: Integer;
begin
  TryStrToInt(LinkFillControlToField1.BindList.GetSelectedValue.AsString, IdExposicao);

  if (DataModule1.FdqExposicaoItem.FindKey([IdExposicao, DataModule1.FdqAuxExposicaoItemid.AsInteger])) then
  begin
    DataModule1.FdqExposicaoItem.Delete;

    DataModule1.FdqAuxExposicaoItem.Refresh;

    ControlarBotoes;
    ControlarCampos(False, False, False);
  end;

  DBGrid1.SetFocus;
end;

end.
