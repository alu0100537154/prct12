class Mydsl #===clase mydsl
        attr_accessor :resultado

        def initialize (operacion, &block)
                @operando = []
                @operacion = operacion
                
                if block_given?  
                        if block.arity == 1
                                yield self
                        else
                                instance_eval &block 
                        end
                end
        end

        def operando(fil, col, vector) 
	                aux = Mdensa.new(fil,col)
			aux[0,0] = vector[0]
    			aux[0,1] = vector[0]
   			aux[1,0] = vector[0]
    			aux[1,1] = vector[0]
                        @operando << aux
        end
        

        def run        
                
             
                case @operacion
                when "suma"
                        resultado = (@operando[0] + @operando[1])
                        
                when "resta"
                        
                          resultado = (@operando[0] - @operando[1])

                when "multiplicacion" 
                        
                          resultado = (@operando[0] * @operando[1])
                        

        end

        


end
