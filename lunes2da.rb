m=[]
for i in 0..2 do
	m[i]=[]
	for j in 0..2 do
		m[i][j]=rand(10)
	end
end
suma=0
primo=true
for i in 0..m[i].length-1 do
	for j in 0..m[i].length-1 do
		k=2
		primo=true
		while k<m[i][j]&&primo
			if m[i][j]%k==0 then
				primo=false
		    end
		k+=1
		end
		if primo then
		suma=suma+m[i][j]
		puts("#{suma}")
		end
	end
end
for i in 0..m.length-1 do
	for j in 0..m[i].length-1 do
		puts
        print "#{m[j]}"
		
	end
print "#{m[i]}"
	end

puts("#{suma}")


