vetor_nome_roupa = []
vetor_qnt_roupas = []
vetor_valor_unitario = []
vetor_valor_roupa_vendida = []

print("")
print("________________________________________________________________")
print("")

print("SISTEMA LOJA DE ROUPAS")

print("________________________________________________________________")
print("")

print("Digite o nome do(a) cliente:")
nome_cliente = input()
print("________________________________________________________________")
print("")

# Venda(s):

print("Venda:")
print("")

print("")

valor_total_venda = 0

i = 0

while True:

  print("Digite o nome da roupa:")
  nome_roupa = input()
  vetor_nome_roupa.append(nome_roupa)
  print("")

  print("Digite a quantidade de roupas:")
  qnt_roupas = int(input())
  vetor_qnt_roupas.append(qnt_roupas)
  print("")

  print("Digite o valor unitário (por unidade) da roupa:")
  valor_unitario = float(input())
  vetor_valor_unitario.append(valor_unitario)
  print("")

  valor_roupa_vendida = vetor_qnt_roupas[i] * vetor_valor_unitario[i]
  vetor_valor_roupa_vendida.append(valor_roupa_vendida)

  print("O valor da(s) roupa(s) vendida(s) foi de: R$",round(valor_roupa_vendida,2))
  print("")

  valor_total_venda = valor_total_venda + vetor_valor_roupa_vendida[i]

  i += 1

  print("Deseja vender outra roupa? (S/N)")
  decisao = input()
  print("")

  if decisao == "N":

    break

print("________________________________________________________________")
print("")

# Listagem do(s) item(ns) da venda:

print("Listagem do(s) item(ns) da venda:")
print("")

for j in range(0, len(vetor_nome_roupa)):

  print("")
  print(j + 1,"º item:")
  print("")

  print("Item comprado pelo(a) cliente",nome_cliente,": ",vetor_nome_roupa[j])
  print("Quantidade de peças desse item que o(a)",nome_cliente,"comprou: ",vetor_qnt_roupas[j])
  print("Valor unitário do item que o(a)",nome_cliente,"comprou: R$",round(vetor_valor_unitario[j],2))
  print("Valor total da venda desse",j + 1,"º item: R$",round(vetor_valor_roupa_vendida[j],2))

print("________________________________________________________________")
print("")

# Pagamento:

print("Pagamento:")
print("")

print("")

print("O valor total de roupa(s) vendida(s) foi de: R$",round(valor_total_venda,2))

print("")

print("Digite a quantidade de dinheiro dada pelo(a) cliente",nome_cliente,":")
quantidade_dinheiro = float(input())

if quantidade_dinheiro >= valor_total_venda:

  troco = quantidade_dinheiro - valor_total_venda

  print("________________________________________________________________")
  print("")

  print("O valor do troco do(a) cliente",nome_cliente,"é de: R$",round(troco,2))

else:

  divida = valor_total_venda - quantidade_dinheiro

  print("________________________________________________________________")
  print("")

  print("Dinheiro Insuficiente.")
  print("")

  print(nome_cliente,"ficará devendo: R$",round(divida,2))

print("________________________________________________________________")
print("")

print("Obrigado! Volte Sempre.")

print("________________________________________________________________")
print("")
print("")