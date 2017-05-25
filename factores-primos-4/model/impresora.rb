def imprimirArrayAscendente(factores)
	factores.sort.join(',').to_s
end

def imprimirArrayDescendente(factores)
	factores.sort.reverse.join(',').to_s
end