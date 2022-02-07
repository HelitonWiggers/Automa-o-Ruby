#language:pt
Funcionalidade: Login

Cenario: Usuario deve ser autorizado
    Dado digito as credencias na pagina teste
    Quando eu faço login com "teste1", "123" e "teste"
    Entao As credenciais ficam gravadas na pagina teste

Cenario: Campo em branco
    Dado digito as credencias na pagina teste
    Quando eu faço login com "teste" e "123"
    Entao Devo ver a mensagem "Existem campos em branco"

Cenario: Campo em branco
    Dado digito as credencias na pagina teste
    Quando eu faço login com "teste1" e "teste"
    Entao Devo ver a mensagem "Existem campos em branco"

Cenario: Campo em branco
    Dado digito as credencias na pagina teste
    Quando eu faço login com "123" e "teste"
    Entao Devo ver a mensagem "Existem campos em branco"