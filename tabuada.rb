#!/usr/bin/ruby
require './calculadora-main.rb'

repeticoes = 3
operacoes = ["somar","subtrair","multiplicar","dividir"]
aleatorio = Random.new
calculadora = Calculadora.new

operacoes.each do |op| 
	case op
	when "somar"
		puts "Exemplos de Soma"	
		repeticoes.times do
			num1 = aleatorio.rand(10)
			num2 = aleatorio.rand(10)
			puts "#{num1} + #{num2} = #{calculadora.somar(num1,num2)}"
		end

	when "subtrair"
		puts "Exemplos de subtração"
		repeticoes.times do
			num1 = aleatorio.rand(10)
			num2 = aleatorio.rand(10)
			puts "#{num1} - #{num2} = #{calculadora.subtrair(num1,num2)}"			
		end

	when "multiplicar"
		puts "Exemplos de multiplicação"
		repeticoes.times do
			num1 = aleatorio.rand(10)
			num2 = aleatorio.rand(10)
			puts "#{num1} X #{num2} = #{calculadora.multiplicar(num1,num2)}"			
		end		

	when "dividir"
		puts "Exemplos de divisão"
		repeticoes.times do
			num1 = aleatorio.rand(10).to_f
			num2 = aleatorio.rand(10).to_f
			puts "#{num1} / #{num2} = #{calculadora.dividir(num1,num2)}"			
		end		
	end
end
