Algoritmo "CLASSIFICACAO_NOTA_ETEC"

// Fa?a um algoritmo que receba a nota da prova
// e a nota do trabalho, fa?a a media simples
// e informe qual o conceito do aluno, segundo os
// crit?rios abaixo:
// MB media > 8.5
//  B media Entre 7.5 e 8.5
//  R media Entre 6 e 7.4
//  I media < 6

Var
// Se??o de Declara??es das vari?veis
prova,trabalho, media:real

Inicio
// Se??o de Comandos, procedimento, fun??es, operadores, etc...

Escreval("Informe a nota da prova: ")
Leia(prova)

Escreval("Informe a nota do trabalho: ")
Leia(trabalho)

media <- (prova + trabalho) / 2

Escreval("Sua m?dia ? ", media:2:2)

Se media > 8.5 Ent?o
  Escreval("Tirou MB")
Sen?o
  Se (media > 7.5) e (media < 8.5) Ent?o
     Escreval("Tirou B")
  Sen?o
     Se (media > 6) e (media < 7.4) Ent?o
        Escreval("Tirou R")
     Sen?o
        Escreval ("Tirou I")
     Fimse
  Fimse
Fimse
Fimalgoritmo