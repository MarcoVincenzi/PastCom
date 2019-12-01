unit Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, frameBotoes, Vcl.ComCtrls, Vcl.Mask, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope;

type
  TFrmPessoa = class(TForm)
    Panel1: TPanel;
    FrmBotoes1: TFrmBotoes;
    EdtCodigo: TLabeledEdit;
    EdtNome: TLabeledEdit;
    EdtCpf: TLabeledEdit;
    GroupBox1: TGroupBox;
    RgbSexo: TRadioGroup;
    EdtRua: TLabeledEdit;
    EdtComplemento: TLabeledEdit;
    Edtbairro: TLabeledEdit;
    EdtMunicipio: TLabeledEdit;
    EdtEstado: TLabeledEdit;
    EdtNumero: TLabeledEdit;
    EdtCEP: TLabeledEdit;
    EdtNascimento: TDateTimePicker;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    LinkControlToField11: TLinkControlToField;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmBotoes1btnNovoClick(Sender: TObject);
    procedure FrmBotoes1btnSalvarClick(Sender: TObject);
    procedure FrmBotoes1btnEditarClick(Sender: TObject);
    procedure FrmBotoes1btnExcluirClick(Sender: TObject);
  private
    procedure ControlarCampos(AHabilitar: Boolean);

    procedure FdqPessoaAfterScroll(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  FrmPessoa: TFrmPessoa;

implementation

{$R *.dfm}

uses DataModule;

procedure TFrmPessoa.FdqPessoaAfterScroll(DataSet: TDataSet);
begin
  DataModule1.FdqEndereco.Locate('idpessoa', DataModule1.FdqPessoaid.AsInteger);
end;

procedure TFrmPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.FdqPessoa.AfterScroll := nil;

  DataModule1.FdqPessoa.Active := False;
  DataModule1.FdqEndereco.Active := False;

  FrmPessoa := nil;
end;

procedure TFrmPessoa.FormShow(Sender: TObject);
begin
  DataModule1.FdqPessoa.Active := True;
  DataModule1.FdqEndereco.Active := True;

  DataModule1.FdqPessoa.AfterScroll := FdqPessoaAfterScroll;
end;

procedure TFrmPessoa.FrmBotoes1btnEditarClick(Sender: TObject);
begin
  DataModule1.FdqPessoa.Edit;
  DataModule1.FdqEndereco.Edit;
end;

procedure TFrmPessoa.FrmBotoes1btnExcluirClick(Sender: TObject);
begin
  DataModule1.FdqEndereco.Delete;
  DataModule1.FdqPessoa.Delete;
end;

procedure TFrmPessoa.FrmBotoes1btnNovoClick(Sender: TObject);
begin
  DataModule1.FdqPessoa.Append;
  DataModule1.FdqEndereco.Append;

  EdtNome.SetFocus;
end;

procedure TFrmPessoa.FrmBotoes1btnSalvarClick(Sender: TObject);
begin
  if (RgbSexo.ItemIndex = 0) then
    DataModule1.FdqPessoasexo.AsString := 'M'
  else
    DataModule1.FdqPessoasexo.AsString := 'F';

  DataModule1.FdqPessoa.post;

  DataModule1.FdqEnderecoidpessoa.AsInteger := DataModule1.FdqPessoaid.AsInteger;

  DataModule1.FdqEndereco.post;
end;

procedure TFrmPessoa.ControlarCampos(AHabilitar: Boolean);
begin
  EdtNome.Enabled := AHabilitar;
end;

end.
