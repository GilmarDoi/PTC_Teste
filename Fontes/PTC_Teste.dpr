program PTC_Teste;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  UCadCliente in 'UCadCliente.pas' {Form_CadCliente},
  UDataModule in 'UDataModule.pas' {DataModule1: TDataModule},
  URelatorio in 'URelatorio.pas' {FRel_Cad_Cliente},
  UCadCliente_CRUD in 'UCadCliente_CRUD.pas' {Form_CadClienteManut},
  UCadTelefone_CRUD in 'UCadTelefone_CRUD.pas' {Form_CadTelefone},
  UCadEndereco_CRUD in 'UCadEndereco_CRUD.pas' {Form_CadEndereco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
