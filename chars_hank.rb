class CharsHank
  def self.main
    dados = "|**|****|*"

    array_dados = dados.chars

    sample = array_dados[1..5]

    cont = 0
    start_index = sample.each_with_index.map do |elem,index|
      break index if elem == '|'
    end

    new_sample = sample[(start_index+1)..]

    fin_index = new_sample.each_with_index.map do |elem,index|
      break index if elem == '|'
    end

    unless fin_index.is_a?(Array)
      p new_sample[..(fin_index-1)]
      p new_sample[..(fin_index-1)].length
    end
  end
end

CharsHank.main