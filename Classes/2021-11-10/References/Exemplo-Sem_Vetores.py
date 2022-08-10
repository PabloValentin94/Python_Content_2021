print("")
print("________________________________________________________________")
print("")

print("SISTEMA LOJA DE ROUPAS")

print("________________________________________________________________")
print("")

print("Digite o nome do cliente:")
nome_cliente = input()
print("________________________________________________________________")
print("")

# Venda:

print("Venda:")
print("")

valor_total_venda = 0

decisao = "S"

while decisao == "S":

  print("Digite o nome da roupa:")
  nome_roupa = input()
  print("")

  print("Digite a quantidade de roupas:")
  qnt_roupas = float(input())
  print("")

  print("Digite o valor unitário (por unidade) da roupa:")
  valor_unitario = float(input())
  print("")

  valor_roupa_vendida = qnt_roupas * valor_unitario

  print("O valor da(s) roupa(s) vendida(s) foi de: R$",round(valor_roupa_vendida,2))
  print("")

  valor_total_venda = valor_total_venda + valor_roupa_vendida

  print("Deseja vender outra roupa? (S/N)")
  decisao = input()
  print("")

  if decisao == "N":

    break

print("________________________________________________________________")
print("")

# Pagamento:

print("Pagamento:")

print("")

print("O valor total de roupa(s) vendida(s) foi de: R$",round(valor_total_venda,2))

print("")

print("Digite a quantidade de dinheiro dada pelo(a) cliente",nome_cliente,":")
quantidade_dinheiro = float(input())
print("")

if quantidade_dinheiro >= valor_total_venda:

  troco = quantidade_dinheiro - valor_total_venda

  print("O valor do troco do(a) cliente",nome_cliente,"é de: R$",round(troco,2))

else:

  divida = valor_total_venda - quantidade_dinheiro

  print("Dinheiro Insuficiente.")
  print("")

  print(nome_cliente,"ficará devendo: R$",round(divida,2))

print("________________________________________________________________")
print("")

print("Obrigado! Volte Sempre.")

print("________________________________________________________________")
print("")
print("")