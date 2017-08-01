#!/usr/bin/ruby
require './calculadora-main.rb'

operacao = ARGV[0]
valor1 = ARGV[1].to_i
valor2 = ARGV[2].to_i

if operacao == "somar"
	resultado =somar(valor1,valor2)

elsif operacao == "subtrair"
	resultado = subtrair(valor1,valor2)

elsif operacao == "multiplicar"
	resultado =  multiplicar(valor1,valor2)

elsif operacao == "dividir"
	resultado = dividir(valor1,valor2)

else
	resultado = "Operacao inválida"
end


if resultado != "Operacao inválida"
	puts "O resultado de #{operacao} #{valor1} #{valor2} é #{resultado}"
else
	puts operacao
	puts resultado
end
