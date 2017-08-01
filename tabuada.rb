require './calculadora-main.rb'

aleatorio = Random.new

valor1 = aleatorio.rand(10)
valor2 = 0
limite = valor2 + 2
while(valor2 <= limite) do
	resultado = somar(valor1,valor2)
	puts "#{valor1} + #{valor2} = #{resultado}"
	valor2 = valor2 + 1
end

while(valor2 <= limite) do
        resultado = subtrair(valor1,valor2)
        puts "#{valor1} - #{valor2} = #{resultado}"
        valor2 = valor2 + 1
end

while(valor2 <= limite) do
        resultado = multiplicar(valor1,valor2)
        puts "#{valor1} X #{valor2} = #{resultado}"
        valor2 = valor2 + 1
end

while(valor2 <= limite) do
        resultado = dividir(valor1,valor2)
        puts "#{valor1} / #{valor2} = #{resultado}"
        valor2 = valor2 + 1
end
