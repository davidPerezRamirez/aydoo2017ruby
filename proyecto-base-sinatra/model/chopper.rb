class Chopper

  def chop(n, array)
  	result = -1
  	aux = 0
  	encontrado = false

  	if array.include? n
  	  while ((aux < array.length) && (!encontrado)) do	  	    
        if array[aux] != n
	      aux+=1
	    else 
	      encontrado = true
	    end
	  end
	  array.delete_at(aux);
	  result = array.length
	end

    return result
  end
end