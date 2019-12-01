unit Tipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frameBotoes, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFrmTipo = class(TForm)
    DBGrid1: TDBGrid;
    EdtCodTipo: TDBEdit;
    EdtDescTipo: TDBEdit;
    LblCodTipo: TLabel;
    LblDescTipo: TLabel;
    FrmBotoes1: TFrmBotoes;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    procedure FrmBotoes1btnEditarClick(Sender: TObject);
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
  FrmTipo: TFrmTipo;

implementation

{$R *.dfm}

procedure TFrmTipo.FrmBotoes1btnEditarClick(Sender: TObject);
begin

end;

procedure TFrmTipo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.FdqTipo.Active := False;
end;

procedure TFrmTipo.FormShow(Sender: TObject);
begin
  DataModule1.FdqTipo.Active := True;
end;

procedure TFrmTipo.FrmBotoes1btnEditarClick(Sender: TObject);
begin
  DataModule1.FdqTipo.Edit;
end;

procedure TFrmTipo.FrmBotoes1btnExcluirClick(Sender: TObject);
begin
  DataModule1.FdqTipo.Delete;
end;

procedure TFrmTipo.FrmBotoes1btnNovoClick(Sender: TObject);
begin
  DataModule1.FdqTipo.Insert;
end;

procedure TFrmTipo.FrmBotoes1btnSalvarClick(Sender: TObject);
begin
  DataModule1.FdqTipo.Post;
end;


end.
