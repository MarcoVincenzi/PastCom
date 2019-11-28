unit Pessoa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, frameBotoes, Vcl.ComCtrls, Vcl.Mask, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope;

type
  TPessoa = class(TForm)
    MeCPF: TMaskEdit;
    RgSexo: TRadioGroup;
    Panel1: TPanel;
    LblCodigo: TLabel;
    LblNome: TLabel;
    LblCPF: TLabel;
    LblNascimento: TLabel;
    FrmBotoes1: TFrmBotoes;
    DbPessoa: TDBGrid;
    EdtCodigo: TEdit;
    EdtNome: TEdit;
    DtpNascimento: TDateTimePicker;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkControlToField4: TLinkControlToField;
    LblCodLoc: TLabel;
    EdtCodLoc: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pessoa: TPessoa;

implementation

{$R *.dfm}

uses DataModule, frameBotoes;

procedure TPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DataModule1.FdqPessoa.Active := False;
end;

procedure TPessoa.FormShow(Sender: TObject);
begin
 DataModule1.FdqPessoa.Active := True;
end;

end.
