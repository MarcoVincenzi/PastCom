unit Explosicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Vcl.StdCtrls, Vcl.ComCtrls, frameBotoes;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    FrmBotoes1: TFrmBotoes;
    EdtCodigo: TEdit;
    EdtDescricao: TEdit;
    LblCodigo: TLabel;
    LblDescreve: TLabel;
    LblInicio: TLabel;
    LblFim: TLabel;
    LblLocalizacao: TLabel;
    DtpInicioExp: TDateTimePicker;
    DtpFimExp: TDateTimePicker;
    CbLocalizacao: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses DataModule;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DataModule1.FdqExposicao.Active := False;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
DataModule1.FdqExposicao.Active := True;
end;

end.
