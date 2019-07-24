# gmail_viewer

Este é um visualizador para os seus emails do gmail.

Você pode visualizar uma lista dos emails e a própria mensagem.

A autenticação deverá ser feita manualmente, conforme descrito abaixo. Para implementação de autenticação por oauth2 é necessária uma avaliação da aplicação por parte do Google, como esta é uma aplicação parcial apenas para testes, não foi possivel realizar a autenticação através de perfil de conta do google.

A autenticação será realizada conforme procedimento descrito abaixo.


Instalação
==========

*considerando que você já tem Ruby instalado em sua máquina.

- Clone este repositório

- Acesse o link abaixo e siga as instruções para ativar a API do gmail.
   https://developers.google.com/gmail/api/quickstart/ruby

- Após a ativação da API, faça o download do arquivo 'credentials.json' e coloque na pasta principal do projeto.

- Abra uma janela de Terminal e rode o rails - 'rails server'

- Acesse pelo browser o endereço: localhost:3000

- Na janela do terminal aparecerá um endereço para acesso, copie (ctrl + shift + c) e cole no browser - será solicitada a permissão para acesso a sua conta e será gerado um código. Copie este código e cole na janela do terminal (ctrl + shift + v) e pressione 'enter'.

Após estes passos você poderá navegar normalmente pelo seu email e não será pedido a autenticação novamente.

Para remover a autenticação delete os arquivo 'credentials.json' e 'token.yaml'

Dúvidas? Entre em contato comigo!
