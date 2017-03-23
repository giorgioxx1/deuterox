n=gets.chomp.to_i
f=[0,1] 

for i in 2..n do 
f[i]=f[i-1]+f[i-2]
puts ("#{f[i]}")
end
puts ("#{f[n]}")
