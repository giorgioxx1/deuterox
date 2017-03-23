
a = []
for i in 1..20 do
    a[i-1] = rand(100)
end
for i in 1..20 do
    puts(a[i-1].to_s)
end