def tem_f?(lista)
    lista.each do |item|
      next if item[:dados].empty?
  
      if item[:dados].first.to_s == 'gado'
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
  
  a = { dados: ['tato', 'chato', 'gado'], dados_imutaveis: ['tato', 'chato', 'gado'] }
  b = { dados: ['tato', 'gato', 'gado'], dados_imutaveis: ['tato', 'gato', 'gado'] }
  c = { dados: ['tato', 'gato', 'grato', 'gado'], dados_imutaveis: ['tato', 'gato', 'grato', 'gado'] }
  d = { dados: ['gato', 'gado'], dados_imutaveis: ['gato', 'gado'] }
  
  dados = [a, b, c, d]
  
  tem_f?(dados)