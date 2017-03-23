require "colorize"

def main()
opc_menu=menu #obtiene los valores de menu para que no se ejecuten las preguntas de nuevo
m = crear_matriz(opc_menu) #crea menu y conejos con los datos de opc de menu
mostrar_tablero(m) #muestra el tablero con los datos modificados
mostrar_menu(m) #muestra el menu con la actualizacion e lo que queda
entrada(m) #refiere los datos que ingresa el usuario
	
end


def menu()
	puts "Porfavor inserte cuantas casillas quiere en el campo, siendo estas mayor 4 y menor que 30"
	tam = gets.chomp.to_i
	puts "Introduzca la Cantidad de Conejos con los que desea jugar, se distribuiran entre hembras=H y machos=M "
		
		cantconejos = gets.chomp.to_i
	if tam <= 4 
	    tam=5
	elsif tam>=30
		tam=29
	end
	men = []
	men[0] = tam
	if cantconejos>tam
		cantconejos=tam
	end
	men[1] = cantconejos
	return men
end


def crear_matriz (opc_menu)	
/Matriz definida/
tam = opc_menu[0]
m = []
for i in 0..14 do
	m[i] = []
	for j in 0..tam - 1 do 
		m[i][j] = " "
	end
end

m = crear_conejos(m, opc_menu)
crear_coyotes(m, opc_menu)
	return m
end

def mostrar_tablero(m)
	system("clear")
	for i in 0..(m.length - 1) do
		for j in 0..(m[i].length - 1) do
			if m[i][j]==1 then
				print "M".colorize(:magenta) #machos
			elsif m[i][j]==2 then
				print "H".colorize(:blue)
			elsif m[i][j]==3 then
				print " ".colorize(:yellow)   
			elsif m[i][j]==4 then
				print "💥".colorize(:red)
			else
				print " "		
			end
			print "|".colorize(:green)
		end

		puts
	end	
end

def mostrar_menu(m)
	machos=0
	hembras=0
	for i in 0..m.length-1
		for j in 0..m[i].length-1
			if m[i][j] ==1 
				machos=machos+1
			elsif m[i][j] ==2
				hembras=hembras+1
			end
		end
	end
	print "COSECHA".on_green
	for i in 0..m[0].length-1-7
		print " "
	end
	puts
	puts
	puts
	puts "Hembras:#{hembras}"
	puts "Machos:#{machos}"
	puts "Direcciones= a:Izquierda, s:Abajo, d:Derecha"
	puts "Salir= x"
	puts "Muerte=💥"
end 

def entrada(m)
	resultado=[false, false]
    while true
		g = get_keypressed
		if g =="s" then
			resultado=movimiento(m, g)
		elsif g=="x" then
			return false
		elsif g=="d" then
			resultado=movimiento(m, g)	
		elsif g=="a" then
			resultado=movimiento(m, g)	
		end		
		mostrar_tablero(m)
		mostrar_menu(m)
		if resultado[0] == true 
			puts "estas roto ganaste gg well played +_+"
			return true
		end
		if resultado[1] == true
			puts "perdiste x_x"
			return true
		end
	end
end
				
def crear_conejos(m, opc_menu)
   h=opc_menu[1]
   macho = true
    for j in 0..m[0].length-1
   		if h > 0
   			mientras=false
   			contador=0
   			while mientras==false
   				contador=rand(m[0].length)
   				if m[0][contador] ==" "
   					mientras=true
   				end
   			end
   			if macho
   				m[0][contador] = 1
   				macho = false
   			elsif
   				m[0][contador] = 2
   				macho = true
   			end
   			h -=1
   		end

   	end
   return m
end

def crear_coyotes(m, opc_menu)
	h=opc_menu[1]
	for j in 0..h-1
		mientras=false
		contador=0
		while mientras==false
			contador=rand(m[0].length)
			if m[m.length-1][contador]== " "
				mientras=true
			end
		end
			m[m.length-1][contador]=3
   	end
   	return m
end






def movimiento(m, d)
	if d=="s" then
		for i in 0..m.length-1
			for j in 0..m[i].length-1
				if m[m.length-1-i][j] != " " && i!=0
					if m[m.length-1-i][j]==1 || m[m.length-1-i][j]==2 then
						m[m.length-i][j] = m[m.length-1-i][j]
						m[m.length-1-i][j]=" "
					end
				end
			end
		end
	end
	if d=="d" then 
		for i in 0..m.length-1
			for j in 0..m[i].length-1
				if m[i][m[i].length-1-j] != " " && j!=0 && m[i][m[i].length-j] ==" "
					if m[i][m[i].length-1-j]==1 || m[i][m[i].length-1-j]==2 then
						m[i][m[i].length-j] = m[i][m[i].length-1-j]
						m[i][m[i].length-1-j]=" "
						
					end

				end
				
			end
		end
	end	
	if d=="a" then 
		for i in 0..m.length-1
			for j in 0..m[i].length-1
				if m[i][j] != " " && j>0 && m[i][j-1] ==" "
					if m[i][j]==1 || m[i][j]==2 then
						m[i][j-1] = m[i][j]
						m[i][j]=" "
						
					end

				end
				
			end
		end
	end	
	mover_coyote(m)
	a=[ganador(m), perder(m)]
	return a

end

def mover_coyote (m)
	for i in 0..m.length-1
		for j in 0..m[i].length-1
			if m[i][j]== 3 && i>0
				if m[i-1][j]== 1 || m[i-1][j]== 2
					m[i-1][j]=4
				else
					m[i-1][j]=3
				end
				m[i][j]= " "
			end
		end
	end
end

def ganador (m)
	hembras = 0
	machos = 0
	for i in 0..m[m.length-1].length-1
		if m[m.length-1][i]==1 
			machos=machos+1
		elsif m[m.length-1][i]==2
			hembras=hembras+1 
		end
	end
	if hembras>0 && machos>0 
		return true
	end
	return false
end

def perder (m)
	machos = 0
	hembras = 0
	for i in 0..m.length-1 
		for j in 0..m.length-1
			if m[i][j] == 1 
				machos=machos+1
			elsif m[i][j] == 2 
				hembras=hembras+1
			end
		end
	end
	if machos == 0 || hembras == 0 
		return true
	end
	return false
end












def get_keypressed
	system("stty raw -echo")
	t = STDIN.getc
	system("stty -raw echo")
	return t
end



main