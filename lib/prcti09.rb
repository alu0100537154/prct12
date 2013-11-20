require "prcti09/version"

class Matriz
  attr_accessor :m, :n
  def initialize (m,n)
	@m = m
	@n = n
  end
end

class Mdensa < Matriz
  attr_accessor :matriz
  def initialize (m,n)
	super(m,n)
	@matriz = Array.new(m){ Array.new(n) }
  end
  
  #insertar
  def []= (i,j,valor)
	@matriz[i][j] = valor
  end

  #mostrar
  def [] (i)
  	return @matriz[i]	
  end
  
  def +(other)
                resultado = Mdensa.new(@m,@n)
		i = 0
		j = 0 
                while i < @m
         		while j < @n
                                resultado[i][j] = @matriz[i][j] + other[i][j]
				j += 1
                        end
			j = 0
			i += 1
                end
                resultado
   end

   def -(other)
                resultado = Mdensa.new(@m,@n)
                i, j = 0 , 0
                while i < @m
                        while j < @n
                                resultado[i][j] = @matriz[i][j] - other[i][j]
                                j = j + 1
                        end
                j = 0
                i = i + 1
                end
                resultado
   end

        def *(other)
                resultado = Mdensa.new(@m,@n)
                
                i = 0
                j = 0
                k = 0
                while i < @m
                        while j < @n
                                while k< @n
                                        resultado[i][j] = @matriz[i][k] * other[k][j]
                                        k = k + 1
                                end
                                k = 0
                                       j = j + 1
                        end
                               j = 0
                        i = i + 1
                end
		resultado
        end


    def min
		min = 1000
                i, j = 0 , 0
                while i < @m
                        while j < @n
                                if (@matriz[i][j] < min)
					min = @matriz[i][i]
				end
                                j = j + 1
                        end
                j = 0
                i = i + 1
                end
                min
   end


    def max     
                max = 0
                i, j = 0 , 0
                while i < @m
                        while j < @n
                                if (@matriz[i][j] > max)
                                        max = @matriz[i][i]
                                end
                                j = j + 1
                        end
                j = 0
                i = i + 1
                end
                max
   end


end

 
class Mdispersa < Mdensa
  attr_accessor :valores
  def initialize (valores)
	super(filas, columnas) 
  end
 
  def []=(i,j,valor)
  end

  def [](i)
  end 

  def max
  end

  def min
  end
 
end


 @m = Mdensa.new(2,2)
 @m[0,0] = 1
 @m[0,1] = 2
 @m[1,0] = 3
 @m[1,1] = 4

 @m1 = Mdensa.new(2,2)
 @m1[0,0] = 1
 @m1[0,1] = 2
 @m1[1,0] = 3
 @m1[1,1] = 4
 
 @m3 = @m +(@m1)
 puts @m3[0][0]
 puts @m3[0][1]
 puts @m3[1][0]
 puts @m3[1][1]

@m3 = @m -(@m1)
 puts @m3[0][0]
 puts @m3[0][1]
 puts @m3[1][0]
 puts @m3[1][1]
@m3 = @m *(@m1)
 puts @m3[0][0]
 puts @m3[0][1]
 puts @m3[1][0]
 puts @m3[1][1]

puts @m3.min
puts @m3.max
