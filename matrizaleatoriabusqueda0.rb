# Codifique en Ruby un programa que genere una matriz 10x10 de numeros aleatorios entre 1 y 100, que ademas permita ubicar la posicion de un numero indicado por el usuario (4min)
system("clear")

max = 10
range = 100
# Se genera la matriz
m = []
for i in 0..max - 1 do
	m[i] = []
	for j in 0..max - 1
		m[i][j] = rand(range) + 1
	end
end

for i in 0..m.length - 1 do
	print m[i]
	puts
end

# Se pide el numero al usuario
print "Ingrese el numero: "
n = gets.chomp.to_i

encontrado = false
for i in 0..m.length - 1 do
	for j in 0..m[i].length - 1 do
		if m[i][j] == n then
			puts "Se encuentra en (#{i}, #{j})"
			encontrado = true
		end
	end
end

if !encontrado then
	puts "No encontrado"
end