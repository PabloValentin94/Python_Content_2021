Algoritmo "semnome"
// Disciplina   : T?cnicas de Programa??o e Algoritmos
// Professor   : Tiago Antonio da Silva 
// Descri??o   : Aqui voc? descreve o que o programa faz! (fun??o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/07/2021
//
// Enunciado: Quais s?o os n?meros primos de 0 ? 100.
// IDENTIFICA??O DE N?MEROS PRIMOS
// O que s?o n?meros primos?
// n/1 ou n/n (sem resto, usando o mod, ex: 6 mod 2 d? zero.)
//
//
//


Var
// Se??o de Declara??es das vari?veis 
n1, n2, numero_da_vez, dividiu, divisor : inteiro

Inicio
// Se??o de Comandos, procedimento, fun??es, operadores, etc...

n1 <- 0
n2 <- 2000

// Percorrendo todos os n?meros do intervalo.
Para numero_da_vez De n1 At? n2 Fa?a

     // Zerando a verifica??o se deu certo a divis?o a cada
     // "numero_da_vez"
     dividiu <- 0

     // Testar se a divis?o do numero n?o tem resto.
     Para divisor De n1 at? numero_da_vez Fa?a
     
          Se(numero_da_vez mod divisor = 0) Ent?o
              dividiu <- dividiu + 1
          Fimse
     Fimpara
     
     // Verificiando se a vari?vel dividiu vale 2, portando
     // deu certo de fazer duas divis?es sem resto e assim
     // o "numero_da_vez" ? primo.
     Se(dividiu = 2) Ent?o
        Escreval("O n?mero ", numero_da_vez, " ? primo")
     Fimse

   // codigo...
   //Escreval("O n?mero da vez (repeti??o) ? ", numero_da_vez)
Fimpara


Fimalgoritmo