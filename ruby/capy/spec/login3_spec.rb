describe 'Login 3', :login3 do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/access'
    end 

    it 'login com sucesso' do   

        login_form = find('#login')
        
        #foi usado o name pq nesta página o id é dinâmico
        login_form.find('input[name=username]').set 'stark'
        login_form.find('input[name=password]').set 'jarvis!'

        click_button 'Login'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end
end