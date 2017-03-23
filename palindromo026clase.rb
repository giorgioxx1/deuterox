a="arepera"
palindromo=true
i=0
while palindromo && i<a.length/2
if a[i]!= a[a.length-1-i]then
palindromo=false
end
i=i+1
end
if palindromo then
puts "es palindromo"
else
puts "no es palindromo"
end