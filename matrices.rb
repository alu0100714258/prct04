# ! /usr/bin/ruby

a = [[3,3,3],[3,3,3],[3,3,3]] #matriz a
b = [[1,1,1],[1,1,1],[1,1,1]] #matriz a
c = [[0,0,0],[0,0,0],[0,0,0]] #matriz c


# SUMA
	def suma (a, b, c) #definimos el metodo suma
		m,n = a.size,a[1].size #obtener dimensiones de a
	for i in 0...m do
		for j in 0...n do
			c[i][j] = a[i][j] + b[i][j]
		end
	end

#mostrar resultado de la suma
	puts "La suma es: "
		for i in 0...m do
			for j in 0...n do
				print c[i][j]
				print " "
			end
			puts ""
		end	
	end

# Muestra las matrices a y b
	def mostrar_matrices(a,b)
		m,n = a.size,a[1].size #para obtener las dimensiones de a
		puts "La matriz a es: "
		for i in 0...m do
			for j in 0...n do
			print a[i][j]
			print " "
			end
			puts ""
		end

puts "La matriz b es: "
		for i in 0...m do
			for j in 0...n do
			print b[i][j]
			print " "
			end
		puts ""
		end
	end

# Multiplicación

	def multiplicacion(a,b,c)
		m,n = a.size,a[1].size

		for y in 0...m do

			for i in 0...m do
			aux = 0

				for j in 0...n do
				aux += a[i][j]*b[j][y]

				end	

			c[i][y] = aux;

			end
		end

puts "La Multiplicacion es: "


		for i in 0...m do

			for j in 0...n do

			print c[i][j]

			print " "

			end

		puts ""

		end
	end


# Llamadas a las funciones suma, multiplicación y matrices(a y b)

mostrar_matrices(a,b)	#Para llamar a la funcion mostrar_matrices
multiplicacion(a,b,c)
suma(a,b,c) 		#Para llamar a la funcion suma
