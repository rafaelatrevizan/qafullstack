describe 'Teclado', :key do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
    end 


    it 'enviando teclas', :teclas do

        teclas = %i[tab escape space enter shift control alt]

        teclas.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 1
        end        
        sleep 2
    end


    it 'enviando letras', :letras do
        letras = %w[a b c d]

        letras.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 1
        end
    end

end