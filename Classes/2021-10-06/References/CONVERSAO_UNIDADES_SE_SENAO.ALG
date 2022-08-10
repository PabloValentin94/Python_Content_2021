Algoritmo "Conversao_Unidades"
//Bem-vindo ao sistema de Conversões
//Selecione uma opção no menu:
//1 => Converter Km -> m
//2 => Converter m  -> cm
//3 => Converter cm -> mm
//4 => Converter cm -> pol
//2
//Digite o valor em metros (m):
//1
//A conversão de metros (m) para cm é 100 cm

Var
// Seção de Declarações das variáveis 
op:inteiro
km, resultado, metro, cm:real

Inicio
Escreval("Bem-vindo ao sistema de Conversões")
Escreval("Selecione uma opção no menu:")
Escreval("1 => Converter Km -> m")
Escreval("2 => Converter m  -> cm")
Escreval("3 => Converter cm -> mm")
Escreval("4 => Converter cm -> pol")
Leia(op)

Se (op = 1) Então
    Escreval("Informe o Km:")
    Leia(km)
    resultado <- km * 1000
    Escreval(km, " km em metros são ", resultado, " m")
Senão
    Se (op = 2) Então
        Escreval("Informe os metros:")
        Leia(metro)
        resultado <- metro * 100
        Escreval(metro, " m em cm são ", resultado, " cm")
    Senão
        Se (op = 3) Então
            Escreval("Informe os centímetros:")
            Leia(cm)
            resultado <- cm * 10
            Escreval(cm, " cm em milímetros são ", resultado, " mm")
        Senão
            Se (op = 4) Então
                Escreval("Informe os centímetros:")
                Leia(cm)
                resultado <- cm / 2.54
                Escreval(cm, " cm em pol são ", resultado, " pol")
            Senão
                Escreval ("Opção inválida")
            Fimse
        Fimse
    Fimse
Fimse

Fimalgoritmo