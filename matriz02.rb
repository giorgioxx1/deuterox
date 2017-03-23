def matriz_nueva()
	m=[]
	for i in 0..10 do
		m[i]=[]
		for j in 0..10 do
			m[i][j]=rand(10)	
		end
	end
	return m
end

def mostrar_matriz(m)
	for i in 0..m.length-1  do 
		puts "#{m[i]}"
		
	end		
end

def suma(a, m)
	z=matriz_nueva
	for i in 0..a.length-1 do 
		for j in 0..a.length-1
			z[i][j]=a[i][j]+m[i][j]
		end
	end
	return z
end

a=matriz_nueva
m=matriz_nueva 
z=suma(m, a)
mostrar_matriz(m)
puts
mostrar_matriz(a)
puts
mostrar_matriz(z)

