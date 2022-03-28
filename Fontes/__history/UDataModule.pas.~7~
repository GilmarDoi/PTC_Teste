unit UDataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery_Cliente: TADOQuery;
    DS_Cliente: TDataSource;
    DS_Enderco: TDataSource;
    DS_Telefone: TDataSource;
    ADOTab_Endereco: TADOTable;
    ADOTab_Telefone: TADOTable;
    ADOQuery_ClienteidCliente: TAutoIncField;
    ADOQuery_ClienteNome: TStringField;
    ADOQuery_ClienteTipo: TStringField;
    ADOQuery_ClienteCPF_CNPJ: TStringField;
    ADOQuery_ClienteRG_IE: TStringField;
    ADOQuery_ClienteData_Cadastro: TDateField;
    ADOQuery_ClienteAtivo: TStringField;
    ADOTab_TelefoneidTelefone: TAutoIncField;
    ADOTab_TelefoneFone: TStringField;
    ADOTab_TelefoneCliente_idCliente: TIntegerField;
    ADOTab_EnderecoidEndereco: TAutoIncField;
    ADOTab_EnderecoLogradouro: TStringField;
    ADOTab_EnderecoNumero: TStringField;
    ADOTab_EnderecoCEP: TStringField;
    ADOTab_EnderecoBairro: TStringField;
    ADOTab_EnderecoCidade: TStringField;
    ADOTab_EnderecoEstado: TStringField;
    ADOTab_EnderecoPais: TStringField;
    ADOTab_EnderecoCliente_idCliente: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.

