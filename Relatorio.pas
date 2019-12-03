unit Relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Vcl.StdCtrls, Vcl.ExtCtrls, DataModule, frxDBSet,
  System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrmRelatorio = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    CmbSetor: TComboBox;
    CmbTipo: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorio: TFrmRelatorio;

implementation

{$R *.dfm}

procedure TFrmRelatorio.Button1Click(Sender: TObject);
var
  IdSetor, IdTipo: Integer;
begin
  TryStrToInt(LinkFillControlToField1.BindList.GetSelectedValue.AsString, IdSetor);
  TryStrToInt(LinkFillControlToField2.BindList.GetSelectedValue.AsString, IdTipo);

  DataModule1.FdqRelatorio.Close;
  DataModule1.FdqRelatorio.params.ParamByName('Setor').AsInteger := IdSetor;
  DataModule1.FdqRelatorio.params.ParamByName('Tipo').AsInteger := IdTipo;
  DataModule1.FdqRelatorio.Open;

  if (not(DataModule1.FdqRelatorio.IsEmpty)) then
    frxReport1.ShowReport
  else
    ShowMessage('Não há dados.');
end;

procedure TFrmRelatorio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.FdqSetor.Active := False;
  DataModule1.FdqTipo.Active := False;
end;

procedure TFrmRelatorio.FormShow(Sender: TObject);
begin
  DataModule1.FdqSetor.Active := True;
  DataModule1.FdqTipo.Active := True;
end;

end.
