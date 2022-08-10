import random

print("")
print("___________________________________________________________________________________")
print("")

print("GERADOR ALEATÓRIO")

nomes = ["Adib ", "Lorenzo ", "Bella ", "Renato "]
sobrenomes = ["Silva", "Santos", "Ribeiro", "Oliveira"]
CPFs = ["241.110.818-43", "287.775.418-98", "409.126.078-07", "253.154.728-25"]

print("___________________________________________________________________________________")
print("")

i = 0

print("Listagem:")

print("")
print("")

while i < 30:

    numero_aleatorio_1 = random.randint(0,3)
    numero_aleatorio_2 = random.randint(0,3)
    numero_aleatorio_3 = random.randint(0,3)
    nome_completo = nomes[numero_aleatorio_1] + sobrenomes[numero_aleatorio_2]
    CPF = CPFs[numero_aleatorio_3]

    print("Nome Completo:",nome_completo)
    print("CPF:",CPF)

    print("")

    i += 1

print("___________________________________________________________________________________")
print("")
print("FIM!")
print("___________________________________________________________________________________")
print("")