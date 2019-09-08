nomeArquivo=gets.chomp
hash = {}
File.open(nomeArquivo) do |fp|
  fp.each do |line|
    key, value = line.chomp.split()
    hash[key] = value
  end
end
hashOrdenado=Hash[hash.sort_by {|k,v| k.to_i }]
puts(hashOrdenado.values{ |i| "'" + i.to_s + "'" }.join(""))