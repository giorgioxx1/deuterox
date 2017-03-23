puts("diga un numero para hacer el conteo")
n=gets.chomp.to_i
contador=0
r=0
for i in 2..n do
  
  	loop do
  		salir=false
  		g=2
  		if i%g!=0
    	g=g+1
			end
  	if i==g then
  	contador=contador+1  
  	salir=true	
  	end
    break if salir==true
   
  end
end

 puts("la sumatoria de los primos es=#{contador}")