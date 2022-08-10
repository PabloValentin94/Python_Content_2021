Algoritmo "ALGORITMO SAL�RIO L�QUIDO"

// Disciplina   : [T�cnicas de Programa��o e Algoritmo]
// Professor   : Tiago Antonio da Silva 
// Descri��o   : Programa que ir� calcular o sal�rio l�quido
// Autor(a)    : Pablo Valentin
// Data atual  : 17/05/2021

//Base para o exerc�cio:

//SALARIO BRUTO = R$ 11.500,00

//1� Faixa 7,5% R$ 82,50 [OK]
//2� Faixa 9% R$ 99,31 [OK]
//3� Faixa 12% R$ 132,21 [OK]
//4� Faixa 14% R$ 437,97 [OK]

//TOTAL DESCONTO DO INSS = R$ 751,99

//"Descontado" = R$ 10.786,92

//IRRF 27,5%
//R$ 2097,04

//TOTAL DE DESCONTOS = 2097,04 + R$ 713,08 = R$ 2.810,12

//Sal�rio Liquido = R$ 8.689,87

//INSS (Instituto Nacional do Seguro Social)
//(Valor da contribui��o para a Previd�ncia Social):

//7,5% at� um sal�rio m�nimo (R$ 1.100,00)
//9% para quem ganha entre R$ 1.100,01 e R$ 2.203,48
//12% para quem ganha entre R$ 2.203,49 e R$ 3.305,22
//14% para quem ganha entre R$ 3.305,23 e R$ 6.433,57

//IRRF (Imposto de Renda Retido na Fonte):

//Base de c�lculo	            Al�quota	    Parcela dedut�vel

//At� 1.903,98	               0%	          0,00
//De 1.903,99 at� 2.826,65	   7,5%	       142,80
//De 2.826,66 at� 3.751,05	   15%	       354,80
//De 3.751,06 at� 4.664,68	   22,5%	       636,13
//Acima de 4.664,69	         27,5%	       869,36

//Al�m da porcentagem que � descontada, existe uma parcela que reduz o desconto,
//apresentadas na terceira coluna (parcela dedut�vel).

Var
// Se��o de Declara��es das vari�veis 

INSS:real
IRRF:real
salario_liquido:real
salario_bruto:real
salario_bruto_descontado_inss:real
desconto_total:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

Escreval ("PROGRAMA PARA CALCULAR O SAL�RIO L�QUIDO")

Escreval ("______________________________________________________________")
Escreval ("")

Escreva ("Digite o valor do Sal�rio Bruto: R$")
Leia (salario_bruto)

Escreval ("______________________________________________________________")
Escreval ("")

//INSS:

Se (salario_bruto < 1100.01 ) Entao

   Escreval ("A aliquota do INSS � de 7,5%")
   INSS <- salario_bruto * 0.075
   Escreval ("O valor da aliquota do INSS � de: R$", INSS:2:2)
   //desconto m�ximo do inss nessa faixa �: R$82.50

Senao

     Se (salario_bruto >= 1100.01) e (salario_bruto < 2203.49) Entao
   
        Escreval ("A aliquota do INSS � de 9,0%")
        INSS <- salario_bruto - 1100.01
        INSS <- INSS * 0.09
        INSS <- INSS + 82.50
        Escreval ("O valor da aliquota do INSS � de: R$", INSS:2:2)
        //desconto m�ximo do inss nessa faixa �: R$99.31
        
     Senao
     
          Se (salario_bruto >= 2203.49) e (salario_bruto < 3305.23) Entao
          
             Escreval ("A aliquota do INSS � de 12,0%")
             INSS <- salario_bruto - 2203.49
             INSS <- INSS * 0.12
             INSS <- (INSS + 99.31) + 82.50
             Escreval ("O valor da aliquota do INSS � de: R$", INSS:2:2)
             //desconto m�ximo do inss nessa faixa �: R$132.21
             
          Senao
          
               Se (salario_bruto >= 3305.23) e (salario_bruto <= 6433.57) Entao
               
                  Escreval ("A aliquota do INSS � de 14,0%")
                  INSS <- salario_bruto - 3305.23
                  INSS <- INSS * 0.14
                  INSS <- (INSS + 132.21) + 99.31
                  INSS <- INSS + 82.50
                  Escreval ("O valor da aliquota do INSS � de: R$", INSS:2:2)
                  //desconto m�ximo do inss nessa faixa �: R$437.97
                  
               Senao
               
                  Escreval ("A aliquota do INSS est� no teto (m�ximo)")
                  INSS <- 82.50 + 99.31
                  INSS <- INSS + 132.21
                  INSS <- INSS + 437.97
                  Escreval ("O valor da aliquota do INSS � de: R$", INSS:2:2)
                  //o desconto ser� de: R$751.99

               Fimse
          Fimse
     Fimse
Fimse

Escreval ("______________________________________________________________")
Escreval ("")

//IRRF:

salario_bruto_descontado_inss <- salario_bruto - INSS

Escreval ("O valor do Sal�rio bruto descontando o INSS � de: R$", salario_bruto_descontado_inss:2:2)

Escreval ("______________________________________________________________")
Escreval ("")

Se (salario_bruto_descontado_inss < 1903.99) Entao

   Escreval ("A aliquota do IRRF � de 0% (nada)")
   Escreval ("O valor da aliquota do IRRF � de: R$", IRRF)
   
Senao

     Se (salario_bruto_descontado_inss >= 1903.99) e (salario_bruto_descontado_inss < 2826.66) Entao
     
        Escreval ("A aliquota do IRRF � de 7,5%")
        IRRF <- salario_bruto_descontado_inss * 0.075
        IRRF <- IRRF - 142.80 //parcela dedut�vel
        Escreval ("O valor da aliquota do IRRF � de: R$", IRRF:2:2)
        
     Senao
     
          Se (salario_bruto_descontado_inss >= 2826.66) e (salario_bruto_descontado_inss < 3751.06) Entao
          
             Escreval ("A aliquota do IRRF � de 15%")
             IRRF <- salario_bruto_descontado_inss * 0.15
             IRRF <- IRRF - 354.80 //parcela dedut�vel
             Escreval ("O valor da aliquota do IRRF � de: RS", IRRF:2:2)
             
          Senao
          
               Se (salario_bruto_descontado_inss >= 3751.06) e (salario_bruto_descontado_inss <= 4664.69) Entao
               
                  Escreval ("A aliquota do IRRF � de 22,5%")
                  IRRF <- salario_bruto_descontado_inss * 0.225
                  IRRF <- IRRF - 636.13 //parcela dedut�vel
                  Escreval ("O valor da aliquota do IRRF � de: R$", IRRF:2:2)
                  
               Senao
               
                    Escreval ("A aliquota do IRRF � de 27,5% (m�ximo)")
                    IRRF <- salario_bruto_descontado_inss * 0.275
                    IRRF <- IRRF - 869.36 //parcela dedut�vel
                    Escreval ("O valor da aliquota do IRRF � de: R$", IRRF:2:2)
                    
               Fimse
          Fimse
     Fimse
Fimse

Escreval ("______________________________________________________________")
Escreval ("")

//Sal�rio L�quido:

desconto_total <- INSS + IRRF

Escreval ("O valor total descontado do Sal�rio Bruto � de: R$", desconto_total:2:2)

Escreval ("______________________________________________________________")
Escreval ("")

salario_liquido <- salario_bruto - desconto_total

Escreval ("O valor do Sal�rio L�quido � de: R$", salario_liquido:2:2)

Escreval ("______________________________________________________________")
Escreval ("")

Fimalgoritmo