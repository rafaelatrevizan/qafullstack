describe 'Controle Dinamico', :dc do

    before(:each) do
        visit 'dynamic_controls'
    end

    it 'quando habilita o campo' do
    #aqui está sendo questionado se a págin contpem um campo chamado movie com a propriedade disable habilitada
       res = page.has_field? 'movie', disabled: true
       puts res

       click_button 'Habilita'

       res = page.has_field? 'movie', disabled: false
       puts res
    end
end