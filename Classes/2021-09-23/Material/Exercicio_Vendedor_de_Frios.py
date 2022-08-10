# Disciplina  : [Técnicas de Programação e Algoritmo]
# Professor   : Tiago Antonio da Silva.
# Descrição   : Programa para calcular as comissões do vendedor.
# Autor(a)    : Pablo Valentin.
# Data atual  : 23/09/2021

# Instruções:

# Um vendedor trabalha com frios. Para cada produto há uma alíquota de comissão
# conforme a especificação abaixo:

# Mussarela: 5.0% Preço kg: 22,60

# Mortadela: 6.5% Preço kg: 8,98

# Presunto: 4.5% Preço kg: 31,03

# Peito de Peru: 2.5% Preço kg: 58,90

# Sabendo da alíquota da comissão: faça um programa que leia as quantidades
# vendidas pelo vendedor e calcule a comissão.

print ("")
print ("_______________________________________________________________")
print ("")
print ("PROGRAMA PARA CALCULAR AS COMISSÕES DE UM VENDEDOR")
print ("_______________________________________________________________")
print ("")

print ("Digite a quantidade (em kilos) de mussarela vendida:")
quantidade_mussarela = float(input())
print ("")

print ("Digite a quantidade (em kilos) de mortadela vendida:")
quantidade_mortadela = float(input())
print ("")

print ("Digite a quantidade (em kilos) de presunto vendida:")
quantidade_presunto = float(input())
print ("")

print ("Digite a quantidade (em kilos) de peito de peru vendida:")
quantidade_peito_de_peru = float(input())
print ("_______________________________________________________________")
print ("")

valor_vendido_mussarela = quantidade_mussarela * 22.60
valor_vendido_mortadela = quantidade_mortadela * 8.98
valor_vendido_presunto = quantidade_presunto * 31.03
valor_vendido_peito_de_peru = quantidade_peito_de_peru * 58.90

print ("O lucro de mussarela foi de: R$", round(valor_vendido_mussarela,2))
print ("O lucro de mortadela foi de: R$", round(valor_vendido_mortadela,2))
print ("O lucro de presunto foi de: R$", round(valor_vendido_presunto,2))
print ("O lucro de peito_de_peru foi de: R$", round(valor_vendido_peito_de_peru,2))
print ("_______________________________________________________________")
print ("")

processo_1_valor_total_vendido = valor_vendido_mussarela + valor_vendido_mortadela
processo_2_valor_total_vendido = valor_vendido_presunto + valor_vendido_peito_de_peru

valor_total_vendido = processo_1_valor_total_vendido + processo_2_valor_total_vendido

print ("O lucro total é de: R$", round(valor_total_vendido,2))
print ("_______________________________________________________________")
print ("")

comissao_mussarela = valor_vendido_mussarela * 0.05
comissao_mortadela = valor_vendido_mortadela * 0.065
comissao_presunto = valor_vendido_presunto * 0.045
comissao_peito_de_peru = valor_vendido_peito_de_peru * 0.025

print ("O valor da comissão de mussarela é: R$", round(comissao_mussarela,2))
print ("O valor da comissão de mortadela é: R$", round(comissao_mortadela,2))
print ("O valor da comissão de presunto é: R$", round(comissao_presunto,2))
print ("O valor da comissão de peito de peru é: R$", round(comissao_peito_de_peru,2))
print ("_______________________________________________________________")
print ("")

processo_1_comissao_total = comissao_mussarela + comissao_mortadela
processo_2_comissao_total = comissao_presunto + comissao_peito_de_peru

comissao_total = processo_1_comissao_total + processo_2_comissao_total

print ("O valor total da comissão do vendedor é: R$", round(comissao_total,2))
print ("_______________________________________________________________")
print ("")

print ("FIM!")
print ("_______________________________________________________________")
print ("")