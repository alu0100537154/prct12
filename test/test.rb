$:.unshift File.dirname(__FILE__) + '/../lib'
require 'prcti09'
require "test/unit"


class Test < Test::Unit::TestCase
        
        def setup
                @m = Mdensa.new(2,2)
   		@m[0,0] = 1
    		@m[0,1] = 2
    		@m[1,0] = 3 
    		@m[1,1] = 4

          
                @m3 = Mdensa.new(2,2)
   		@m3[0,0] = 2
    		@m3[0,1] = 3
    		@m3[1,0] = 6 
    		@m3[1,1] = 8

		@m8 = Mdensa.new(2,2)
   		@m8[0,0] = 3
    		@m8[0,1] = 3
    		@m8[1,0] = 3
    		@m8[1,1] = 3	
      
                

        end

        def test_Mdensa
                assert_equal("1", @m[0][0])
                assert_equal("2", @m[0][1])
                assert_equal("3", @m[1][0])
                assert_equal("4", @m[1][1])
                assert_equal(@m3, @m +@m)
                assert_equal(@m1, @m3- @m)
                assert_equal(@m8, @m * @m)
        end

        
end
