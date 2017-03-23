operacion=0
pares=0
impares=0
puts("introduzca un numero determinado para poner el limite de la corrida")
n=gets.chomp.to_i
for i in 2..n do 
  if i%2!=0 then
  	impares=impares+1
  else 
  	pares=pares+1  	
  end
end
puts("la sumatoria de los numeros naturales pares e impares del 0 al numero dado es= pares=#{pares} e impares=#{impares}")
  