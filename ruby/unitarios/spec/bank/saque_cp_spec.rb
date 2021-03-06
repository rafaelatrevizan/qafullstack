require_relative '../../app/bank'

describe ContaPoupanca do

    describe 'Saque' do
        context 'quando o valor é positivo' do

            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200.00)
            end

            it 'entao atualizada saldo' do
                expect(@cp.saldo).to eql 800.00
                puts @cp.saldo
            end

        end

        context 'Quando o valor é zero' do

            before(:all) do
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(100.00)
            end

            it 'Então exibe mensagem' do
                expect(@cp.mensagem).to eql "Saldo insuficiente para saque :("
            end

            it 'E o saldo permanece com zeros' do
                expect(@cp.saldo).to eql 0.00
                puts @cp.saldo
            end

        end

        context 'Quando o valor é insuficiente' do

            before(:all) do
                @cp = ContaPoupanca.new(500.00)
                @cp.saca(501.00)
            end

            it 'Então exibe mensagem' do
                expect(@cp.mensagem).to eql "Saldo insuficiente para saque :("
            end

            it 'E o saldo permanece' do
                expect(@cp.saldo).to eql 500.00
                puts @cp.saldo
            end
        end    
        
        context 'Quando supera o limite de saque' do

            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(501.00)
            end

            it 'Então exibe mensagem' do
                expect(@cp.mensagem).to eql "Limite máximo por saque é de R$ 500"
            end

            it 'E o saldo permanece' do
                expect(@cp.saldo).to eql 1000.00
                puts @cp.saldo
            end
        end    
    end
end