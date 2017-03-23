#generar una matriz de enteros aleatorios y mostrar la suma de
#sus numeros primos

l = 4
m = []

for i in 0..l do
	m[i] = []
	for j in 0..1 do
 		m[i][j]=rand(100)
	end
end

for i in 0..m.length-1 do
	puts"#{m[i]}"
end
suma=0
for i in 0..m.length-1 do
	for j in 0..m[i].length-1 do
		k = 2
		primo=true
		while k<m[i][j]&&primo
			if m[i][j]%k == 0 then
			primo = false
		end
	 k+=1
	end
	if m[i][j]>1&& primo then
		suma = suma + m[i][j]
		print"#{m[i][j]}"
 	end
end
end
puts"suma"