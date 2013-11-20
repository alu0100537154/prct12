require "Matriz.rb"

describe Matriz do
  before :each do

    @m1 = Matriz.new(2,2)
    @m2 = Matriz.new(2,2)
    #meter valores
    i, j, k = 0 ,0 ,0
        while i < @m1.m
                while j < @m1.n
                        @m1.load(i,j,k)
                        @m2.load(i,j,k)
                        k = k + 1
                        j = j + 1
                end
                j = 0
                i =  i +1
        end
  end
describe "Comprobamos el correcto almacenamiento de" do
    it "Se almacena correctamente la fila" do
      @m1.m.should eq(2)
    end

    it "Se almacena correctamente la columna" do
      @m1.n.should eq(2)
    end
  end

  describe "Comprobacion mostrar"
    it "2x2" do
        @m1.show(0,0).should eq(0)
        @m1.show(0,1).should eq(1)
        @m1.show(1,0).should eq(2)
        @m1.show(1,1).should eq(3)
   end
 end

  describe "Operadores" do
   it "Suma" do
      @m1 +(@m2)
                               
 @m1.show(0,0).should eq(7)
      @m1.show(0,1).should eq(9)
      @m1.show(1,0).should eq(13)
      @m1.show(1,1).should eq(13)
    end

   it "Traspuesta" do
        @m1.tras
        @m1.show(0,0).should eq(3)
        @m1.show(0,1).should eq(2)
        @m1.show(1,0).should eq(1)
        @m1.show(1,1).should eq(0)
    end
    it "Multiplicacion" do
      x = @m1 *(@m2)
      x.show(0,0).should eq(37)
      x.show(0,1).should eq(33)
 x.show(1,0).should eq(74)
      x.show(1,1).should eq(64)

    end

    it "Suma" do
      @m1.+(@m2)
      @m1.show(0,0).should eq(7)
      @m1.show(0,1).should eq(9)
      @m1.show(1,0).should eq(13)
      @m1.show(1,1).should eq(13)
    end

  end

