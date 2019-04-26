require_relative '../../app/bank'

describe ContaCorrente do

    describe 'Saque' do
        context 'quando o valor é positivo' do

            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200.00)
            end

            it 'entao atualizada saldo' do
                expect(@cc.saldo).to eql 800.00
                puts @cc.saldo
            end

        end

        context 'Quando o valor é zero' do

            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.saca(100.00)
            end

            it 'Então exibe mensagem' do
                expect(@cc.mensagem).to eql "Saldo insuficiente para saque :("
            end

            it 'E o saldo permanece com zeros' do
                expect(@cc.saldo).to eql 0.00
                puts @cc.saldo
            end

        end

        context 'Quando o valor é insuficiente' do

            before(:all) do
                @cc = ContaCorrente.new(500.00)
                @cc.saca(501.00)
            end

            it 'Então exibe mensagem' do
                expect(@cc.mensagem).to eql "Saldo insuficiente para saque :("
            end

            it 'E o saldo permanece' do
                expect(@cc.saldo).to eql 500.00
                puts @cc.saldo
            end
        end    
        
        context 'Quando supera o limite de saque' do

            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(701.00)
            end

            it 'Então exibe mensagem' do
                expect(@cc.mensagem).to eql "Limite máximo por saque é de R$ 700"
            end

            it 'E o saldo permanece' do
                expect(@cc.saldo).to eql 1000.00
                puts @cc.saldo
            end
        end    
    end
end