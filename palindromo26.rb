texto=gets.chomp
puts texto.length
palindromo=true
j=texto[texto.length-1]
l=1
for i in 0..texto.length-1 do 
	  if
       j!=texto[i]
       palindromo=false       
      end
      l=l+1
      j=texto[texto.length-l]
end
puts palindromo