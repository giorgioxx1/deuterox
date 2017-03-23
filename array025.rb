a=[]
for i in 0..10 do 	
	a[i]=i+1
end
for i in 0..a.length-1	 do
	a[i]=rand(10)
	puts ("el rango de numeros es #{a[i].to_s}")
end
promedio=0
for i in 0..a.length-1 do 
	
	promedio=a[i]+promedio
end
 promedio=promedio/10
puts ("el promedio es #{promedio}")
puts ("el valor maximo es #{a[9]}")	
puts ("el valor minimo es ")