module Herviboro
    Definir = 'Sólo me alimento de vegetales!'
    def definir
    Definir
    end
    def dieta
    "Soy un Herviboro!"
    end
    end
    class Animal
    def saludar
    "Soy un animal!"
    end
    end
    class Conejo < Herviboro < Animal
        # include Herviboro
    def initialize(name)
        @name = name
    end
    end
    conejo = Conejo.new('Bugs Bunny')
    conejo.saludar
    puts conejo.dieta
    puts Conejo.ancestors