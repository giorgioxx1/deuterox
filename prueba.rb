$a=[]

def producto (b,c)
	b[0]=[0,1,3]
	return b
end
d=producto($a,3)
puts d==$a
d[0][0]=1
puts $a