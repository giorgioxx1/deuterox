def crear_matriz()
	puts "introduzca el tamaño e la matriz"
	t=gets.chomp.to_i
	m=[]
	for i in 0..t-1 do
		m[i]=[]
		for j in 0..t-1 do
			m[i][j]=rand(10)
		end
	end
	return m
end

def mostrar_matriz(m)
	for i in 0..m.length-1 do
		puts "#{m[i]}"
	end
end

mostrar_matriz(crear_matriz)