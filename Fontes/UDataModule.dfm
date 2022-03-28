object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 549
  Top = 243
  Height = 247
  Width = 450
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=masterkey;Persist Security Info=True' +
      ';User ID=root;Extended Properties="DSN=MySql 8.0 Driver;DESCRIPT' +
      'ION=MySql 8.0 Driver;SERVER=LOCALHOST;UID=root;PWD=masterkey;DAT' +
      'ABASE=ptc;PORT=3306";Initial Catalog=ptc'
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object ADOQuery_Cliente: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cliente')
    Left = 144
    Top = 16
    object ADOQuery_ClienteidCliente: TAutoIncField
      FieldName = 'idCliente'
      ReadOnly = True
    end
    object ADOQuery_ClienteNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object ADOQuery_ClienteTipo: TStringField
      FieldName = 'Tipo'
    end
    object ADOQuery_ClienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object ADOQuery_ClienteRG_IE: TStringField
      FieldName = 'RG_IE'
    end
    object ADOQuery_ClienteData_Cadastro: TDateField
      FieldName = 'Data_Cadastro'
    end
    object ADOQuery_ClienteAtivo: TStringField
      FieldName = 'Ativo'
    end
  end
  object DS_Cliente: TDataSource
    DataSet = ADOQuery_Cliente
    Left = 232
    Top = 16
  end
  object DS_Enderco: TDataSource
    DataSet = ADOTab_Endereco
    Left = 232
    Top = 72
  end
  object DS_Telefone: TDataSource
    DataSet = ADOTab_Telefone
    Left = 232
    Top = 136
  end
  object ADOTab_Endereco: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Cliente_idCliente'
    MasterFields = 'idCliente'
    MasterSource = DS_Cliente
    TableName = 'endereco'
    Left = 152
    Top = 72
    object ADOTab_EnderecoidEndereco: TAutoIncField
      FieldName = 'idEndereco'
      ReadOnly = True
    end
    object ADOTab_EnderecoLogradouro: TStringField
      FieldName = 'Logradouro'
      Size = 45
    end
    object ADOTab_EnderecoNumero: TStringField
      FieldName = 'Numero'
    end
    object ADOTab_EnderecoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object ADOTab_EnderecoBairro: TStringField
      FieldName = 'Bairro'
      Size = 45
    end
    object ADOTab_EnderecoCidade: TStringField
      FieldName = 'Cidade'
      Size = 45
    end
    object ADOTab_EnderecoEstado: TStringField
      FieldName = 'Estado'
      Size = 10
    end
    object ADOTab_EnderecoPais: TStringField
      FieldName = 'Pais'
      Size = 45
    end
    object ADOTab_EnderecoCliente_idCliente: TIntegerField
      FieldName = 'Cliente_idCliente'
    end
  end
  object ADOTab_Telefone: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Cliente_idCliente'
    MasterFields = 'idCliente'
    MasterSource = DS_Cliente
    TableName = 'telefone'
    Left = 144
    Top = 136
    object ADOTab_TelefoneidTelefone: TAutoIncField
      FieldName = 'idTelefone'
      ReadOnly = True
    end
    object ADOTab_TelefoneFone: TStringField
      FieldName = 'Fone'
    end
    object ADOTab_TelefoneCliente_idCliente: TIntegerField
      FieldName = 'Cliente_idCliente'
    end
  end
end
