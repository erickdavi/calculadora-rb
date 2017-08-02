#!/usr/bin/ruby
require './calculadora-main.rb'

repeticoes = 3

aleatorio = Random.new
calculadora = Calculadora.new

operacoes = [
	{op: 'somar', simb: '+'},
	{op: 'subtrair', simb: '-'},
	{op: 'multiplicar', simb: 'X'},
	{op: 'dividir', simb: '/'}
]


operacoes.each do |op| 
	puts "#{op[:op].capitalize}"
	repeticoes.times do
		num1 = aleatorio.rand(10)
		num2 = aleatorio.rand(10)
		puts "#{num1} #{op[:simb]} #{num2} = #{calculadora.operar(op[:op],num1,num2)}"
	end
end