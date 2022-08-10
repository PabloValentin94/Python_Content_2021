# Instruções:

# Faça um algoritmo que receba a nota da prova
# e a nota do trabalho, faça a media simples
# e informe qual o conceito do aluno, segundo os
# critérios abaixo:
# MB media > 8.5
# B media Entre 7.5 e 8.5
# R media Entre 6 e 7.4
# I media < 6

print ("")
print ("____________________________________________________")
print ("")
print ("CLASSIFICAÇÃO DAS NOTAS")
print ("____________________________________________________")
print ("")

print ("Informe a nota da prova:")
nota_prova = float(input())
print ("____________________________________________________")
print ("")

print ("Informe a nota do trabalho:")
nota_trabalho = float(input())
print ("____________________________________________________")
print ("")

media = (nota_prova + nota_trabalho) / 2

print ("Sua média é:", round(media,1))
print ("____________________________________________________")
print ("")

if media > 8.5:

  print ("Sua menção é MB.")

elif media >= 7.5 and media <= 8.5:

  print ("Sua menção é B.")

elif media >= 6 and media < 7.5:

  print ("Sua menção é R.")

else:

  print ("Sua menção é I.")

print ("____________________________________________________")
print ("")

print ("FIM!")
print ("____________________________________________________")
print ("")