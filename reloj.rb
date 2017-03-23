a = []
for i in 0..4
    a[i] = []
    for j in 0..4
        a[i][j] = rand(10)+2
    end
end
r = 0
b = 1
for i in 0..a.length-1
    for j in 0..a.length-1
        if j >= r && j <= a.length-1-r
            a[i][j] = 1
        else
            a[i][j] = 0
        end
    end
    if r == (a.length-1)/2
        b = -1
    end
    r = r + b
end
for i in 0..a.length-1
    puts("#{a[i]}")
end