describe 'Caixa de seleção', :checkbox do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    #check e uncheck só funcionam com id ou name

    it 'marcando uma opção', :check do        
        check('thor')       
    end

    it 'desmarcando uma opção', :check do        
        uncheck('antman')       
    end

    it 'marcando com find set true', :find do        
        find('input[value = cap]').set(true)  
    end

    it 'desmarcando com find set true', :find do        
        find('input[value = guardians]').set(false)  
    end

    after(:each) do
        sleep 3
    end

end