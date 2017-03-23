puts("diga un numero para hacer el conteo")
l=gets.chomp.to_i
primo=0
for n in 2..l do
  num_div=0
  for i in 2..n-1
    if n%i==0 then
      num_div=num_div+1
    end
  end
  if num_div==0 then
    primo=primo+1
      end  
end

 puts("la sumatoria de los primos es=#{primo}")