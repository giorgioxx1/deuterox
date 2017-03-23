a=[]
i=0
nr=0
while (a.length<15) do
	nr=rand(100)
	f=0
	val=false
	while (f<=i)&&(val==false)
		if nr==a[f] then
			val=true
		else
			f=f+1
		end
	end
		if val==false then
			a[i]=nr
			i=i+1
		end
end
promedio=0
for i in 0..a.length-1	 do
	promedio=a[i]+promedio
end
promedio=promedio/a.length
puts("#{a}")
puts("el promedio es #{promedio}")	







