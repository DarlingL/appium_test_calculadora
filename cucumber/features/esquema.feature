# encoding: utf-8
# language: pt  


Funcionalidade: Calcular Resultado
para saber se foi aprovado

Contexto:
Dado que esteja na tela Inicial

@test3
Esquema do Cenario: Verificar situação inserindo notas por esquema de cenário
Quando preencher as notas "<n1>" "<n2>" "<n3>" e calcular
Entao deve exibir a mensagem de "<resultado>".

Exemplos:
|n1  |n2 |n3 |resultado |               
|2   |2  |2  |Reprovado |

@test2
Cenario: Verificar situação inserindo notas por teclado android
Quando preencher as notas e calcular
Entao deve exibir a mensagem de "Aprovado".

@test1
Cenario: Verificar situação após ler Push
Quando preencher as notas e ler Push
E calcular
Entao deve exibir a mensagem de "Refazer".

@test4
Cenario: Verificar situação após deixar app em backgroud
Quando preencher as notas e sair do aplicativo
E voltar e calcular
Entao deve exibir a mensagem de "Reprovado".


