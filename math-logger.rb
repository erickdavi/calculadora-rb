require 'logger'
class Registro
	def criar(filename)
		if !File.exist?(filename)
			File.new(filename,"w+")
		end	
	end

	def logar(op,num1,num2)
		logfile = 'math.log'
		self.criar(logfile)
		log = Logger.new(logfile)

		if (op == 'invalida' or (op == 'dividir' and num2 ==0)) 
			log.error("#{op} #{num1} e #{num2} !!Operacao invalida")
		else
			log.info("#{op} #{num1} e #{num2}")
		end
	end
end
