#!/usr/bin/ruby
require './calculadora-main.rb'

calc = Calculadora.new
operacao = ARGV[0]
valor1 = ARGV[1].to_i
valor2 = ARGV[2].to_i

resultado = calc.operar(operacao,valor1,valor2)

puts resultado