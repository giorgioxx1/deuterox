
	a=[]
	for i in 0..19 do
		a[i]=rand(20)
	end


	minimo=100
	maximo=0
	for i in 0..a.length-1 do
		puts "#{a[i]}"
	
		if a[i]<minimo then
		minimo=a[i]
		elsif a[i]>maximo then
		maximo=a[i]
		end
	end
	print "el maximo es:#{maximo}"
	puts
	print "el minimo es:#{minimo}"
	puts
	for i in 0..a.length-1 do 
		primo=true
		for j in 2..a[i]-1 do 
		
			if a[i]%j==0 then
			primo=false
			end
		
		end
		if primo==true && a[i]>1 then
			puts"#{a[i]}"
		end
	end


