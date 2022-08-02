def maior(numeros)
  return 0 if numeros.empty?

  if numeros[0] > maior(numeros[1..])
    numeros[0]
  else
    maior(numeros[1..])
  end
end

my_array = [99, 51, 2, 3, 4]
puts maior(my_array)