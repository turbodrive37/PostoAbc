# PostoAbc
Exemplo de uma aplicação Delphi para simular o controle de abastecimentos de um posto de gasolina.

Essa aplicação foi criada com a IDE Delphi 10.3 utilizando o banco de dados Firebird.
Para que haja o correto funcionamento, deve-se obedecer os seguintes requisitos:
1 - Utilizar o Firebird 2.5 ou superior;
2 - Criar as tabelas abastecimentos, tanques, bombas e forma_pgto utilizando os scripts em anexo;
3 - Depois de criadas, usar os comandos do script Popular_tabelas.sql para preencher as tabelas tanques, bombas e forma_pgto;
4 - No arquivo PostoABC.ini, deve-se definir as credenciais de acesso ao banco de dados e localização do fbclient.dll.

Observar que no cadastro de tanques haverá 3 registros, mas as bombas estão relacionadas apenas com 2 tanques. Essa medida, visa simular uma tentativa de cadastro inválido.
Também foram incluídas algumas formas de pagamento para que seja possível contabilizar como são feitos os pagamentos dos abastecimentos.
