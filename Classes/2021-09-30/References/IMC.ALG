Algoritmo "IMC"
// Fa?a um algoritmo que c?lcule o ?ndice de Massa
// Corporal (IMC). Para calcular, receba a altura
// e o peso do usu?rio, mostre o valor do ?ndice
// e a classfica??o que ele se encontra.
// F?rmula: imc = peso /(altura * altura)
Var
// Se??o de Declara??es das vari?veis 
imc, altura, peso : real

Inicio
Escreval("Etec Health - C?lculo do IMC")

Escreval("Informe seu peso em kilogramas")
Leia(peso)

Escreval("Informe sua altura em metros")
Leia (altura)

imc <- peso / (altura * altura)

Escreval("Seu IMC ? de ", imc:2:2)

Se (imc < 18.5) Ent?o
   Escreval("Abaixo do peso normal")
Sen?o
   Se (imc >= 18.5) e (imc < 25) Ent?o
       Escreval("Peso Normal")
   Sen?o
      Se (imc >= 25) e (imc < 30) Ent?o
          Escreval("Excesso de Peso")
      Sen?o
          Se (imc >= 30) e (imc < 35) Ent?o
              Escreval("Obesidade Classe I")
          Sen?o
              Se (imc >= 35) e (imc < 40) Ent?o
                  Escreval("Obesidade Classe II")
              Sen?o
                  Escreval("Obesidade Classe III")
              Fimse
          Fimse // Fecha Se do >= 30
      Fimse // Fecha Se do >= 25
   Fimse // Fecha Se do >= 18.5
Fimse // Fecha Se do < 18.5

Fimalgoritmo