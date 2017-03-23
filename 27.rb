a=[]
for i in 0..10 do
	a[i]=rand(100)
end
for i in 0..10 do
 	for j in 0..a.length-1
 		if a[j]>a[i] then
 			aux=a[i]
   			a[i]=a[j]
    		a[j]=aux
		end     
    end
end
print "lista="
for i in 0..a.length-1
	print "#{a[i]} "
end
puts