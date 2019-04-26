class Conta
    attr_accessor :saldo, :mensagem

    def initialize (saldo)
        self.saldo = saldo    
    end

    def saca (valor, max)
        if (valor>saldo)
            self.mensagem = "Saldo insuficiente para saque :("
        elsif (valor>max)
            self.mensagem = "Limite máximo por saque é de R$ " + max.to_s
        else
            self.saldo -= valor
        end
    end
end



class ContaCorrente < Conta
    def saca (valor, max = 700)
        super    
    end
  
end

class ContaPoupanca < Conta
    def saca (valor, max = 500)
        super    
    end
end