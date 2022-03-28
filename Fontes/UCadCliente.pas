unit UCadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, UDataModule, Grids, DBGrids, ComObj,
  URelatorio, UCadCliente_CRUD, UCadTelefone_CRUD, UCadEndereco_CRUD;

type
  TForm_CadCliente = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label22: TLabel;
    Edit2: TEdit;
    Label23: TLabel;
    ComboBox1: TComboBox;
    Label24: TLabel;
    ComboBox2: TComboBox;
    Button1: TButton;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    ScrollBox1: TScrollBox;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    ScrollBox2: TScrollBox;
    ScrollBox3: TScrollBox;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_CadCliente: TForm_CadCliente;

implementation

{$R *.dfm}

procedure TForm_CadCliente.Button1Click(Sender: TObject);
var
	strSELECT, strWHERE: string;

  procedure AddWhere( strCondicao: string );
  begin
  	if strWhere <> EmptyStr then strWhere := strWhere + ' AND ';
      strWhere := strWhere + strCondicao;
   	end;
begin
  strSELECT := 'SELECT  * FROM Cliente ';
  strWHERE := EmptyStr;
   // 1o. Filtro, por Nome do cliente
  if Edit2.Text <> EmptyStr then
  	AddWhere('NOME LIKE '+QuotedStr('%'+Edit2.Text+'%'));

   // 2o. combobox, tipo de Cliente - Fisica ou Juridica
  if ComboBox1.ItemIndex > 0  then//--.Text <> 'TODOS' then
  	 if ComboBox1.ItemIndex = 1 then //QuotedStr(ComboBox2.Text) = 'fisica'  then
     		AddWhere('Tipo =  ''F'' ')
     ELSE
     		AddWhere('Tipo =  ''J'' ');

   // 3o. combobox,  Cliente - Ativo ou Inativo
   if ComboBox2.ItemIndex > 0 then//ComboBox2.Text <> 'TODOS' then
      if ComboBox2.ItemIndex = 1 then // 0 = 'Ativo'  then
          AddWhere('Ativo  =  ''A'' ')
      ELSE
          AddWhere('Ativo =  ''I'' ');

   // monta SQL
   if strWHERE <> EmptyStr then
      strSELECT := strSELECT + ' WHERE ' + strWHERE;

//  showmessage (strselect);

   // o c�digo abaixo depende dos componentes utilizados
   DataModule1.ADOQuery_Cliente.Close;
   DataModule1.ADOQuery_Cliente.SQL.CommaText:= strSELECT;
   DataModule1.ADOQuery_Cliente.Open;

   //vai para a pagina de consulta
   PageControl1.ActivePage := TabSheet2;

end;

procedure TForm_CadCliente.Button2Click(Sender: TObject);

Var
  linha, coluna: integer;
  planilha: variant;
  valorCampo: string;
begin
  planilha:= CreateOleObject('Excel.Application');
  planilha.Workbooks.add(1);
  planilha.Cells.Select;
  planilha.Selection.NumberFormat := '@';
  planilha.caption:= 'Exporta��o de dados para o excel';
  planilha.visible:= true;
  DataModule1.ADOQuery_Cliente.First;

  for linha:= 0 to DataModule1.ADOQuery_Cliente.RecordCount-1 do
  begin
    for coluna:= 1 to DataModule1.ADOQuery_Cliente.FieldCount do
    begin
    	valorCampo:= DataModule1.ADOQuery_Cliente.Fields[coluna-1].AsString;
    	planilha.cells[linha+2,coluna]:= valorCampo;
    end;
  	DataModule1.ADOQuery_Cliente.Next;
  end;

  for coluna:=1 to DataModule1.ADOQuery_Cliente.FieldCount do
  begin
  	valorCampo:= DataModule1.ADOQuery_Cliente.Fields[coluna-1].DisplayLabel;
  	planilha.cells[1,coluna]:= valorCampo;
  end;

  if not DirectoryExists('C:\PTC_Teste') then
         ForceDirectories('C:\PTC_Teste');

  planilha.WorkBooks[1].SaveAs('C:\PTC_Teste\planilha_ptc.xlsx');
//  planilha.columns.AutoFit;
end;


procedure TForm_CadCliente.Button3Click(Sender: TObject);
begin

	If (FRel_Cad_Cliente=nil) Then
  	FRel_Cad_Cliente:=TFRel_Cad_Cliente.Create(Self);
  FRel_Cad_Cliente.QR_Cliente.Preview;
  Form_CadCliente := Nil;
  Form_CadCliente.free;

  PageControl1.ActivePage := TabSheet2;

end;

procedure TForm_CadCliente.DBGrid1DblClick(Sender: TObject);
begin

 DataModule1.ADOQuery_Cliente.Edit;

 	If (Form_CadClienteManut=nil) Then
  	Form_CadClienteManut:=TForm_CadClienteManut.Create(Self);

//  DataModule1.ADOQuery_Cliente.Close;
//  DataModule1.ADOQuery_Cliente.Open;

  Form_CadClienteManut.ShowModal;
  Form_CadClienteManut := Nil;
  Form_CadClienteManut.free;


end;

procedure TForm_CadCliente.DBGrid2DblClick(Sender: TObject);
begin
//  DataModule1.ADOTab_Telefone.Edit;

 	If (Form_CadTelefone=nil) Then
  	Form_CadTelefone:=TForm_CadTelefone.Create(Self);

  DataModule1.ADOTab_Telefone.Close;
  DataModule1.ADOTab_Telefone.Open;

  Form_CadTelefone.ShowModal;
  Form_CadTelefone := Nil;
  Form_CadTelefone.free;

end;

procedure TForm_CadCliente.DBGrid3DblClick(Sender: TObject);
begin
  DataModule1.ADOTab_Endereco.Edit;

 	If (Form_CadTelefone=nil) Then
  	Form_CadEndereco:=TForm_CadEndereco.Create(Self);

  Form_CadEndereco.ShowModal;
  Form_CadEndereco := Nil;
  Form_CadEndereco.free;

  DataModule1.ADOTab_Endereco.Close;
  DataModule1.ADOTab_Endereco.Open;
  DataModule1.ADOTab_Endereco.Refresh;


end;

procedure TForm_CadCliente.FormActivate(Sender: TObject);
begin
	// abre conec��o e queyr e tabelas
	DataModule1.ADOConnection1.Connected := True;
  DataModule1.ADOQuery_Cliente.Open;
  DataModule1.ADOTab_Endereco.Open;
  DataModule1.ADOTab_Telefone.Open;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TForm_CadCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	// abre conec��o e queyr e tabelas
	DataModule1.ADOConnection1.Connected := False;
  DataModule1.ADOTab_Endereco.Close;
  DataModule1.ADOTab_Telefone.Close;
  DataModule1.ADOQuery_Cliente.Close;

end;

procedure TForm_CadCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
{ If key = #13 then begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end; }
end;

end.

