#!/bin/bash

echo "================================="
echo "      CALCULADORA LINUX"
echo "================================="

echo "Digite o primeiro número:"
read num1

echo "Digite o segundo número:"
read num2

echo ""
echo "Escolha a operação:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"

read opcao

if [ $opcao -eq 1 ]; then
    resultado=$((num1 + num2))
    echo "Resultado: $resultado"

elif [ $opcao -eq 2 ]; then
    resultado=$((num1 - num2))
    echo "Resultado: $resultado"

elif [ $opcao -eq 3 ]; then
    resultado=$((num1 * num2))
    echo "Resultado: $resultado"

elif [ $opcao -eq 4 ]; then

    if [ $num2 -eq 0 ]; then
        echo "Erro: divisão por zero não é permitida."
    else
        resultado=$((num1 / num2))
        echo "Resultado: $resultado"
    fi

else
    echo "Opção inválida."
fi
