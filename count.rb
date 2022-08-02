def contando(numeros)
  if numeros.empty?
    puts "zero"
    return 0 
  end

  1 + contando(numeros[1..])
end

my_array = [0, 3, 5, 6, 8]
puts contando(my_array)