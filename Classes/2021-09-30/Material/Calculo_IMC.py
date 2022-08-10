# Instruções:

# Faça um algoritmo que calcule o índice de Massa
# Corporal (IMC). Para calcular, receba a altura
# e o peso do usuário, mostre o valor do índice
# e a classficação que ele se encontra.
# Fórmula: imc = peso /(altura * altura)

print ("")
print ("____________________________________________________")
print ("")
print ("CÁLCULO DO IMC")
print ("____________________________________________________")
print ("")

print ("Informe o seu peso (em kilos):")
peso = float(input())
print ("")

print ("Informe sua altura (em metros):")
altura = float(input())
print ("____________________________________________________")
print ("")

imc = peso / (altura * altura)

print ("Seu IMC é:", round(imc,1))
print ("____________________________________________________")
print ("")

if imc < 18.5:

  print ("Classificação: Abaixo do Peso.")

elif imc >= 18.5 and imc < 25:

  print ("Classificação: Peso Normal.")

elif imc >= 25 and imc < 30:

  print ("Classificação: Execesso de Peso.")

elif imc >= 30 and imc < 35:

  print ("Classificação: Obesidade Classe I.")

elif imc >= 35 and imc < 40:

  print ("Classificação: Obesidade Classe II.")

else:

  print ("Classificação: Obesidade Classe III.")


print ("____________________________________________________")
print ("")
print ("FIM!")
print ("____________________________________________________")
print ("")