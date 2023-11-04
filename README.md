# Título

API Gateway, sua chave para uma jornada sem fronteiras com IAM

# Descrição

Apresentar rapidamente o conceito de uma API GATEWAY sendo o canal de entrada para o IAM que vai gerenciar a autenticação e autorização de um aplicação.
Como fazer o "introspecção" entre as camadas e garantir que o sucesso flua de uma forma eficaz e com não precisar ter que criar nas apis de negócio a autorização e autenticação.
A ideia é trazer uma PoC desse conceito trazendo o conceito dentro de uma API gateway com um IAM 
Por exemplo, API kong com um KeyCloack e mostrar o resultado aplicado.
Com isso vou ter o ambiente montado e elaborado para apresentação

# Prazo

- **Data PoC (Prova de Conceito):** 15/10
  - Criar uma imagem Docker com Kong: Até 10/10
  - Criar uma conexão com Keycloak: Até 12/10
  - Criar uma aplicação em GO para uma API (Opcional): Até 10/10 (para casos opcionais, se aplicável)
  - Gravar um vídeo: Até 13/10
  - Publicar na AWS ou Heroku (Opcional): Até 13/10 (para casos opcionais, se aplicável)
  - Documentar: Até 14/10

- **Data da Apresentação:** 20/10
  - Preparar a apresentação: Até 18/10
  - Revisar todos os itens e ajustar conforme feedback: Até 19/10
  - Prática da apresentação: 19/10 - 20/10/

# Checklist 

**Tarefas a Serem Concluídas**

## Itens

- [ ] Criar uma imagem docker compose com Kong
    - [ ] Configurar o ambiente Docker Compose
    - [ ] Instalar e configurar o Kong Compose
    - [ ] Criar a imagem Docker com Kong  Compose

- [ ] Criar uma conexão com docker compose Keycloak
    - [ ] Configurar o ambiente Docker Compose Keycloak
    - [ ] Estabelecer a conexão entre Kong e Keycloak

- [ ] Criar uma aplicação em GO para uma API (Opcional)
    - [ ] Desenvolver a aplicação em GO
    - [ ] Testar a API localmente
    - [ ] Integrar a API com Kong
    - [ ] Criar o docker file
    - [ ] Adicionar no Docker Compose

- [ ] Gravar um vídeo
    - [ ] Preparar o roteiro do vídeo
    - [ ] Gravar e editar o vídeo demonstrativo
    - [ ] Revisar e finalizar a edição do vídeo

- [ ] Publicar na AWS ou Heroku (Opcional)
    - [ ] Configurar o ambiente na AWS ou Heroku
    - [ ] Realizar o deploy da aplicação e do Kong
    - [ ] Testar a aplicação e o Kong na nuvem

- [ ] Documentar
    - [ ] Escrever documentação detalhada sobre o processo
    - [ ] Incluir capturas de tela e exemplos, se necessário
    - [ ] Revisar a documentação para clareza e precisão

# Kong

kong plugins list


Teste Mock http://localhost/mock

API http://localhost:8001/

keycloack

https://github.com/d4rkstar/kong-konga-keycloak

https://www.krakend.io/docs/overview/

https://www.keycloak.org/docs/latest/server_admin/

https://openid.net/specs/openid-connect-registration-1_0.html

https://github.com/keycloak/keycloak

https://www.keycloak.org/downloads.html

https://dev.delivery/seguranca-de-aplicacoes-com-keycloak/

https://dev.to/robincher/securing-your-site-via-oidc-powered-by-kong-and-keycloak-2ccc

https://github.com/gbbirkisson/kong-plugin-jwt-keycloak

https://marraia.medium.com/utiliza%C3%A7%C3%A3o-do-keycloak-em-aplica%C3%A7%C3%B5es-net-6-0-4a787520c85b

https://docs.konghq.com/hub/kong-inc/openid-connect/

https://hub.docker.com/r/marcelmaatkamp/kong-with-plugins