#language: pt

Funcionalidade: Realizar o cadastro do usuario no site

Cenario: Realizar um registro de um novo usuario
       Dado que eu esteja na página do register
       Quando preencho os dados na tela
        | firstname  | John                 |
        | lastname   | Lennon               |
        | phone      | 219879887            |
        | email      | john.lenon@teste.com |
        | address1   | Alameda Tocantins    |
        | city       | Alphaville           |
        | state      | São Paulo            |
        | postalcod  | 051641               |
        | country    | BRAZIL               |
        | username   | john.lennon          |
        | password   | john123              |
        | confirm    | john123              |
       Entao realizo o cadastro de um novo usuario

   

