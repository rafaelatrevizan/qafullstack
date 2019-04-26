# Ruby é uma linguagem considerada puramente orientada a objetos
# Porque tudo são objetos

# Classes = forma de organizar ações e atributos para determinado objeto do mundo real
# Possui Atributos e métodos
# Características e ações

# Carro (Nome, marco, modelo, cor, quantidade de portas..)
# Ações: Ligar, buzinar, parar...

class Carro
    attr_accessor :nome 

    def Ligar
        puts 'O carro está pronto para iniciar o trajeto'
    end
end

civic = Carro.new
# puts civic.class
civic.nome = 'Civic'

civic.Ligar
puts civic.nome