def tem_f?(lista)
  lista.each do |item|
    # puts "node: #{item[0].to_s}"
    next if item.empty?

    if item[0].to_s == 'f'
      puts "node: #{item}"
      puts "** node: #{item[0].to_s}"
      return item[0]
    else
      puts "node: #{item}"
      lista.push(item[1..])
    end
  end
end

a = ['a', 'f']
b = ['b']
c = ['c', 'd', 'f']

dados = [a, b, c]

tem_f?(dados)