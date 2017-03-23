def llenar_arreglo(l)
	x = []
	for i in 0..l - 1
		x[i] = rand(20)
	end
	return x
end

a=llenar_arreglo(10)

def minimo(x)
	min = x[0]
	for i in 0..x.length-1 do
		if x[i]<min then
		min=x[i]		
		end
	end
	return min
end

def maximo(x)
	max = x[0]
	for i in 0..x.length-1 do
		if x[i]>max then
		max=x[i]		
		end
	end
	return max
end

def primos(x)
	primos=0
	print "Primos="
	for i in 0..x.length-1 do 		
		primo=true
		for j in 2..x[i]-1 do 
		
			if x[i]%j==0 then
			primo=false
			end		
		end
		
		if primo==true && x[i]>1 then
			 primos=x[i]
			 print "#{primos} "
			 end
	end
	return primos
end


def mostrar_info(y, t)
	min = minimo(y)
	max = maximo(y)
	primos = primos(y)
	puts	
	puts "#{t} = #{y}"
	puts "Min= #{min}"
	puts "Max: #{max}"
	#puts "Primos: #{primos}"
end

mostrar_info(a, "a")



