class Factorizador

	def calcularFactoresPrimos(num)
		numerosPrimos = []
		factor = 2

		while factor <= num
			while num % factor == 0
				numerosPrimos << factor;
				num = num / factor;
			end
			if factor == 2
				factor += 1;
			elsif
				factor += 2;
			end
		end

		return numerosPrimos
	end

end