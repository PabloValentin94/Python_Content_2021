Algoritmo "APROVACAO"

// DFaça um algoritmo que receba a nota da prova
// e a nota do trabalho, faça a media simples
// e informe se o aluno está aprovado. O critério
// de aprovação é a media ser igual ou maior do que 6
Var
// Seção de Declarações das variáveis 
prova,trabalho, media:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

Escreval("Informe a nota da prova: ")
Leia(prova)

Escreval("Informe a nota do trabalho: ")
Leia(trabalho)

media <- (prova + trabalho) / 2

Escreval("Sua média é ", media:2:2)

Se media >= 6 Então
  Escreval("Parabéns, você está APROVADO")
Senão
  Escreval("Parabéns, você está REPROVADO")
Fimse


Fimalgoritmo