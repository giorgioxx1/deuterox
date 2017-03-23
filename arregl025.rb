a=[]
for i in 1..10 do 	
	a[i]=i+1
end
for i in 1..a.length-1	 do
	a[i]=rand(100)
	puts ("el rango de numeros es #{a[i].to_s}")
end
promedio=0

inferior=a[0]
superior=0	
for i in 1..a.length-1 do 
	
	promedio=a[i]+promedio
	if a[i]>superior then
		superior=a[i]
	elsif a[i]<inferior then
		inferior=a[i]
	end
	 
end
 promedio=promedio/a.length
puts ("el promedio es #{promedio}")	
puts ("el valor superior es#{superior}")
puts ("el valor inferior es#{inferior}")
