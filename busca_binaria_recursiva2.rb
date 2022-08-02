def binary_search(numeros, item)
    chute = (numeros.length/2).floor

    return numeros[chute] if numeros[chute] == item

    if numeros[chute] > item
      return binary_search(numeros[0..chute-1], item)
    end

    if numeros[chute] < item
      return binary_search(numeros[chute+1..numeros.length], item)
    end
end

my_array = [0,1,2,3,4,5,6,7,8,9,10,11]
puts binary_search(my_array, 9)

#https://medium.com/codex/the-fastest-searching-algorithm-binary-search-in-ruby-f1bbcfaf4513