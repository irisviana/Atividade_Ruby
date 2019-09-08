nomeArquivo=gets.chomp
hash = {}
File.open(nomeArquivo) do |fp|
  fp.each do |line|
    unless line.chomp=='9999'
      codigo,molde = line.chomp.split()
      quantTimina=molde.count('T')
      hash[quantTimina] =codigo
    end
  end
end
puts(hash.max_by{|quantTimina,codigo| quantTimina.to_i }[1])
