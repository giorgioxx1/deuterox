a=[]
for i in 0..20 do 	
	a[i]=i+1
end
for i in 0..a.length-1 do
	a[i]=rand(20)
	puts (a[i].to_s)
end
