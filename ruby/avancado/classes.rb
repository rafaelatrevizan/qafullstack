class Conta

    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
        self.saldo += valor
        #puts valor.class
        #puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
        #interpolação = onde não é necessário converter o tipo do parâmetro
        #o parâmetro é convertido automaticamente
        puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}."
    end

end

c = Conta.new('Rafaela')

#jeito iniciante de instanciar uma variável
#c.saldo = 0.0
c.deposita(100.00)
puts c.saldo

#deve depositar 10 reais e somar no saldo
c.deposita(10.00)
puts c.saldo
puts c.nome