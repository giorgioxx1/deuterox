puts ("introduzca un entero")
entero=gets.chomp
entero=entero.to_i
resultado=false
if entero%2==0 then
 resultado=true
 puts("es par=#{resultado}")
else
 puts("es par=#{resultado}")
end
