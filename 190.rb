a=[]
for i in 0..19 do
   a[i]=rand(10)
end
minimo=a[0]
maximo=a[0]
for i in 0..a.length-1 do    
   if a[i]<minimo then
       minimo=a[i]
   elsif a[i]>maximo then
       maximo=a[i]
   end
end
puts "el maximo es:#{maximo}"
puts "el minimo es:#{minimo}"
print "primos : "
for i in 0..a.length-1 do
   primo=true
   j = 2
   while j < a[i]
       if a[i]%j==0 then
           primo=false
       end
       j = j + 1
   end
   if primo && a[i] > 1 then
       print "#{a[i]}, "
   end
end
puts