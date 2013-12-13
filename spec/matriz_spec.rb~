require 'prcti09.rb'
require 'oper.rb'

#Densa
describe Matriz do
  before :each do

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
    @m3 = Mdensa.new(2,2)

	@m4 = Mdensa.new(2,2)
    @m4[0,0] = Racional.new(1,2)
    @m4[0,1] = Racional.new(1,2)
    @m4[1,0] = Racional.new(1,2)
    @m4[1,1] = Racional.new(1,2)
  end


  describe "Comprobamos el correcto almacenamiento de" do
    it "Se almacena correctamente la fila" do
      @m.m.should eq(2)
    end

    it "Se almacena correctamente la columna" do
      @m.n.should eq(2)
    end
   
    it "Mostrar" do
     @m[0][0].should eq(1)
     @m[0][1].should eq(2)
     @m[1][0].should eq(3)
     @m[1][1].should eq(4)
    end
  end

  describe "Operaciones"
    it "Suma" do
     @m3 = @m + @m1
     @m3[0][0].should eq(2)
     @m3[0][1].should eq(4)
     @m3[1][0].should eq(6)
     @m3[1][1].should eq(8)   
    end
    it "Resta" do
	@m3 = @m - @m1
     @m3[0][0].should eq(0)
     @m3[0][1].should eq(0)
     @m3[1][0].should eq(0)
     @m3[1][1].should eq(0)
	end
    it "Multiplicacion" do
     @m3 = @m * @m1
     @m3[0][0].should eq(6)
     @m3[0][1].should eq(8)
     @m3[1][0].should eq(12)
     @m3[1][1].should eq(16)
     end

	 it "Multiplicacion densa con racionales" do
     @m3 = @m * @m4
     @m3[0][0].should eq(Racional.new(1,1))
     @m3[0][1].should eq(Racional.new(1,1))
     @m3[1][0].should eq(Racional.new(2,1))
     @m3[1][1].should eq(Racional.new(2,1))
     end
     
	it "suma con racionales" do
                      
	@m3 = @m + @m4
	@m3[0][0].should eq(Racional.new(3,2))
    	@m3[0][1].should eq(Racional.new(5,2))
     	@m3[1][0].should eq(Racional.new(7,2))
     	@m3[1][1].should eq(Racional.new(9,2)) 
     end

	it "Minimo densa" do
                      
	x = @m.min
        x.should eq(1)
     end

	it "Maximo densa" do
                      
	x = @m.max
        x.should eq(4)
     end


  end



#racionales
describe Racional do
   before :each do
      @f = Racional.new(-1,2)
      @f2 = Racional.new(-3,4)
   end
   describe "Guardar variables" do
      it "Numerador" do
         @f.numerador.should eq(-1)
      end
      it "Denominador" do
  
       @f.denominador.should eq(2)
      end
   end


   describe "Mostrar" do
      it "Mostrar Racional" do
         @f.to_s.should match "-1/2"
      end
      it "Mostrar flotante" do
         @f.flotante.should eq(-1.0)
      end
   end
   describe "Metodos de calculo" do
      it "Se debe sumar dos Racionales con + y dar el resultado de forma reducida" do
         @f.+(@f2).should eq(Racional.new(-5,4))
      end
      it "Se debe restar dos Racionales con - y dar el resultado de forma reducida" do
         @f.-(@f2).should eq(Racional.new(1,4))
      end
      it "Se debe multiplicar dos Racionales con * y dar el resultado de forma reducida" do
         @f.*(@f2).should eq(Racional.new(3,8))
      end
      it "Se debe dividir dos Racionales con / y dar el resultado de forma reducida" do
         @f./(@f2).should eq(Racional.new(-2,-3))
      end
  
      it "Se debe calcular el valor absoluto de una Racional con el metodo abs" do
         @f.abs
         @f.numerador.should eq(1)
         @f.denominador.should eq(2)
      end

      it "Se debe calcular el reciproco de una Racional con el metodo reciprocal" do
         @f.reciprocal
         @f.numerador.should eq(2)
         @f.denominador.should eq(-1)
      end
      it "Se debe calcular el opuesto de una Racional con -@" do
         @f.-@
         @f.numerador.should eq(1)
      end
   end
   describe "Metodos de comparacion" do
      it "Se debe comparar si dos Racionales son iguales con ==" do
         @f3 = Racional.new(-8,4)
         @f4 = Racional.new(1,6)
         @f.==(@f3).should be false
         @f.==(@f4).should be false
      end
      it "Se debe de poder comprobar si una fracion es menor que otra" do
         @f3 =Racional.new(1,3)
         @f4 = Racional.new(-16,2)
         @f.<(@f3).should be true
         @f.<(@f4).should be false
      end
      it "Se debe de poder comprobar si una fracion es mayor que otra" do
         @f3 = Racional.new(1,3)
         @f4 = Racional.new(-16,2)
         @f.>(@f3).should be false
         @f.>(@f4).should be true
      end
      it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
         @f3 = Racional.new(1,3)
         @f4 = Racional.new(-16,2)
         @f5 = Racional.new(-8,4)
         @f.<=(@f3).should be true
         @f.<=(@f4).should be false
         @f.<=(@f5).should be false
      end
      it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
         @f3 = Racional.new(1,3)
         @f4 =Racional.new(-16,2)
         @f5 = Racional.new(-8,4)
         @f.>=(@f3).should be false
         @f.>=(@f4).should be true
         @f.>=(@f5).should be true
      end
   end
end


#Dispersa y Densa
 describe MDispersa do
 before :all do
                @m1 = Mdensa.new(2,2)
		@m1[0,0] = 1
    		@m1[0,1] = 2
   		@m1[1,0] = 3
    		@m1[1,1] = 4
                @m2 = MDispersa.new(2, 2, {0 => {0 => 0, 1 => 0}, 1 => {0 => 0, 1 => 4}})
                @m3 = MDispersa.new(2, 2, {0 => {0 => Racional.new(1,2), 1 => Racional.new(1,2)}, 1 => {0 => Racional.new(1,2), 1 => Racional.new(1,2)}})
		@m10 = MDispersa.new(2, 2, {0 => {0 => 0, 1 => 0}, 1 => {0 => Racional.new(1,2), 1 => 0}})
               
        end

        describe "Operaciones matrices de diferentes " do
                
                        it "Suma" do
                                @m4 = @m1 + @m2 
				@m4[0][0].should eq(1)
    				@m4[0][1].should eq(2)
     				@m4[1][0].should eq(3)
     				@m4[1][1].should eq(8)  
                        end

			#prueba clase simple dispersa
                        it "Suma" do
                                @m4 = @m1 + @m10
				@m4[0][0].should eq(1)
    				@m4[0][1].should eq(2)
     				@m4[1][0].should eq(Racional.new(7,2))
     				@m4[1][1].should eq(4)  
                        end			

                      it "Resta" do
                      
				@m4 = @m1 - @m2
				@m4[0][0].should eq(1)
    				@m4[0][1].should eq(2)
     				@m4[1][0].should eq(3)
     				@m4[1][1].should eq(0) 
				
			end
			   it "Multiplicacion de Racionales con enteros" do
                                @m4 = @m1 * @m3
				@m4[0][0].should eq(Racional.new(1,1))
    				@m4[0][1].should eq(Racional.new(1,1))
     				@m4[1][0].should eq(Racional.new(2,1))
     				@m4[1][1].should eq(Racional.new(2,1)) 
				
                        end
			it "suma con racionales" do
                      
				@m4 = @m1 + @m3
				@m4[0][0].should eq(Racional.new(3,2))
    				@m4[0][1].should eq(Racional.new(5,2))
     				@m4[1][0].should eq(Racional.new(7,2))
     				@m4[1][1].should eq(Racional.new(9,2)) 
			end

			it "Resta con racionales" do
                      
				@m4 = @m1 - @m3
				@m4[0][0].should eq(Racional.new(-1,2))
    				@m4[0][1].should eq(Racional.new(-3,2))
     				@m4[1][0].should eq(Racional.new(-5,2))
     				@m4[1][1].should eq(Racional.new(-7,2)) 
				
			end
	it "Minimo densa" do
                      
	x = @m1.min
        x.should eq(1)
     end

	it "Maximo densa" do
                      
	x = @m1.max
        x.should eq(4)
     end
		
   end
end    



describe "DSL" do
                
                it " suma" do
                        @sum = Mydsl.new("suma") do
                                operando(2,2,[1,1,2,2])
                                operando(2,2,[2,2,4,4])
                        end
                        @m1 = Mdensa.new(2,2)
			@m1[0,0] = 3
    			@m1[0,1] = 3
   			@m1[1,0] = 3
    			@m1[1,1] = 3
                        aux = @sum.run
			aux.should eq(@m1)

                end
                
		it "resta" do
                        @sum = Mydsl.new("resta") do
                                operando(2,2,[1,1,2,2])
                                operando(2,2,[2,2,4,4])
                        end
                        @m1 = Mdensa.new(2,2)
			@m1[0,0] = -1
    			@m1[0,1] = -1
   			@m1[1,0] = -1
    			@m1[1,1] = -1
                        aux = @sum.run
			aux.should eq(@m1)

                end
               


        end
