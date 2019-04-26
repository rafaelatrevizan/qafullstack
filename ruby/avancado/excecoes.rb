# begin
#     #Devo tentar alguma coisa
#     file = File.open('./ola.txt')
#         if file
#             puts file.read
#         end
# rescue Exception => e
#     #obter possível erro
#     puts e
#     #mostra o trace da execução
#     puts e.backtrace
# end


def soma(n1, n2)
    n1 + n2
rescue Exception => e
    puts 'Erro ao executar a soma'
end

soma('10', 2.2)