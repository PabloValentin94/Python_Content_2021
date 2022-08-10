# Crie um sistema de convesão de unidades.

# 1 - Selecione uma opção no menu:

# 1 => Converter Km -> m
# 2 => Converter m  -> cm
# 3 => Converter cm -> mm
# 4 => Converter cm -> pol

# 2 - Exemplo:

# Digite o valor em metros (m): 1

#A conversão de metros (m) para cm é 100 cm

# INÍCIO:

print ("")
print ("______________________________________________________________________")
print ("")
print ("BEM-VINDO AO SISTEMA DE CONVERSÃO DE UNIDADES")
print ("______________________________________________________________________")
print ("")

print ("--------------------------------")
print ("Menu:")
print ("--------------------------------")
print ("1 => Converter Km -> m")
print ("2 => Converter m  -> cm")
print ("3 => Converter cm -> mm")
print ("4 => Converter cm -> pol")
print ("--------------------------------")
print ("______________________________________________________________________")
print ("")

print ("Selecione uma opção no menu acima:")
opcao = float(input())
print ("______________________________________________________________________")
print ("")

if opcao == 1:

  print ("Digite a quantidade de kilometros:")
  qnt_km = float(input())
  print ("______________________________________________________________________")
  print ("")
  conversao = qnt_km * 1000
  print (qnt_km,"km em metros é igual a: ",round(conversao,4),"m")
  print ("______________________________________________________________________")
  print ("")

elif opcao == 2:

  print ("Digite a quantidade de Metros:")
  qnt_m = float(input())
  print ("______________________________________________________________________")
  print ("")
  conversao = qnt_m * 100
  print (qnt_m,"m em centímetros é igual a: ",round(conversao,4),"cm")
  print ("______________________________________________________________________")
  print ("")

elif opcao == 3:

  print ("Digite a quantidade de centímetros:")
  qnt_cm = float(input())
  print ("______________________________________________________________________")
  print ("")
  conversao = qnt_cm * 10
  print (qnt_cm,"cm em milímetros é igual a: ",round(conversao,4),"mm")
  print ("______________________________________________________________________")
  print ("")

elif opcao == 4:

  print ("Digite a quantidade de centímetros:")
  qnt_cm = float(input())
  print ("______________________________________________________________________")
  print ("")
  conversao = qnt_cm / 2.54
  print (qnt_cm,"cm em polegadas é igual a: ",round(conversao,4),"pol")
  print ("______________________________________________________________________")
  print ("")

else:

  print ("Opção Inválida!")
  print ("______________________________________________________________________")
  print ("")


print ("FIM!")
print ("______________________________________________________________________")
print ("")