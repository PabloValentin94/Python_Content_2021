Algoritmo "Conversao_Unidades"
//Bem-vindo ao sistema de Convers?es
//Selecione uma op??o no menu:
//1 => Converter Km -> m
//2 => Converter m  -> cm
//3 => Converter cm -> mm
//4 => Converter cm -> pol
//2
//Digite o valor em metros (m):
//1
//A convers?o de metros (m) para cm ? 100 cm

Var
// Se??o de Declara??es das vari?veis 
op:inteiro
km, resultado, metro, cm:real

Inicio
Escreval("Bem-vindo ao sistema de Convers?es")
Escreval("Selecione uma op??o no menu:")
Escreval("1 => Converter Km -> m")
Escreval("2 => Converter m  -> cm")
Escreval("3 => Converter cm -> mm")
Escreval("4 => Converter cm -> pol")
Leia(op)

Se (op = 1) Ent?o
    Escreval("Informe o Km:")
    Leia(km)
    resultado <- km * 1000
    Escreval(km, " km em metros s?o ", resultado, " m")
Sen?o
    Se (op = 2) Ent?o
        Escreval("Informe os metros:")
        Leia(metro)
        resultado <- metro * 100
        Escreval(metro, " m em cm s?o ", resultado, " cm")
    Sen?o
        Se (op = 3) Ent?o
            Escreval("Informe os cent?metros:")
            Leia(cm)
            resultado <- cm * 10
            Escreval(cm, " cm em mil?metros s?o ", resultado, " mm")
        Sen?o
            Se (op = 4) Ent?o
                Escreval("Informe os cent?metros:")
                Leia(cm)
                resultado <- cm / 2.54
                Escreval(cm, " cm em pol s?o ", resultado, " pol")
            Sen?o
                Escreval ("Op??o inv?lida")
            Fimse
        Fimse
    Fimse
Fimse

Fimalgoritmo