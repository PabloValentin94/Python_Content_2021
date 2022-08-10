# Instruções:

# Faça um algoritmo que receba a nota da prova
# e a nota do trabalho, faça a media simples
# e informe se o aluno está aprovado. O critério
# de aprovação é, a media ser igual ou maior do que 6.

print ("")
print ("____________________________________________________")
print ("")
print ("CÁLCULO DA MÉDIA")
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

if media >= 6:

  print ("Parabéns! Você foi aprovado.")
  print ("____________________________________________________")
  print ("")

else:

  print ("Parabéns! Você foi reprovado.")
  print ("____________________________________________________")
  print ("")

print ("FIM!")
print ("____________________________________________________")
print ("")