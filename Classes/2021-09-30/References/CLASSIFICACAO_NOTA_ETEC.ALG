Algoritmo "CLASSIFICACAO_NOTA_ETEC"

// Faça um algoritmo que receba a nota da prova
// e a nota do trabalho, faça a media simples
// e informe qual o conceito do aluno, segundo os
// critérios abaixo:
// MB media > 8.5
//  B media Entre 7.5 e 8.5
//  R media Entre 6 e 7.4
//  I media < 6

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

Se media > 8.5 Então
  Escreval("Tirou MB")
Senão
  Se (media > 7.5) e (media < 8.5) Então
     Escreval("Tirou B")
  Senão
     Se (media > 6) e (media < 7.4) Então
        Escreval("Tirou R")
     Senão
        Escreval ("Tirou I")
     Fimse
  Fimse
Fimse
Fimalgoritmo