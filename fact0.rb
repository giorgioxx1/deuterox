printf("Factorial de:")
n=gets.chomp
n=n.to_i

factorial=1

for i in 1..n do
factorial=factorial*i
end
puts(n.to_s+"!="+factorial.to_s)
puts("#{n}!=#{factorial}")
