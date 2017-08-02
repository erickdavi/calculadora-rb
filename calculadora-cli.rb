#!/usr/bin/ruby
require './calculadora-main.rb'

calc = Calculadora.new
operacao = ARGV[0]
valor1 = ARGV[1].to_i
valor2 = ARGV[2].to_i

if operacao == "somar"
	resultado = calc.somar(valor1,valor2)

elsif operacao == "subtrair"
	resultado = calc.subtrair(valor1,valor2)

elsif operacao == "multiplicar"
	resultado =  calc.multiplicar(valor1,valor2)

elsif operacao == "dividir"
	resultado = calc.dividir(valor1,valor2)

else
	resultado = "Operacao inválida"
end


if resultado != "Operacao inválida"
	puts "O resultado de #{operacao} #{valor1} #{valor2} é #{resultado}"
else
	puts operacao
	puts resultado
end
