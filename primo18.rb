puts("diga un numero para verificar si es primo o no")
n=gets.chomp.to_i
x=2
salir=false
loop do
 if n%x==0 then
  puts("no es primo")
 salir=true
else 
	x=x+1
end
 if x==n then
  puts ("es primo")
  salir=true
 end
 break if salir==true
end