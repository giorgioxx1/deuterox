respuesta = "s"
while respuesta != "N" do
 puts("Indique Numero")
 n=gets.chomp
 n=n.to_i
 primo=true
 i=2
 while i<n && primo do
   if n%i==0 then
   primo=false
   end
   i=i+1
   end
   if !primo then
   puts ("#{n} No es Primo")
   else
   puts ("#{n} Es Primo")
   end
  puts ("desea verificar otro numero? Y/N")
  respuesta=gets.chomp
  
 end

