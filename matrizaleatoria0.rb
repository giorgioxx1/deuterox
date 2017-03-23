# genere una matriz 8x8 de numeros aleatorios del
# 0 al 100

m = []

for i in 0..7
	a = []
	
	for j in 0..7
		a[j] = rand(101)
	end
	
	m[i] = a
end

puts "#{m}"