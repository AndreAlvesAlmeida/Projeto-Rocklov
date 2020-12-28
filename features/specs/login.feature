#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @login
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "alice@gmail.com" e "123456"
        Então sou redirecionado para o Dashboard

    Esquema do Cenário: Tentar Logar
        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input      | senha_input | mensagem_output                  |
            | alice@gmail.com  | 123         | Usuário e/ou senha inválidos.    |
            | alma@hotmail.com | 123456      | Usuário e/ou senha inválidos.    |
            | alice&gmail.com  | 123456      | Oops. Informe um email válido!   |
            |                  | 123456      | Oops. Informe um email válido!   |
            | alice@gmail.com  |             | Oops. Informe sua senha secreta! |






    