nomeArquivo=gets.chomp
arrayEntrada=[];arraySaida=[0,0.0,0,0]
File.open(nomeArquivo) do |fp|
  fp.each_line do |line|
    unless (line.chomp=='PARAR' || line.chomp=='continuar')
      arrayEntrada.push(line.chomp)
    end
  end
end
arrayEntrada.each_slice(3)do |loc|
  if(loc[0]=='macaco')
    arraySaida[0]+=1
  elsif(loc[0]=='cobra' && loc[2]=='Venezuela')
    arraySaida[2]+=1
  elsif(loc[0]=='tigre')
    arraySaida[3]+=1
    arraySaida[1]=arraySaida[1]+(loc[1]).to_f
  end
end
puts(arraySaida[0],(arraySaida[1]/arraySaida[3]),arraySaida[2])
