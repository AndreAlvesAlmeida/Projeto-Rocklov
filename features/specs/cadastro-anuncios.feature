#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que posui equipamento musicais
    Quero cadastrar meus equiamentos
    Para que eu possa disponibilizalos para locação

    Cenario: Novo equipo

        Dado que eu tenho o seguinte equipamento
            | nome      | Fender Strato |
            | categoria | cordas        |
            | preco     | 200           |
        Quando submento o cadastro desse item
        Então devo ver esse item no meu Dashboard