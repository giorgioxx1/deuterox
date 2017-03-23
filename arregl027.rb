a=[]
for i in 1..10 do 	
	a[i]=i+1
end
for i in 1..a.length-1	 do
	a[i]=rand(100)
	puts ("el rango de numeros es #{a[i].to_s}")
end
promedio=0

inferior=100
superior=0	
for i in 1..a.length-1 do 
	
	promedio=a[i]+promedio
	if a[i]>superior then
		superior=a[i]
	elsif a[i]<inferior then
		inferior=a[i]
	end
end
V1=a[O]
V
for i in 1..a.length-1 do
	if a[i]==inferior then
		
end
 promedio=promedio/10
puts ("el promedio es #{promedio}")	
puts ("el valor superior es#{superior}")
puts ("el valor inferior es#{inferior}")
