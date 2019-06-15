module Test
    def result(a, b)
    average = (a + b)/ 2.0
        if average > 4
             "#{@nombre} aprobado con un promedio de #{average}"
        else
             "#{@nombre} reprobado con un promedio de #{average}"
        end
    end
end

module Attendance
    def self.student_quantity
        puts Student.get_number_of_quantity
    end
end

class Student
    include Test
    extend Attendance
    @@quantity = 0
    attr_accessor :nombre, :nota1, :nota2
    def initialize(nombre = 'student', nota1 = 4, nota2 = 4)
        @nombre = nombre
        @nota1 = nota1
        @nota2 = nota2
        @@quantity +=1
    end
    def self.get_number_of_quantity
        @@quantity
    end
end

10.times do |i|
    alumno = Student.new("geyner#{i}", rand(1..7), rand(1..7))
    puts "Notas #{alumno.nota1} #{alumno.nota2} - #{alumno.result(alumno.nota1, alumno.nota2)}"
end


# puts Test.result(2, 4)
puts Attendance.student_quantity