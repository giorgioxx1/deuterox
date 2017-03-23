puts("introduzca un numero")
n=gets.chomp.to_i
factorial=1
for i in 1..n do
 factorial=factorial*i
 end
 puts("factorial de #{n} es = #{factorial}")