print "N:"
puts("introduzca un numero")
n=gets.chomp.to_i
a=0
b=1

print "#{a}"
for i in 1..n do
  print ("#{b},")
  aux=a
  a=b
  b=aux+b
end	
puts
	
