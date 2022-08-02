def tem_f?(lista)
  lista.each do |item|
    next if item[:dados].empty?

    if item[:dados].first.to_s == 'f'
      puts "RESULTADO:"
      puts "node: dados: #{item[:dados].first} --- dados_imutaveis: #{item[:dados_imutaveis]}"
      puts "comprimento: #{item[:dados_imutaveis].size}"
      puts "grafo......: #{item[:dados_imutaveis]}"
      puts "vertice....: #{item[:dados].first}"
      return item[:dados].first
    else
      puts "node: dados: #{item[:dados]}"
      lista << { dados: item[:dados][1..], dados_imutaveis: item[:dados_imutaveis] }
    end
  end
end

a = { dados: ['a', 'f'], dados_imutaveis: ['a', 'f'] }
b = { dados: ['b'], dados_imutaveis: ['b'] }
c = { dados: ['c', 'd', 'f'], dados_imutaveis: ['c', 'd', 'f'] }

dados = [a, b, c]

tem_f?(dados)