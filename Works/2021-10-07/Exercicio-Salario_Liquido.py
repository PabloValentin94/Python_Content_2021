# Base para o exercício:

# SALARIO BRUTO = R$ 11.500,00

# 1ª Faixa 7,5% R$ 82,50 [OK]
# 2ª Faixa 9% R$ 99,31 [OK]
# 3ª Faixa 12% R$ 132,21 [OK]
# 4ª Faixa 14% R$ 437,97 [OK]

# TOTAL DESCONTO DO INSS = R$ 751,99

# "Descontado" = R$ 10.786,92

# IRRF 27,5%
# R$ 2097,04

# TOTAL DE DESCONTOS = 2097,04 + R$ 713,08 = R$ 2.810,12

# Salário Liquido = R$ 8.689,87

# INSS (Instituto Nacional do Seguro Social)
# (Valor da contribuição para a Previdência Social):

# 7,5% até um salário mínimo (R$ 1.100,00)
# 9% para quem ganha entre R$ 1.100,01 e R$ 2.203,48
# 12% para quem ganha entre R$ 2.203,49 e R$ 3.305,22
# 14% para quem ganha entre R$ 3.305,23 e R$ 6.433,57

# IRRF (Imposto de Renda Retido na Fonte):

# Base de cálculo	                Alíquota	        Parcela dedutível

# Até 1.903,98	                  0%	               0,00
# De 1.903,99 até 2.826,65	      7,5%	             142,80
# De 2.826,66 até 3.751,05	      15%	               354,80
# De 3.751,06 até 4.664,68	      22,5%	             636,13
# Acima de 4.664,69	              27,5%	             869,36

# Além da porcentagem que é descontada, existe uma parcela que reduz o desconto,
# apresentadas na terceira coluna (parcela dedutível).

# Existe ainda a dedução de R$ 189,59 por cada dependente.

print("")
print("____________________________________________________________________________________________________________")
print("")

print("PROGRAMA PARA CALCULAR O SALÁRIO LÍQUIDO")

print("____________________________________________________________________________________________________________")
print("")

salario_bruto = 0

print("Dígite o valor do Salário Bruto:")
salario_bruto = float(input())

print("____________________________________________________________________________________________________________")
print("")

print("Informe a quantidade de Dependentes que você possui:")
qnt_dependentes = float(input())

print("____________________________________________________________________________________________________________")
print("")

# Dependentes:

valor_total_dependentes = qnt_dependentes * 189.59

print("O valor total de Dependentes é de: R$",round(valor_total_dependentes,2))

print("____________________________________________________________________________________________________________")
print("")

# INSS:

if  salario_bruto < 1100.01:

  print("O desconto do INSS vai até a 1ª faixa.")
  print("")
  INSS = salario_bruto * 0.075
  print("O valor da alíquota do INSS é de: R$",round(INSS,2))
  print("")
  print("1ª faixa do INSS:",round(INSS,2))
  # Desconto máximo do INSS nessa faixa é de: R$82.50

elif salario_bruto >= 1100.01 and salario_bruto < 2203.49:

  print("O desconto do INSS vai até a 2ª faixa.")
  print("")
  INSS = salario_bruto - 1100.01
  INSS = INSS * 0.09
  INSS = INSS + 82.50
  print("O valor da alíquota do INSS é de: R$",round(INSS,2))
  print("")
  print("1ª faixa do INSS: 82.50")
  print("2ª faixa do INSS:",round((INSS - 82.50),2))
  # Desconto máximo do INSS nessa faixa é de: R$99.31

elif salario_bruto >= 2203.49 and salario_bruto < 3305.23:

  print("O desconto do INSS vai até a 3ª faixa.")
  print("")
  INSS = salario_bruto - 2203.49
  INSS = INSS * 0.12
  INSS = (INSS + 99.31) + 82.50
  print("O valor da alíquota do INSS é de: R$",round(INSS,2))
  print("")
  print("1ª faixa do INSS: 82.50")
  print("2ª faixa do INSS: 99.31")
  print("3ª faixa do INSS:",round(((INSS - 99.31)- 82.50),2))
  # Desconto máximo do inss nessa faixa é de: R$132.21

elif salario_bruto >= 3305.23 and salario_bruto <= 6433.57:

  print("O desconto do INSS vai ate a 4ª faixa.")
  print("")
  INSS = salario_bruto - 3305.23
  INSS = INSS * 0.14
  INSS = (INSS + 132.21) + 99.31
  INSS = INSS + 82.50
  print("O valor da alíquota do INSS é de: R$",round(INSS,2))
  print("")
  print("1ª faixa do INSS: 82.50")
  print("2ª faixa do INSS: 99.31")
  print("3ª faixa do INSS: 132.21")
  print("4ª faixa do INSS:",round((((INSS - 132.21)-99.31)-82.50),2))
  # Desconto máximo do inss nessa faixa é de: R$437.97

else:

  print("O valor da alíquota do INSS está no teto.")
  print("")
  INSS = (437.97 + 132.21) + 99.31
  INSS = INSS + 82.50
  print("O valor da alíquota do INSS é de: R$",round(INSS,2))
  print("")
  print("1ª faixa do INSS: 82.50")
  print("2ª faixa do INSS: 99.31")
  print("3ª faixa do INSS: 132.21")
  print("4ª faixa do INSS: 437.97")
  # O desconto será de: R$751.99

print("____________________________________________________________________________________________________________")
print("")

# IRRF:

salario_bruto_descontado_inss = salario_bruto - INSS

print("O valor do Salário Bruto descontando o valor da alíquota do INSS é de: R$",round(salario_bruto_descontado_inss,2))

print("____________________________________________________________________________________________________________")
print("")

if salario_bruto_descontado_inss < 1903.99:

  print("A alíquota do IRRF é de 0%")
  print("")
  IRRF = salario_bruto_descontado_inss - valor_total_dependentes
  IRRF = IRRF * 0
  print("O valor da alíquota do IRRF é de: R$",round(IRRF,2))

elif salario_bruto_descontado_inss >= 1903.99 and salario_bruto_descontado_inss < 2826.66:

  print("A alíquota do IRRF é de 7,5%")
  print("")
  IRRF = salario_bruto_descontado_inss - valor_total_dependentes
  IRRF = IRRF * 0.075
  IRRF = IRRF - 142.80 # Parcela Dedutível.
  print("O valor da alíquota do IRRF é de: R$",round(IRRF,2))

elif salario_bruto_descontado_inss >= 2826.66 and salario_bruto_descontado_inss < 3751.06:

  print("A alíquota do IRRF é de 15%")
  print("")
  IRRF = salario_bruto_descontado_inss - valor_total_dependentes
  IRRF = IRRF * 0.15
  IRRF = IRRF - 354.80 # Parcela Dedutível.
  print("O avlor da alíquota do IRRF é de: R$",round(IRRF,2))

elif salario_bruto_descontado_inss >= 3751.06 and salario_bruto_descontado_inss <= 4664.69:

  print("A alíquota do IRRF é de 22,5%")
  print("")
  IRRF = salario_bruto_descontado_inss - valor_total_dependentes
  IRRF = IRRF * 0.225
  IRRF = IRRF - 636.13 # Parcela Dedutível.
  print("O valor da alíquota do IRRF é de: R$",round(IRRF,2))

else:

  print("A alíquota do IRRF é de 27,5%")
  print("")
  IRRF = salario_bruto_descontado_inss - valor_total_dependentes
  IRRF = IRRF * 0.275
  IRRF = IRRF - 869.36 # Parcela Dedutível.
  print("O valor da alíquota do IRRF é de: R$",round(IRRF,2))

print("____________________________________________________________________________________________________________")
print("")

# Salário Líquido:

desconto_total = INSS + IRRF

print("O valor total descontado do Salário Bruto foi de: R$",round(desconto_total,2))

print("____________________________________________________________________________________________________________")
print("")

salario_liquido = salario_bruto - desconto_total

print("O valor do Salário Líquido é de: R$",round(salario_liquido,2))

print("____________________________________________________________________________________________________________")
print("")

print("FIM!")

print("____________________________________________________________________________________________________________")
print("")
print("")