describe 'Form'do
    it 'Login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        #usando o Id do elemento usuário
        fill_in 'userId', with: 'stark'
        #usando o Id do elemento senha
        fill_in 'passId', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        # expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end


    it 'senha incorreta' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        #usando o Id do elemento usuário
        fill_in 'userId', with: 'stark'
        #usando o Id do elemento senha
        fill_in 'passId', with: 'jarvis'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash')).to have_content 'Senha é invalida!'
    end

    it 'usuário não cadastrado' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        #usando o Id do elemento usuário
        fill_in 'userId', with: 'stark1'
        #usando o Id do elemento senha
        fill_in 'passId', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end
end