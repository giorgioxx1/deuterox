
def ver_repetidos(a, n)

	for i in 0..a.length-1 
		if a[i]==n then
			return false
		end
	end
	return true
end

def crear_arreglo()
	a=[]
	for i in 0..19 do
		n = rand(20)
		while !ver_repetidos(a,n)
			n = rand(20)
		end
		a[i]=n
	end
	puts "#{a}"
	return a
end

crear_arreglo()


