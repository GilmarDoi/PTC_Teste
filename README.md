# PTC_Teste
Teste técnico para PTC Delphi 2010
Prezado Sr(a).

Segue teste técnico para a posição de Desenvolvedor Delphi PTC.
Para a realização do teste foi utilizado o Delphi 2010 com Banco de Dados MySql 8.
Foi escolhida esta versão do Delphi, pois no chamamento desta posição se tem referência a utilização de versões antigas do Delphi como vr. 3  e 7.
Não foi utilizada na realização do Teste orientação a Objetos, e sim a forma estruturada do Delphi, pois entendo que nas versões mais antigas não era utilizado Orientação a Objetos.
Vamos então ao Teste:
O Teste pede para criar um CRUD para uma Tabela principal com pelo menos Três (03) filtros na tabela e também a ligação desta tabela principal a outras duas (mestre/detalhe), com criação de uma planilha com os dados filtrados e também um relatório com mesmos dados.
Nossa proposta de solução para este teste:
Temos uma tabela chamada Cliente, com dados normais de um cliente (Nome, Tipo –Física/jurídica, CFP/CNPJ, RG/Inscr Estadual, Data de Cadastro e Ativo/Inativo), tabela de Telefones (Telefones) e Endereço ( CEP, Logradouro, Numero, Cidade, Estado).
As tabelas estão ligados no banco de dados sendo Mestre a Tabela Cliente e detalhe as tabelas Telefone e Endereço via foreng Key e com deleção em cascata.
Vamos ao Sistema então:
Ao abrir o Menu escolhemos a opção cadastro/Cliente, iremos então para tela de filtro no cadastro de Cliente onde poderemos filtrar os dados por Nome, se o cliente é pessoa Física ou Jurídica e também se o Cliente é Ativo ou Inativo. Escolhido o filtro basta clicar no botão Filtrar. Iremos então para a Tela de consulta do Filtro, que mostrará os Clientes filtrados, seu(s) telefone e endereço.
Para dar manutenção em quaisquer dos cadastros basta dar um duplo click no grid do cadastro que uma nova tela de manutenção aparecerá para manutenção dos dados.
Ao se excluir um registro do Cadastro de Clientes, automaticamente será excluído também os registro dos cadastros relacionados em telefone e endereço.
Tem a opção de geração de uma planilha excel dos dados filtrados, clicando no botão Gerar Planilha do Grid.
Tem também a opção de geração de um relatório dos dados filtrados  através do botão Gerar Relatório Grid.
Nas tabelas existe critica para CFP/CNPJ, permitindo somente CFP/CNPJ válidos ou em banco,
Para localizar o endereço e ao se digitar o CEP, o sistema faz uma consulta via WEB SERVICE nos correios.
Para conexão com banco de dados Mysql foi utilizado a seguinte conexão para o banco PTC :
Provider=MSDASQL.1;Password=masterkey;Persist Security Info=True;User ID=root;Extended Properties="DSN=MySql 8.0 Driver;UID=root;PWD=masterkey;DESCRIPTION=MySql 8.0 Driver;SERVER=LOCALHOST;DATABASE=ptc;PORT=3306;";Initial Catalog=ptc


Fico a disposição para esclarecer qualquer dúvida sobre o teste e também sobre sobre meu currículo

Grato

Gilmar


