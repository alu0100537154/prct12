me = ARGV.shift 

exam =  File.open(filename).read
exam = <<"EXAM"
  require 'operaciones'

  Operaciones.new() do
    #{exam}
  end
EXAM
puts "************************"
quiz =  eval exam
puts quiz
