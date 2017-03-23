# Lee la tecla pulsada desde el terminal sin presionar Enter

def get_keypressed
	system("stty raw -echo")
	t = STDIN.getc
	system("stty -raw echo")
	return t
end

loop do
	print "Presione cualquier tecla (s para salir): "
	t = get_keypressed
	puts t
	break if t == "s"
end