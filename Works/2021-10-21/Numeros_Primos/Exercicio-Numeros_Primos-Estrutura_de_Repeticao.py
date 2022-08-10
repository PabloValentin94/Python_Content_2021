# Enunciado: Quais são os números primos de 0 à 100.
# IDENTIFICAÇÃO DE NÚMEROS PRIMOS
# O que são números primos?
# n/1 ou n/n (sem resto, usando o mod, ex: 6 mod 2 dá zero.)

print("")
print("____________________________________________________________________________________________________________________")
print("")

print("CLASSIFICAÇÃO: NÚMEROS PRIMOS")

print("____________________________________________________________________________________________________________________")
print("")

print("Escolha o primeiro número do intervalo (O número tem que ser acima de 0):")
n1 = int(input())

print("")

print("Escolha o último número do intervalo (Escolha o número que você quer e some +1 nele,na hora de inserir):")
n2 = int(input())

print("____________________________________________________________________________________________________________________")
print("")

print("Listagem:")
print("")

for numero_atual in range(n1,n2):

  dividiu = 0 #vezes que dividiu.

  for divisor in range(n1,numero_atual):

    if numero_atual % divisor == 0:

      dividiu = dividiu + 1

  if dividiu == 1:

    print("O número",numero_atual,"é primo.")

print("____________________________________________________________________________________________________________________")
print("")

print("FIM!")

print("____________________________________________________________________________________________________________________")
print("")
print("")