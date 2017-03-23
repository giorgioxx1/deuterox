puts("introduzca un numero para determinar si es un impar entre 7 y 17")
n=gets.chomp.to_i
if n>7 && n<17 && (n%2!=0) then
 puts("el numero esta entre el rango y es impar")
elsif	 n%2!=0 then 
 puts("el numero no esta en el rango pero es impar")
elsif   n>7 && n<17 && n%2==0 then
 puts("el numero esta en el rango pero no es impar")
else 
 puts("el numero no esta en el rango pero es par")
end