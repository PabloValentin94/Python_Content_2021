Algoritmo "ALGORITMO LOJA DE ROUPAS"

// Disciplina   : [T?cnicas de Programa??o e Algoritmo]
// Professor   : Tiago Antonio da Silva 
// Descri??o   : Estruturas de Repeti??o
// Autor(a)    : Pablo Valentin
// Data atual  : 19/06/2021

//Desenvolva 1 algoritmo para Loja de Roupa ? Vendas

//O dono de uma loja precisa desenvolver 1 algoritmo de venda de roupa conforme
//descritivo abaixo:

//1 ? Digite o Nome do Cliente

//2 ? M?dulo Venda:

//- Digite o nome da roupa, quantidade e valor unit?rio da roupa

//- Acumule o valor da roupa vendida = (quantidade * valor unit?rio da roupa)

//- Mostre o valor da roupa vendida

//- Mostra a mensagem ?Deseja vender outra roupa (S/N) ?

//- Se SIM continue no m?dulo venda e vendendo mais roupa.

//- Crie um acumulador de venda total = venda total + Valor da roupa vendida

//- Se N?o ? entre no m?dulo pagamento

//3 ? M?dulo Pagamento:

//- Apresente o valor Venda total

//- Entre com o valor em dinheiro do cliente

//- Calcule o troco = dinheiro do cliente ? Venda Total

//Apresente a Msg ? Obrigado ? Volte Sempre.

Var
// Se??o de Declara??es das vari?veis 

nome_cliente:caractere
nome_roupa:caractere
quantidade_roupas:inteiro
valor_unitario:real
valor_roupa_vendida:real
decisao:caractere
valor_total_venda:real
quantidade_dinheiro:real
troco:real
divida:real

Inicio
// Se??o de Comandos, procedimento, fun??es, operadores, etc... 

Escreval ("SISTEMA LOJA DE ROUPA")
Escreval ("_______________________________________________________________")
Escreval ("")

Escreva ("Digite o nome do cliente: ")
Leia (nome_cliente)
Escreval ("_______________________________________________________________")
Escreval ("")

//Venda:

Escreval ("Venda:")
Escreval ("")

valor_total_venda <- 0

Repita

Escreva ("Digite o nome da roupa: ")
Leia (nome_roupa)

Escreva ("Digite a quantidade de roupas: ")
Leia (quantidade_roupas)

Escreva ("Digite o valor unit?rio (por unidade) da roupa: R$")
Leia (valor_unitario)
Escreval ("")

valor_roupa_vendida <- valor_unitario * quantidade_roupas

Escreval ("O valor da(s) roupa(s) vendida(s) foi de: R$",valor_roupa_vendida:2:2)
Escreval ("")

valor_total_venda <- valor_total_venda + valor_roupa_vendida

Escreval ("Deseja vender outra roupa? (S/N)")
Leia (decisao)
Escreval ("")

Ate (decisao = "N")

Escreval ("_______________________________________________________________")
Escreval ("")

//Pagamento:

Escreval ("Pagamento:")
Escreval ("")

Escreval ("O valor total de roupa(s) vendida(s) foi de: R$",valor_total_venda:2:2)
Escreval ("")

Escreva ("Digite a quantidade de dinheiro dada pelo(a) ",nome_cliente,": R$")
Leia (quantidade_dinheiro)
Escreval ("")

Se (quantidade_dinheiro >= valor_total_venda) Entao

      troco <- quantidade_dinheiro - valor_total_venda
    
Senao

     divida <- valor_total_venda - quantidade_dinheiro
     
     Escreval ("Dinheiro insuficiente.")
     Escreval ("")
     
     Escreval (nome_cliente," ficar? devendo: R$", divida:2:2)
     Escreval ("")
     
Fimse

Escreval ("O valor do troco ? de: R$",troco:2:2)
Escreval ("")

Escreval ("_______________________________________________________________")
Escreval ("")

Escreval ("OBRIGADO! VOLTE SEMPRE.")

Escreval ("_______________________________________________________________")
Escreval ("")

Fimalgoritmo