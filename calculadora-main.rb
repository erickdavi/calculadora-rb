require './math-logger.rb'
class Calculadora
	protected def somar(valor1,valor2)
		resultado = valor1 + valor2		
	end
	protected def subtrair(valor1,valor2)
		resultado = valor1 - valor2		
	end
	protected def multiplicar(valor1,valor2)
		resultado = valor1 * valor2		
	end
	protected def dividir(valor1,valor2)
			resultado = valor1 / valor2		
	end
	protected def invalida(valor1,valor2)
		resultado = 'Somente somar, subtrair, multiplicar e dividir sao aceitas'
	end
	def operar(op,valor1,valor2)
		reg = Registro.new
		case op
		when 'somar'
			res = self.somar(valor1,valor2)
		when 'subtrair'
			res = self.subtrair(valor1,valor2)
		when 'multiplicar'
			res = self.multiplicar(valor1,valor2)
		when 'dividir'
			if valor2 != 0
				res = self.dividir(valor1.to_f,valor2.to_f)
			else
				#op 'invalida'
				res = 'Nao e possivel dividir por zero'
			end
		else
			op = 'invalida'
			res = self.invalida(valor1,valor2)
		end
		#puts "Operacao:  #{op}"
		reg.logar(op,valor1,valor2)
		return res
	end
end
#teste = Calculadora.new
#valor = teste.operar("somar",3,3)
#puts valor
