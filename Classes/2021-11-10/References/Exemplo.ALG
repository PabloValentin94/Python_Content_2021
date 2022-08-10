Algoritmo "ALGORÍTMO LOJA DE ROUPAS (VETOR)"

// Disciplina  : [Técnicas de Programação e Algoritmo]
// Professor   : Tiago Antonio da Silva 
// Descrição   : Algorítmo da Loja de Roupas com adição de vetores.
// Autor(a)    : Pablo Valentin.
// Data atual  : 12/08/2021

// 1 – Digite o Nome do Cliente

// 2 – Módulo Venda:

//- Digite o nome da roupa, quantidade e valor unitário da roupa, armazene
//  essas informações em vetores para que a lista de itens do pedido possa ser
//  mostrada depois

//- Acumule o valor da roupa vendida = (quantidade * valor unitário da roupa)

//- Mostre o valor da roupa vendida

//- Mostra a mensagem “Deseja vender outra roupa (S/N) “

//- Se SIM continue no módulo venda e vendendo mais roupa.

//- Crie um acumulador de venda total = venda total + Valor da roupa vendida

//- Se Não – entre no módulo pagamento

// 3 – Módulo Pagamento:

//- Apresente os itens inseridos nos vetores

//- Apresente o valor Venda total

//- Entre com o valor em dinheiro do cliente

//- Calcule o troco = dinheiro do cliente – Venda Total

//- Apresente a Msg – Obrigado – Volte Sempre.

Var
// Seção de Declarações das variáveis
 
nome_cliente:caractere
nome_roupa:vetor [1..1000] de caractere
quantidade_roupas:vetor [1..4000] de inteiro
valor_unitario:vetor [1..1000] de real
valor_roupa_vendida:vetor [1..1000] de real
decisao:caractere
valor_total_venda:real
quantidade_dinheiro:real
troco:real
divida:real
i:inteiro
j:inteiro
contador_de_itens:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Início:

Escreval ("LOJA DE ROUPAS")
Escreval ("_________________________________________________________________")
Escreval ("")

valor_total_venda <- 0
i <- 1
contador_de_itens <- 0

// Nome do cliente:

Escreva ("Digite o nome do cliente: ")
Leia (nome_cliente)
Escreval ("_________________________________________________________________")

// Venda:

Repita

Escreval ("")
Escreval (i,"ª Venda:")
Escreval ("")

Escreva ("Digite o nome da roupa: ")
Leia (nome_roupa[i])

Escreva ("Digite a quantidade vendida de peças dessa roupa: ")
Leia (quantidade_roupas[i])

Escreva ("Digite o valor unitário (por unidade) de roupa: R$")
Leia (valor_unitario[i])
Escreval ("")

valor_roupa_vendida[i] <- valor_unitario[i] * quantidade_roupas[i]

Escreval ("O valor da(s) roupa(s) vendida(s) foi de: R$",valor_roupa_vendida[i]:2:2)
Escreval ("")

valor_total_venda <- valor_total_venda + valor_roupa_vendida[i]

i <- i + 1

contador_de_itens <- contador_de_itens + 1

Escreval ("Deseja vender outra roupa? (S/N)")
Leia (decisao)

Até (decisao = "N")

Escreval ("_________________________________________________________________")
Escreval ("")

// Listagem dos itens:

Escreval ("Listagem do(s) item(ns) da(s) venda(s):")

Para j de 1 até contador_de_itens Faça

Escreval ("")
Escreval ("Item da ",j,"ª venda:")
Escreval ("")

Escreval ("Item comprado pelo(a) ",nome_cliente,": ", nome_roupa[j])
Escreval ("Quantidade de peças desse item que o(a) ",nome_cliente," comprou: ",quantidade_roupas[j])
Escreval ("Valor unitário do item que o(a) ",nome_cliente," comprou: R$",valor_unitario[j]:2:2)
Escreval ("Valor total da venda desse ",j,"º item: R$",valor_roupa_vendida[j]:2:2)

Fimpara

Escreval ("_________________________________________________________________")
Escreval ("")

// Pagamento:

Escreval ("Pagamento:")
Escreval ("")

Escreval ("Valor total das compras do(a) ",nome_cliente,": R$",valor_total_venda:2:2)
Escreval ("")

Escreva ("Quantidade de dinheiro fornecida pelo(a) ",nome_cliente,": R$")
Leia (quantidade_dinheiro)
Escreval ("")

Se (quantidade_dinheiro >= valor_total_venda) Então

    troco <- quantidade_dinheiro - valor_total_venda
    Escreval ("O valor do troco do(a) ",nome_cliente," é de: R$",troco:2:2)
    
Senão

    Escreval ("VALOR INSUFICIENTE!")
    Escreval ("")
    divida <- valor_total_venda - quantidade_dinheiro
    Escreval (nome_cliente," está devendo para a loja: R$",divida:2:2)
    
Fimse

Escreval ("_________________________________________________________________")
Escreval ("")

// Despedida:

Escreval ("OBRIGADO! VOLTE SEMPRE.")
Escreval ("_________________________________________________________________")

Fimalgoritmo