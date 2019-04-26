#Todas repetições começam com zero


#------repetição

# 5.times do
#     puts 'Repetindo a mensagem'
# end

#-----Trabalhando com contador

# 5.times do |i|
#     puts 'Repetindo a mensagem ' + i.to_s + ' vez(s)'
# end

#-----While

# while true do
#     puts 'Looping infinito'
# end

# init = 0

# while init <= 10 do
#     puts 'Repetindo a mensagem ' + init.to_s + ' vez(s)'
#     init += 1
# end

#-----For

# for item in (0...10)
#     puts 'Repetindo a mensagem ' + item.to_s + ' vez(s)'
  
# end

#-----Array

vingadores = ['ironman', 'hulk', 'aranha', 'thor']
# puts vingadores.class

vingadores.each do |v|
    puts v
end
