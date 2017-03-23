suma=0
puts("introduzca un numero para la sumatoria")
n=gets.chomp.to_i
for i in 1..n do
  suma=suma+i
end
puts("suma de los numeros naturales del 1 al n es=#{suma}")