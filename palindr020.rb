puts ("escriba un numero")
n=gets.chomp.to_i
m = n
pali= 0
while m>0 
 pali=(pali*10)+(m%10)
 m=m/10
end
if pali == n 	
	puts("es palindromo")
else
	puts("no es palindromo")	
end

