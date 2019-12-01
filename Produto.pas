unit Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  frameBotoes, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    EdtCodigo: TEdit;
    EdtDescreve: TEdit;
    LblCodigo: TLabel;
    Label2: TLabel;
    LblAquisicao: TLabel;
    DtpAquisicao: TDateTimePicker;
    CbTipo: TComboBox;
    CbAutor: TComboBox;
    CbSetor: TComboBox;
    CbInstituicao: TComboBox;
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
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    LinkFillControlToField3: TLinkFillControlToField;
    LinkFillControlToField4: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DataModule;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DataModule1.FdqProduto.Active := False;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
 DataModule1.FdqProduto.Active := True;
end;

end.
