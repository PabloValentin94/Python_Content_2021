Algoritmo "APROVACAO"

// DFa?a um algoritmo que receba a nota da prova
// e a nota do trabalho, fa?a a media simples
// e informe se o aluno est? aprovado. O crit?rio
// de aprova??o ? a media ser igual ou maior do que 6
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

Se media >= 6 Ent?o
  Escreval("Parab?ns, voc? est? APROVADO")
Sen?o
  Escreval("Parab?ns, voc? est? REPROVADO")
Fimse


Fimalgoritmo