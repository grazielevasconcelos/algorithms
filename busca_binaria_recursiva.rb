def busca(numeros, item)
  chute = (numeros.length/2).floor

  if numeros.length == 0
    return 'FAIL'
  end

  if numeros[chute] == item
    return numeros[chute]
  end

  if numeros[chute] < item
    return busca(numeros[chute+1..], item)
  end

  return busca(numeros[..chute-1], item)
end

my_array = [0,1,2,3,4,5,6,7,8,9,10,11]
puts busca(my_array, 9)