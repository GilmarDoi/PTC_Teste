unit UCadEndereco_CRUD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UDataModule, ExtCtrls, DBCtrls, Mask, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, EDBNav;

type
  TForm_CadEndereco = class(TForm)
    GroupBox1: TGroupBox;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Button1: TButton;
    IdHTTP1: TIdHTTP;
    DBEdit1: TDBEdit;
    EvDBNavigator1: TEvDBNavigator;
    DBEdit2: TDBEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_CadEndereco: TForm_CadEndereco;

implementation

{$R *.dfm}

procedure TForm_CadEndereco.Button1Click(Sender: TObject);
var
  lodados: TStringList;
begin
  //Cria-se uma string List
  lodados:=TStringList.Create;
  //Nesta linha busca-se a informação através da url indicada
  //StrinReplace eh utilizada para substituir os caracteres & por CR
  //UrlDecode eh para eliminar caracteres de código html para acentos
  //&formato=query_string ou xml javascript
  //ele retorna para o componente em qualquer um dos formatos acima
  //Mais detalhes entre na pagina http://republicavirtual.com.br

   lodados.text:=stringreplace(idhttp1.URL.URLDecode(idhttp1.Get('http://republicavirtual.com.br/web_cep.php?cep='+DBEdit11.text+'&formato=query_string')),'&',#13#10,[rfreplaceAll]);
  //lodados vira uma matriz e fazemos o acesso aos dados...
  DBEdit9.text:=lodados.Values['TIPO_LOGRADOURO']+' '+lodados.Values['LOGRADOURO'];
  DBEdit12.text:=lodados.Values['BAIRRO'];
  DBEdit13.text:=lodados.Values['CIDADE'];
  DBEdit14.text:=lodados.Values['UF']
  //acredito que ficou bem mais simples dessa forma consultar a rua pelo cep
  //Obrigado

end;

end.

